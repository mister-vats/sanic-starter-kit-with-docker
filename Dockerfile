# Dockerfile for setting up project with one command

#Using the official python 3.5 package

FROM python:3.5

#set the working directory in container

WORKDIR /app

#copying requirements.txt to image

COPY ./requirements.txt /app/requirements.txt

#Installing requirements for project

RUN pip install -r requirements.txt

#Copy existing code to image

COPY . /app

#Expoing container port to connect to the host machine

EXPOSE 8000

# Run the flask app

#CMD [ "python", "manage.py", "runserver", "--host",  "0.0.0.0" ]

CMD ./startup.sh

