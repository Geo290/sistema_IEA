--Restricciones a llaves foraneas
alter table usuarios alter column  Universidad set not null
alter table carreras alter column  Universidad set not null
alter table UTNA_Tasa_cobertura alter column  Carrera set not null
alter table UTNA_Eficiencia_IRE alter column  Carrera set not null
alter table UTNA_Tasa_Puntaje_EGETSU alter column  Carrera set not null
alter table UTNA_Tasa_Puntaje_EGEL alter column  Carrera set not null
alter table UTNA_Indice_Servicios alter column  Carrera set not null
alter table UTNA_ISEg_TSU alter column  Carrera set not null
alter table UTNA_ISEg_L alter column  Carrera set not null
alter table UTNA_ISEm_TSU alter column  Carrera set not null
alter table UTNA_ISEm_L alter column  Carrera set not null
alter table UTNA_Tasa_Docentes alter column  Carrera set not null
alter table UTNA_Indice_PTC alter column  Carrera set not null
alter table UTNA_Indice_PTC alter column  PE_Perteneciente set not null
alter table UTNA_Tasa_PE_ASAT alter column  PE set not null
alter table UTNA_Tasa_PE_Pertinencia alter column  PE set not null
alter table UTNA_Indice_Colocacion alter column Carrera set not null
alter table UTNA_Tasa_Mov_Alumnos alter column Carrera set not null
alter table UTNA_Tasa_Mov_Docentes alter column Carrera set not null
alter table UTNA_Tasa_Acreditacion alter column Carrera set not null

--Restricciones a llaves primarias
alter table usuarios alter column  IDUsuario set not null
alter table UTNA_carreras alter column  IDCarrera set not null
alter table UTNA_Tasa_cobertura alter column  IDTC set not null
alter table UTNA_Eficiencia_IRE alter column  IDEIRE set not null
alter table UTNA_Tasa_Puntaje_EGETSU alter column  IDTPEGETSU set not null
alter table UTNA_Tasa_Puntaje_EGEL alter column  IDTPEGEL set not null
alter table UTNA_Indice_Servicios alter column  IDIS set not null
alter table UTNA_ISEg_TSU alter column  IDISEGTSU set not null
alter table UTNA_ISEg_L alter column  IDISEGL set not null
alter table UTNA_ISEm_TSU alter column  IDISEMTSU set not null
alter table UTNA_ISEm_L alter column  IDISEML set not null
alter table UTNA_Tasa_Docentes alter column  IDTD set not null
alter table UTNA_Indice_PTC alter column  IDIPTC set not null
alter table UTNA_Tasa_PE_ASAT alter column  IDTPEASAT set not null
alter table UTNA_Tasa_PE_Pertinencia alter column  IDTPEP set not null
alter table UTNA_Indice_Colocacion alter column IDIC set not null
alter table UTNA_Tasa_Mov_Alumnos alter column IDTMA set not null
alter table UTNA_Tasa_Mov_Docentes alter column IDTMD set not null
alter table UTNA_Tasa_Acreditacion alter column IDTA set not null

select * from UTNA_Tasa_Acreditacion

--Renombrar la columna año en las tablas
alter table UTNA_Tasa_cobertura rename column  Año to Periodo;
alter table UTNA_Eficiencia_IRE rename column  Año to Periodo;
alter table UTNA_Tasa_Puntaje_EGETSU rename column  Año to Periodo;
alter table UTNA_Tasa_Puntaje_EGEL rename column  Año to Periodo;
alter table UTNA_Indice_Servicios rename column  Año to Periodo;
alter table UTNA_ISEg_TSU rename column  Año to Periodo;
alter table UTNA_ISEg_L rename column  Año to Periodo;
alter table UTNA_ISEm_TSU rename column  Año to Periodo;
alter table UTNA_ISEm_L rename column  Año to Periodo;
alter table UTNA_Tasa_Docentes rename column  Año to Periodo;
alter table UTNA_Indice_PTC rename column  Año to Periodo;
alter table UTNA_Tasa_PE_ASAT rename column  Año to Periodo;
alter table UTNA_Tasa_PE_Pertinencia rename Año to Periodo;
alter table UTNA_Indice_Colocacion rename column Año to Periodo;
alter table UTNA_Tasa_Mov_Alumnos rename column Año to Periodo;
alter table UTNA_Tasa_Mov_Docentes rename column Año to Periodo;
alter table UTNA_Tasa_Acreditacion rename column Año to Periodo;