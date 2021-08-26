package main

import (
	"bytes"
	"encoding/json"
	"github.com/gin-gonic/gin"
	"github.com/stretchr/testify/assert"
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"testing"
)

type response struct {
	Message string `json:"message"`
}

var router *gin.Engine

func TestPostAddRoute(t *testing.T) {
	router = app.InitRouter()
	w := httptest.NewRecorder()

	// Incorrect request body
	req, _ := http.NewRequest("POST", "/api/users/add", nil)
	router.ServeHTTP(w, req)

	assert.Equal(t, 400, w.Code)

	readBuf, err := ioutil.ReadAll(w.Body)
	assert.IsType(t, nil, err)

	var msg response
	err = json.Unmarshal(readBuf, &msg)
	assert.IsType(t, nil, err)
	assert.Equal(t, "Failed to create a new user due to incorrect request body", msg.Message)

}

func TestAnotherRoute(t *testing.T) {
	w := httptest.NewRecorder()

	var err error
	// Correct request body
	jsonData := map[string]string{"email": "elon@gmail.com", "username": "TeslaOwner", "password": "STRongPwd12@"}
	buf := new(bytes.Buffer)
	err = json.NewEncoder(buf).Encode(jsonData)
	assert.IsType(t, nil, err)

	// NewRequestWithContext also doesn't work properly.
	_, err = http.NewRequest("POST", "/api/users/add", buf)
	assert.IsType(t, nil, err)

	/// ⚠️ Why it returns code 500? ⚠️
	assert.Equal(t, 200, w.Code)

}
