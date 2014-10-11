TAG = $(MAKECMDGOALS)
PID := $(shell docker run -d -t $(TAG))

build:
	docker build -t $(TAG) .

aa: build
	echo "done"

libcaca-0.99.beta19: build
	docker cp $(PID):/libcaca-0.99.beta19 .
	docker kill $(PID)

circle-3.1: build
	docker cp $(PID):/circle-3.1 .
	docker kill $(PID)

