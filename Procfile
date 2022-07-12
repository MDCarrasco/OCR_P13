web: gunicorn core.wsgi
release: python3 manage.py makemigrations oc_lettings_site lettings profiles
release: python3 manage.py migrate --run-syncdb
