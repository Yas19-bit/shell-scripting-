docker_compose := docker-compose
os := $(shell uname)

build:
ifeq ($(os), Linux)
	@echo "running $(os)"
	$(docker_compose) build
endif

up:
	$(docker_compose) up -d

down:
	$(docker_compose) down
