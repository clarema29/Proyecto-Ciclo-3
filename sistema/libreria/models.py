from tabnanny import verbose
from django.db import models

# Create your models here.
class Mouses(models.Model):
    id = models.AutoField(primary_key=True)
    producto = models.TextField(verbose_name='Productoo', null=True)
    img = models.TextField(verbose_name='link de la image', null=True)
    precio = models.IntegerField(max_length=10, verbose_name='Precio')
