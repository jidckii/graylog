VERSION := 4.1.1-1
VERSION_SSO := 3.3.0
VERSION_ALERTMANAGER := 1.2.2
VERSION_METRICS := 3.0.0

.DEFAULT_GOAL := build

.PHONY: build
build:
	@echo "==> Building Docker image..."
	@docker build \
		--build-arg VERSION=${VERSION} \
		--build-arg VERSION_SSO=${VERSION_SSO} \
		--build-arg VERSION_ALERTMANAGER=${VERSION_ALERTMANAGER} \
		-t jidckii/graylog:${VERSION} \
		-t jidckii/graylog:latest .

.PHONY: push
push: build
push:
	@docker push jidckii/graylog:${VERSION}

.PHONY: test
test: build
test:
	@echo "Run docker-compose..."
	docker-compose up

.PHONY: stop
stop:
	@echo "Remove containers..."
	docker-compose down -v
