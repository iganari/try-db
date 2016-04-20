#!/bin/bash

set -x

: "modify parmission" & {
chmod 600 ssh/id_rsa-try-db
}

: "setting playbook" & {
ansible-playbook --private-key='ssh/id_rsa-try-db' -i playbook/hosts playbook/site.yml
}
