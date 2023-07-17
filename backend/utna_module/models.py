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
    Periodo = models.IntegerField(null=False)
    Incremento_matricula = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Eficiencia_IRE(models.Model):
    #create the model
    IDEIRE = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Indice_retencion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Indice_desercion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Indice_eficiencia_terminal = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Indice_titulacion = models.DecimalField(max_digits=5, decimal_places=2, null=True ,default='000.00')
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Tasa_Puntaje_EGETSU(models.Model):
    #create the model
    IDTPEGESTU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    p_700_800 = models.IntegerField(null=True, default=000.00)
    p_801_900 = models.IntegerField(null=True, default=000.00)
    p_901_1000 = models.IntegerField(null=True, default=000.00)
    p_1001_1200 = models.IntegerField(null=True, default=000.00)
    p_1201_1300 = models.IntegerField(null=True, default=000.00)
    puntaje_satisfactorio = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    puntaje_sobresaliente = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Tasa_Puntaje_EGEL(models.Model):
    #create the model
    IDTPEGEL = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    p_700_800 = models.IntegerField(null=True, default=000.00)
    p_801_900 = models.IntegerField(null=True, default=000.00)
    p_901_1000 = models.IntegerField(null=True, default=000.00)
    p_1001_1200 = models.IntegerField(null=True, default=000.00)
    p_1201_1300  = models.IntegerField(null=True, default=000.00)
    puntaje_satisfactorio = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    puntaje_sobresaliente = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

# ======= Roberto's ========
class UTNA_Tasa_Docentes(models.Model):
    #create the model
    IDTD = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    No_docentes = models.IntegerField(null=True, default=000.00)
    Doc_perfil_adecuado = models.IntegerField(null=True, default=000.00)
    Exp_Lab_pertinente = models.IntegerField(null=True, default=000.00)
    Tasa_docentes = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Indice_PTC(models.Model):
    #create the model
    IDIPTC = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE, related_name='Carrera') 
    Periodo = models.IntegerField(null=False)
    Nombre_profesor = models.CharField(max_length=100, null=True)
    Nombre_investigacion = models.CharField(max_length=250, null=True)
    PE_Pertenecientes = models.ForeignKey(UTNA_Carreras, on_delete = models.CASCADE, related_name='PE_Pertenecientes')
    Tipo_profesor = models.CharField(max_length=3, null=True)
    Estado_investigacion = models.CharField(max_length=10, null=True) 
    Perfil_PRODEPT = models.BooleanField(default=False)
    Participación_CA = models.BooleanField(default=False)
    
    
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_Tasa_PE_ASAT(models.Model):
    IDTPEASAT = models.AutoField(primary_key=True)
    PE = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Realizacion = models.DateField(null=True)
    Vencimiento = models.DateField(null=True)
    def __str__(self) -> str:
        return self.PE.Abreviacion + '_' + self.Periodo

class UTNA_ISEg_TSU(models.Model):
    #create the model
    IDISEGTSU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Bolsa_trabajo = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Op_estadia = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Trabaja_lugar_estadia = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Experiencia_practica = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Laboratorios_talleres = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Infraestructura = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Dominio_prob_lab = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Conocimiento_prof = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Calificacion_MEB5 = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Op_preparacion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Indice_satisfaccion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_ISEg_L(models.Model):
    #create the model
    IDISEGL = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Bolsa_trabajo = models.DecimalField(max_digits=5, decimal_places=2)
    Op_estadia = models.DecimalField(max_digits=5, decimal_places=2)
    Trabaja_lugar_estadia = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Experiencia_practica = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Laboratorios_talleres = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Infraestructura = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Dominio_prob_lab = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Conocimiento_prof = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Calificacion_MEB5 = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Op_preparacion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Indice_satisfaccion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_ISEm_TSU(models.Model):
    #create the model
    IDISEMTSU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Op_grado = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Creatividad = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Manejo_equipo = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Solucion_prob = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Op_trabajo = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Capacidad = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Cumple_req = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Calificacion_trabajo = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Indice_satisfaccion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

