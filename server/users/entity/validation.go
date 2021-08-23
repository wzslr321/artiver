package entity

import (
	"log"
	"strings"
	"unicode"
)

func Validate(email, username, password string) (bool, error) {

	var (
		isEmailValid, _    = ValidateEmail(email)
		isUsernameValid, _ = ValidateUsername(username)
		isPasswordValid, _ = ValidatePassword(password)
	)

	if !isEmailValid || !isUsernameValid || !isPasswordValid {
		log.Printf(`
			isEmailValid: %v 
			isUsernameValid: %v 
			isPasswordValid: %v`,
			isEmailValid, isUsernameValid, isPasswordValid,
		)
		return false, ValidationError
	}

	return true, nil
}

func ValidateUsername(username string) (bool, error) {

	var (
		hasMinLen      bool
		hasExceededLen bool
		isValid        bool
	)

	if len(username) >= 3 {
		hasMinLen = true
	}

	if len(username) > 16 {
		hasExceededLen = true
	}

	isValid = hasMinLen && !hasExceededLen

	if !isValid {
		log.Printf(`
			Username is not valid: 
			username: %v
			hasMinLen: %v 
			hasExceededLen: %v`,
			username, hasMinLen, hasExceededLen,
		)

		return false, ValidationError
	}

	return isValid, nil
}

func ValidatePassword(password string) (bool, error) {
	// Minimum 8 and maximum 16 characters, at least one uppercase letter, one lowercase letter, one number and one special character.

	// Because Go's regex doesn't support backtracking, it requires custom implementation.
	// https://stackoverflow.com/questions/25837241/password-validation-with-regexp?rq=1

	var (
		hasMinLen      bool
		hasExceededLen bool
		hasUppercase   bool
		hasLowercase   bool
		hasNumber      bool
		hasSpecialChar bool
		isValid        bool
	)

	if len(password) >= 8 {
		hasMinLen = true
	}

	if len(password) > 16 {
		hasExceededLen = true
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
		return false, ValidationError
	}

	return isValid, nil
}

func ValidateEmail(email string) (bool, error) {
	var (
		hasMinLen       bool
		hasAtChar       bool
		hasAtCharAsLast bool
		isValid         bool
	)

	if len(email) >= 3 && strings.Contains(email, "@") {
		hasMinLen = true
		hasAtChar = true
	}

	length := len(email)
	if email[length-1] == '@' {
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
		return false, ValidationError
	}

	return isValid, nil
}
