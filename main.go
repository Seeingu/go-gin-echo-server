package main

import "github.com/gin-gonic/gin"

func main() {
	router := gin.Default()
	router.GET("/echo", func(c *gin.Context) {
		message := c.Query("message")
		c.String(200, message)
	})

	router.Run(":8080")
}
