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
        return 'Tasa_cobertura_' + self.Carrera.Abreviacion + '_' +str(self.Periodo)

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
        return 'Eficiencia_IRE_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)
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
    #Calculo para obtener el porcentaje de alumnos con puntajes satisfactorios y sobresalientes  del EGETSU
    def save(self, *args, **kwargs):
        if self.p_700_800 == None:
            self.p_700_800 = 0
        if self.p_801_900 == None:
            self.p_801_900= 0
        if self.p_901_1000==None:
            self.p_901_1000 = 0
        if self.p_1001_1200== None:
            self.p_1001_1200=0
        if self.p_1201_1300== None:
            self.p_1201_1300=0
        
        total= self.p_700_800 + self.p_801_900 + self.p_901_1000 + self.p_1001_1200 + self.p_1201_1300
        
        self.puntaje_satisfactorio = (self.p_1001_1200 / total) * 100
        
        self.puntaje_sobresaliente = (self.p_1201_1300 / total) * 100
        
        super().save(*args, **kwargs)
        
    def __str__(self) -> str:
        return 'Tasa_Puntaje_EGETSU_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)

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
    #Calculo para obtener el porcentaje de alumnos con puntajes satisfactorios y sobresalientes  del EGEL
    def save(self, *args, **kwargs):
        if self.p_700_800 == None:
            self.p_700_800 = 0
        if self.p_801_900 == None:
            self.p_801_900= 0
        if self.p_901_1000==None:
            self.p_901_1000 = 0
        if self.p_1001_1200== None:
            self.p_1001_1200=0
        if self.p_1201_1300== None:
            self.p_1201_1300=0
        
        total= self.p_700_800 + self.p_801_900 + self.p_901_1000 + self.p_1001_1200 + self.p_1201_1300
        
        self.puntaje_satisfactorio = (self.p_1001_1200 / total) * 100
        
        self.puntaje_sobresaliente = (self.p_1201_1300 / total) * 100
        
        super().save(*args, **kwargs)
        
    def __str__(self) -> str:
        return 'Tasa_Puntaje_EGEL_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)

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

     #la siguiente función se encarga de obtener el Tasa de docentes con el perfil adecuado.
    def save(self, *args, **kwargs):
        if self.No_docentes == None:
            self.No_docentes=0
        if self.Doc_perfil_adecuado == None:
            self.Doc_perfil_adecuado=0
    
        self.Tasa_movilidad= (self.Doc_perfil_adecuado / self.No_docentes)*100       
        super().save(*args,**kwargs)        
    def __str__(self) -> str:
        return 'Tasa_Docentes_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)

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
        return 'Indice_PTC_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)

