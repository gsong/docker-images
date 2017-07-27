.DEFAULT_GOAL := build
.PHONY: ansible


build:
	CACHE_BUST=$$(date) docker-compose build --pull

force-rebuild:
	REBUILD=$$(date) CACHE_BUST=$$(date) docker-compose build --pull
