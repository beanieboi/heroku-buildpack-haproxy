build: build-heroku-16 build-heroku-18 build-heroku-20

build-heroku-16:
	@echo "Building haproxy in Docker for heroku-16..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-16" -w /buildpack heroku/heroku:16-build scripts/build_haproxy /buildpack/haproxy-heroku-16.tgz

build-heroku-18:
	@echo "Building haproxy in Docker for heroku-18..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-18" -w /buildpack heroku/heroku:18-build scripts/build_haproxy /buildpack/haproxy-heroku-18.tgz

build-heroku-20:
	@echo "Building haproxy in Docker for heroku-20..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-20" -w /buildpack heroku/heroku:20-build scripts/build_haproxy /buildpack/haproxy-heroku-20.tgz

shell:
	@echo "Opening heroku-18 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-18" -e "PORT=5000" -w /buildpack heroku/heroku:18-build bash
