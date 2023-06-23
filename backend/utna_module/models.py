from django.db import models
from admin_module.models import Universidades  
# SOME NOTES:

# null = True -> this allowes empty fields in DB
# blank = True -> this allowes empty fields in forms
# the default is False for the both.
# just mark what you need nullable

# to create an auto increment variable just use:
# "field_name" = models.AutoField(primary_key=True)

# ====== George's =======
# Create your models here.
class Carreras(models.Model):
    #create the model
    IDCarrera = models.AutoField(primary_key=True)
    Universidad = models.ForeignKey(Universidades, on_delete=models.CASCADE)
    Nombre = models.CharField(max_length=100)
    Abreviacion = models.CharField(max_length=10)
    Modalidad = models.CharField(max_length=15)
    Nivel = models.CharField(max_length=15)

class UTNA_Tasa_cobertura(models.Model):
    #create the model
    IDTC = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Incremento_matricula = models.DecimalField()

class UTNA_Eficiencia_IRE(models.Model):
    #create the model
    IDEIRE = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Indice_retencion = models.DecimalField()
    Indice_desercion = models.DecimalField()
    Indice_eficiencia_terminal = models.DecimalField()
    Indice_titulacion = models.DecimalField()

class UTNA_Tasa_Puntaje_EGETSU(models.Model):
    #create the model
    IDTPEGESTU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
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
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
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
    IDTD = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    No_docentes = models.IntegerField()
    Doc_perfil_adecuado = models.IntegerField()
    Tasa_docentes = models.DecimalField()

class UTNA_Indice_PTC(models.Model):
    #create the model
    IDIPTC = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Nombre_profesor = models.CharField(max_length=100)
    Nombre_investigacion = models.CharField(max_length=150)
    PE_Pertenecientes = models.ForeignKey(Carreras, on_delete = models.CASCADE)
    Tipo_profesor = models.CharField(max_length=3)
    Estado_investigacion = models.CharField(max_length=10) 

class UTNA_Tasa_PE_ASAT(models.Model):
    IDTPEASAT = models.AutoField(primary_key=True)
    PE = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Realizacion = models.DateField()
    Vencimiento = models.DateField()

class UTNA_ISEg_TSU(models.Model):
    #create the model
    IDISEGTSU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Bolsa_trabajo = models.DecimalField()
    Op_estadia = models.DecimalField()
    Experiencia_practica = models.DecimalField()
    Laboratorios_talleres = models.DecimalField()
    Infraestructura = models.DecimalField()
    Dominio_prob_lab = models.DecimalField()
    Conocimiento_prof = models.DecimalField()
    Calificacion_MEB5 = models.DecimalField()
    Op_preparacion = models.DecimalField()
    Indice_satisfaccion = models.DecimalField()

class UTNA_ISEg_L(models.Model):
    #create the model
    IDISEGL = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Bolsa_trabajo = models.DecimalField()
    Op_estadia = models.DecimalField()
    Experiencia_practica = models.DecimalField()
    Laboratorios_talleres = models.DecimalField()
    Infraestructura = models.DecimalField()
    Dominio_prob_lab = models.DecimalField()
    Conocimiento_prof = models.DecimalField()
    Calificacion_MEB5 = models.DecimalField()
    Op_preparacion = models.DecimalField()
    Indice_satisfaccion = models.DecimalField()

class UTNA_ISEm_TSU(models.Model):
    #create the model
    IDISEMTSU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Op_grado = models.DecimalField()
    Creatividad = models.DecimalField()
    Manejo_equipo = models.DecimalField()
    Solucion_prob = models.DecimalField()
    Op_trabajo = models.DecimalField()
    Capacidad = models.DecimalField()
    Cumple_req = models.DecimalField()
    Calificacion_trabajo = models.DecimalField()
    Indice_satisfaccion = models.DecimalField()

class UTNA_ISEm_L(models.Model):
    #create the model
    IDISEML = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Op_grado = models.DecimalField()
    Creatividad = models.DecimalField()
    Manejo_equipo = models.DecimalField()
    Solucion_prob = models.DecimalField()
    Op_trabajo = models.DecimalField()
    Capacidad = models.DecimalField()
    Cumple_req = models.DecimalField()
    Calificacion_trabajo = models.DecimalField()
    Indice_satisfaccion = models.DecimalField()
    


# ====== Miguel's ======
class UTNA_Indice_Servicios(models.Model):
    #create the model
    IDIS = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Salud_externa = models.DecimalField()
    Bolsa_trabajo = models.DecimalField()
    Salud_interna = models.DecimalField()
    Asesoria_academica = models.DecimalField()
    Actividades_crecimiento = models.DecimalField()
    Tutoria = models.DecimalField()
    Orientacion = models.DecimalField()
    Espacio_expresion = models.DecimalField()
    Estimulos_desempeño = models.DecimalField()
    Seguridad = models.DecimalField()
    Instalaciones = models.DecimalField()
    Actividades_arte = models.DecimalField()
    Traslado = models.DecimalField()
    Fomento_salud = models.DecimalField()
    Alimentos = models.DecimalField()
    Indice_satisfaccion = models.DecimalField()
      
class UTNA_Tasa_PE_Pertinencia(models.Model):
    #create the model
    IDTPEP = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Presenta = models.BooleanField()
    Fecha_elaboracion = models.DateField() 

class UTNA_Indice_Colocacion(models.Model):
    #create the model
    IDIC = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Egresados = models.IntegerField()
    Colocados = models.IntegerField()
    Indice_colocacion = models.DecimalField()
    
class UTNA_Tasa_Mov_Alumnos(models.Model):
    #create the model
    IDTMA = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Matricula = models.IntegerField()
    No_alum_viajaron = models.IntegerField()
    Paises = models.CharField(max_length=100) 
    Tasa_movilidad = models.DecimalField()
    
class UTNA_Tasa_Mov_Docentes(models.Model):
    #create the model
    IDTMD = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Matricula = models.IntegerField()
    No_doc_viajaron = models.IntegerField()
    Paises = models.CharField(max_length=100) 
    Tasa_movilidad = models.DecimalField()
    
class UTNA_Tasa_Acreditacion(models.Model):
    #create the model
    IDTA = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Acreditacion = models.BooleanField()
    Tipo_acreditacion = models.CharField(max_length=50) 