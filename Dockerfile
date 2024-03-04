FROM rocker/geospatial:4.3.3-ubuntugis
ENV RENV_PATHS_CACHE=/renv/
RUN apt update -y && apt install -y libproj22 libproj-dev
