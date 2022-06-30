# Base image
FROM python:3.9

# setup env vars
ENV PYTHONUNBUFFERED=1
ENV DJANGO_SECRET_KEY=$DJANGO_SECRET_KEY
ENV SENTRY_AUTH=$SENTRY_AUTH
ENV SENTRY_PROJECT_ID=$SENTRY_PROJECT_ID

# set working directory
WORKDIR /django

# copy into folder /django/
COPY . /django/

# install reqs
RUN pip install -r requirements.txt

# Allow port
EXPOSE 8000
ENTRYPOINT ["python", "manage.py"]

# Run server localy
CMD /bin/bash -c 'python manage.py runserver 0.0.0.0:${PORT}'