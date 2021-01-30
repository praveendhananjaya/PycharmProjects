

# MEDshop

This is a e-commerce website built with Django.

## Quick demo

[![alt text]( https://github.com/cepdnaclk/e16-3yp-smart-pharmaceutical-warehousing/blob/main/Web%20application/aws/doc/demo.gif "Logo")]

---

# Running this project

To get this project up and running you should start by having Python installed on your computer. It's advised you create a virtual environment to store your projects dependencies separately. You can install virtualenv with

```
pipenv shell
```
Then install the project dependencies with

```
pip install -r requirements.txt
```

Now you can run the project with this command

```
python manage.py runserver
```
Now you can run the project with this command (gunicorn)

```
gunicorn djecommerce.wsgi:application --bind 0.0.0.0:8000
```
---

# Functions

### password authentication
```
login
```
![alt text]( https://github.com/cepdnaclk/e16-3yp-smart-pharmaceutical-warehousing/blob/main/Web%20application/aws/doc/login.png )

```
sign up
```

![alt text]( https://github.com/cepdnaclk/e16-3yp-smart-pharmaceutical-warehousing/blob/main/Web%20application/aws/doc/signup.png )

### Accountability



