from typing import Text
from django.db import models
from django.db.models.fields import CharField, DateField, TextField

# Create your models here.
class post (models.Model):
    Nombre = CharField(max_length=50)
    Pais = CharField(max_length=50)
    gusta_hacer = CharField(max_length=50)
    si_o_no = CharField(max_length=2)
    que_piensas = TextField()
    fecha_post = DateField()
