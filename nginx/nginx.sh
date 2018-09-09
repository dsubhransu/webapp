#!/bin/bash
# Start apache
#/usr/sbin/nginx -D FOREGROUND


/etc/init.d/nginx restart
tail -f /dev/null
