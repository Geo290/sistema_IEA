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
class UTNA_Carreras(models.Model):
    #create the model
    IDCarrera = models.AutoField(primary_key=True)
    Universidad = models.ForeignKey(Universidades, on_delete=models.CASCADE)
    Nombre = models.CharField(max_length=100)
    Abreviacion = models.CharField(max_length=10)
    Modalidad = models.CharField(max_length=15)
    Nivel = models.CharField(max_length=15)
    def __str__(self) -> str:
        return self.Abreviacion

class UTNA_Tasa_cobertura(models.Model):
    #create the model
    IDTC = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Incremento_matricula = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Eficiencia_IRE(models.Model):
    #create the model
    IDEIRE = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Indice_retencion = models.DecimalField(max_digits=5, decimal_places=2)
    Indice_desercion = models.DecimalField(max_digits=5, decimal_places=2)
    Indice_eficiencia_terminal = models.DecimalField(max_digits=5, decimal_places=2)
    Indice_titulacion = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Tasa_Puntaje_EGETSU(models.Model):
    #create the model
    IDTPEGESTU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    p_700_800 = models.IntegerField()
    p_801_900 = models.IntegerField()
    p_901_1000 = models.IntegerField()
    p_1001_1200 = models.IntegerField()
    p_1201_1300 = models.IntegerField()
    puntaje_satisfactorio = models.DecimalField(max_digits=5, decimal_places=2)
    puntaje_sobresaliente = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Tasa_Puntaje_EGEL(models.Model):
    #create the model
    IDTPEGEL = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    p_700_800 = models.IntegerField()
    p_801_900 = models.IntegerField()
    p_901_1000 = models.IntegerField()
    p_1001_1200 = models.IntegerField()
    p_1201_1300  = models.IntegerField()
    puntaje_satisfactorio = models.DecimalField(max_digits=5, decimal_places=2)
    puntaje_sobresaliente = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

# ======= Roberto's ========
class UTNA_Tasa_Docentes(models.Model):
    #create the model
    IDTD = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    No_docentes = models.IntegerField()
    Doc_perfil_adecuado = models.IntegerField()
    Tasa_docentes = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Indice_PTC(models.Model):
    #create the model
    IDIPTC = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE, related_name='Carrera') 
    Periodo = models.IntegerField()
    Nombre_profesor = models.CharField(max_length=100)
    Nombre_investigacion = models.CharField(max_length=150)
    PE_Pertenecientes = models.ForeignKey(UTNA_Carreras, on_delete = models.CASCADE, related_name='PE_Pertenecientes')
    Tipo_profesor = models.CharField(max_length=3)
    Estado_investigacion = models.CharField(max_length=10) 
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Tasa_PE_ASAT(models.Model):
    IDTPEASAT = models.AutoField(primary_key=True)
    PE = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Realizacion = models.DateField()
    Vencimiento = models.DateField()
    def __str__(self) -> str:
        return self.PE.Abreviacion + '_' + self.Periodo

