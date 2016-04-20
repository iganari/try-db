#!/bin/bash

set -x 

: "set key" & {
mkdir /root/.ssh
chmod 700 /root/.ssh
touch /root/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAz43or9xfremLbeSFHk2fKhvRu7Ma+iyXKbvDeGQMYwDt4SPzouGnNY0KWwjb9QFleATR/HT3fOm9CM9IZzwZK470MXxcmnyxwqr6dOXMja8zo9OlR9UEeiBYs/DBI5kI0+qvqnrYdx4C7RInT7ws3GBqupELe1Q4yNUpxuByYFS3TrHLFHfqXShIinqiQT1VR7FjIXGrUTH5FBueQx1iHOo78dSiuNxxd/t5Ykd65a84HKxRl5pmeng3IHaDhh87e7iVUwAYBsQpm0ZfBYB72oGJQU7v3K46SK36qC+g43wtysWX2T6RCq+6ge1zxpRCiEBudvuw3r028MoZAls1 for try-db' > /root/.ssh/authorized_keys
}
