# FROM hub.lakehouse.ggg.com.vn/lakehouse/airflow:prod-1.3

FROM apache/airflow:2.9.0-python3.10

ENV AIRFLOW_HOME=/opt/airflow

WORKDIR $AIRFLOW_HOME

USER root
RUN apt-get update -qq && apt-get install -y vim python3-pip gcc python3-dev unzip curl wget 
COPY scripts scripts
RUN chmod +x scripts

USER airflow
COPY requirements.txt .
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-cache-dir -r requirements.txt

WORKDIR $AIRFLOW_HOME