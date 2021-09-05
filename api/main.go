package main

import (
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	r.POST("/recorded", func(c *gin.Context) {
		file_path := c.PostForm("path")
		tcUrl := c.PostForm("tcUrl")
		name := c.PostForm("name")
		fmt.Printf(file_path, tcUrl, name)
		c.String(http.StatusOK, "")

		// TODO: Notify recording ready, and get presigned url

		// Do upload

		// delete local copy

		// Notify upload done

	})

	r.POST("/publish_started", func(c *gin.Context) {
		name := c.PostForm("name")
		// Log stream started

	})

	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
