FROM python:3.12-alpine

RUN mkdir /src && mkdir /src/django-app
WORKDIR /src

COPY . /src/

RUN apk update && apk add python3-dev

RUN pip3 install -r requirements.txt
CMD ["python", "django-app/manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000