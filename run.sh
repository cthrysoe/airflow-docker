DOCKER_GID=$(stat -c '%g' /var/run/docker.sock)

docker build --build-arg docker_group_gid=$DOCKER_GID -t airflow-puckel-local .
docker-compose -f docker-compose.yml up -d