class UTNA_ISEm_L(models.Model):
    #create the model
    IDISEML = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Op_grado = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Creatividad = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Manejo_equipo = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Solucion_prob = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Op_trabajo = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Capacidad = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Cumple_req = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Calificacion_trabajo = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Indice_satisfaccion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
    
# ====== Miguel's ======
class UTNA_Indice_Servicios(models.Model):
    #create the model
    IDIS = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Salud_externa = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Bolsa_trabajo = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Salud_interna = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Asesoria_academica = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Actividades_crecimiento = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Tutoria = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Orientacion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Espacio_expresion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Estimulos_desempeno = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Seguridad = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Instalaciones = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Actividades_arte = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Traslado = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Fomento_salud = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Alimentos = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Bibliteca = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Conectivida = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Laboratorio_computo = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Laboratorio_practica = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    Indice_satisfaccion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
      
class UTNA_Tasa_PE_Pertinencia(models.Model):
    #create the model
    IDTPEP = models.AutoField(primary_key=True)
    PE = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Presenta = models.BooleanField(default=False)
    Fecha_elaboracion = models.DateField(null=True) 
    def __str__(self) -> str:
        return self.PE.Abreviacion + '_' + self.Periodo

class UTNA_Indice_Colocacion(models.Model):
    #create the model
    IDIC = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Egresados = models.IntegerField(null=True, default=000.00)
    Colocados = models.IntegerField(null=True, default=000.00)
    Indice_colocacion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
    
class UTNA_Tasa_Mov_Alumnos(models.Model):
    #create the model
    IDTMA = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Matricula = models.IntegerField(null=True, default=000.00)
    No_alum_viajaron = models.IntegerField(null=True, default=000.00)
    Estado = models.CharField(max_length=100, null=True)
    Paises = models.CharField(max_length=100, null=True) 
    Tasa_movilidad = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
    
class UTNA_Tasa_Mov_Docentes(models.Model):
    #create the model
    IDTMD = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Matricula = models.IntegerField(null=True, default=000.00)
    No_doc_viajaron = models.IntegerField(null=True, default=000.00)
    Estado = models.CharField(max_length=100, null=True)
    Paises = models.CharField(max_length=100, null=True) 
    Tasa_movilidad = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
    
class UTNA_Tasa_Acreditacion(models.Model):
    #create the model
    IDTA = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Acreditacion = models.BooleanField(default=False)
    Fecha_acreditacion = models.DateField(null=True)
    Fecha_vencimiento = models.DateField(null=True)
    Tipo_acreditacion = models.CharField(max_length=50, null=True) 
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo

#Nuevas tables tablas de EXANI II y III

class UTNA_Tasa_Puntaje_ExTSU(models.Model):
    #create the model
    IDTPEXTSU = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    p_700_800 = models.IntegerField(null=True, default=000.00)
    p_801_900 = models.IntegerField(null=True, default=000.00)
    p_901_1000 = models.IntegerField(null=True, default=000.00)
    p_1001_1200 = models.IntegerField(null=True, default=000.00)
    p_1201_1300 = models.IntegerField(null=True, default=000.00)
    puntaje_satisfactorio = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    puntaje_sobresaliente = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
    
    
class UTNA_Tasa_Puntaje_ExL(models.Model):
    #create the model
    IDTPEXL = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    p_700_800 = models.IntegerField(null=True, default=000.00)
    p_801_900 = models.IntegerField(null=True, default=000.00)
    p_901_1000 = models.IntegerField(null=True, default=000.00)
    p_1001_1200 = models.IntegerField(null=True, default=000.00)
    p_1201_1300 = models.IntegerField(null=True, default=000.00)
    puntaje_satisfactorio = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    puntaje_sobresaliente = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    def __str__(self) -> str:
        return self.Carrera.Abreviacion + '_' + self.Periodo
#consultar con jorge sí se queda el null=True o solo los defaults y en fecha que rollo
    
