DOCKER_NAME="seeingu/gin-echo-server"

docker:
	docker build -t ${DOCKER_NAME} .

run:
	go run .