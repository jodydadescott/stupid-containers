BUILD_NUMBER := latest
PROJECT_NAME := stupid-http
DOCKER_REGISTRY := jodydadescott
DOCKER_IMAGE_NAME?=$(PROJECT_NAME)
DOCKER_IMAGE_TAG?=$(BUILD_NUMBER)

shellcheck:
	shellcheck common_functions test.sh
