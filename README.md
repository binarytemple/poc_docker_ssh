# poc_docker_ssh
proof of concept - testing dockers new (buildkit) based ssh/secrets support

https://medium.com/@tonistiigi/build-secrets-and-ssh-forwarding-in-docker-18-09-ae8161d066

https://github.com/moby/buildkit/blob/master/frontend/dockerfile/docs/experimental.md

conclusion - it works for 'docker build' (see Makefile) - doesn't work for docker-compose 
