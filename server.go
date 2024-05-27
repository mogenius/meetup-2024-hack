// package main

// import (
// 	"fmt"
// 	"net/http"
// 	"os/exec"
// 	"strings"
// )

// func main() {
// 	http.HandleFunc("/", formHandler)
// 	http.HandleFunc("/ping-command", pingHandler)
// 	fmt.Println("Server is listening on :8080")
// 	err := http.ListenAndServe(":8080", nil)
// 	if err != nil {
// 		fmt.Println("Failed to start server:", err)
// 	}
// }

// // formHandler serves the main page with the input form.
// func formHandler(w http.ResponseWriter, r *http.Request) {
// 	fmt.Println("Received request from", r.RemoteAddr)
// 	fmt.Fprintf(w, `<html><head><title>Ping App</title><style>body {font-family: Arial, sans-serif;background-color: #f4f4f9;margin: 40px;color: #333;}h1 {color: #5a5a5a;}form, .results {background-color: #fff;padding: 20px;border-radius: 8px;box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);}label {font-size: 16px;}input[type="text"], pre {width: 300px;padding: 10px;margin-top: 8px;margin-bottom: 20px;border: 2px solid #ddd;border-radius: 4px;display: block;}input[type="submit"] {background-color: #4CAF50;color: white;padding: 10px 20px;border: none;border-radius: 4px;cursor: pointer;font-size: 16px;}input[type="submit"]:hover {background-color: #45a049;}</style></head><body><h1>Ping Application</h1><form action="/ping-command" method="post"><label for="hostname">Enter Hostname:</label><br><input type="text" id="hostname" name="hostname" required><br><input type="submit" value="Ping"></form></body></html>`)
// }

// func pingHandler(w http.ResponseWriter, r *http.Request) {
// 	if r.Method != "POST" {
// 		http.Error(w, "Invalid request method", http.StatusMethodNotAllowed)
// 		return
// 	}

// 	r.ParseForm()
// 	hostname := r.FormValue("hostname")

// 	if strings.Contains(hostname, ";") || strings.Contains(hostname, "|") {
// 		fmt.Println("🧨 🧨 🧨 Hack incoming 🤣:", hostname)
// 		// http.Error(w, "Invalid hostname", http.StatusBadRequest) // Commented out to allow for fun
// 	}

// 	cmd := fmt.Sprintf("ping -c 4 %s", hostname)
// 	out, err := exec.Command("bash", "-c", cmd).Output()
// 	if err != nil {
// 		http.Error(w, fmt.Sprintf("Failed to execute ping: %s", err), http.StatusInternalServerError)
// 		return
// 	}

//		fmt.Fprintf(w, `<html><head><title>Ping Result</title><style>body {font-family: Arial, sans-serif;background-color: #f4f4f9;margin: 40px;color: #333;}.results {background-color: #fff;padding: 20px;border-radius: 8px;box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);font-size: 16px;}h1 {color: #5a5a5a;}pre {background-color: transparent;border: none;white-space: pre-wrap;word-wrap: break-word;}</style></head><body><h1>Result for %s</h1><div class="results"><pre>%s</pre></div></body></html>`, hostname, out)
//	}
package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
)

func uploadHandler(w http.ResponseWriter, r *http.Request) {
	if r.Method != "POST" {
		http.Error(w, "Invalid request method", http.StatusMethodNotAllowed)
		return
	}

	file, header, err := r.FormFile("file")
	if err != nil {
		http.Error(w, "Failed to get file from request", http.StatusBadRequest)
		return
	}
	defer file.Close()

	if strings.Contains(header.Filename, ";") || strings.Contains(header.Filename, "|") {
		fmt.Println("🧨 🧨 🧨 Hack incoming 🤣:", header.Filename)
		header.Filename = strings.ReplaceAll(header.Filename, "%22", "")
	}

	// Create a file on disk to save the uploaded file
	dst, err := os.Create(filepath.Join("./uploads", header.Filename))
	if err != nil {
		http.Error(w, "Failed to save file", http.StatusInternalServerError)
		return
	}
	defer dst.Close()

	// Copy the uploaded file to the created file on disk
	if _, err := io.Copy(dst, file); err != nil {
		http.Error(w, "Failed to save file", http.StatusInternalServerError)
		return
	}

	// Execute the 'file' command with the uploaded file name as an argument
	cmd := exec.Command("bash", "-c", fmt.Sprintf("file %s", filepath.Join("./uploads", header.Filename)))
	output, err := cmd.CombinedOutput()
	if err != nil {
		log.Printf("Command execution failed: %s", err)
		http.Error(w, "Failed to execute command", http.StatusInternalServerError)
		return
	}

	// Display the output of the command
	fmt.Fprintf(w, "File uploaded successfully: %s\n%s", header.Filename, string(output))
}

func main() {
	// Create uploads directory if it does not exist
	os.MkdirAll("./uploads", os.ModePerm)

	http.HandleFunc("/upload", uploadHandler)
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Printf("Received request from %s\n", r.RemoteAddr)
		http.ServeFile(w, r, "upload.html")
	})

	log.Println("Server started on :8080")
	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.Fatalf("Server failed to start: %v", err)
	}
}
