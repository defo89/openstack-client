IMAGE	 := dmitrijsf/openstack-client
DATE     := $(shell date +%Y%m%d%H%M%S)
VERSION  ?= v$(DATE)

.PHONY: all

all: build

build:
	docker buildx build --platform linux/amd64,linux/arm64/v8 . -t $(IMAGE):$(VERSION) --push
