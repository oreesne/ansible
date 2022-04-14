#!/bin/sh

docker run --rm --privileged -it --name=ansible --entrypoint=ansible-playbook -v "$(pwd)":/ansible/main ansible "/ansible/main/playbook.yaml" "-i" "/ansible/main/inventory.yaml" "$@"