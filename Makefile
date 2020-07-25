.PHONY: build build-buster run buster

build:
	docker build -t anthology .

build-buster:
	docker build -t anthology-buster -f Dockerfile.debian-slim .

run-buster:
	docker run -it -p 8082 anthology-buster