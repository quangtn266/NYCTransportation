.DEFAULT_GOAL := help

# From https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help:
		@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%m-30s\033[0m %s\n", $$1, $$2}'

.PHONY: build_citibike_api ## Build the Citi Bike API Docker Image
build_citibike_api: docker build -t airflowbook/chatper14_citibike_api services/citibike_api

.PHONY: build_citibike_db ## Build the CitiBike DB Docker image
build_citibike_db: docker build -t airflowbook/chatper14_citibike_db services/citibike_db

.PHONY: build_citibike
build_citibike: build_citibike_api build_citibike_db ## Build the Citibike API & DB Docker images

.PHONY: build_taxi_fileserver # Build the NYC Yellow Taxi fileserver Docker image.
build_taxi_fileserver: docker build -t airflowbook/chapter14_taxi_fileserver services/taxi_fileserver

.PHONY: build_taxi_db # Build the NYC Yellow taxi db docker image
build_taxi_db: docker build -t airflowbook/chatper14_taxi_db services/taxi_db

.PHONY: build_taxi
build_taxi: build_taxi_fileserver build_taxi_db ## Build the NYC Yellow taxi fileserver & DB docker images

.PHONY: build_airflow # Build Airflow with additional dependencies
build_airflow: docker build -t airflowbook/chatper14_airflow services/airflow

.PHONY: build_nyc_transportation_api # Build NYC transportation API
build_nyc_transportation_api: docker build -t airflowbook/chatper14_nyc_transportation_api_services/nyc_transportation_api

.PHONY: build_all # Build all docker images (warning: takes long)
build_all: build_citibike build_taxi build_airflow build_nyc_transportation_api