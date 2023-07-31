--tabla uta_carreras
--carreras tsu
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Administración Área Capital Humano','AACH','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Administración Área Formulación y Evaluación de Proyectos','AAFEP','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Contaduría','CT','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Desarrollo de Negocios Área Mercadotecnia','DNAM','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Energías Renovables Área Energía Solar','ERAES','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Logística Área Cadena de Suministros','LACS','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Mantenimiento Área Industrial','MAI','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Mecatrónica Área Automatización','MTAA','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Mecatrónica Área Sistemas de Manufactura Flexible','MTASMF','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Paramedico','PM','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Procesos Industriales Área Manufactura','PIAM','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Tecnologías de la Información Área Desarrollo de Software Multiplataforma','TIADSM','Escolarizado','TSU',6);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Tecnologías de la Información Área Infraestructura de Redes Digitales','TIAIRD','Escolarizado','TSU',6);

--carreras ineniería o licenciatura
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Desarrollo y Gestión de Software','IDGS','Escolarizado','Ingeniería',5);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Mantenimiento Industrial','IMI','Escolarizado','Ingeniería',5);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Mecatrónica','IMT','Escolarizado','Ingeniería',5);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Redes Inteligentes y Ciberseguridad','IRIC','Escolarizado','Ingeniería',5);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Sistemas Productivos','ISP','Escolarizado','Ingeniería',5);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Contaduría','LC','Escolarizado','Licenciatura',5);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Diseño y Gestión de Redes Logísticas','LDGRL','Escolarizado','Licenciatura',5);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Gestión de Negocios y Proyectos','LGNP','Escolarizado','Licenciatura',5);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Gestión del Capital Humano','LGCH','Escolarizado','Licenciatura',5);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Innovación de Negocios y Mercadotecnia','LINM','Escolarizado','Licenciatura',5);
insert into uta_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(1,'Protección Civil y Emergencias','LPCE','Escolarizado','Licenciatura',5);

