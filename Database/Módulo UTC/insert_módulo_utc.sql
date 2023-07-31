--tabla utc_carreras
--tsu carreras
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Administración Área Capital Humano','AACH','Escolarizado','TSU',6);
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Construcción','Constr','Escolarizado','TSU',6);
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Desarrollo de Negocios Área Mercadotecnia','DNAM','Escolarizado','TSU',6);
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Gastronomía','Gastr','Escolarizado','TSU',6);
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Mantenimiento Área Industrial','MAI','Escolarizado','TSU',6);
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Procesos Industriales Área Manufactura','PIAM','Escolarizado','TSU',6);
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Tecnologías de la Información Área Desarrollo de Software Multiplataforma','TIADSM','Escolarizado','TSU',6);
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Turismo Área Desarrollo de Productos Alternativos','TADPA','Escolarizado','TSU',6);

--carreras licenciatura e ingeniería
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Sistemas Productivos','ISP','Escolarizado','Ingeniería',5);
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Gestión del Capital Humano','LGCH','Escolarizado','Licenciatura',5);
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Gestión y Desarrollo Turístico','LGDT','Escolarizado','Licenciatura',5);
insert into utc_carreras(universidad, nombre, abreviacion, modalidad, nivel, duración) values
(2,'Innovación de Negocios y Mercadotecnia','LINM','Escolarizado','Licenciatura',5);

--tabla utc_indice_ptc
insert into utc_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(1,2023,'María del Carmen Ruíz Calvillo',
'Habilidades directivas y clima organizacional en las micro y pequeñas empresas Latinoamericanas',
1,'PTC','En proceso');
insert into utc_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(3,2023,'Francisco Manuel Cardona González',
'Habilidades directivas y clima organizacional en las micro y pequeñas empresas Latinoamericanas',
3,'PTC','En proceso');
insert into utc_indice_ptc
(carrera, periodo, nombre_profesor,nombre_investigacion,pe_perteneciente,tipo_profesor,estado_investigación) values
(6,2023,'Pedro Moreno Vázquez',
'Habilidades directivas y clima organizacional en las micro y pequeñas empresas Latinoamericanas',
6,'PTC','En proceso');

--tabla utc_tasa_pe_pertinencia
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(1,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(3,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(5,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(6,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(7,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(8,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(4,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(2,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(10,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(12,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(11,2023,'yes');
insert into utc_tasa_pe_pertinencia (pe, periodo, presenta) values
(9,2023,'yes');

--tabla utc_indice_colocacion 
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(1,2018,20,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(3,2018,12,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(5,2018,22,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(6,2018,16,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(7,2018,18,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(8,2018,18,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(4,2018,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(2,2018,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(10,2018,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(12,2018,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(11,2018,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(9,2018,10,1,10);

insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(1,2019,33,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(3,2019,12,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(5,2019,23,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(6,2019,11,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(7,2019,17,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(8,2019,9,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(4,2019,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(2,2019,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(10,2019,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(12,2019,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(11,2019,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(9,2019,15,2,14);

insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(1,2020,15,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(3,2020,22,5,23);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(5,2020,10,1,10);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(6,2020,31,4,13);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(7,2020,7,1,15);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(8,2020,24,4,17);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(4,2020,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(2,2020,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(10,2020,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(12,2020,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(11,2020,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(9,2020,15,2,14);

insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(1,2021,20,4,20);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(3,2021,10,2,20);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(5,2021,12,2,17);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(6,2021,19,3,16);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(7,2021,10,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(8,2021,14,2,14);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(4,2021,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(2,2021,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(10,2021,26,3,12);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(12,2021,9,1,11);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(11,2021,17,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(9,2021,3,0,0);

insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(1,2022,24,2,8);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(3,2022,15,4,27);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(5,2022,7,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(6,2022,6,1,17);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(7,2022,11,4,36);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(8,2022,10,1,10);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(4,2022,9,2,22);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(2,2022,0,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(10,2022,13,3,23);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(12,2022,16,0,0);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(11,2022,20,2,10);
insert into utc_indice_colocacion (carrera,periodo,egresados,colocados,indice_colocacion) values
(9,2022,25,9,36);

--tabla utc_tasa_mov_alumnos 
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (1,2018,70,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (3,2018,47,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (5,2018,52,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (6,2018,64,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (7,2018,47,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (8,2018,44,1,'NA','Francia',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (4,2018,0,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (2,2018,0,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (10,2018,0,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (12,2018,0,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (11,2018,0,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (9,2018,35,0,'NA','NA',0);

insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (1,2019,65,4,'NA','Ecuador',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (3,2019,48,2,'NA','Ecuador',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (5,2019,44,2,'NA','Ecuador',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (6,2019,70,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (7,2019,32,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (8,2019,57,7,'NA','Francia, Estados Unidos, Ecuador',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (4,2019,0,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (2,2019,0,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (10,2019,23,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (12,2019,12,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (11,2019,12,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (9,2019,10,0,'NA','NA',0);

insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (1,2020,68,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (3,2020,40,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (5,2020,23,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (6,2020,32,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (7,2020,28,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (8,2020,29,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (4,2020,20,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (2,2020,0,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (10,2020,40,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (12,2020,29,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (11,2020,40,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (9,2020,36,0,'NA','NA',0);

insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (1,2021,57,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (3,2021,47,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (5,2021,7,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (6,2021,21,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (7,2021,20,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (8,2021,36,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (4,2021,42,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (2,2021,19,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (10,2021,34,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (12,2021,17,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (11,2021,21,1,'NA','Ecuador',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (9,2021,36,0,'NA','NA',0);

insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (1,2022,34,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (3,2022,45,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (5,2022,0,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (6,2022,17,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (7,2022,19,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (8,2022,30,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (4,2022,57,2,'NA','España',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (2,2022,31,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (10,2022,33,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (12,2022,19,0,'NA','NA',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (11,2022,12,2,'NA','Estados Unidos, Ecuador',0);
insert into utc_tasa_mov_alumnos (carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad)
values (9,2022,36,0,'NA','NA',0);