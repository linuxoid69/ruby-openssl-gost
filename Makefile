.PHONY: build push
build:
	docker build -t linuxoid69/ruby-openssl-gost:2.5.5 .

push:
	docker login
	docker push linuxoid69/ruby-openssl-gost:2.5.5
