web: gunicorn core.wsgi
release: python3 manage.py migrate
release: python3 manage.py loaddata fixtures/*
