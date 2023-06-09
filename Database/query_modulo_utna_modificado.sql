create database plan_estrategico

create table Universidades (IDUniversidad serial primary key not null, 
							Abreviacion varchar(10), 
							Nombre varchar(100), 
						   Plan_estudios varchar(15));

create table Usuarios (IDUsuario serial primary key not null, 
					  Nombre_usuario varchar(20) not null,
					  Contraseña varchar(8),
					  Cargo varchar (10),
					  Universidad int not null not null, 
					  constraint universidad foreign key (Universidad) 
					  references universidades(iduniversidad));
					  

create table UTNA_Carreras (IDCarrera serial primary key not null,
					  Universidad int not null not null, 
					  constraint universidad foreign key (Universidad)
					  references universidades(iduniversidad),
					  Nombre varchar(100),
					  Abreviacion varchar (10), 
					  Modalidad varchar(15), 
					  Nivel varchar(15)
					  Duración int);

create table UTNA_Tasa_cobertura (IDTC serial primary key not null,
								 Carrera int not null, 
								 constraint carrera foreign key(Carrera)
								 references utna_carreras(idcarrera),
								 Periodo int,
								 Incremento_matricula decimal);

create table UTNA_Eficiencia_IRE (IDEIRE serial primary key not null,
								 Carrera int not null,
								 constraint carrera foreign key(Carrera)
								 references utna_carreras(idcarrera),
								 Periodo int,
								 indice_retencion decimal, 
								 Indice_desercion decimal,
								 Indice_eficiencia_terminal decimal,
								 Indice_titulacion decimal);

create table UTNA_Tasa_Puntaje_EGETSU (IDTPEGESTU serial primary key not null,
									  Carrera int not null, 
									  constraint carrera foreign key(Carrera)
									  references utna_carreras(idcarrera),
									  Periodo int, 
									  p_700_800 int,
									  p_801_900 int,
									  p_901_1000 int,
									  p_1001_1200 int,
									  p_1201_1300 int,
									  puntaje_satisfactorio decimal,
									  puntaje_sobresaliente decimal);

create table UTNA_Tasa_Puntaje_EGEL (IDTPEGEL serial primary key not null,
									  Carrera int not null, 
									  constraint carrera foreign key(Carrera)
									  references utna_carreras(idcarrera),
									  Periodo int, 
									  p_700_800 int,
									  p_801_900 int,
									  p_901_1000 int,
									  p_1001_1200 int,
									  p_1201_1300 int,
									  puntaje_satisfactorio decimal,
									  puntaje_sobresaliente decimal);
								  
create table UTNA_Indice_Servicios (IDIS serial primary key not null,
								 Carrera int not null,
								 constraint carrera foreign key(Carrera)
								 references utna_carreras(idcarrera),
								 Periodo int,
								 Salud_externa decimal, 
								 Bolsa_trabajo decimal,
								 Salud_interna decimal,
								 Asesoria_academica decimal,
								 Actividades_crecimiento decimal, 
								 Tutoria decimal,
								 Orientacion decimal,
								 Espacio_expresion decimal, 
								 Estimulos_desempeño decimal,
								 Seguridad decimal, 
								 Instalaciones decimal,
								 Actividades_arte decimal,
								 Traslado decimal, 
								 Fomento_salud decimal,
								 Alimentos decimal,
								 Biblioteca decimal,
								 Conectividad decimal, 
								 Laboratorio_computo decimal,
								 Laboratorio_practica decimal,
								 Indice_satisfaccion decimal);
 
create table UTNA_ISEg_TSU (IDISEGTSU serial primary key not null,
								 Carrera int not null,
								 constraint carrera foreign key(Carrera)
								 references utna_carreras(idcarrera),
								 Periodo int,
								 Bolsa_trabajo decimal,
								 Op_estadia decimal,
								 Trabaja_lugar_estadia decimal,
								 Experiencia_practica decimal,
								 Laboratorios_talleres decimal, 
								 Infraestructura decimal,
								 Dominio_prob_lab decimal,
								 Conocimiento_prof decimal, 
								 Calificaion_MEB5 decimal,
								 Op_preparacion decimal, 
								 Indice_satisfaccion decimal);

