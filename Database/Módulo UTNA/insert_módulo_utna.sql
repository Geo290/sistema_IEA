--Tabla Universidades
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('UTA','Universidad Tecnológica de Aguascalientes','Cuatrimestral');
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('UTC','Universidad Tecnológica de Calvillo','Cuatrimestral');
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('UTMA','Universidad Tecnológica Metropolitana de Aguascalientes','Cuatrimestral');
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('UTNA','Universidad Tecnológica del Norte de Aguascalientes','Cuatrimestral');
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('UTR','Universidad Tecnológica El Retoño','Cuatrimestral');
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('UPA','Universidad Politécnica de Aguascalientes','Cuatrimestral');
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('CRENA','Centro Regional de Educación Normal de Aguascalientes','Semestral');
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('ENA','Escuela Normal de Aguascalientes','Semestral');
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('ENRJSM','Escuela Normal Rural Justo Sierra Méndez','Semestral');
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('ENRR','Escuela Normal de Rincón de Romos Dr. Rafael Francisco Aguilar Lomelí','Semestral');
insert into universidades (abreviacion,nombre,plan_estudios) 
values ('ENSFA','Escuela Normal Superior Federal de Aguascalientes Profr. José Santos Valdés ','Semestral');

--Tabla Usuarios
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UTARectZk8B','L3@0,15B','Rector',1);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UTAPlanV4x0','kU&74.Do','Planeación',1);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UTCRect194Z','nA#h15!V','Rector',2);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UTCPlanm4R5','WF1.5-I2','Planeación',2);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UTMARectU0sA','X3%oM_15','Rector',3);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UTMAPlan70dT','d!5iA92Z','Planeación',3);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UTNARect158W','U27.nsw_','Rector',4);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UTNAPlan26Ah','pl-AZ/07','Planeación',4);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UTRRectJi03','20/1tq1-','Rector',5);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UTRPlan281G','mCy¿18$5','Planeación',5);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UPARect2g4F','nJ+48#19','Rector',6);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('UPAPLan35rM','2!73QL_6','Planeación',6);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('CRENADire90sl','7l*Ad0=J','Director',7);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('CRENAPlan803O','04o,vF@1','Planeación',7);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('ENADire01nQ','O1:vn#A8','Director',8);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('ENAPlan5L4S','%G720&8c','Planeación',8);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('ENRJSMDire875v','RU!@51dp','Director',9);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('ENRJSMPlanFI07','Dm.4K/6+','Planeación',9);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('ENRRDireTjc1','IY+25_a.','Director',10);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('ENRRPlan1mrX','_PdI32!#','Planeación',10);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('ENSFADirebKy9','AFt+10U.','Director',11);
insert into usuarios (nombre_usuario,contraseña,cargo,universidad) values 
('ENSFAPlanT10N','&15bJ*3B','Planeación',11);

--tabla utna_carreras
--TSU Escolarizado
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Contaduría','CON','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Administración Área Capital Humano','ACH','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Administración Área Formulación y Evaluación de Proyectos','AFEP','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Agricultura Sustentable y Protegida','ASP','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Agricultura Sustentable y Protegida Área Vitivinicultura','ASV','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Desarrollo de Negocios Área Mercadotecnia','DNM','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Logística Área Cadena de Suministro','LCS','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Mantenimiento Área Industrial','MI','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Procesos Industriales Área Automotriz','PIA','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Procesos Industriales Área Manufactura','PIM','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Mecánica Área Automotriz','MA','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Mecatrónica Área Automatización','MTAUT','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Mecatrónica Área Sistemas de Manufactura Flexible','MTSMF','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Tecnologías de la Información Área Desarrollo de Software Multiplataforma','TIDSM','Escolarizado','TSU');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Tecnologías de la Información Área Entornos Virtuales y Negocios Digitales','TIEVND','Escolarizado','TSU');

