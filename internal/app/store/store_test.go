package store_test

import (
	"os"
	"testing"
)

var (
	databaseURL string
)

func TestMai(m *testing.M) {
	databaseURL = os.Getenv("DATABASE_URL")
	if databaseURL == "" {
		databaseURL = "user=medvedev_ed password=4502079Qw host=pgtest dbname=moon sslmode=disable"
	}

	os.Exit(m.Run())
}
