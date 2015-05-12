IMAGE=mcandre/docker-curl-slim
BIN=root.tgz

all: run

$(BIN): root/
	tar czvf $(BIN) -C root/ .

build: Dockerfile $(BIN)
	docker build -t $(IMAGE) .

run: clean-containers clean-fs build
	docker -D run --rm $(IMAGE) curl http://ron-swanson-quotes.herokuapp.com/quotes
	@echo ''

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean-fs:
	-rm -rf $(BIN)

clean: clean-containers clean-images clean-fs

publish:
	docker push $(IMAGE)
