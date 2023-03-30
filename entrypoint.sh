python3 manage.py migrate 
python3 manage.py updatecatalog 
python3 manage.py collectstatic 

python3 manage.py runserver ${BIND_HOST}:${BIND_PORT}
