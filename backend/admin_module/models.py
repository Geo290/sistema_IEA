from django.db import models

# Create your models here.
# ====== George's =======
class Universidades(models.Model):
    #create the model
    IDUniversidad = models.AutoField(primary_key=True)
    Abreviacion = models.CharField(max_length=10, null=True, blank=True)
    Nombre = models.CharField(max_length=100, null=True, blank=True)
    Plan_estudios = models.CharField(max_length=15, null=True, blank=True)

class Usuarios(models.Model):
    #create the model
    IDUsuario = models.AutoField(primary_key=True)
    Nombre_usuario = models.CharField(max_length=200)
    Contraseña = models.CharField(max_length=8)
    Cargo = models.CharField(max_length=10)
    Universidad = models.ForeignKey('Universidades',on_delete=models.CASCADE)
