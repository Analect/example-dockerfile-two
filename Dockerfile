FROM jupyter/notebook-minimal:4.1

MAINTAINER Jupyter Project <jupyter@googlegroups.com>

USER root

# Add dependency
RUN apt-get update
RUN apt-get install -y graphviz

USER jovyan
WORKDIR /home/jovyan/

# Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Install requirements for Python 3
RUN bash -c "source activate python3 && pip install -r requirements.txt"

USER jovyan
