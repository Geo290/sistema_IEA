from django.db import models

# SOME NOTES:

# null = True -> this allowes empty fields in DB
# blank = True -> this allowes empty fields in forms
# the default is False for the both.
# just mark what you need nullable

# to create an auto increment varable just use:
# "field_name" = models.AutoField(primary_key=True)

# ====== George's =======
# Create your models here.
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

class carreras(models.Model):
    #create the model
    IDCarrera = models.AutoField(primary_key=True)
    Universidad = models.ForeignKey('Universidades', on_delete=models.CASCADE)
    Nombre = models.CharField(max_length=100)
    Abreviacion = models.CharField(max_length=10)
    Modalidad = models.CharField(max_length=15)
    Nivel = models.CharField(max_length=15)

class UTNA_Tasa_cobertura(models.Model):
    #create the model
    IDTC = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey('carreras', on_delete=models.CASCADE)
    Año = models.IntegerField()
    Incremento_matricula = models.DecimalField()

class UTNA_Eficiencia_IRE(models.Model):
    #create the model
    IDEIRE = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey('carreras', on_delete=models.CASCADE)
    Año = models.IntegerField()
    Indice_retencion = models.DecimalField()
    Indice_desercion = models.DecimalField()
    Indice_eficiencia_terminal = models.DecimalField()
    Indice_titulacion = models.DecimalField()

class UTNA_Tasa_Puntaje_EGETSU(models.Model):
    #create the model
    IDTPEGESTU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey('carreras', on_delete=models.CASCADE)
    Año = models.IntegerField()
    p_700_800 = models.IntegerField()
    p_801_900 = models.IntegerField()
    p_901_1000 = models.IntegerField()
    p_1001_1200 = models.IntegerField()
    p_1201_1300 = models.IntegerField()
    puntaje_satisfactorio = models.DecimalField()
    puntaje_sobresaliente = models.DecimalField()

class UTNA_Tasa_Puntaje_EGEL(models.Model):
    #create the model
    IDTPEGEL = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey('carreras', on_delete=models.CASCADE)
    Año = models.IntegerField()
    p_700_800 = models.IntegerField()
    p_801_900 = models.IntegerField()
    p_901_1000 = models.IntegerField()
    p_1001_1200 = models.IntegerField()
    p_1201_1300  = models.IntegerField()
    puntaje_satisfactorio = models.DecimalField()
    puntaje_sobresaliente = models.DecimalField()

# ======= Roberto's ========
class UTNA_Tasa_Docentes(models.Model):
    #create the model

class UTNA_Indice_PTC(models.Model):
    #create the model

class UTNA_Tasa_PE_ASAT(models.Model):
    #create the model

class UTNA_ISEg_TSU(models.Model):
    #create the model

class UTNA_ISEg_L(models.Model):
    #create the model

class UTNA_ISEm_TSU(models.Model):
    #create the model

class UTNA_ISEm_L(models.Model):
    #create the model


# ====== Miguel's ======
class UTNA_Indice_Servicios(models.Model):
    #create the model

class UTNA_Tasa_PE_Pertinencia(models.Model):
    #create the model

class UTNA_Indice_Colocacion(models.Model):
    #create the model

class UTNA_Tasa_Mov_Alumnos(models.Model):
    #create the model

class UTNA_Tasa_Mov_Docentes(models.Model):
    #create the model

class UTNA_Tasa_Acreditacion(models.Model):
    #create the model
