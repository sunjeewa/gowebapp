package main

import (
	"fmt"
	"net/http"
)

const (
	port = ":80"
)

var calls = 0

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "[v1] App called")
}

func init() {
	fmt.Printf("Started server. Listening on %v.\n", port)
	http.HandleFunc("/", handler)
	http.ListenAndServe(port, nil)
}

func main() {}
