#Setup application:

#Install Python

python3 -m pip install django

#Migrate Database

#Create database mysale
#Enter correct Database Settings under settings.py

python3 manage.py makemigrations
python3 manage.py migrate

python3 manage.py runserver

#By default the server is hosted on 127.0.0.1:8000
#By Prarambhika <3