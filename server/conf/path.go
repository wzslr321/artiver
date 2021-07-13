package conf

import (
	"path/filepath"
	"runtime"
)

func GetRootDir() string {
	_, b, _, _ := runtime.Caller(0)
	basePath := filepath.Dir(b)

	return filepath.Dir(basePath)
}
