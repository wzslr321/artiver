package main

import (
	"github.com/gin-gonic/gin"
	"github.com/wzslr321/artiver/server/user/presenter"
	"log"
	"net/http"
)

func (app *application) createUser(ctx *gin.Context) {

	var json presenter.Register
	if err := ctx.ShouldBindJSON(&json); err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{
			"error": err.Error(),
		})
		return
	}

	user, err := app.users.NewUser(json.Email, json.Username, json.Password)
	if err != nil {
		log.Fatalf("Failed to create a new user: %v", err)
		return
	}

	ctx.JSON(http.StatusOK, gin.H{
		"message": "Successfully created new user",
		"user":    user,
	})
}

func (app *application) getUserByUsername(ctx *gin.Context) {
	username := ctx.Param("username")
	res := app.users.GetUserByUsername(username)

	ctx.JSON(http.StatusOK, gin.H{
		"respond": res,
	})
}

func (app *application) deleteUserById(ctx *gin.Context) {

	var json presenter.UserId
	if err := ctx.ShouldBindJSON(&json); err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{
			"error": err.Error(),
		})
		return
	}

	res := app.users.DeleteUserById(json.ID)

	ctx.JSON(http.StatusOK, gin.H{
		"respond": res,
	})
}

func (app *application) updateUser(ctx *gin.Context) {
	var json presenter.User
	if err := ctx.ShouldBindJSON(&json); err != nil {
		ctx.JSON(http.StatusBadRequest, gin.H{
			"error": err.Error(),
		})
		return
	}

	res := app.users.UpdateUser(&json)

	ctx.JSON(http.StatusOK, gin.H{
		"respond": res,
	})
}
