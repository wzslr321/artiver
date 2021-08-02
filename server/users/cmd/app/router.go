package main

import (
	"github.com/gin-gonic/gin"
	cors "github.com/rs/cors/wrapper/gin"

	"net/http"
)


func (app *application) InitRouter() *gin.Engine {
	r := gin.New()

	r.Use(gin.Recovery())
	r.Use(cors.Default())

	r.GET("/", func(ctx *gin.Context) {
		ctx.String(http.StatusOK, "Hello World")
	})

	user := r.Group("/api/users")
	{
		user.GET("/", app.getAllUsers)
		user.POST("/add", app.createUser)
		user.GET("/:username", app.getUserByUsername)
		user.DELETE("/", app.deleteUserById)
		user.PUT("/", app.updateUserById)
	}

	return r
}
