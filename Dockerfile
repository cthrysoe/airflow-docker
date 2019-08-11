FROM puckel/docker-airflow:1.10.3

USER root

ARG docker_group_gid

RUN groupadd -g $docker_group_gid docker
RUN usermod -aG docker airflow

ADD requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

USER airflow
