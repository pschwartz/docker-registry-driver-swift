FROM       registry
MAINTAINER Matthew Fisher <me@bacongobbler.com>

# python-swiftclient requires lxml
RUN apt-get update && apt-get install -yq python-lxml libmysqlclient-dev

COPY . /src
RUN pip install MySQL-python
RUN pip install /src
