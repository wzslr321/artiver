package main

import (
	"encoding/json"
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/stretchr/testify/assert"
)

type response struct {
	Message string `json:"message"`
}

func TestPostAddRoute(t *testing.T) {
	r := app.InitRouter()

	w := httptest.NewRecorder()
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