create table UTNA_ISEg_L (IDISEGL serial primary key not null,
								 Carrera int not null,
								 constraint carrera foreign key(Carrera)
								 references utna_carreras(idcarrera),
								 Periodo int,
								 Bolsa_trabajo decimal,
								 Op_estadia decimal,
								 Trabaja_lugar_estadia decimal,
								 Esperiencia_practica decimal,
								 Laboratorios_talleres decimal, 
								 Infraestructura decimal,
								 Dominio_prob_lab decimal,
								 Conocimiento_prof decimal, 
								 Calificaion_MEA5 decimal,
								 Op_preparacion decimal, 
								 Indice_satisfaccion decimal);
							 
create table UTNA_ISEm_TSU (IDISEMTSU serial primary key not null,
								 Carrera int not null,
								 constraint carrera foreign key(Carrera)
								 references utna_carreras(idcarrera),
								 Periodo int,
								 Op_grado decimal,
								 Creatividad decimal,
								 Manejo_equipo decimal,
								 Solucion_prob decimal, 
								 Op_trabajo decimal,
								 Capacidad decimal,
								 Cumple_req decimal,
								 Calificaion_trabajo decimal, 
								 Indice_satisfaccion decimal);

create table UTNA_ISEm_L (IDISEML serial primary key not null,
								 Carrera int not null,
								 constraint carrera foreign key(Carrera)
								 references utna_carreras(idcarrera),
								 Periodo int,
								 Op_grado decimal,
								 Creatividad decimal,
								 Manejo_equipo decimal,
								 Solucion_prob decimal, 
								 Op_trabajo decimal,
								 Capacidad decimal,
								 Cumple_req decimal,
								 Calificaion_trabajo decimal, 
								 Indice_satisfaccion decimal);
								 
create table UTNA_Tasa_Docentes (IDTD serial primary key not null, 
								Carrera int not null,
								constraint carrera foreign key(Carrera)
								references utna_carreras(idcarrera),
								Periodo int,
								No_docentes  int,
								Doc_perfil_adecuado int,
								Exp_Lab_pertinente int,
								Tasa_docentes decimal);

create table UTNA_Indice_PTC (IDIPTC serial primary key not null, 
							 Carrera int not null,
							 constraint carrera foreign key(Carrera)
							 references utna_carreras(idcarrera),
							 Periodo int,
							 Nombre_profesor varchar (100),
							 Nombre_investigacion varchar(150),
							 PE_Perteneciente int not null,
							 constraint pe_perteneciente foreign key(PE_Perteneciente)
							 references utna_carreras(idcarrera),
							 Tipo_profesor varchar(3),
							 Estado_investigación varchar(10),
							 Perfil_PRODEPT boolean,
							 Participación_CA boolean);

create table UTNA_Tasa_PE_ASAT (IDTPEASAT serial primary key not null, 
							 	PE int not null,
							 	constraint PE foreign key(PE)
							 	references utna_carreras(idcarrera),
							 	Periodo int,
							   	Realizacion date,
							    Vencimiento date);

create table UTNA_Tasa_PE_Pertinencia (IDTPEP serial primary key not null, 
							 	PE int not null,
							 	constraint PE foreign key(PE)
							 	references utna_carreras(idcarrera),
							 	Periodo int,
							    Presenta boolean,
							    Fecha_elaboracion date);
								
create table UTNA_Indice_Colocacion (IDIC serial primary key not null, 
							 Carrera int not null,
							 constraint carrera foreign key(Carrera)
							 references utna_carreras(idcarrera),
							 Periodo int,
							 Egresados int, 
							 Colocados int,
							 Indice_colocacion decimal);

create table UTNA_Tasa_Mov_Alumnos (IDTMA serial primary key not null, 
							 Carrera int not null,
							 constraint carrera foreign key(Carrera)
							 references utna_carreras(idcarrera),
							 Periodo int,
							 Matricula int,
							 No_alum_viajaron int,
							 Estados varchar(100),
							 Paises varchar(100),
							 Tasa_movilidad decimal);

create table UTNA_Tasa_Mov_Docentes (IDTMD serial primary key not null, 
							 Carrera int not null,
							 constraint carrera foreign key(Carrera)
							 references utna_carreras(idcarrera),
							 Periodo int,
							 Matricula int,
							 No_doc_viajaron int,
							 Estados varchar(100),
							 Paises varchar(100),
							 Tasa_movilidad decimal);
							 
create table UTNA_Tasa_Acreditacion (IDTA serial primary key not null, 
							 Carrera int not null,
							 constraint carrera foreign key(Carrera)
							 references utna_carreras(idcarrera),
							 Periodo int,
							 Acreditacion boolean,
							 Fecha_acreditación date,
							 Fecha_vencimiento date,
							 Tipo_acreditacion varchar(50));
							 