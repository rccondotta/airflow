# Airflow Concepts

## Custom Docker Image Installation Procedure with Windows

**Build Custom Image**

Run `docker build -t sample-airflow .` in the directory containing the Dockerfile.

**Run Docker Compose**

Execute `docker compose -f "sample-airflow-container\docker-compose.yml" up -d --build` in the directory containing the docker-compose.yml file.

These steps will build your custom Docker image and start a container using docker-compose on your Windows system.

### Notes

- ./airflow directory on your local machine will be mounted to /opt/airflow inside the container, ensuring that Airflow data persists even after the container is stopped.

- To log in to your Airflow instance, navigate to the `./airflow` directory on your local machine and file `standalone_admin_password.txt`, where you'll find the password. Use `admin`.

## Adding Directed Acyclic Graphs (DAGs)

1. Create `dags` directory in `./airflow`
2. Add `.py` to directory and after a short bit refresh to see changes within container

You can now manually trigger your DAG.

## Adding Email Service

1. Update `airflow.cfg`
2. Alter `smtp_host` to be name of email service: `sample-smtp`