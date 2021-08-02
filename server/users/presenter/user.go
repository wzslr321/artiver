package presenter

import (
	"go.mongodb.org/mongo-driver/x/mongo/driver/uuid"
	"time"
)

type User struct {
	ID          []byte      `json:"id"`
	Email       string      `json:"email"`
	Password    string      `json:"password"`
	Username    string      `json:"username"`
	CreatedAt   time.Time   `json:"createdat"`
	UpdatedAt   time.Time   `json:"updatedat"`
	Preferences []string    `json:"preferences"`
	Liked       []uuid.UUID `json:"liked"`
	Articles    []uuid.UUID `json:"articles"`
	Reviews     []uuid.UUID `json:"reviews"`
}

type UserId struct {
	ID []byte `json:"id"`
}

type Register struct {
	Email    string `form:"email" json:"email" binding:"required"`
	Username string `form:"username" json:"username" binding:"required"`
	Password string `form:"password" json:"password" binding:"required"`
}

type Login struct {
	Email    string `form:"email" json:"email" binding:"required"`
	Password string `form:"password" json:"password" binding:"required"`
}
