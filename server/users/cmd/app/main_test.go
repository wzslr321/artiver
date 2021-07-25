package main

import (
"github.com/stretchr/testify/assert"
"net/http"
"net/http/httptest"
"testing"
)

func TestPingRoute(t *testing.T) {
	router := app.InitRouter()

	w := httptest.NewRecorder()
	req, _ := http.NewRequest("GET", "/", nil)
	router.ServeHTTP(w, req)

	assert.Equal(t, 200, w.Code)
	assert.Equal(t, "Hello World", w.Body.String())
}
