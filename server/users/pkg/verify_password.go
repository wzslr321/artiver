package pkg

import "golang.org/x/crypto/bcrypt"

func VerifyPassword(userPassword, providedPassword string) (bool, error) {
	if err := bcrypt.CompareHashAndPassword([]byte(providedPassword), []byte(userPassword)); err != nil {
		return false, err
	}

	return true, nil
}
