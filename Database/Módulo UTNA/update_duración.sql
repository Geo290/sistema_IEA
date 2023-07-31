select*from utna_carreras
update utna_carreras set duración=6 where modalidad='Escolarizado' and nivel='TSU';
update utna_carreras set duración=9 where modalidad='Despresurizado' and nivel='TSU';
update utna_carreras set duración=5 where modalidad='Escolarizado' and nivel='Licenciatura' or nivel='Ingeniería';
update utna_tasa_puntaje_egel set puntaje_satisfactorio=0 where puntaje_satisfactorio is null;
update utna_tasa_puntaje_egel set puntaje_sobresaliente=0 where puntaje_sobresaliente is null;
update utna_tasa_puntaje_egetsu set puntaje_satisfactorio=0 where puntaje_satisfactorio is null;
update utna_tasa_puntaje_egetsu set puntaje_sobresaliente=0 where puntaje_sobresaliente is null;
update utna_iseg_l set indice_satisfaccion=0 where indice_satisfaccion is null;
update utna_iseg_tsu set indice_satisfaccion=0 where indice_satisfaccion is null;
update utna_isem_tsu set indice_satisfaccion=0 where indice_satisfaccion is null;
update utna_isem_l set indice_satisfaccion=0 where indice_satisfaccion is null;
update utna_tasa_mov_alumnos set tasa_movilidad=0 where tasa_movilidad is null;
select*from utna_indice_colocacion