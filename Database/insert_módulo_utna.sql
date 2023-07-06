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
