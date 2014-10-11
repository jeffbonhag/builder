TAG = $(MAKECMDGOALS)
PID := $(shell docker run -d -t $(TAG))

build:
	docker build -t $(TAG) .

circle-3.1: build
	docker cp $(PID):/circle-3.1 .
	docker kill $(PID)

