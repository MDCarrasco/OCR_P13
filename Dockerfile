# Base image
FROM python:3.9

# setup env vars
ENV PYTHONUNBUFFERED=1

# set working directory
WORKDIR /django

# copy into folder /django/
COPY . /django/

# install reqs
RUN pip install -r requirements.txt

# search sqlite
RUN apt-cache search sqlite

# install sqlite3
RUN apt-get install sqlite3

# Allow port
EXPOSE 8000
ENTRYPOINT ["python", "manage.py"]

# Make migrations
CMD /bin/bash -c 'python manage.py makemigrations'

# Migrate
CMD /bin/bash -c 'python manage.py migrate'

# Loaddata
CMD /bin/bash -c 'python manage.py loaddata fixtures/*'

# Run server localy
CMD /bin/bash -c 'python manage.py runserver 0.0.0.0:${PORT}'