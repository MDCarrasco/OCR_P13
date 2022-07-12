web: gunicorn core.wsgi
release: python3 manage.py makemigrations
release: python3 manage.py migrate oc_lettings_site zero
release: python3 manage.py migrate oc_lettings_site
release: python3 manage.py loaddata fixtures/*
