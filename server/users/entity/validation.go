package entity

import (
	"log"
	"regexp"
	"strings"
)


func validate(u *User) error{

	var (
		isEmailValid = validateEmail(u.Email)
		isUsernameValid = validateUsername(u.Username)
		isPasswordValid = validatePassword(u.Password)
	)

	if isEmailValid || isUsernameValid || isPasswordValid {
		return ValidationError
	}

	return nil
}

func validateUsername(username string) bool {
	// 4-20 characters long, no __ | _. | ._ | .. inside,
	match,err := regexp.Match(`^(?=.{8,20}$)(?!.*[_.]{2})[a-zA-Z0-9._]$`, []byte(username))
	if err != nil {
		log.Printf("Error matching username regexp: %v", err)
	}

	return match
}

func validatePassword(password string) bool {
	// Minimum eight and maximum 16 characters, at least one uppercase letter, one lowercase letter, one number and one special character.
	match, err := regexp.Match(`^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,16}$`, []byte(password))
	if err != nil {
		log.Printf("Error matching password regexp: %v", err)
	}

	return match
}

func validateEmail(email string) bool {
	isValid := strings.Contains(email, "@") && len(email) >= 3

	return isValid
}
