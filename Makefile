BUILDER_IMAGE_NAME = s2i-kerfluffle-builder
IMAGE_NAME = s2i-kerfluffle

.PHONY: build
build:
	docker build -t $(BUILDER_IMAGE_NAME) .
	s2i build . $(BUILDER_IMAGE_NAME) $(IMAGE_NAME)
