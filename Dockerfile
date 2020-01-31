# Build an image from the python 3.7 image
FROM python:3.7-alpine
# set the working directory
WORKDIR /code
# Environment variables from the flask command
ENV FLASK_APP testapp.py
ENV FLASK_RUN_HOST 0.0.0.0
# install gcc
RUN apk add --no-cache gcc musl-dev linux-headers
# copy the dependencies file and install them
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
# copy the current directory to the workdir
COPY . .
# default command for the container
CMD ["flask","run"]
