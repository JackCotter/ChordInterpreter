# Use an official Python runtime as a parent image
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /

# Copy the current directory contents into the container at /app
COPY . /

ENV DEBIAN_FRONTEND=noninteractive

# Install any needed packages specified in requirements.txt
# RUN add-apt-repository universe
RUN apt update

# compile python from source - avoid unsupported library problems
RUN apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:deadsnakes/ppa && \
  apt-get update && \
  apt install -y python3.8

RUN apt-get install -y libsndfile1
RUN apt-get install -y timidity
RUN apt-get install -y ffmpeg
RUN apt-get install -y python3-numpy
RUN apt-get install -y python3-pip
# RUN pip3 install --upgrade pip3
RUN pip3 install --no-cache-dir -r requirements.txt

# Run your Python script when the container launches
CMD ["python3.8", "main.py"]
