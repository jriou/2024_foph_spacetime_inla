FROM rocker/geospatial:4.3.3-ubuntugis
RUN apt update -y && apt install -y libproj22 libproj-dev
