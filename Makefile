.PHONY: clean build install release

##
## USER DEFINED VARIABLES
##
IMAGE_NAME := hello-world-java

.PHONY: default
default: | build install start

build:
	mvn package

install:
	docker build -t $(IMAGE_NAME):latest .

.PHONY: start
start:
	@docker-compose -p docker-compose up -d
	@docker-compose -p docker-compose ps

clean:
	mvn clean
