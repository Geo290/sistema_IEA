--tabla utma_carreras
--carreras tsu
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Nanotecnología Área Materiales','NTAM','Escolarizado','TSU',7);
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Mecatrónica Área Robótica','MTAR','Escolarizado','TSU',7);
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Operaciones Comerciales Área Negocios Internacionales','OCANI','Escolarizado','TSU',7);
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Procesos Industriales Área Sistemas de Gestión de la Calidad','PIASGC','Escolarizado','TSU',7);
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Tecnologías de la Información Área Inteligencia Artificial','TIAIA','Escolarizado','TSU',7);
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Tecnologías de la Información Área Desarrollo de Software Multiplataforma','TIADSM','Escolarizado','TSU',7);

--carreras ingeniería y licenciatura
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Desarrollo y Gestión de Software','IDGS','Escolarizado','Ingeniería',5);
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Inteligencia Artifical','IIA','Escolarizado','Ingeniería',5);
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Logística Internacional','ILI','Escolarizado','Ingeniería',5);
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Mecatrónica','IMT','Escolarizado','Ingeniería',5);
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Nanotecnología','INT','Escolarizado','Ingeniería',5);
insert into utma_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(3,'Procesos Industriales','IPI','Escolarizado','Ingeniería',5);

--tabla select*from utma_indice_ptc
INSERT INTO utma_indice_ptc(
	carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, 
	"estado_investigación", perfil_prodept, "participación_ca")
	VALUES (1,2023,'Verónica Janeth Landín Sandoval',
	'Obtención de Nanopartículas de Fe3O4 para la remoción de Arsénico y otros metales pesados en aguas residuales de Aguascalientes',
	1,'PTC','En proceso',default, default);
	
--tabla utma_tasa_pe_asat
INSERT INTO utma_tasa_pe_asat(
	pe, periodo, realizacion, vencimiento)
	VALUES ();
	
--tabla utma_tasa_pe_pertinencia
INSERT INTO utma_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (2,2023,'yes',default);
INSERT INTO utma_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (1,2023,'yes',default);
INSERT INTO utma_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (3,2023,'yes',default);
INSERT INTO utma_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (6,2023,'yes',default);		
INSERT INTO utma_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (11,2023,'yes',default);	
INSERT INTO utma_tasa_pe_pertinencia(
	pe, periodo, presenta, fecha_elaboracion)
	VALUES (10,2023,'yes',default);	
	
--tabla select*from utma_indice_colocacion
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (2,2018,0,0,0);
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (1,2018,0,0,0);	
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (3,2018,0,0,0);			
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (6,2018,0,0,0);		
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (10,2018,0,0,0);		
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (11,2018,0,0,0);		
	
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (2,2019,0,0,0);
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (1,2019,0,0,0);	
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (3,2019,0,0,0);			
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (6,2019,0,0,0);		
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (10,2019,0,0,0);		
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (11,2019,0,0,0);		
	
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (2,2020,11,5,45);
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (1,2020,13,1,7);	
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (3,2020,0,0,0);			
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (6,2020,0,0,0);		
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (10,2020,0,0,0);		
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (11,2020,0,0,0);		
	
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (2,2021,17,7,41);
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (1,2021,21,7,33);	
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (3,2021,13,11,59);			
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (6,2021,12,6,50);		
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (10,2021,0,0,0);		
INSERT INTO utma_indice_colocacion(
	carrera, periodo, egresados, colocados, indice_colocacion)
	VALUES (11,2021,0,0,0);	

--tabla utma_tasa_mov_alumnos
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (2,2018,67,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (1,2018,53,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (3,2018,0,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (6,2018,0,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (10,2018,0,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (11,2018,0,0,'NA','NA',0);
	
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (2,2019,124,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (1,2019,106,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (3,2019,51,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (6,2019,32,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (10,2019,0,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (11,2019,0,0,'NA','NA',0);
	
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (2,2020,143,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (1,2020,97,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (3,2020,133,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (6,2020,62,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (10,2020,0,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (11,2020,0,0,'NA','NA',0);	
	
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (2,2021,156,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (1,2021,91,1,'NA','Francia',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (3,2021,217,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (6,2021,125,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (10,2021,16,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (11,2021,10,0,'NA','NA',0);	
	
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (2,2022,131,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (1,2022,93,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (3,2022,261,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (6,2022,169,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (10,2022,27,0,'NA','NA',0);
INSERT INTO utma_tasa_mov_alumnos(
	carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
	VALUES (11,2022,20,0,'NA','NA',0);	
	
--tabla utma_iseg_tsu
INSERT INTO utma_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (2,2022,0,8.68,0,7.5,8.2,6.5,8.8,9.63,9.2,8.68,0);
INSERT INTO utma_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (1,2022,0,9.6,0,9.4,8.33,9.3,9.7,9.48,9.4,9.6,0);
INSERT INTO utma_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (3,2022,0,7.31,0,8.76,8.54,9.4,7.55,8.54,8.76,8.76,0);
INSERT INTO utma_iseg_tsu(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion)
	VALUES (6,2022,0,9.85,0,9.63,9.27,7.3,9.0,9.73,9.85,9.63,0);

--tabla utma_iseg_l
INSERT INTO utma_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (10,2022,0,9.0,0,7.0,0,7.5,9.5,9.0,9.0,8.5,0);
INSERT INTO utma_iseg_l(
	carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, 
	infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion)
	VALUES (11,2022,0,9.0,0,7.5,0,8.5,9.5,10.0,9.0,9.5,0);

--tabla utma_isem_tsu
INSERT INTO utma_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, 
	calificaion_trabajo, indice_satisfaccion)
	VALUES (2,2022,0,9.8,9.4,9.7,9.7,0,0,9.4,0);
INSERT INTO utma_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, 
	calificaion_trabajo, indice_satisfaccion)
	VALUES (1,2022,0,10.0,10.0,10.0,10.0,0,0,10.0,0);
INSERT INTO utma_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, 
	calificaion_trabajo, indice_satisfaccion)
	VALUES (3,2022,0,9.8,9.2,9.2,9.2,0,0,8.57,0);
INSERT INTO utma_isem_tsu(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, 
	calificaion_trabajo, indice_satisfaccion)
	VALUES (6,2022,0,10.0,10.0,10.0,10.0,0,0,10.0,0);

--tabla select*from utma_isem_l
INSERT INTO utma_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, 
	calificaion_trabajo, indice_satisfaccion)
	VALUES (10,2022,0,9.7,9.4,9.7,10.0,0,0,10.0,0);
INSERT INTO utma_isem_l(
	carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, 
	calificaion_trabajo, indice_satisfaccion)
	VALUES (11,2022,0,10.0,10.0,10.0,10.0,0,0,10.0,0);

select*from utma_carreras 