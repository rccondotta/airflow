# Building a Custom image from Apache Airflow Docker Container
FROM apache/airflow:latest

USER root

RUN apt-get update && \
    apt-get -y install git && \
    apt-get clean

USER airflow