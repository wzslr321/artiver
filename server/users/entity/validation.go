package entity

import (
	"log"
	"strings"
	"unicode"
)


func validate(email, username, password string) error{

	var (
		isEmailValid = validateEmail(email)
		isUsernameValid = validateUsername(username)
		isPasswordValid = validatePassword(password)
	)

	if !isEmailValid || !isUsernameValid || !isPasswordValid {
		log.Printf(`
			isEmailValid: %v 
			isUsernameValid: %v 
			isPasswordValid: %v`,
         	isEmailValid,isUsernameValid, isPasswordValid,
         )
		return ValidationError
	}


	return nil
}

func validateUsername(username string) bool {

	var(
		hasMinLen 		bool
		hasExceededLen  bool
		isValid 		bool
	)

	if len(username) >= 3 {
		hasMinLen = true
	} else if len(username) > 16 {
		hasExceededLen = true
	}

	isValid = hasMinLen && !hasExceededLen

	if !isValid {
		log.Printf(`
			Username is not valid: 
			hasMinLen: %v 
			hasExceededLen: %v`,
			hasMinLen, hasExceededLen,
		)
	}

	return isValid
}

func validatePassword(password string) bool {
	// Minimum 8 and maximum 16 characters, at least one uppercase letter, one lowercase letter, one number and one special character.

	// Because Go's regex doesn't support backtracking, it requires custom implementation.
	// https://stackoverflow.com/questions/25837241/password-validation-with-regexp?rq=1

	var (
		hasMinLen 		bool
		hasExceededLen  bool
		hasUppercase 	bool
		hasLowercase	bool
		hasNumber		bool
		hasSpecialChar  bool
		isValid 		bool
	)

	if len(password) > 8 && len(password) <= 16{
		hasMinLen = true
		hasExceededLen = false
	}

	for _, char := range password {
		switch {
		case unicode.IsUpper(char):
			hasUppercase = true
		case unicode.IsLower(char):
			hasLowercase = true
		case unicode.IsNumber(char):
			hasNumber = true
		case unicode.IsPunct(char):
			hasSpecialChar = true
		case unicode.IsSymbol(char):
			hasSpecialChar = true
		}
	}

	isValid = hasMinLen && hasUppercase && hasLowercase && hasNumber && hasSpecialChar && !hasExceededLen

	if !isValid {
		log.Printf(`
			Password is invalid:
			hasMinLen: %v 
			hasUppercase: %v 
			hasLowercase: %v 
			hasNumber: %v 
			hasSpecialChar: %v 
			hasExceededLen: %v`,
			hasMinLen, hasUppercase, hasLowercase, hasNumber,
			hasSpecialChar, hasExceededLen,
		)
	}

	return isValid
}

func validateEmail(email string) bool {
	var(
		hasMinLen 		bool
		hasAtChar 		bool
		hasAtCharAsLast bool
		isValid 		bool
	)

	if len(email) >= 3 && strings.Contains(email, "@") {
		hasMinLen = true
		hasAtChar = true
	}

	length := len(email)
	if email[length - 1] == '@' {
		hasAtCharAsLast = true
	}

	isValid = hasMinLen && hasAtChar && !hasAtCharAsLast

	if !isValid {
		log.Printf(`
			Email is invalid:
			hasMinLen: %v 
			hasAtChar: %v 
			hasAtCharAsLast: %v`,
			hasMinLen, hasAtChar, hasAtCharAsLast,
		)
	}

	return isValid
}

