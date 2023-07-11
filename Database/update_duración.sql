select*from utna_carreras
update utna_carreras set duración=6 where modalidad='Escolarizado' and nivel='TSU';
update utna_carreras set duración=9 where modalidad='Despresurizado' and nivel='TSU';
update utna_carreras set duración=5 where modalidad='Escolarizado' and nivel='Licenciatura' or nivel='Ingeniería';