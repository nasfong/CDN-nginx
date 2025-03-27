# Docker Hub username and image name
DOCKER_USERNAME = nasfong
DOCKER_IMAGE = cdn

# Tag for the Docker image
TAG = latest

# Build the Docker image
build:
	docker build -t $(DOCKER_USERNAME)/$(DOCKER_IMAGE):$(TAG) .

# Push the Docker image to Docker Hub
push:
	docker push $(DOCKER_USERNAME)/$(DOCKER_IMAGE):$(TAG)

# Pull the Docker image from Docker Hub
pull:
	docker pull $(DOCKER_USERNAME)/$(DOCKER_IMAGE):$(TAG)

# Clean up local images (optional)
clean:
	docker rmi $(DOCKER_USERNAME)/$(DOCKER_IMAGE):$(TAG)
