# NYCTransportation
Demo project about NYC Transportation.

## Content.
The project is a small project from Data Pipelines with Apache Airflow. As the book is published for while, then the source code isn't appropriate now. Therefore, I polish the source code.

In NYC city, if we want to go from A to B, which method of transportation is fastest?

The porject shows how to extract, load and transformation data.

I will run it in the container following the steps (tech-stack):
1. One REST API serving Citi Bike data
2. One file share serving Yellow Cab taxi data
3. PostgreSQL database for querying and storing data
4. A Flask application displaying results

## Structure code.

.
├── dags
├── services
│   ├── airflow
│   ├── citbibike_api
│   ├── citbibike_db
│   ├── nyc_transportation_api
│   ├── result_db
│   ├── taxi_db
│   ├── taxi_fileserver
├── src
│   ├── nyc_transport
│   │   ├── hook
│   │   ├── operators
│   ├── nyctransport.egg-info
├── docker-compose.yml
├── Makefile
├── requirements.txt
└── README.md

|-- kibana
    |-- .bowerrc
    |-- .gitignore
    |-- .jshintrc
    |-- .travis.yml
    |-- CONTRIBUTING.md
    |-- FAQ.md
    |-- Gruntfile.js
    |-- LICENSE.md

### To run code
1. docker-compose up -d (start running)
2. docker-compose down -v (stop running)

## Thanks author from the book for his contribution.
