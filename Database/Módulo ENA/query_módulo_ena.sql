create table ENA_Carreras (IDCarrera serial primary key not null,
					  Universidad int not null not null, 
					  constraint universidad foreign key (Universidad)
					  references universidades(iduniversidad),
					  Nombre varchar(100), 
					  Modalidad varchar(15), 
					  Nivel varchar(15),
					  Duración int);

create table ENA_Tasa_cobertura (IDTC serial primary key not null,
								 Carrera int not null, 
								 constraint carrera foreign key(Carrera)
								 references ena_carreras(idcarrera),
								 Periodo int,
								 Incremento_matricula decimal);

create table ENA_Eficiencia_IRE (IDEIRE serial primary key not null,
								 Carrera int not null,
								 constraint carrera foreign key(Carrera)
								 references ena_carreras(idcarrera),
								 Periodo int,
								 indice_retencion decimal, 
								 Indice_desercion decimal,
								 Indice_eficiencia_terminal decimal,
								 Indice_titulacion decimal);

create table ENA_Tasa_Puntaje_EGEL (IDTPEGEL serial primary key not null,
									  Carrera int not null, 
									  constraint carrera foreign key(Carrera)
									  references ena_carreras(idcarrera),
									  Periodo int, 
									  p_700_800 int,
									  p_801_900 int,
									  p_901_1000 int,
									  p_1001_1200 int,
									  p_1201_1300 int,
									  puntaje_satisfactorio decimal,
									  puntaje_sobresaliente decimal);
								  
create table ENA_Tasa_Puntaje_Ex (IDTPEX serial primary key not null,
									  Carrera int not null, 
									  constraint carrera foreign key(Carrera)
									  references ena_carreras(idcarrera),
									  Periodo int, 
									  p_700_800 int,
									  p_801_900 int,
									  p_901_1000 int,
									  p_1001_1200 int,
									  p_1201_1300 int,
									  puntaje_satisfactorio decimal,
									  puntaje_sobresaliente decimal);									  
								 
create table ENA_Indice_Servicios (IDIS serial primary key not null,
								 Carrera int not null,
								 constraint carrera foreign key(Carrera)
								 references ena_carreras(idcarrera),
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

create table ENA_ISEg (IDISEG serial primary key not null,
								 Carrera int not null,
								 constraint carrera foreign key(Carrera)
								 references ena_carreras(idcarrera),
								 Periodo int,
								 Bolsa_trabajo decimal,
								 Op_estadia decimal,
								 Trabaja_lugar_estadia decimal,
								 Experiencia_practica decimal,
								 Laboratorios_talleres decimal, 
								 Infraestructura decimal,
								 Dominio_prob_lab decimal,
								 Conocimiento_prof decimal, 
								 Calificaion_MEA5 decimal,
								 Op_preparacion decimal, 
								 Indice_satisfaccion decimal);
							 
create table ENA_ISEm (IDISEM serial primary key not null,
								 Carrera int not null,
								 constraint carrera foreign key(Carrera)
								 references ena_carreras(idcarrera),
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
								 
create table ENA_Tasa_Docentes (IDTD serial primary key not null, 
								Carrera int not null,
								constraint carrera foreign key(Carrera)
								references ena_carreras(idcarrera),
								Periodo int,
								No_docentes  int,
								Doc_perfil_adecuado int,
								Exp_Lab_pertinente int,
								Tasa_docentes decimal);

create table ENA_Indice_PTC (IDIPTC serial primary key not null, 
							 Carrera int not null,
							 constraint carrera foreign key(Carrera)
							 references ena_carreras(idcarrera),
							 Periodo int,
							 Nombre_profesor varchar (100),
							 Nombre_investigacion varchar(250),
							 PE_Perteneciente int not null,
							 constraint pe_perteneciente foreign key(PE_Perteneciente)
							 references ena_carreras(idcarrera),
							 Tipo_profesor varchar(3),
							 Estado_investigación varchar(10),
							 Perfil_PRODEPT boolean,
							 Participación_CA boolean);

create table ENA_Tasa_PE_ASAT (IDTPEASAT serial primary key not null, 
							 	PE int not null,
							 	constraint PE foreign key(PE)
							 	references ena_carreras(idcarrera),
							 	Periodo int,
							   	Realizacion date,
							    Vencimiento date);

create table ENA_Tasa_PE_Pertinencia (IDTPEP serial primary key not null, 
							 	PE int not null,
							 	constraint PE foreign key(PE)
							 	references ena_carreras(idcarrera),
							 	Periodo int,
							    Presenta boolean,
							    Fecha_elaboracion date);
								
create table ENA_Indice_Colocacion (IDIC serial primary key not null, 
							 Carrera int not null,
							 constraint carrera foreign key(Carrera)
							 references ena_carreras(idcarrera),
							 Periodo int,
							 Egresados int, 
							 Colocados int,
							 Indice_colocacion decimal);

create table ENA_Tasa_Mov_Alumnos (IDTMA serial primary key not null, 
							 Carrera int not null,
							 constraint carrera foreign key(Carrera)
							 references ena_carreras(idcarrera),
							 Periodo int,
							 Matricula int,
							 No_alum_viajaron int,
							 Estados varchar(100),
							 Paises varchar(100),
							 Tasa_movilidad decimal);

create table ENA_Tasa_Mov_Docentes (IDTMD serial primary key not null, 
							 Carrera int not null,
							 constraint carrera foreign key(Carrera)
							 references ena_carreras(idcarrera),
							 Periodo int,
							 Matricula int,
							 No_doc_viajaron int,
							 Estados varchar(100),
							 Paises varchar(100),
							 Tasa_movilidad decimal);
							 
create table ENA_Tasa_Acreditacion (IDTA serial primary key not null, 
							 Carrera int not null,
							 constraint carrera foreign key(Carrera)
							 references ena_carreras(idcarrera),
							 Periodo int,
							 Acreditacion boolean,
							 Fecha_acreditación date,
							 Fecha_vencimiento date,
							 Tipo_acreditacion varchar(50));
							 								  