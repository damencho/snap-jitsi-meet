#!/bin/bash -ex

mkdir -p $HOME/jitsi
echo "JVB_LOGFILE = ${JVB_LOGFILE}"

touch $JVB_LOGFILE
chmod 777 $HOME/jitsi
chmod 666 $JVB_LOGFILE

"$SNAP/usr/share/jitsi-videobridge/jvb.sh" "${JVB_OPTS}" < /dev/null >> "${JVB_LOGFILE}" 2>&1
