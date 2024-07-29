#!/usr/bin/env sh

docker pull moby/buildkit:buildx-stable-1
docker buildx bake --builder=multi --pull --push
docker buildx stop multi