class UTNA_Tasa_PE_ASAT(models.Model):
    IDTPEASAT = models.AutoField(primary_key=True)
    PE = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Realizacion = models.DateField(null=True)
    Vencimiento = models.DateField(null=True)
    def __str__(self) -> str:
        return 'Tasa_PE_ASAT_' + self.PE.Abreviacion + '_' + str(self.Periodo)

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
    #la siguiente función se encarga de obtener el indice de satisfaccion del estudiante en TSU 
    def save(self, *args, **kwargs):
        if self.Bolsa_trabajo == None:
            self.Bolsa_trabajo=0
        if self.Op_estadia == None:
            self.Op_estadia=0
        if self.Experiencia_practica == None:
            self.Experiencia_practica=0
        if self.Laboratorios_talleres == None:
            self.Laboratorios_talleres=0
        if self.Infraestructura == None:
            self.Infraestructura=0 
        if self.Dominio_prob_lab == None:
            self.Dominio_prob_lab=0
        if self.Conocimiento_prof == None:
            self.Conocimiento_prof=0
        if self.Calificacion_MEB5 == None:
            self.Calificacion_MEB5=0
        if self.Op_preparacion == None:
            self.Op_preparacion=0
        califAlumno = self.Bolsa_trabajo + self.Op_estadia + self.Experiencia_practica + self.Laboratorios_talleres + self.Infraestructura + self.Dominio_prob_lab + self.Conocimiento_prof + self.Calificacion_MEB5 + self.Op_preparacion
        self.Indice_satisfaccion = (califAlumno)/9
        super().save(*args, **kwargs)
            
    def __str__(self) -> str:
        return 'ISEg_TSU_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)

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
     #la siguiente función se encarga de obtener el indice de satisfaccion del estudiante en Li 
    def save(self, *args, **kwargs):
        if self.Bolsa_trabajo == None:
            self.Bolsa_trabajo=0
        if self.Op_estadia == None:
            self.Op_estadia=0
        if self.Experiencia_practica == None:
            self.Experiencia_practica=0
        if self.Laboratorios_talleres == None:
            self.Laboratorios_talleres=0
        if self.Infraestructura == None:
            self.Infraestructura=0 
        if self.Dominio_prob_lab == None:
            self.Dominio_prob_lab=0
        if self.Conocimiento_prof == None:
            self.Conocimiento_prof=0
        if self.Calificacion_MEB5 == None:
            self.Calificacion_MEB5=0
        if self.Op_preparacion == None:
            self.Op_preparacion=0
        califAlumno = self.Bolsa_trabajo + self.Op_estadia + self.Experiencia_practica + self.Laboratorios_talleres + self.Infraestructura + self.Dominio_prob_lab + self.Conocimiento_prof + self.Calificacion_MEB5 + self.Op_preparacion
        self.Indice_satisfaccion = (califAlumno)/9
        super().save(*args, **kwargs)
    def __str__(self) -> str:
        return 'ISEg_L_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)

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
    
    #la siguiente función se encarga de obtener el indice de satisfaccion del empleador en TSU
    def save(self, *args, **kwargs):
        if self.Op_grado == None:
            self.Op_grado=0
        if self.Creatividad == None:
            self.Creatividad=0
        if self.Manejo_equipo == None:
            self.Manejo_equipo=0
        if self.Solucion_prob == None:
            self.Solucion_prob=0
        if self.Op_trabajo == None:
            self.Op_trabajo=0 
        if self.Capacidad == None:
            self.Capacidad=0
        if self.Cumple_req == None:
            self.Cumple_req=0
        if self.Calificacion_trabajo == None:
            self.Calificacion_trabajo=0
        califEmpleador = self.Op_grado + self.Creatividad + self.Manejo_equipo + self.Solucion_prob + self.Op_trabajo + self.Capacidad + self.Cumple_req + self.Calificacion_trabajo
        self.Indice_satisfaccion = (califEmpleador)/8    
        super().save(*args, **kwargs)
    def __str__(self) -> str:
        return 'ISEm_TSU_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)

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
    #la siguiente función se encarga de obtener el indice de satisfaccion del empleador en TSU
    def save(self, *args, **kwargs):
        if self.Op_grado == None:
            self.Op_grado=0
        if self.Creatividad == None:
            self.Creatividad=0
        if self.Manejo_equipo == None:
            self.Manejo_equipo=0
        if self.Solucion_prob == None:
            self.Solucion_prob=0
        if self.Op_trabajo == None:
            self.Op_trabajo=0 
        if self.Capacidad == None:
            self.Capacidad=0
        if self.Cumple_req == None:
            self.Cumple_req=0
        if self.Calificacion_trabajo == None:
            self.Calificacion_trabajo=0
        califEmpleador = self.Op_grado + self.Creatividad + self.Manejo_equipo + self.Solucion_prob + self.Op_trabajo + self.Capacidad + self.Cumple_req + self.Calificacion_trabajo
        self.Indice_satisfaccion = (califEmpleador)/8
        super().save(*args, **kwargs)
    def __str__(self) -> str:
        return 'ISEm_L_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)
    
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
    #la siguiente función se encarga de obtener el indice de satisfaccion del empleador en TSU
    def save(self, *args, **kwargs):
        if self.Salud_externa == None:
            self.Salud_externa=0
        if self.Bolsa_trabajo == None:
            self.Bolsa_trabajo=0
        if self.Salud_interna == None:
            self.Salud_interna=0
        if self.Asesoria_academica == None:
            self.Asesoria_academica=0
        if self.Actividades_crecimiento == None:
            self.Actividades_crecimiento=0 
        if self.Tutoria == None:
            self.Tutoria=0
        if self.Orientacion == None:
            self.Orientacion=0
        if self.Espacio_expresion == None:
            self.Espacio_expresion=0
        if self.Estimulos_desempeno == None:
            self.Estimulos_desempeno=0
        if self.Seguridad == None:
            self.Seguridad=0
        if self.Instalaciones == None:
            self.Instalaciones=0
        if self.Actividades_arte == None:
            self.Actividades_arte=0
        if self.Traslado == None:
            self.Traslado=0 
        if self.Fomento_salud == None:
            self.Fomento_salud=0
        if self.Alimentos == None:
            self.Alimentos=0
        if self.Bibliteca == None:
            self.Bibliteca=0
        if self.Conectivida == None:
            self.Conectivida=0
        if self.Laboratorio_computo == None:
            self.Laboratorio_computo=0
        if self.Laboratorio_practica == None:
            self.Laboratorio_practica=0            
        
        suma=self.Salud_externa + self.Bolsa_trabajo + self.Salud_interna + self.Asesoria_academica + self.Actividades_crecimiento + self.Tutoria + self.Orientacion + self.Espacio_expresion + self.Salud_externa + self.Bolsa_trabajo + self.Salud_interna + self.Asesoria_academica + self.Actividades_crecimiento + self.Tutoria + self.Orientacion + self.Espacio_expresion + self.Tutoria + self.Orientacion + self.Espacio_expresion 
        self.Indice_satisfaccion = (suma)/19
        super().save(*args, **kwargs)    
    
    
    def __str__(self) -> str:
        return 'Indice_servicios_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)
      
