package presenter

import "github.com/wzslr321/artiver/entity"

type User struct {
	ID 		   entity.ID	`json:"id"`
	Email 	   string 		`json:"email"`
	Username   string		`json:"username"`
}