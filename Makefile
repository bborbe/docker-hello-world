VERSION ?= latest
REGISTRY ?= docker.io

default: build

clean:
	docker rmi $(REGISTRY)/bborbe/hello-world:$(VERSION)

build:
	docker build --build-arg VERSION=$(VERSION) --no-cache --rm=true -t $(REGISTRY)/bborbe/hello-world:$(VERSION) .

run:
	docker run \
	-p 8080:80 \
	$(REGISTRY)/bborbe/hello-world:$(VERSION)

shell:
	docker run -i -t $(REGISTRY)/bborbe/hello-world:$(VERSION) /bin/bash

upload:
	docker push $(REGISTRY)/bborbe/hello-world:$(VERSION)
