# Base image
FROM python:3.9

# setup env vars
ENV PYTHONUNBUFFERED=1

# setup virtual env
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="${VIRTUAL_ENV}/bin:${PATH}"

# set working directory
WORKDIR /django

# copy into folder /django/
COPY . /django/

# install reqs
RUN pip3 install -r requirements.txt

# Allow port
EXPOSE 8000
ENTRYPOINT ["python", "manage.py"]

# Run server localy
CMD /bin/bash -c 'python manage.py runserver 0.0.0.0:${PORT}'