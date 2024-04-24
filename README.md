## Start APP

```
docker-compose build
docker-compose up -d
```

## Airflow

```
url: http://localhost:8080
user: airflow
pass: airflow
```

## Notebook

```
url: http://localhost:8888

token: docker logs -f airflow-docker-notebook-1
```