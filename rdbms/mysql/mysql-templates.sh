#!/bin/bash

# set -x

: "check action" & {
### 
# action='CREATE'
# action='CHECK'
action=${1}
}

if [ ${action} = CREATE ] || [ ${action} = create ]
  then
    echo you chose ${action}
    mysql -uroot < ./mysql-templates.sql
  elif [ ${action} = CHECK ] || [ ${action} = check ]
    then
      echo you chose ${action}
  else
    echo you chose \"${1}\". It is not command
    echo Bye !
    exit 0
fi
