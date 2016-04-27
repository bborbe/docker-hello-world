default: build

clean:
	docker rmi bborbe/hello-world

build:
	docker build --no-cache --rm=true -t bborbe/hello-world .

run:
	docker run -h example.com -p 8080:8080 -v /tmp:/hello-world bborbe/hello-world:latest

shell:
	docker run -i -t bborbe/hello-world:latest /bin/bash

upload:
	docker push bborbe/hello-world