--tabla select*from uta_tasa_puntaje_extsu
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (13,2022,0,3,16,16,0,0,0);
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (12,2022,0,30,67,70,2,0,0);
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (11,2022,0,24,57,29,0,0,0);
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (10,2022,0,27,81,89,1,0,0);
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (9,2022,0,10,24,31,0,0,0);
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (8,2022,0,6,40,31,1,0,0);
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (7,2022,0,18,59,21,0,0,0);
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (6,2022,0,17,54,26,0,0,0);	
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (5,2022,0,1,0,5,0,0,0);	
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (4,2022,0,31,56,41,0,0,0);	
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (3,2022,0,11,79,65,1,0,0);
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (2,2022,0,5,28,13,0,0,0);
INSERT INTO uta_tasa_puntaje_extsu(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (1,2022,0,34,90,41,0,0,0);	

--tabla uta_tasa_puntaje_exl
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (24,2022,2,19,22,18,2,0,0);
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (23,2022,3,23,40,27,3,0,0);
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (21,2022,0,9,21,15,1,0,0);
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (22,2022,1,54,87,37,2,0,0);	
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (20,2022,0,15,45,31,1,0,0);	
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (19,2022,0,22,61,51,2,0,0);
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (18,2022,6,17,59,42,2,0,0);	
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (17,2022,0,4,9,8,0,0,0);	
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (16,2022,2,10,43,62,2,0,0);
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (15,2022,3,27,54,31,0,0,0);	
INSERT INTO uta_tasa_puntaje_exl(
	carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, 
	puntaje_satisfactorio, puntaje_sobresaliente)
	VALUES (14,2022,2,23,55,64,8,0,0);	

--tabla uta_indice_ptc
INSERT INTO  uta_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (4,2022,'Teresa Cruz Cordero',
	'Diferencia en estrategias de gestión de los directores y las directoras de la Mype de Aguascalientes, Ags.',
	4,'PTC','Concluída',default,default);	
INSERT INTO  uta_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (4,2022,'María Guadalupe Rodríguez Palomino',
	'Los Procesos de Inducción y Aprendizaje de la Cultura en las micro y pequeña empresa del Municipio de Aguascalientes. Estudio preliminar',
	4,'PTC','Concluída',default,default);	
INSERT INTO  uta_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (4,2022,'Abril Areli Llamas Martínez',
	'Diferencia en estrategias de gestión de los directores y las directoras de la Mype de Aguascalientes, Ags.',
	4,'PTC','Concluída',default,default);	
	
INSERT INTO  uta_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (3,2022,'Marco Antonio Avelar Saldívar',
	'Capacitación y desarrollo de habilidades de los directores de las Mypes de Jesús María, Ags.',
	3,'PTC','Concluída',default,default);	
	
INSERT INTO  uta_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (2,2022,'Guillermo González Esparza',
	'Diferencia en estrategias de gestión de los directores y las directoras de la Mype de Aguascalientes, Ags.',
	2,'PTC','Concluída',default,default);		

INSERT INTO  uta_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (1,2022,'Olaya Andrea Hernández Mata',
	'Diferencia en estrategias de gestión de los directores y las directoras de la Mype de Aguascalientes, Ags.',
	1,'PTC','Concluída',default,default);

INSERT INTO  uta_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (19,2022,'Roberto Ezequiel Franco Zesati',
	'Diferencia en estrategias de gestión de los directores y las directoras de la Mype de Aguascalientes, Ags.',
	19,'PTC','Concluída',default,default);
	
INSERT INTO  uta_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (16,2022,'Luis Alejandro Herrera Piad',
	'Highly Stable Switchable Emissions of an Erbium-Doped Fiber Ring Laser Using Cascaded MZIs Based on CHCF',
	16,'PTC','Concluída',default,default);	
	
INSERT INTO  uta_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (15,2022,'Josué A. Reyes Malanche',
	'Detección de fallas de cortocircuito en motores de inducción trifásicos',
	15,'PTC','Concluída',default,default);		
INSERT INTO  uta_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (15,2022,'Josué A. Reyes Malanche',
	'Short-Circuit Fault Diagnosis on Induction Motors through Electric Current Phasor Analysis and Fuzzy Logic',
	15,'PTC','Concluída',default,default);			
	
--tabla uta_iseg_tsu
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (13,2022,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (12,2022,10.0,10.0,0,10.0,10.0,10.0,10.0,10.0,10.0,10.0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (11,2022,10.0,10.0,0,10.0,10.0,10.0,10.0,10.0,10.0,10.0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (10,2022,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (9,2022,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (8,2022,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (7,2022,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (6,2022,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (5,2022,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (4,2022,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (3,2022,10.0,10.0,0,10.0,10.0,10.0,5.0,10.0,10.0,10.0,0);
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (2,2022,0,0,0,0,0,0,0,0,0,0,0);	
INSERT INTO uta_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (1,2022,8.0,10.0,0,10.0,10.0,8.0,10.0,10.0,10.0,10.0,0);	

--tabla uta_iseg_l
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (24,2022,8.3,8.6,0,7.7,7.1,7.1,9.7,8.9,6.9,6.9,0);	
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (23,2022,9.0,9.4,0,7.9,9.0,9.2,9.4,9.4,9.2,9.0,0);	
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (21,2022,9.1,9.1,0,9.1,9.7,9.4,9.7,9.4,9.7,9.7,0);	
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (22,2022,8.5,9.3,0,9.1,8.6,9.0,9.7,9.5,9.9,9.6,0);	
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (20,2022,9.1,9.7,0,9.4,8.2,9.0,9.1,9.1,10.0,9.9,0);
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (19,2022,9.1,9.5,0,9.8,9.3,9.0,9.9,9.6,10.0,9.6,0);
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (18,2022,8.5,9.8,0,9.0,8.0,8.8,10.0,9.3,9.8,9.8,0);	
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (17,2022,8.7,8.7,0,8.7,6.7,8.0,7.3,6.0,7.3,6.7,0);	
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (16,2022,9.0,8.1,0,8.1,7.6,8.8,9.6,9.1,8.8,8.4,0);
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (15,2022,9.0,9.0,0,9.1,7.6,8.3,9.1,9.1,9.5,9.1,0);	
INSERT INTO uta_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (14,2022,8.7,9.3,0,9.1,9.4,9.3,9.3,8.1,9.4,9.1,0);	
	
--tabla uta_isem_tsu
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (13,2022,9.5,9.5,10.0,9.5,9.5,9.5,10.0,9.5,0);
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (12,2022,9.3,9.3,9.3,9.3,9.3,9.3,9.3,9.3,0);	
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (11,2022,9.4,9.4,9.4,9.4,10.0,10.0,9.4,10.0,0);	
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (10,2022,8.0,8.0,8.0,8.0,8.0,8.0,8.0,8.0,0);	
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (9,2022,10.0,10.0,9.4,9.4,10.0,10.0,10.0,10.0,0);	
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (8,2022,9.3,8.7,9.3,9.3,9.3,9.3,9.3,9.3,0);
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (7,2022,10.0,8.5,10.0,10.0,7.7,10.0,8.5,10.0,0);
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (6,2022,10.0,10.0,9.3,9.3,10.0,10.0,9.3,9.3,0);
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (5,2022,0,0,0,0,0,0,0,0,0);
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (4,2022,10.0,10.0,10.0,10.0,9.0,10.0,9.5,9.5,0);
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (3,2022,8.6,8.6,9.3,10.0,8.6,10.0,8.6,8.6,0);
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (2,2022,0,0,0,0,0,0,0,0,0);
INSERT INTO uta_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (1,2022,8.0,8.0,8.0,8.0,8.0,8.0,8.0,8.0,0);	

-- tabla uta_isem_l
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (24,2022,9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0,0);	
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (23,2022,9.2,9.2,10.0,9.2,8.3,9.2,8.3,9.2,0);	
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (21,2022,0,0,0,0,0,0,0,0,0);	
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (22,2022,10.0,9.3,10.0,9.3,10.0,10.0,10.0,10.0,0);	
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (20,2022,9.2,9.2,9.2,9.2,10.0,10.0,10.0,10.0,0);	
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (19,2022,8.8,8.8,9.4,9.1,9.1,8.8,9.1,8.4,0);	
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (18,2022,9.4,9.4,9.4,9.4,10.0,10.0,9.4,10.0,0);	
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (17,2022,0,0,0,0,0,0,0,0,0);	
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (16,2022,9.5,10.0,8.9,9.5,10.0,10.0,10.0,10.0,0);		
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (15,2022,10.0,10.0,9.5,8.5,9.0,10.0,10.0,10.0,0);		
INSERT INTO uta_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, 
	cumple_req, calificaion_trabajo, indice_satisfaccion)
	VALUES (14,2022,9.5,8.6,9.0,8.6,9.5,8.6,9.5,10.0,0);		
	
--tabla uta_tasa_pe_pertinencia
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (13,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (12,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (11,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (10,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (9,2023,'yes',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (8,2023,'yes',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (7,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (6,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (5,2023,'no',default);	
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (4,2023,'no',default);	
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (3,2023,'no',default);	
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (2,2023,'no',default);	
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (1,2023,'no',default);	
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (24,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (23,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (22,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (21,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (20,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (19,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (18,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (17,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (16,2023,'no',default);
INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (15,2023,'no',default);	
	INSERT INTO uta_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (14,2023,'no',default);

--tabla uta_indice_colocacion
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (13,2018,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (12,2018,0,0,0);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (11,2018,67,26,38.1);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (10,2018,36,10,27.8);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (9,2018,11,4,36.36);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (8,2018,15,7,46.67);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (7,2018,52,24,46.15);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (6,2018,0,0,0);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (5,2018,6,3,50.00);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (4,2018,68,20,29.41);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (3,2018,44,36,81.82);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (2,2018,0,0,0);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (1,2018,0,0,0);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (24,2018,23,13,56.52);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (23,2018,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (21,2018,0,0,0);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (22,2018,0,0,0);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (20,2018,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (19,2018,44,37,84.09);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (18,2018,32,24,75.00);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (17,2018,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (16,2018,28,20,71.43);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (15,2018,51,37,72.55);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (14,2018,0,0,0);		
	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (13,2019,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (12,2019,0,0,0);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (11,2019,70,27,38.57);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (10,2019,47,32,68.09);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (9,2019,13,6,46.15);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (8,2019,19,10,52.63);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (7,2019,63,24,38.10);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (6,2019,32,16,50.00);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (5,2019,5,2,40.00);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (4,2019,51,31,60.78);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (3,2019,61,59,96.72);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (2,2019,14,8,57.14);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (1,2019,33,17,51.52);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (24,2019,29,15,51.72);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (23,2019,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (21,2019,0,0,0);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (22,2019,0,0,0);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (20,2019,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (19,2019,49,46,93.88);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (18,2019,18,10,55.56);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (17,2019,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (16,2019,26,22,84.62);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (15,2019,36,25,69.44);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (14,2019,0,0,0);			
	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (13,2020,18,10,55.56);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (12,2020,48,14,29.17);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (11,2020,61,17,27.87);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (10,2020,46,15,32.61);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (9,2020,14,6,42.86);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (8,2020,41,23,56.10);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (7,2020,66,32,48.48);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (6,2020,44,20,45.45);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (5,2020,6,4,66.67);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (4,2020,44,22,50.00);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (3,2020,54,21,38.89);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (2,2020,17,12,70.59);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (1,2020,68,37,54.41);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (24,2020,30,17,56.67);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (23,2020,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (21,2020,0,0,0);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (22,2020,0,0,0);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (20,2020,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (19,2020,36,25,69.44);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (18,2020,55,31,56.36);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (17,2020,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (16,2020,44,25,56.82);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (15,2020,46,25,54.35);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (14,2020,0,0,0);		
	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (13,2021,14,5,35.71);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (12,2021,30,12,40.00);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (11,2021,54,22,40.74);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (10,2021,76,32,42.11);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (9,2021,25,13,52.00);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (8,2021,20,13,65.00);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (7,2021,59,42,71.19);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (6,2021,76,36,47.37);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (5,2021,4,3,75.00);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (4,2021,55,37,67.27);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (3,2021,59,35,59.32);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (2,2021,31,21,67.74);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (1,2021,100,47,47.00);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (24,2021,31,17,54.84);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (23,2021,35,18,51.43);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (21,2021,14,6,42.86);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (22,2021,49,29,59.18);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (20,2011,34,17,50.00);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (19,2021,44,32,72.73);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (18,2021,58,42,72.41);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (17,2021,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (16,2021,47,29,61.70);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (15,2021,58,34,58.62);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (14,2021,0,0,0);	

INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (13,2022,8,5,62.50);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (12,2022,50,13,26.00);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (11,2022,41,21,51.22);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (10,2022,51,15,29.41);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (9,2022,13,6,46.15);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (8,2022,33,12,36.36);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (7,2022,38,23,60.53);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (6,2022,41,22,53.66);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (5,2022,2,1,50.00);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (4,2022,51,23,45.10);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (3,2022,61,39,63.93);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (2,2022,17,9,52.94);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (1,2022,52,32,61.54);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (24,2022,26,13,50.00);
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (23,2022,50,24,48.00);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (21,2022,20,13,65.00);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (22,2022,55,31,56.36);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (20,2012,38,25,65.79);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (19,2022,73,59,80.82);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (18,2022,50,25,50.00);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (17,2022,0,0,0);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (16,2022,68,43,63.24);	
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (15,2022,53,27,50.94);		
INSERT INTO uta_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (14,2022,71,41,57.75);	

--tabla uta_tasa_mov_alumnos
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (13,2018,212,5,'NA','Ucrania, Francia, Alemania, Costa Rica',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (12,2018,201,3,'NA','Francia',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (11,2018,460,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (10,2018,361,1,'NA','Portugal',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (9,2018,311,1,'NA','Francia',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (8,2018,190,1,'NA','Alemania',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (7,2018,471,1,'NA','Francia',0);		
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (6,2018,56,0,'NA','NA',0);			
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (5,2018,56,0,'NA','NA',0);		
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (4,2018,46,4,'NA','China, Serbia, Italia, Francia',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (3,2018,55,2,'NA','Argentina, Belgica',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (2,2018,55,3,'NA','Francia, Belgica, Argentina',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (1,2018,81,1,'NA','Francia',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (24,2018,74,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (23,2018,0,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (21,2018,0,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (22,2018,0,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (20,2018,0,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (19,2018,0,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (18,2018,129,3,'NA','China, Francia',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (17,2018,107,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (16,2018,135,4,'NA','China, Italia, Reino Unido',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (15,2018,189,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (14,2018,0,0,'NA','NA',0);

INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (13,2019,254,4,'NA','España, España, Turquia',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (12,2019,280,6,'NA','Francia, Canadá, USA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (11,2019,506,4,'NA','Canadá, Francia, USA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (10,2019,356,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (9,2019,276,2,'NA','Canadá, Francia',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (8,2019,255,1,'NA','Francia',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (7,2019,532,3,'NA','USA',0);		
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (6,2019,134,1,'NA','Francia',0);			
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (5,2019,58,0,'NA','NA',0);		
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (4,2019,32,2,'NA','Canadá',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (3,2019,0,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (2,2019,55,1,'NA','USA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (1,2019,44,1,'NA','Colombia',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (24,2019,66,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (23,2019,0,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (21,2019,0,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (22,2019,0,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (20,2019,90,1,'NA','USA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (19,2019,115,1,'NA','Canadá',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (18,2019,143,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (17,2019,39,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (16,2019,135,1,'NA','Canadá',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (15,2019,159,1,'NA','Canadá',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (14,2019,0,0,'NA','NA',0);

INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (13,2020,433,1,'NA','Francia',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (12,2020,0,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (11,2020,389,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (10,2020,326,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (9,2020,0,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (8,2020,472,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (7,2020,354,0,'NA','NA',0);		
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (6,2020,175,1,'NA','Francia',0);			
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (5,2020,45,0,'NA','NA',0);		
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (4,2020,184,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (3,2020,292,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (2,2020,298,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (1,2020,126,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (24,2020,69,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (23,2020,43,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (21,2020,20,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (22,2020,55,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (20,2020,36,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (19,2020,21,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (18,2020,177,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (17,2020,0,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (16,2020,151,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (15,2020,166,1,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (14,2020,36,0,'NA','NA',0);	
	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (13,2021,50,1,'NA','USA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (12,2021,297,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (11,2021,261,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (10,2021,312,1,'NA','USA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (9,2021,140,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (8,2021,174,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (7,2021,244,0,'NA','NA',0);		
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (6,2021,166,3,'NA','USA',0);			
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (5,2021,21,0,'NA','NA',0);		
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (4,2021,166,2,'NA','USA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (3,2021,249,2,'NA','Francia, USA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (2,2021,67,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (1,2021,0,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (24,2021,312,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (23,2021,153,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (21,2021,58,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (22,2021,283,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (20,2021,73,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (19,2021,74,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (18,2021,168,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (17,2021,12,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (16,2021,162,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (15,2021,178,1,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (14,2021,88,0,'NA','NA',0);		
	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (13,2022,58,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (12,2022,282,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (11,2022,227,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (10,2022,348,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (9,2022,152,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (8,2022,125,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (7,2022,207,0,'NA','NA',0);		
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (6,2022,141,1,'NA','Argentina',0);			
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (5,2022,22,0,'NA','NA',0);		
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (4,2022,141,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (3,2022,242,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (2,2022,68,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (1,2022,207,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (24,2022,348,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (23,2022,195,0,'NA','NA',0);	
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (21,2022,60,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (22,2022,213,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (20,2022,108,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (19,2022,174,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (18,2022,153,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (17,2022,31,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (16,2022,163,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (15,2022,162,0,'NA','NA',0);
INSERT INTO uta_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (14,2022,150,0,'NA','NA',0);		
	
	

select*from uta_carreras where nivel='TSU'
select*from uta_carreras where nivel='Licenciatura' or nivel='Ingeniería'