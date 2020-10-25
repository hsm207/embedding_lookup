FROM jupyter/base-notebook:latest

USER root
RUN pip install --upgrade pip && \
    pip install pandas \
        tf-nightly

RUN apt update && \
    apt install -y git

USER jovyan