--TSU Despresurizado
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Administración Área Capital Humano','ACHD','Despresurizado','TSU');	
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Mantenimiento Área Industrial','MID','Despresurizado','TSU');
--licenciaturas e ingenierias
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Contaduría','LCON','Escolarizado','Licenciatura');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Gestión de Negocios y Proyectos','LGNP','Escolarizado','Licenciatura');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Gestión de Capital Humano','LGCH','Escolarizado','Licenciatura');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Innovación de Negocios y Mercadotectnia','LINM','Escolarizado','Licenciatura');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Diseño y Gestión de Redes Logísticas','LDGRL','Escolarizado','Licenciatura');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Agricultura Sustentable y Protegida','IASP','Escolarizado','Ingenieria');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Mantenimiento Industrial','IMI','Escolarizado','Ingeniería');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Sistemas Productivos','ISP','Escolarizado','Ingeniería');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Metal Mecánica','IMM','Escolarizado','Ingeniería');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Mecatrónica','IMT','Escolarizado','Ingeniería');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Desarrollo y Gestión de  Software','IDGS','Escolarizado','Ingeniería');
insert into utna_carreras (universidad, nombre, abreviacion, modalidad, nivel) values
						  (4,'Entornos Virtuales y Negocios Digitales','IEVND','Escolarizado','Ingeníeria');
