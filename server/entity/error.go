package entity

import "errors"

var ValidationError = errors.New("failed to validate user's data")

var DatabaseError = errors.New("failed to perform an operation on database")