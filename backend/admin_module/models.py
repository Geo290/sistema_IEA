from collections.abc import Iterable
from django.db import models
from django.contrib.auth.models import User, AbstractUser
from django.contrib.auth.hashers import make_password

# Create your models here.
# ====== George's =======
class Universidades(models.Model):
    #create the model
    IDUniversidad = models.AutoField(primary_key=True)
    Abreviacion = models.CharField(max_length=10)
    Nombre = models.CharField(max_length=100, null=True, blank=True)
    Plan_estudios = models.CharField(max_length=15, null=True, blank=True)
    
    def __str__(self) -> str:
        return self.Abreviacion + ': ' + self.Nombre


class Usuarios(AbstractUser):

    #create the model
    IDUsuario = models.AutoField(primary_key=True)
    #Usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    #Contrasena = models.CharField(max_length=8)
    ROLE_CHOICES = (
        ('RECTOR', 'Rector'),
        ('PLANEACION', 'Planeacion'),
        ('DIRECTOR', 'Director')
    )
    Cargo = models.CharField(max_length=10, choices=ROLE_CHOICES)
    Universidad = models.ForeignKey('Universidades',on_delete=models.CASCADE, null=True, blank=True)
    REQUIRED_FIELDS = [ 'password', 'Cargo']