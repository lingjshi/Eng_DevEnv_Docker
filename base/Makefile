
IMAGENAME := "npateriya/devenv-base"
VERSION := "v003"
INSTANCENAME :="devenv-base"

build:
	@echo "Building image $(IMAGENAME)"
	docker build -t $(IMAGENAME) .
	docker tag "$(IMAGENAME):latest"  "$(IMAGENAME):$(VERSION)"
push:
	docker push $(IMAGENAME)
	docker push $(IMAGENAME):$(VERSION)
run: stop
	docker run --name $(INSTANCENAME) -d -p 1001:9090 -p 1002:9091 $(IMAGENAME)
	@echo "http://localhost:1001" 
	@echo "http://localhost:1002" 
stop: 
	docker stop  $(INSTANCENAME)  | true 
	docker rm  $(INSTANCENAME)  | true 

all: build run
