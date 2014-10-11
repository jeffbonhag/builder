PID := $(shell docker run -d -t circle:3.1)

circle:
	docker build -t circle:3.1 .
	docker cp $(PID):/circle-3.1 .
	docker kill $(PID)

