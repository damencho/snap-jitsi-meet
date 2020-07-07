#!/bin/bash -ex

mkdir -p $HOME/jitsi
echo "JICOFO_LOGFILE: ${JICOFO_LOGFILE}"

touch $JICOFO_LOGFILE
chmod 777 $HOME/jitsi
chmod 666 $JICOFO_LOGFILE

$SNAP/usr/share/jicofo/jicofo.sh --user_domain="$JICOFO_AUTH_DOMAIN" "$JICOFO_OPTS" < /dev/null >> "${JICOFO_LOGFILE}" 2>&1
