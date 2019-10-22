#!/usr/bin/env bash
docker run --rm -it \
  -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
  -v ~/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub \
  -v $(pwd):/ansible \
  -v /var/log/ansible/ansible.log \
  gkevlin/ansible-docker "$@"
