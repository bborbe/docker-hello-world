VERSION ?= 1.0.0

default: build

clean:
	docker rmi bborbe/hello-world:$(VERSION)

build:
	docker build --build-arg VERSION=$(VERSION) --no-cache --rm=true -t bborbe/hello-world:$(VERSION) .

run:
	docker run -h example.com -p 8080:8080 -v /tmp:/hello-world bborbe/hello-world:$(VERSION)

shell:
	docker run -i -t bborbe/hello-world:$(VERSION) /bin/bash

upload:
	docker push bborbe/hello-world:$(VERSION)
