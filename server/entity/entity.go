package entity

import (
	"time"
)

type ID int64

type User struct {
	ID			ID
	Email		string
	Password 	string
	FirstName	string
	LastName	string
	CreatedAt 	time.Time
	UpdatedAt 	time.Time
	// Preferences are an array of keywords that are used to filter and personalize articles.
	Preferences []string
	// Liked articles - contains an array of ID to make it more effective
	// than storing whole articles. IDs will be simply used as a reference.
	Liked 		[]ID
	// Articles - List of articles written by user. Holds an array of IDs
	// to use them as a reference.
	Articles 	[]ID
	// Reviews - List of reviews written by user. Holds an array of IDs
	// to use them as a reference.
	Reviews 	[]ID
}