class UTNA_Tasa_PE_Pertinencia(models.Model):
    #create the model
    IDTPEP = models.AutoField(primary_key=True)
    PE = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Presenta = models.BooleanField(default=False)
    Fecha_elaboracion = models.DateField(null=True) 
    def __str__(self) -> str:
        return 'Tasa_PE_Pertinencia_' + self.PE.Abreviacion +'_'+ str(self.Periodo)

class UTNA_Indice_Colocacion(models.Model):
    #create the model
    IDIC = models.AutoField(primary_key=True)
    Carrera = models.ForeignKey(UTNA_Carreras, on_delete=models.CASCADE)
    Periodo = models.IntegerField(null=False)
    Egresados = models.IntegerField(null=True, default=000.00)
    Colocados = models.IntegerField(null=True, default=000.00)
    Indice_colocacion = models.DecimalField(max_digits=5, decimal_places=2, null=True, default=000.00)
    #la siguiente función se encarga de obtener el indice de colocación
    def save(self,*args,**kwargs):
        if self.Egresados == None:
            self.Egresados = 0
        if self.Colocados == None:
            self.Colocados = 0
        
        self.Indice_colocacion = (self.Colocados / self.Egresados)*100
        
        super().save(*args,**kwargs)
    def __str__(self) -> str:
        return 'Indice_Colocacion_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)
    
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
    #la siguiente función se encarga de obtener el Tasa de movilidad de los alumnos.
    def save(self, *args, **kwargs):
        if self.Matricula == None:
            self.Matricula=0
        if self.No_alum_viajaron == None:
            self.No_alum_viajaron=0
    
        self.Tasa_movilidad= (self.No_alum_viajaron / self.Matricula)*100       
        super().save(*args,**kwargs)        
    def __str__(self) -> str:
        return 'Tasa_Mov_Alumnos_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)
    
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
     #la siguiente función se encarga de obtener el Tasa de movilidad de los docentes.
    def save(self, *args, **kwargs):
        if self.Matricula == None:
            self.Matricula=0
        if self.No_doc_viajaron == None:
            self.No_doc_viajaron=0
    
        self.Tasa_movilidad= (self.No_doc_viajaron / self.Matricula)*100       
        super().save(*args,**kwargs)        
    
    def __str__(self) -> str:
        return 'Tasa_Mov_Docentes_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)
    
    
    
    
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
        return 'Tasa_Acreditacion_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)

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
    #Calculo para obtener el porcentaje de alumnos con puntajes satisfactorios y sobresalientes  del EXANI II
    def save(self, *args, **kwargs):
        if self.p_700_800 == None:
            self.p_700_800 = 0
        if self.p_801_900 == None:
            self.p_801_900= 0
        if self.p_901_1000==None:
            self.p_901_1000 = 0
        if self.p_1001_1200== None:
            self.p_1001_1200=0
        if self.p_1201_1300== None:
            self.p_1201_1300=0
        
        total= self.p_700_800 + self.p_801_900 + self.p_901_1000 + self.p_1001_1200 + self.p_1201_1300
        
        self.puntaje_satisfactorio = (self.p_1001_1200 / total) * 100
        
        self.puntaje_sobresaliente = (self.p_1201_1300 / total) * 100
        
        super().save(*args, **kwargs)
    
    def __str__(self) -> str:
        return 'Tasa_Puntaje_ExTSU_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)
    
    
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
    #Calculo para obtener el porcentaje de alumnos con puntajes satisfactorios y sobresalientes  del EXANI III
    def save(self, *args, **kwargs):
        if self.p_700_800 == None:
            self.p_700_800 = 0
        if self.p_801_900 == None:
            self.p_801_900= 0
        if self.p_901_1000==None:
            self.p_901_1000 = 0
        if self.p_1001_1200== None:
            self.p_1001_1200=0
        if self.p_1201_1300== None:
            self.p_1201_1300=0
        
        total= self.p_700_800 + self.p_801_900 + self.p_901_1000 + self.p_1001_1200 + self.p_1201_1300
        
        self.puntaje_satisfactorio = (self.p_1001_1200 / total) * 100
        
        self.puntaje_sobresaliente = (self.p_1201_1300 / total) * 100
        
        super().save(*args, **kwargs)
        
    def __str__(self) -> str:
        return 'Tasa_Puntaje_ExL_' + self.Carrera.Abreviacion + '_' + str(self.Periodo)

    
