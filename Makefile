OS=$(shell uname | tr A-Z a-z)
NODE=https://nodejs.org/dist/v10.15.1/node-v10.15.1-$(OS)-x64.tar.xz
export PATH := $(shell pwd)/env/bin:$(shell pwd)/node_modules/.bin:$(PATH)
.PHONY: start install supervisor

start: env/bin/npm
	npm run start

env/bin/npm:
	mkdir -p env && \
	cd env && \
	curl -O $(NODE) && \
	tar xf `basename $(NODE)` --strip 1
	npm install
