ARG AIRFLOW_BASE_IMAGE="apache/airflow:2.7.3-python3.8"
FROM ${AIRFLOW_BASE_IMAGE}

# pyarrow required for writing to_parquet() with Pandas
# minio required for communicating with Minio
# geopandas & pygeos for mapping lat lon coordinates to NYC taxi zone ids

#
#RUN curl -L -o gdal231.zip http://download.osgeo.org/gdal/2.3.1/gdal231.zip \
#    && unzip gdal231.zip \
#    && cd gdal-2.3.1 \
#    && ./configure --with-ecw=/usr/local/hexagon --with-python \
#    && make clean \
#    && make \
#    && make install \
#    && cd .. \
#    && rm gdal231.zip \
#    && ldconfig \
#
#RUN pip install GDAL==$(gdal-config --version) --global-option=build_ext --global-option="-I/usr/include/gdal"
#

USER root

RUN apt-get update -y
RUN apt-get install libproj-dev proj-data proj-bin -y
RUN apt-get install libgeos-dev wget unzip build-essential -y # pygeos
RUN apt-get install -y python3-geopandas
#RUN wget http://download.osgeo.org/gdal/2.4.1/gdal241.zip
#RUN unzip gdal241.zip
#RUN chmod o+x gdal-2.4.1
#RUN cd gdal-2.4.1 &&  ./configure --with-pg --with-geos --with-spatialite --with-libkml --with-proj &&  make -j4 &&  make install

#USER 1001

USER airflow

RUN pip install --user --no-cache-dir \
    pyarrow==10.0.1 \
    minio==5.0.10 \
    #geopandas==0.8.0 \
    #pygeos==0.14 \
    apache-airflow-providers-amazon==1.0.0

