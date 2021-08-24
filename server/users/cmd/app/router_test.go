package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"github.com/stretchr/testify/assert"
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"testing"
)

type response struct {
	Message string `json:"message"`
}

func TestPostAddRoute(t *testing.T) {
	r := app.InitRouter()
	w := httptest.NewRecorder()

	// Incorrect request body
	req, _ := http.NewRequest("POST", "/api/users/add", nil)
	r.ServeHTTP(w, req)

	assert.Equal(t, 400, w.Code)

	readBuf, err := ioutil.ReadAll(w.Body)
	assert.IsType(t, nil, err)

	var msg response
	err = json.Unmarshal(readBuf, &msg)
	assert.IsType(t, nil, err)
	assert.Equal(t, "Failed to create a new user due to incorrect request body", msg.Message)

}

func TestAnotherRoute(t *testing.T) {
	r := app.InitRouter()
	w := httptest.NewRecorder()

	fmt.Println(r)
	fmt.Println(w)
	// Correct request body
	jsonData := map[string]string{"email": "elon@gmail.com", "username": "TeslaOwner", "password": "STRongPwd12@"}
	buf := new(bytes.Buffer)
	err := json.NewEncoder(buf).Encode(jsonData)
	assert.IsType(t, nil, err)

	// NewRequestWithContext also doesn't work properly.
	req, err := http.NewRequest("POST", "/api/users/add", buf)
	assert.IsType(t, nil, err)
	r.ServeHTTP(w, req)

	/// ⚠️ Why it returns code 500? ⚠️
	assert.Equal(t, 200, w.Code)

}
