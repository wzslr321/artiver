package conf

import (
	"path/filepath"
	"runtime"
)

func GetConfDir() (string, bool) {
	_, b, _, ok := runtime.Caller(0)
	basePath := filepath.Dir(b)

	return filepath.Dir(basePath), ok
}
