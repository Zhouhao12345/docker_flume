#!/bin/bash
log_path=$(docker inspect --format='{{.LogPath}}' $1)
sed "s?host_log?$log_path?g" docker-compose.yml.template >> docker_compose.yml
