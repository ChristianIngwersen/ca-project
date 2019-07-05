FROM ubuntu:18.04

# Setup package manager
RUN apt-get update \
    && apt-get install -y python-pip

# Copy repo
COPY . /ca-project

# Install requirements
RUN pip install -r /ca-project/requirements.txt

CMD ["python", "/ca-project/run.py"]