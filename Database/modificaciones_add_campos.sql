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

create table UTNA_Tasa_Docentes (IDTD serial primary key not null, 
								Carrera int not null,
								constraint carrera foreign key(Carrera)
								references utna_carreras(idcarrera),
								Periodo int,
								No_docentes  int,
								Doc_perfil_adecuado int,
								Exp_Lab_pertinente int,
								Tasa_docentes decimal);
								
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

alter table utna_carreras add column duración int;

select*from utna_carreras