--tabla utna_iseg_tsu
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(2,2022,8.9,9.4,0,9.1,9.0,9.6,9.4,9.3,9.3,9.4,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(16,2022,9.1,9.4,0,9.1,9.0,9.2,9.3,9.3,9.5,9.5,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(3,2022,8.5,8.9,0,8.5,8.3,8.9,8.7,8.9,8.9,8.7,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(4,2022,8.4,8.9,0,9.2,8.4,9.1,8.8,8.9,8.9,9.2,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(5,2022,8.3,8.7,0,8.3,7.3,7.7,9.0,8.0,8.8,7.7,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(1,2022,8.2,9.3,0,8.8,8.0,8.5,8.8,8.7,9.0,8.8,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(6,2022,7.8,8.6,0,8.0,7.6,8.2,8.0,8.0,8.2,8.1,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(7,2022,8.7,8.8,0,9.0,8.5,8.6,8.8,8.6,8.7,8.8,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(11,2022,8.9,9.1,0,8.9,8.1,8.9,8.8,8.8,9.0,8.6,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(17,2022,8.6,8.2,0,7.8,7.6,8.5,8.3,8.8,8.3,7.9,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(8,2022,8.2,9.0,0,8.5,8.0,8.8,8.7,8.7,8.9,8.6,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(12,2022,7.9,8.6,0,8.5,8.3,8.8,8.4,8.6,8.5,8.6,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(13,2022,7.8,8.4,0,7.9,6.9,8.4,8.0,8.0,8.7,8.1,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(9,2022,8.0,9.3,0,8.2,7.2,8.7,8.5,8.5,8.7,8.8,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(10,2022,8.3,9.1,0,8.5,8.5,8.8,8.8,8.8,9.1,8.7,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(14,2022,8.2,8.8,0,8.7,8.8,8.9,8.9,8.5,8.8,8.4,0);
insert into utna_iseg_tsu 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,experiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_meb5,op_preparacion, indice_satisfacción) values
(15,2022,8.0,8.3,0,8.0,8.0,7.8,7.3,7.3,8.3,8.0,0);

--tabla utna_iseg_l
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(23,2022,8.2,8.6,0,8.5,7.9,8.8,8.7,8.5,8.2,8.5,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(18,2022,8.5,9.1,0,9.0,8.3,9.1,8.5,8.6,8.9,8.9,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(22,2022,8.1,8.5,0,8.4,8.3,8.8,8.5,8.5,8.6,8.7,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(20,2022,8.5,9.1,0,8.4,8.3,8.9,8.7,8.7,8.7,8.8,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(19,2022,8.9,9.2,0,9.2,8.5,9.3,9.2,9.1,8.8,9.5,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(28,2022,8.2,8.5,0,7.1,7.4,8.3,8.5,8.3,8.2,8.3,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(21,2022,8.6,9.0,0,8.9,8.5,8.8,8.8,8.8,8.8,8.8,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(27,2022,8.2,8.6,0,8.1,7.5,8.7,8.3,8.6,8.3,8.6,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(24,2022,8.6,9.2,0,8.8,8.1,9.0,9.0,9.1,9.3,9.0,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(26,2022,8.1,9.1,0,8.1,6.4,8.3,8.1,8.1,8.5,8.3,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(25,2022,8.4,9.1,0,9.0,7.8,8.8,8.6,8.6,9.0,8.7,0);
insert into utna_iseg_l 
(carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia,esperiencia_practica,laboratorios_talleres, 
infraestructura,dominio_prob_lab,conocimiento_prof,calificaion_mea5,op_preparacion, indice_satisfacción) values
(29,2022,0,0,0,0,0,0,0,0,0,0,0);

--tabla utna_isem_tsu
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(2,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(3,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(5,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(4,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(1,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(6,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(7,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(8,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(11,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(12,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(13,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(9,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(10,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(14,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(15,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(16,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);
insert into utna_isem_tsu
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(17,2022,8.7,8.1,8.8,8.66,8.93,8.84,8.94,9.0,0);

--tabla utna_isem_l
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(23,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(28,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(24,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(27,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(26,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(25,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(18,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(22,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(19,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(20,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(21,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);
insert into utna_isem_l
(carrera,periodo,op_grado,creatividad,manejo_equipo,solucion_prob,op_trabajo,capacidad,cumple_req,calificaion_trabajo, indice_satisfacción) values
(29,2022,8.5,8.14,8.88,8.91,8.52,9.41,8.72,8.55,0);

--tabla utna_indice_ptc
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(2,2023,'Rebeca Hernández Torres',
'Factores que influyen en la supervivencia de las empresas familiares agroindustriales Caso Vid',
 2,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(2,2023,'Rebeca Hernández Torres',
 'Emprendimiento a través de las empresas familiares como aporte al desarrollo regional y competitivo. Caso Aguascalientes-México y Área Metropolitana de Bucaramanga-AMB Colombia',
 2,'PTC','En proceso');
 
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(3,2023,'José de Jesús Márquez Luna',
 'Emprendimiento en las empresas familiares como estrategia competitiva para el desarrollo económico regional, en la era postcovid',
 3,'PTC','En proceso');
 
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(4,2022,'René Félix Domínguez López',
 'Caracterización de Sistemas de labranza para la conservación de humedad y energía en zonas semiáridas',
 4,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(4,2022,'René Félix Domínguez López',
 'Evaluación del desempeño y resultados tecnológicos de vibrocultivador modelo NH700 en labranza de suelos de zonas semiáridas',
 4,'PTC','Concluída');
 insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(4,2023,'René Félix Domínguez López',
 'Respuesta vegetativa-productiva del cultivo de chile pimiento (capsicum annuum) biofertilizadas y dosis reducidas de fertilintes sintéticos en condiciones protegidas',
 4,'PTC','En proceso');
 
 insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(1,2023,'Marcela Rocha López',
 'Factores que influyen en la supervivencia de las empresas familiares agroindustriales Caso Vid',
 1,'PTC','En proceso');
 
 insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(6,2022,'Felipe Fernando González Medina',
 'Diferencia entre las Estrategias de Gestión en Directores y Directoras de la Mype en Rincón de romos, Pabellón de Arteaga, Asientos, Tepezalá y Cosío (2022)',
 6,'PTC','Concluída');
  insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(6,2023,'Felipe Fernando González Medina',
 'Las habilidades directivas y el clima organizacional en las MYPES de Rincón de Romos, Pabellón de Arteaga, Tepezalá, Asientos y Cosio, en Aguascalientes',
 6,'PTC','En proceso');
 
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(7,2023,'Soren Héctor de Velaszco Galván',
'China y la Alianza del Pacífico: Una visión desde la cadena de suministro',
7,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(7,2023,'Soren Héctor de Velaszco Galván',
'La importancia geopolítica del corredor del Itsmo de Tehuantepec',
7,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(7,2023,'Soren Héctor de Velaszco Galván',
'“C-MERT”: The development of the Canadian Medical Emergency Response Team',
7,'PTC','Concluída');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(8,2023,'Mauro Jorge Bolaños Cruz',
'Polímero a partir del Nopal',
8,'PTC','En proceso');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(12,2023,'Sergio Humberto Delgado Guerrero',
'Sistema de código de barras aplicado a recetas médicas',
12,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(12,2023,'Juan Carlos García Rodriguez',
'Sistema de código de barras aplicado a recetas médicas',
12,'PTC','En proceso');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(9,2022,'Carmela Ortíz Negrete',
'Implementation of the 5S methodology in SMEs during the process of the TSU Industrial Processes Stages of the UTNA',
9,'PTC','Concluída');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(10,2022,'Rosa Inés Vázquez Gutiérrez',
'Analysis of the use of the cell phone in the learning process of the students of The Superior Technique in Industrial Processes of the UTNA',
10,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(10,2022,'Rosa Inés Vázquez Gutiérrez',
'Analysis of the use of the cell phone in the learning process of the students of The Superior Technique Logistics and The Superior Technique Marketing of the UTNA',
10,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(10,2022,'Rosa Inés Vázquez Gutiérrez',
'Implementation of the 5S methodology in SMEs during the process of the TSU Industrial Processes Stages of the UTNA',
10,'PTC','Concluída');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(14,2022,'Gricelda Medina Veloz',
'Model design to look for patterns related to suicide in social netwoks',
14,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(14,2022,'Juan Felipe Tavares Avendaño',
'Evaluación del lenguaje Python en la enseñanza de la materia de Metodología de la programación',
14,'PTC','Concluída');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(28,2022,'Jorge Eduardo Herrera Serrano',
'An efficient nonstandard computer method to solve a compartmental epidemiological model for COVID-19 with vaccination and population migration',
28,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(28,2022,'Jorge Eduardo Herrera Serrano',
'A multiconsistent computational methodology to resolve a diffusive epidemiological system with effects of migration, vaccination and quarantine',
28,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(28,2023,'Jorge Eduardo Herrera Serrano',
'Herramienta para generar preguntas para Moodle (IEA)',
28,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(28,2022,'Adan Jair Serna Reyes',
'CMMSE: análisis y comparación de algunos métodos numéricos para para resolver un sistema fraccionado no lineal de Gross-Pitaevskii',
28,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(28,2023,'Adan Jair Serna Reyes',
'Análisis de un esquema que preserva la disipación y positividad de la energía de Gibbs para una ecuación anabólica no lineal con difusión variable',
28,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(28,2022,'Adan Jair Serna Reyes',
'Análisis teórico de un esquema conservativo en diferencias finitas para resolver un sistma de Gross-Pitaevskii fraccionario en el espacio de Riesz',
28,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(28,2023,'Adan Jair Serna Reyes',
'Theoretical analysis of a fractional generalization of the Rosenau-Kawahara system',
28,'PTC','En proceso');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(27,2022,'Yadira Fabiola López Älvarez',
'Single step method for two-frame phase-shifting interferometry with unknown phase shift',
27,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(27,2022,'Yadira Fabiola López Älvarez',
'Implementation of a system for classifying moving parts by color',
27,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(27,2023,'Yadira Fabiola López Älvarez',
'Transformada Hilbert para la demodulación de franjas de interferencia',
27,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(27,2022,'Ricardo Jara Ruíz',
'Implementation of a system for classifying moving parts by color',
27,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(27,2023,'Ricardo Jara Ruíz',
'Transformada Hilbert para la demodulación de franjas de interferencia',
27,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(27,2023,'Ricardo Jara Ruíz',
'Sistema de código de barras aplicado a recetas médicas',
27,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(27,2022,'Martín Eduardo Rodríguez',
'Implementation of a system for classifying moving parts by color',
27,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(27,2023,'Martín Eduardo Rodríguez',
'Transformada Hilbert para la demodulación de franjas de interferencia',
27,'PTC','En proceso');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(26,2023,'Gerardo Méndez Macías',
'Análisis de Soldadura por laser en aceros inoxidables (JM ROMO)',
26,'PTC','En proceso');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(25,2022,'Juan Manuel Núñez Montalvo',
'Implementation of the 5S methodology in SMEs during the process of the TSU Industrial Processes Stages of the UTNA',
25,'PTC','Concluída');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(18,2023,'Rosa Mayela Mendoza Esparza',
'Emprendimiento en las empresas familiares como estrategia competitiva para el desarrollo económico regional, en la era postcovid',
18,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(18,2023,'Rosa Mayela Mendoza Esparza',
'Factores que influyen en la supervivencia de las empresas familiares agroindustriales Caso Vid',
18,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(18,2023,'Rosa Mayela Mendoza Esparza',
'Determinantes de la intención del emprendimiento social y la innovación social en las IES',
18,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(18,2023,'Rosa Mayela Mendoza Esparza',
'Emprendimiento a través de las empresas familiares como aporte al desarrollo regional y competitivo. Caso Aguascalientes-México y Área Metropolitana de Bucaramanga-AMB Colombia',
18,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(18,2023,'Pedro Antonio Salcedo López',
'Factores que influyen en la supervivencia de las empresas familiares agroindustriales Caso Vid',
18,'PTC','En proceso');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(22,2022,'Christian Flores Gutiérrez',
'Diferencia entre las Estrategias de Gestión en Directores y Directoras de la Mype en Rincón de romos, Pabellón de Arteaga, Asientos, Tepezalá y Cosío (2022)',
22,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(22,2023,'Christian Flores Gutiérrez',
'Las habilidades directivas y el clima organizacional n las MYPES de Rincón de Romos, Pabellón de Arteaga, Tepezalá, Asientos y Cosio, en Aguascalientes',
22,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(22,2023,'Christian Flores Gutiérrez',
'China y la Alianza del Pacífico: Una visión desde la cadena de suministro',
22,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(22,2023,'Christian Flores Gutiérrez',
'La importancia geopolítica del corredor del Itsmo de Tehuantepec',
22,'PTC','En proceso');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(20,2023,'Roxana Montero Mendoza',
'Perfil y competencias del profesorado en una Universidad Tecnológica  en el nuevo contxto educativo post-pandemia. Factores que influyen y grado de desarrollo',
20,'PTC','En proceso');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(20,2023,'Alejandra Guzmán Campos',
'Perfil y competencias del profesorado en una Universidad Tecnológica  en el nuevo contxto educativo post-pandemia. Factores que influyen y grado de desarrollo',
20,'PTC','En proceso');

insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(21,2022,'Felipe Espinoza Aguilar',
'Diferencia entre las Estrategias de Gestión en Directores y Directoras de la Mype en Rincón de romos, Pabellón de Arteaga, Asientos, Tepezalá y Cosío (2022)',
21,'PTC','Concluída');
insert into utna_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(21,2023,'Felipe Espinoza Aguilar',
'Las habilidades directivas y el clima organizacional n las MYPES de Rincón de Romos, Pabellón de Arteaga, Tepezalá, Asientos y Cosio, en Aguascalientes',
21,'PTC','En proceso');

--tabla utna_tasa_puntaje_egetsu
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(2,2022,0,0,0,1,73,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(3,2022,0,1,0,0,16,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(5,2022,0,0,0,2,4,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(4,2022,0,2,0,2,17,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(1,2022,0,0,1,1,48,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(6,2022,0,2,2,3,42,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(7,2022,0,1,0,5,22,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(8,2022,0,1,1,14,49,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(11,2022,0,1,6,8,11,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(12,2022,0,0,0,0,26,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(13,2022,0,5,0,0,19,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(9,2022,0,0,0,2,10,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(10,2022,0,2,2,11,21,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(14,2022,0,0,0,5,26,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(15,2022,0,1,0,0,9,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(16,2022,0,0,0,0,30,0,0);
insert into utna_tasa_puntaje_egetsu (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(17,2022,0,2,0,12,6,0,0);

--tabla utna_tasa_puntaje_egel
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(23,2023,0,2,6,22,0,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(28,2023,0,0,1,8,11,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(29,2023,0,0,0,2,16,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(24,2023,0,3,0,40,25,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(27,2023,0,0,0,29,14,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(26,2023,0,1,0,28,1,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(25,2023,0,2,2,27,9,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(18,2023,0,0,0,33,10,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(22,2023,0,0,3,23,0,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(19,2023,0,0,12,17,0,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(20,2023,0,1,8,58,9,0,0);
insert into utna_tasa_puntaje_egel (carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) values
(21,2023,0,0,7,16,6,0,0);

--tabla utna_tasa_pe_asat
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(2,2023,'26-05-2022','26-05-2026');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(3,2023,'02-06-2022','02-06-2026');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(5,2023,'23-03-2018','23-03-2022');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(4,2023,'23-03-2023','23-03-2027');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(1,2023,'18-08-2022','18-08-2026');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(6,2023,'21-07-2022','21-07-2026');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(7,2023,'28-07-2022','28-07-2026');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(8,2023,'29-03-2023','29-03-2027');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(11,2023,'21-04-2022','21-04-2026');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(12,2023,'30-03-2023','30-03-2027');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(13,2023,'30-03-2023','30-03-2027');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(9,2023,'14-04-2022','14-04-2026');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(10,2023,'28-03-2023','28-03-2027');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(14,2023,'07-07-2020','07-07-2024');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(15,2023,'19-05-2022','19-05-2026');
insert into utna_tasa_pe_asat (pe,periodo)values
(16,2023);
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(17,2023,'23-03-2012','23-03-2016');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(23,2023,'31-03-2023','31-03-2027');
insert into utna_tasa_pe_asat (pe,periodo)values
(28,2023);
insert into utna_tasa_pe_asat (pe,periodo)values
(29,2023);
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(24,2023,'29-03-2023','29-03-2027');
insert into utna_tasa_pe_asat (pe,periodo)values
(27,2023);
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(26,2023,'03-04-2018','03-04-2022');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(25,2023,'28-03-2023','28-03-2027');
insert into utna_tasa_pe_asat (pe,periodo)values
(18,2023);
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(22,2023,'28-07-2022','28-07-2026');
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(19,2023,'21-03-2018','21-03-2022');
insert into utna_tasa_pe_asat (pe,periodo)values
(20,2023);
insert into utna_tasa_pe_asat (pe,periodo,realizacion,vencimiento)values
(21,2023,'21-03-2018','21-03-2022');

--tabla select*from utna_pe_pertinencia
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(2,2023,'yes','15-04-2015');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(3,2023,'yes','02-06-2022');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(5,2023,'yes','23-03-2018');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(4,2023,'yes','08-03-2012');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(1,2023,'yes','18-08-2022');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(6,2023,'yes','21-07-2022');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(7,2023,'yes','09-04-2014');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(8,2023,'yes','23-03-2012');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(11,2023,'yes','11-04-2014');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta) values
(12,2023,'yes');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(13,2023,'yes','30-03-2023');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(9,2023,'yes','12-04-2012');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(10,2023,'yes','24-05-2011');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(14,2023,'yes','21-03-2013');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(15,2023,'yes','21-03-2013');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta) values
(16,2023,'no');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(17,2023,'yes','23-03-2012');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(23,2023,'yes','31-03-2023');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta) values
(28,2023,'no');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta) values
(29,2023,'no');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(24,2023,'yes','13-08-2020');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(27,2023,'yes','07-09-2016');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(26,2023,'yes','03-04-2018');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(25,2023,'yes','11-08-2020');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta) values
(18,2023,'no');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(22,2023,'yes','06-04-2018');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(19,2023,'yes','21-03-2018');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta) values
(20,2023,'no');
insert into utna_tasa_pe_pertinencia (pe, periodo, presenta, fecha_elaboracion) values
(21,2023,'yes','21-03-2018');

--tabla utna_tasa_mov_alumnos 
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (2,2018,207,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (3,2018,109,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (5,2018,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (4,2018,84,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (1,2018,166,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (6,2018,110,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (7,2018,91,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (8,2018,234,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (11,2018,125,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (12,2018,149,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (13,2018,114,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (9,2018,58,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (10,2018,122,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (14,2018,75,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (15,2018,35,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (16,2018,116,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (17,2018,88,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (23,2018,49,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (28,2018,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (29,2018,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (24,2018,143,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (27,2018,138,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (26,2018,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (25,2018,130,3,'NA','España, Francia');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (18,2018,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (22,2018,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (19,2018,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (20,2018,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (21,2018,0,0,'NA','NA',0);

insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (2,2019,204,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (3,2019,110,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (5,2019,51,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (4,2019,86,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (1,2019,144,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (6,2019,120,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (7,2019,93,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (8,2019,228,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (11,2019,146,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (12,2019,143,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (13,2019,91,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (9,2019,50,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (10,2019,113,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (14,2019,114,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (15,2019,34,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (16,2019,153,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (17,2019,81,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (23,2019,49,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (28,2019,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (29,2019,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (24,2019,172,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (27,2019,145,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (26,2019,76,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (25,2019,113,3,'NA','España, Francia');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (18,2019,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (22,2019,28,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (19,2019,29,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (20,2019,99,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (21,2019,49,0,'NA','NA',0);

insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (2,2020,193,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (3,2020,62,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (5,2020,53,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (4,2020,78,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (1,2020,132,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (6,2020,109,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (7,2020,81,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (8,2020,221,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (11,2020,103,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (12,2020,96,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (13,2020,70,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (9,2020,35,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (10,2020,84,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (14,2020,72,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (15,2020,30,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (16,2020,137,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (17,2020,70,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (23,2020,40,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (28,2020,44,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (29,2020,0,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (24,2020,158,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (27,2020,130,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (26,2020,74,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (25,2020,122,3,'NA','España, Francia');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (18,2020,56,2,'NA','España');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (22,2020,49,1,'NA','España');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (19,2020,71,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (20,2020,182,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (21,2020,80,0,'NA','NA',0);

insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (2,2021,170,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (3,2021,47,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (5,2021,34,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (4,2021,85,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (1,2021,165,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (6,2021,106,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (7,2021,61,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (8,2021,187,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (11,2021,95,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (12,2021,73,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (13,2021,71,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (9,2021,35,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (10,2021,61,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (14,2021,104,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (15,2021,34,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (16,2021,110,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (17,2021,69,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (23,2021,62,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (28,2021,55,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (29,2021,19,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (24,2021,141,2,'NA','Estados Unidos');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (27,2021,130,1,'NA','Fracia');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (26,2021,67,1,'NA','Estados Unidos');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (25,2021,105,3,'NA','España, Francia');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (18,2021,98,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (22,2021,51,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (19,2021,65,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (20,2021,160,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (21,2021,62,1,'NA','Brasil');

insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (2,2022,190,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (3,2022,56,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (5,2022,44,1,'NA','Uruguay');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (4,2022,158,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (1,2022,189,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (6,2022,97,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (7,2022,80,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (8,2022,222,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (11,2022,130,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (12,2022,115,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (13,2022,76,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (9,2022,37,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (10,2022,56,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (14,2022,143,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (15,2022,47,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (16,2022,102,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (17,2022,61,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (23,2022,52,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (28,2022,50,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (29,2022,26,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (24,2022,125,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (27,2022,90,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (26,2022,42,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (25,2022,75,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (18,2022,75,1,'NA','Colombia');
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (22,2022,51,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (19,2022,46,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (20,2022,157,0,'NA','NA',0);
insert into utna_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (21,2022,70,0,'NA','NA',0);

--tabla utna_indice_colocacion 
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(3,2018,37,7,22);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(6,2018,35,14,40);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(1,2018,45,16,36);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(8,2018,80,26,33);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(10,2018,37,14,38);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(9,2018,19,7,37);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(11,2018,30,12,40);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(13,2018,36,14,39);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(12,2018,42,19,45);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(4,2018,22,12,55);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(17,2018,13,8,62);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(7,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(5,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(2,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(15,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(14,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(16,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(25,2018,51,44,86);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(24,2018,62,55,89);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(27,2018,61,51,84);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(23,2018,23,19,83);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(18,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(26,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(19,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(21,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(20,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(22,2018,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(28,2018,0,0,0);

insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(3,2019,29,5,17);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(6,2019,38,6,16);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(1,2019,53,15,28);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(8,2019,87,28,32);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(10,2019,41,12,29);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(9,2019,14,2,21);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(11,2019,24,14,58);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(13,2019,36,10,28);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(12,2019,46,11,24);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(4,2019,16,3,19);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(17,2019,21,11,52);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(7,2019,29,5,17);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(5,2019,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(2,2019,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(15,2019,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(14,2019,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(16,2019,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(25,2019,53,31,58);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(24,2019,76,45,59);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(27,2019,57,34,60);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(23,2019,21,11,52);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(18,2019,42,25,60);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(26,2019,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(19,2019,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(21,2019,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(20,2019,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(22,2019,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(28,2019,0,0,0);

insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(3,2020,49,19,39);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(6,2020,40,11,28);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(1,2020,56,25,45);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(8,2020,79,23,29);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(10,2020,49,14,29);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(9,2020,23,5,22);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(11,2020,41,17,41);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(13,2020,29,9,31);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(12,2020,46,10,22);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(4,2020,24,7,29);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(17,2020,18,13,72);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(7,2020,27,9,33);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(5,2020,17,11,65);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(2,2020,78,28,36);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(15,2020,9,5,56);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(14,2020,45,13,29);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(16,2020,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(25,2020,59,37,63);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(24,2020,80,53,66);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(27,2020,61,46,75);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(23,2020,21,13,62);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(18,2020,45,32,71);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(26,2020,35,23,66);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(19,2020,23,11,48);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(21,2020,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(20,2020,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(22,2020,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(28,2020,0,0,0);

insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(3,2021,27,12,44);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(6,2021,31,9,29);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(1,2021,48,17,35);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(8,2021,73,20,27);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(10,2021,30,3,10);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(9,2021,16,5,31);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(11,2021,37,22,59);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(13,2021,33,11,33);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(12,2021,40,16,40);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(4,2021,24,4,17);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(17,2021,11,7,64);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(7,2021,30,15,50);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(5,2021,10,4,40);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(2,2021,67,32,48);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(15,2021,11,6,55);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(14,2021,17,8,47);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(16,2021,46,15,33);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(25,2021,44,31,70);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(24,2021,75,53,71);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(27,2021,59,40,68);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(23,2021,21,12,57);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(18,2021,46,41,89);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(26,2021,33,24,73);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(19,2021,27,24,89);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(21,2021,36,25,69);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(20,2021,91,61,67);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(22,2021,22,14,64);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(28,2021,0,0,0);

insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(3,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(6,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(1,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(8,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(10,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(9,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(11,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(13,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(12,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(4,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(17,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(7,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(5,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(2,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(15,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(14,2022,0,0,0);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(16,2022,0,0,0);

insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(25,2022,58,34,59);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(24,2022,69,52,75);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(27,2022,54,35,65);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(23,2022,18,14,78);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(18,2022,50,33,66);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(26,2022,33,25,76);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(19,2022,34,19,56);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(21,2022,30,18,60);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(20,2022,79,49,62);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(22,2022,24,13,54);
insert into utna_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(28,2022,31,17,55);

select*from utna_indice_colocacion;
delete from utna_indice_colocacion;
truncate table utna_indice_colocacion  restart identity;
select*from utna_carreras where nivel='TSU';
select*from utna_carreras where nivel='Licenciatura' or nivel='Ingeniería';