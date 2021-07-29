package presenter

import (
	"github.com/wzslr321/artiver/server/user/entity"
)

type User struct {
	ID       entity.ID `json:"id"`
	Email    string    `json:"email"`
	Username string    `json:"username"`
}

type Register struct {
	Email 	   string 	`form:"email" json:"email" binding:"required"`
	Username   string  	`form:"username" json:"username" binding:"required"`
	Password   string   `form:"password" json:"password" binding:"required"`
}

type Login struct {
	Email string `form:"email" json:"email" binding:"required"`
	Password string `form:"password" json:"password" binding:"required"`
}

