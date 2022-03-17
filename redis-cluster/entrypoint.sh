#!/bin/sh

# chmod +x entrypoint.sh
redis-server /usr/local/etc/redis/redis.conf &
P1=$!
sleep 10
echo "REDIS-SERVER STARTED AT PID=$P1"
echo "yes" | redis-cli --cluster create --cluster-replicas 1 173.19.0.10:6379 173.19.0.11:6379 173.19.0.12:6379 173.19.0.13:6379 173.19.0.14:6379 173.19.0.15:6379
echo "DONE"
wait $P1