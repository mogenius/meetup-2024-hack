package main

import (
	"fmt"
	"net/http"
	"os/exec"
)

func main() {
	http.HandleFunc("/", formHandler)
	http.HandleFunc("/ping", pingHandler)
	fmt.Println("Server is listening on http://localhost:8080")
	http.ListenAndServe(":8080", nil)
}

// formHandler serves the main page with the input form.
func formHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, `<html><head><title>Ping App</title><style>body {font-family: Arial, sans-serif;background-color: #f4f4f9;margin: 40px;color: #333;}h1 {color: #5a5a5a;}form, .results {background-color: #fff;padding: 20px;border-radius: 8px;box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);}label {font-size: 16px;}input[type="text"], pre {width: 300px;padding: 10px;margin-top: 8px;margin-bottom: 20px;border: 2px solid #ddd;border-radius: 4px;display: block;}input[type="submit"] {background-color: #4CAF50;color: white;padding: 10px 20px;border: none;border-radius: 4px;cursor: pointer;font-size: 16px;}input[type="submit"]:hover {background-color: #45a049;}</style></head><body><h1>Ping Application</h1><form action="/ping" method="post"><label for="hostname">Enter Hostname:</label><br><input type="text" id="hostname" name="hostname" required><br><input type="submit" value="Ping"></form></body></html>`)
}

func pingHandler(w http.ResponseWriter, r *http.Request) {
	if r.Method != "POST" {
		http.Error(w, "Invalid request method", http.StatusMethodNotAllowed)
		return
	}

	r.ParseForm()
	hostname := r.FormValue("hostname")

	cmd := fmt.Sprintf("ping -c 4 %s", hostname)
	out, err := exec.Command("bash", "-c", cmd).Output()
	if err != nil {
		http.Error(w, fmt.Sprintf("Failed to execute ping: %s", err), http.StatusInternalServerError)
		return
	}

	fmt.Fprintf(w, `<html><head><title>Ping Result</title><style>body {font-family: Arial, sans-serif;background-color: #f4f4f9;margin: 40px;color: #333;}.results {background-color: #fff;padding: 20px;border-radius: 8px;box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);font-size: 16px;}h1 {color: #5a5a5a;}pre {background-color: transparent;border: none;white-space: pre-wrap;word-wrap: break-word;}</style></head><body><h1>Result for %s</h1><div class="results"><pre>%s</pre></div></body></html>`, hostname, out)
}
