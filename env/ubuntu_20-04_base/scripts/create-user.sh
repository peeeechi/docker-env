#!/bin/bash -eu

#create user
echo "USER_NAME: ${USER_NAME}"
echo "GROUP_NAME: ${GROUP_NAME}"
echo "UID: ${UID}"
echo "GID: ${GID}"

groupadd -g ${GID} ${GROUP_NAME}
useradd -s /bin/bash -u ${UID} -g ${GID} ${USER_NAME}

if [ ! -d /home/${USER_NAME} ]; then
    mkdir -p /home/${USER_NAME}
fi

chown -R ${USER_NAME}:${GROUP_NAME} /workspace
chmod 774 -R /workspace
# chown -R ${USER_NAME}:${GROUP_NAME} /home/${USER_NAME}
