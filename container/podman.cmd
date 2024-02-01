podman images
podman run -d docker.io/osmanyay/ng-debug:v1.0.0
podman ps
podman exec -it 95a9885aa1bf sh
podman container logs 46e2457aa5a6
podman container top 95a9885aa1bf

podman system prune

podman container ls -a
podman ps -a

podman rmi -f e96e0cf3c9ae

podman pull openjdk:8-jdk-alpine

podman run docker.io/library/alpine:3.18 sleep 60
podman run docker.io/library/alpine:3.18


podman run -d docker.io/library/alpine:3.18 sleep 60

podman container rm da5d1c427906
podman container prune

podman stop 3a013f998b97
podman kill 3f018797e308

podman start 3a013f998b97
podman restart 3a013f998b97

podman run -it docker.io/library/alpine sh

podman commit e4a6483767a1 osman/alpine-mc
podman diff a7afcb989a9c

podman run -d -p 9090:80 docker.io/library/nginx:latest

podman compose down
podman compose -f ./docker-compose.yml up -d

podman run -d -it -e OSMAN=123456 docker.io/library/alpine sh
podman run -it -e OSMAN=123456 -e TEST=ABC --name alpine2 docker.io/library/alpine sh

podman network create mynet1

podman run -it -e OSMAN=123456 -e TEST=ABC --name alpine1 --network mynet1 docker.io/library/alpine sh
podman run -it -e OSMAN=123456 -e TEST=ABC --name alpine2 --network mynet1 docker.io/library/alpine sh

podman run -it -p 8080:80 -e OSMAN=123456 -e TEST=ABC --name alpine2 --network mynet1 docker.io/library/alpine sh

podman volume ls
podman system df

podman run -it -p 8080:80 -e OSMAN=123456 -e TEST=ABC --name alpine2 --network mynet1 -v my-vol1:/usr/osman docker.io/library/alpine sh

podman run -it -p 8085:80 -e OSMAN=123456 -e TEST=ABC --name alpine5 --network mynet1 -v my-vol1:/usr/osman:ro docker.io/library/alpine sh

podman run -it --network mynet1 -v my-vol1:/usr/osman:ro docker.io/library/alpine sh

podman run -it --network mynet1 -v c:/docker:/usr/docker docker.io/library/alpine sh

podman volume create test1
podman volume rm test1
podman volume prune

