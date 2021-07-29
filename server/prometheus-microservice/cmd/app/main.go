package main

import (
	"context"
	"fmt"
	"github.com/artiver/server/prometheus/settings"
	"github.com/prometheus/client_golang/prometheus/promhttp"
	"log"
	"net/http"
	"os"
	"os/signal"
	"syscall"
	"time"
)

func init() {
	settings.InitSettings()
}

func main() {
	address := fmt.Sprintf(":%s", settings.ServerSettings.Address)
	readTimeout := settings.ServerSettings.ReadTimeout
	writeTimeout := settings.ServerSettings.WriteTimeout
	maxHeaderBytes := settings.ServerSettings.MaxHeaderBytes

	s := &http.Server{
		Addr: address,
		ReadTimeout: readTimeout,
		WriteTimeout: writeTimeout,
		MaxHeaderBytes: maxHeaderBytes,
	}

	http.Handle("/metrics", promhttp.Handler())

	var err error

	err = s.ListenAndServe()

	log.Printf("Server is running on port:  %s", address)

	go func() {
		if err = s.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			log.Fatalf("Listen: %s\n", err)
		}
	}()

	quit := make(chan os.Signal)


	signal.Notify(make(chan os.Signal, 1), syscall.SIGINT, syscall.SIGTERM)
	<-quit
	log.Println("Shutting down the server...")

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	if err = s.Shutdown(ctx); err != nil {
		log.Fatal("Server shutdown", err)
	}

	<-ctx.Done()
	log.Println("Timeout of 5 seconds")

	log.Println("Server exiting")
}
