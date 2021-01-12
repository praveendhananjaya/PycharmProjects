from django.db import models

# Create your models here.

class Product(models.Model):
    title       = models.CharField(max_length=150)   
    description = models.TextField(max_length=300)
    price       = models.DecimalField(decimal_places=2,max_digits=10)
    # defult = ''