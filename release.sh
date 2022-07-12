python3 manage.py makemigrations oc_lettings_site lettings profiles
python3 manage.py migrate --run-syncdb
python3 manage.py loaddata fixtures/*