class UTNA_ISEg_TSU(models.Model):
    #create the model
    IDISEGTSU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Bolsa_trabajo = models.DecimalField(max_digits=5, decimal_places=2)
    Op_estadia = models.DecimalField(max_digits=5, decimal_places=2)
    Experiencia_practica = models.DecimalField(max_digits=5, decimal_places=2)
    Laboratorios_talleres = models.DecimalField(max_digits=5, decimal_places=2)
    Infraestructura = models.DecimalField(max_digits=5, decimal_places=2)
    Dominio_prob_lab = models.DecimalField(max_digits=5, decimal_places=2)
    Conocimiento_prof = models.DecimalField(max_digits=5, decimal_places=2)
    Calificacion_MEB5 = models.DecimalField(max_digits=5, decimal_places=2)
    Op_preparacion = models.DecimalField(max_digits=5, decimal_places=2)
    Indice_satisfaccion = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_ISEg_L(models.Model):
    #create the model
    IDISEGL = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Bolsa_trabajo = models.DecimalField(max_digits=5, decimal_places=2)
    Op_estadia = models.DecimalField(max_digits=5, decimal_places=2)
    Experiencia_practica = models.DecimalField(max_digits=5, decimal_places=2)
    Laboratorios_talleres = models.DecimalField(max_digits=5, decimal_places=2)
    Infraestructura = models.DecimalField(max_digits=5, decimal_places=2)
    Dominio_prob_lab = models.DecimalField(max_digits=5, decimal_places=2)
    Conocimiento_prof = models.DecimalField(max_digits=5, decimal_places=2)
    Calificacion_MEB5 = models.DecimalField(max_digits=5, decimal_places=2)
    Op_preparacion = models.DecimalField(max_digits=5, decimal_places=2)
    Indice_satisfaccion = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_ISEm_TSU(models.Model):
    #create the model
    IDISEMTSU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Op_grado = models.DecimalField(max_digits=5, decimal_places=2)
    Creatividad = models.DecimalField(max_digits=5, decimal_places=2)
    Manejo_equipo = models.DecimalField(max_digits=5, decimal_places=2)
    Solucion_prob = models.DecimalField(max_digits=5, decimal_places=2)
    Op_trabajo = models.DecimalField(max_digits=5, decimal_places=2)
    Capacidad = models.DecimalField(max_digits=5, decimal_places=2)
    Cumple_req = models.DecimalField(max_digits=5, decimal_places=2)
    Calificacion_trabajo = models.DecimalField(max_digits=5, decimal_places=2)
    Indice_satisfaccion = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_ISEm_L(models.Model):
    #create the model
    IDISEML = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Op_grado = models.DecimalField(max_digits=5, decimal_places=2)
    Creatividad = models.DecimalField(max_digits=5, decimal_places=2)
    Manejo_equipo = models.DecimalField(max_digits=5, decimal_places=2)
    Solucion_prob = models.DecimalField(max_digits=5, decimal_places=2)
    Op_trabajo = models.DecimalField(max_digits=5, decimal_places=2)
    Capacidad = models.DecimalField(max_digits=5, decimal_places=2)
    Cumple_req = models.DecimalField(max_digits=5, decimal_places=2)
    Calificacion_trabajo = models.DecimalField(max_digits=5, decimal_places=2)
    Indice_satisfaccion = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
    
# ====== Miguel's ======
class UTNA_Indice_Servicios(models.Model):
    #create the model
    IDIS = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Salud_externa = models.DecimalField(max_digits=5, decimal_places=2)
    Bolsa_trabajo = models.DecimalField(max_digits=5, decimal_places=2)
    Salud_interna = models.DecimalField(max_digits=5, decimal_places=2)
    Asesoria_academica = models.DecimalField(max_digits=5, decimal_places=2)
    Actividades_crecimiento = models.DecimalField(max_digits=5, decimal_places=2)
    Tutoria = models.DecimalField(max_digits=5, decimal_places=2)
    Orientacion = models.DecimalField(max_digits=5, decimal_places=2)
    Espacio_expresion = models.DecimalField(max_digits=5, decimal_places=2)
    Estimulos_desempeno = models.DecimalField(max_digits=5, decimal_places=2)
    Seguridad = models.DecimalField(max_digits=5, decimal_places=2)
    Instalaciones = models.DecimalField(max_digits=5, decimal_places=2)
    Actividades_arte = models.DecimalField(max_digits=5, decimal_places=2)
    Traslado = models.DecimalField(max_digits=5, decimal_places=2)
    Fomento_salud = models.DecimalField(max_digits=5, decimal_places=2)
    Alimentos = models.DecimalField(max_digits=5, decimal_places=2)
    Indice_satisfaccion = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
      
class UTNA_Tasa_PE_Pertinencia(models.Model):
    #create the model
    IDTPEP = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Presenta = models.BooleanField()
    Fecha_elaboracion = models.DateField() 
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Indice_Colocacion(models.Model):
    #create the model
    IDIC = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Egresados = models.IntegerField()
    Colocados = models.IntegerField()
    Indice_colocacion = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
    
class UTNA_Tasa_Mov_Alumnos(models.Model):
    #create the model
    IDTMA = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Matricula = models.IntegerField()
    No_alum_viajaron = models.IntegerField()
    Paises = models.CharField(max_length=100) 
    Tasa_movilidad = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
    
class UTNA_Tasa_Mov_Docentes(models.Model):
    #create the model
    IDTMD = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Matricula = models.IntegerField()
    No_doc_viajaron = models.IntegerField()
    Paises = models.CharField(max_length=100) 
    Tasa_movilidad = models.DecimalField(max_digits=5, decimal_places=2)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
    
class UTNA_Tasa_Acreditacion(models.Model):
    #create the model
    IDTA = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField()
    Acreditacion = models.BooleanField()
    Tipo_acreditacion = models.CharField(max_length=50) 
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
