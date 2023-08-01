PGDMP                          {            plan_estrategico    15.3    15.3 >   |           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            }           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ~           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    27278    plan_estrategico    DATABASE     �   CREATE DATABASE plan_estrategico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
     DROP DATABASE plan_estrategico;
                postgres    false                       1259    27575    crena_carreras    TABLE     �   CREATE TABLE public.crena_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 "   DROP TABLE public.crena_carreras;
       public         heap    postgres    false                       1259    27574    crena_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.crena_carreras_idcarrera_seq;
       public          postgres    false    259            �           0    0    crena_carreras_idcarrera_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.crena_carreras_idcarrera_seq OWNED BY public.crena_carreras.idcarrera;
          public          postgres    false    258                       1259    27601    crena_eficiencia_ire    TABLE        CREATE TABLE public.crena_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 (   DROP TABLE public.crena_eficiencia_ire;
       public         heap    postgres    false                       1259    27600    crena_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.crena_eficiencia_ire_ideire_seq;
       public          postgres    false    263            �           0    0    crena_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.crena_eficiencia_ire_ideire_seq OWNED BY public.crena_eficiencia_ire.ideire;
          public          postgres    false    262                       1259    27740    crena_indice_colocacion    TABLE     �   CREATE TABLE public.crena_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 +   DROP TABLE public.crena_indice_colocacion;
       public         heap    postgres    false                       1259    27739     crena_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_indice_colocacion_idic_seq;
       public          postgres    false    283            �           0    0     crena_indice_colocacion_idic_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_indice_colocacion_idic_seq OWNED BY public.crena_indice_colocacion.idic;
          public          postgres    false    282                       1259    27699    crena_indice_ptc    TABLE     �  CREATE TABLE public.crena_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 $   DROP TABLE public.crena_indice_ptc;
       public         heap    postgres    false                       1259    27698    crena_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.crena_indice_ptc_idiptc_seq;
       public          postgres    false    277            �           0    0    crena_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.crena_indice_ptc_idiptc_seq OWNED BY public.crena_indice_ptc.idiptc;
          public          postgres    false    276                       1259    27643    crena_indice_servicios    TABLE     �  CREATE TABLE public.crena_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 *   DROP TABLE public.crena_indice_servicios;
       public         heap    postgres    false                       1259    27642    crena_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.crena_indice_servicios_idis_seq;
       public          postgres    false    269            �           0    0    crena_indice_servicios_idis_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.crena_indice_servicios_idis_seq OWNED BY public.crena_indice_servicios.idis;
          public          postgres    false    268                       1259    27657 
   crena_iseg    TABLE     �  CREATE TABLE public.crena_iseg (
    idiseg integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.crena_iseg;
       public         heap    postgres    false                       1259    27656    crena_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.crena_iseg_idiseg_seq;
       public          postgres    false    271            �           0    0    crena_iseg_idiseg_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.crena_iseg_idiseg_seq OWNED BY public.crena_iseg.idiseg;
          public          postgres    false    270                       1259    27671 
   crena_isem    TABLE     a  CREATE TABLE public.crena_isem (
    idisem integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.crena_isem;
       public         heap    postgres    false                       1259    27670    crena_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.crena_isem_idisem_seq;
       public          postgres    false    273            �           0    0    crena_isem_idisem_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.crena_isem_idisem_seq OWNED BY public.crena_isem.idisem;
          public          postgres    false    272            !           1259    27782    crena_tasa_acreditacion    TABLE       CREATE TABLE public.crena_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 +   DROP TABLE public.crena_tasa_acreditacion;
       public         heap    postgres    false                        1259    27781     crena_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_acreditacion_idta_seq;
       public          postgres    false    289            �           0    0     crena_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_acreditacion_idta_seq OWNED BY public.crena_tasa_acreditacion.idta;
          public          postgres    false    288                       1259    27587    crena_tasa_cobertura    TABLE     �   CREATE TABLE public.crena_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 (   DROP TABLE public.crena_tasa_cobertura;
       public         heap    postgres    false                       1259    27586    crena_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.crena_tasa_cobertura_idtc_seq;
       public          postgres    false    261            �           0    0    crena_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.crena_tasa_cobertura_idtc_seq OWNED BY public.crena_tasa_cobertura.idtc;
          public          postgres    false    260                       1259    27685    crena_tasa_docentes    TABLE     �   CREATE TABLE public.crena_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 '   DROP TABLE public.crena_tasa_docentes;
       public         heap    postgres    false                       1259    27684    crena_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.crena_tasa_docentes_idtd_seq;
       public          postgres    false    275            �           0    0    crena_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.crena_tasa_docentes_idtd_seq OWNED BY public.crena_tasa_docentes.idtd;
          public          postgres    false    274                       1259    27754    crena_tasa_mov_alumnos    TABLE       CREATE TABLE public.crena_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 *   DROP TABLE public.crena_tasa_mov_alumnos;
       public         heap    postgres    false                       1259    27753     crena_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    285            �           0    0     crena_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_mov_alumnos_idtma_seq OWNED BY public.crena_tasa_mov_alumnos.idtma;
          public          postgres    false    284                       1259    27768    crena_tasa_mov_docentes    TABLE       CREATE TABLE public.crena_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 +   DROP TABLE public.crena_tasa_mov_docentes;
       public         heap    postgres    false                       1259    27767 !   crena_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.crena_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    287            �           0    0 !   crena_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.crena_tasa_mov_docentes_idtmd_seq OWNED BY public.crena_tasa_mov_docentes.idtmd;
          public          postgres    false    286                       1259    27716    crena_tasa_pe_asat    TABLE     �   CREATE TABLE public.crena_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 &   DROP TABLE public.crena_tasa_pe_asat;
       public         heap    postgres    false                       1259    27715     crena_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    279            �           0    0     crena_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_pe_asat_idtpeasat_seq OWNED BY public.crena_tasa_pe_asat.idtpeasat;
          public          postgres    false    278                       1259    27728    crena_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.crena_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 -   DROP TABLE public.crena_tasa_pe_pertinencia;
       public         heap    postgres    false                       1259    27727 $   crena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.crena_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    281            �           0    0 $   crena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.crena_tasa_pe_pertinencia_idtpep_seq OWNED BY public.crena_tasa_pe_pertinencia.idtpep;
          public          postgres    false    280            	           1259    27615    crena_tasa_puntaje_egel    TABLE     @  CREATE TABLE public.crena_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 +   DROP TABLE public.crena_tasa_puntaje_egel;
       public         heap    postgres    false                       1259    27614 $   crena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.crena_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    265            �           0    0 $   crena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.crena_tasa_puntaje_egel_idtpegel_seq OWNED BY public.crena_tasa_puntaje_egel.idtpegel;
          public          postgres    false    264                       1259    27629    crena_tasa_puntaje_ex    TABLE     <  CREATE TABLE public.crena_tasa_puntaje_ex (
    idtpex integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 )   DROP TABLE public.crena_tasa_puntaje_ex;
       public         heap    postgres    false            
           1259    27628     crena_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    267            �           0    0     crena_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_puntaje_ex_idtpex_seq OWNED BY public.crena_tasa_puntaje_ex.idtpex;
          public          postgres    false    266            C           1259    29992    ena_carreras    TABLE     �   CREATE TABLE public.ena_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.ena_carreras;
       public         heap    postgres    false            B           1259    29991    ena_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ena_carreras_idcarrera_seq;
       public          postgres    false    579            �           0    0    ena_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ena_carreras_idcarrera_seq OWNED BY public.ena_carreras.idcarrera;
          public          postgres    false    578            G           1259    30018    ena_eficiencia_ire    TABLE     �   CREATE TABLE public.ena_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.ena_eficiencia_ire;
       public         heap    postgres    false            F           1259    30017    ena_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ena_eficiencia_ire_ideire_seq;
       public          postgres    false    583            �           0    0    ena_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ena_eficiencia_ire_ideire_seq OWNED BY public.ena_eficiencia_ire.ideire;
          public          postgres    false    582            [           1259    30157    ena_indice_colocacion    TABLE     �   CREATE TABLE public.ena_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.ena_indice_colocacion;
       public         heap    postgres    false            Z           1259    30156    ena_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_indice_colocacion_idic_seq;
       public          postgres    false    603            �           0    0    ena_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_indice_colocacion_idic_seq OWNED BY public.ena_indice_colocacion.idic;
          public          postgres    false    602            U           1259    30116    ena_indice_ptc    TABLE     �  CREATE TABLE public.ena_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 "   DROP TABLE public.ena_indice_ptc;
       public         heap    postgres    false            T           1259    30115    ena_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ena_indice_ptc_idiptc_seq;
       public          postgres    false    597            �           0    0    ena_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ena_indice_ptc_idiptc_seq OWNED BY public.ena_indice_ptc.idiptc;
          public          postgres    false    596            M           1259    30060    ena_indice_servicios    TABLE     �  CREATE TABLE public.ena_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 (   DROP TABLE public.ena_indice_servicios;
       public         heap    postgres    false            L           1259    30059    ena_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ena_indice_servicios_idis_seq;
       public          postgres    false    589            �           0    0    ena_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ena_indice_servicios_idis_seq OWNED BY public.ena_indice_servicios.idis;
          public          postgres    false    588            O           1259    30074    ena_iseg    TABLE     �  CREATE TABLE public.ena_iseg (
    idiseg integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.ena_iseg;
       public         heap    postgres    false            N           1259    30073    ena_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ena_iseg_idiseg_seq;
       public          postgres    false    591            �           0    0    ena_iseg_idiseg_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ena_iseg_idiseg_seq OWNED BY public.ena_iseg.idiseg;
          public          postgres    false    590            Q           1259    30088    ena_isem    TABLE     _  CREATE TABLE public.ena_isem (
    idisem integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.ena_isem;
       public         heap    postgres    false            P           1259    30087    ena_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ena_isem_idisem_seq;
       public          postgres    false    593            �           0    0    ena_isem_idisem_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ena_isem_idisem_seq OWNED BY public.ena_isem.idisem;
          public          postgres    false    592            a           1259    30199    ena_tasa_acreditacion    TABLE     �   CREATE TABLE public.ena_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.ena_tasa_acreditacion;
       public         heap    postgres    false            `           1259    30198    ena_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_acreditacion_idta_seq;
       public          postgres    false    609            �           0    0    ena_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_acreditacion_idta_seq OWNED BY public.ena_tasa_acreditacion.idta;
          public          postgres    false    608            E           1259    30004    ena_tasa_cobertura    TABLE     �   CREATE TABLE public.ena_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.ena_tasa_cobertura;
       public         heap    postgres    false            D           1259    30003    ena_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ena_tasa_cobertura_idtc_seq;
       public          postgres    false    581            �           0    0    ena_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ena_tasa_cobertura_idtc_seq OWNED BY public.ena_tasa_cobertura.idtc;
          public          postgres    false    580            S           1259    30102    ena_tasa_docentes    TABLE     �   CREATE TABLE public.ena_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.ena_tasa_docentes;
       public         heap    postgres    false            R           1259    30101    ena_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ena_tasa_docentes_idtd_seq;
       public          postgres    false    595            �           0    0    ena_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ena_tasa_docentes_idtd_seq OWNED BY public.ena_tasa_docentes.idtd;
          public          postgres    false    594            ]           1259    30171    ena_tasa_mov_alumnos    TABLE       CREATE TABLE public.ena_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 (   DROP TABLE public.ena_tasa_mov_alumnos;
       public         heap    postgres    false            \           1259    30170    ena_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    605            �           0    0    ena_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_mov_alumnos_idtma_seq OWNED BY public.ena_tasa_mov_alumnos.idtma;
          public          postgres    false    604            _           1259    30185    ena_tasa_mov_docentes    TABLE       CREATE TABLE public.ena_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 )   DROP TABLE public.ena_tasa_mov_docentes;
       public         heap    postgres    false            ^           1259    30184    ena_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ena_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    607            �           0    0    ena_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ena_tasa_mov_docentes_idtmd_seq OWNED BY public.ena_tasa_mov_docentes.idtmd;
          public          postgres    false    606            W           1259    30133    ena_tasa_pe_asat    TABLE     �   CREATE TABLE public.ena_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.ena_tasa_pe_asat;
       public         heap    postgres    false            V           1259    30132    ena_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    599            �           0    0    ena_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_pe_asat_idtpeasat_seq OWNED BY public.ena_tasa_pe_asat.idtpeasat;
          public          postgres    false    598            Y           1259    30145    ena_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.ena_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.ena_tasa_pe_pertinencia;
       public         heap    postgres    false            X           1259    30144 "   ena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ena_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    601            �           0    0 "   ena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ena_tasa_pe_pertinencia_idtpep_seq OWNED BY public.ena_tasa_pe_pertinencia.idtpep;
          public          postgres    false    600            I           1259    30032    ena_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.ena_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 )   DROP TABLE public.ena_tasa_puntaje_egel;
       public         heap    postgres    false            H           1259    30031 "   ena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ena_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    585            �           0    0 "   ena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ena_tasa_puntaje_egel_idtpegel_seq OWNED BY public.ena_tasa_puntaje_egel.idtpegel;
          public          postgres    false    584            K           1259    30046    ena_tasa_puntaje_ex    TABLE     :  CREATE TABLE public.ena_tasa_puntaje_ex (
    idtpex integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 '   DROP TABLE public.ena_tasa_puntaje_ex;
       public         heap    postgres    false            J           1259    30045    ena_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    587            �           0    0    ena_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_puntaje_ex_idtpex_seq OWNED BY public.ena_tasa_puntaje_ex.idtpex;
          public          postgres    false    586            #           1259    28014    enrjsm_carreras    TABLE     �   CREATE TABLE public.enrjsm_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 #   DROP TABLE public.enrjsm_carreras;
       public         heap    postgres    false            "           1259    28013    enrjsm_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.enrjsm_carreras_idcarrera_seq;
       public          postgres    false    291            �           0    0    enrjsm_carreras_idcarrera_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.enrjsm_carreras_idcarrera_seq OWNED BY public.enrjsm_carreras.idcarrera;
          public          postgres    false    290            '           1259    28040    enrjsm_eficiencia_ire    TABLE       CREATE TABLE public.enrjsm_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 )   DROP TABLE public.enrjsm_eficiencia_ire;
       public         heap    postgres    false            &           1259    28039     enrjsm_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.enrjsm_eficiencia_ire_ideire_seq;
       public          postgres    false    295            �           0    0     enrjsm_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.enrjsm_eficiencia_ire_ideire_seq OWNED BY public.enrjsm_eficiencia_ire.ideire;
          public          postgres    false    294            9           1259    28165    enrjsm_indice_colocacion    TABLE     �   CREATE TABLE public.enrjsm_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 ,   DROP TABLE public.enrjsm_indice_colocacion;
       public         heap    postgres    false            8           1259    28164 !   enrjsm_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_indice_colocacion_idic_seq;
       public          postgres    false    313            �           0    0 !   enrjsm_indice_colocacion_idic_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_indice_colocacion_idic_seq OWNED BY public.enrjsm_indice_colocacion.idic;
          public          postgres    false    312            3           1259    28124    enrjsm_indice_ptc    TABLE     �  CREATE TABLE public.enrjsm_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 %   DROP TABLE public.enrjsm_indice_ptc;
       public         heap    postgres    false            2           1259    28123    enrjsm_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.enrjsm_indice_ptc_idiptc_seq;
       public          postgres    false    307            �           0    0    enrjsm_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.enrjsm_indice_ptc_idiptc_seq OWNED BY public.enrjsm_indice_ptc.idiptc;
          public          postgres    false    306            +           1259    28068    enrjsm_indice_servicios    TABLE     �  CREATE TABLE public.enrjsm_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 +   DROP TABLE public.enrjsm_indice_servicios;
       public         heap    postgres    false            *           1259    28067     enrjsm_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.enrjsm_indice_servicios_idis_seq;
       public          postgres    false    299            �           0    0     enrjsm_indice_servicios_idis_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.enrjsm_indice_servicios_idis_seq OWNED BY public.enrjsm_indice_servicios.idis;
          public          postgres    false    298            -           1259    28082    enrjsm_iseg    TABLE     �  CREATE TABLE public.enrjsm_iseg (
    idiseg integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.enrjsm_iseg;
       public         heap    postgres    false            ,           1259    28081    enrjsm_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.enrjsm_iseg_idiseg_seq;
       public          postgres    false    301            �           0    0    enrjsm_iseg_idiseg_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.enrjsm_iseg_idiseg_seq OWNED BY public.enrjsm_iseg.idiseg;
          public          postgres    false    300            /           1259    28096    enrjsm_isem    TABLE     b  CREATE TABLE public.enrjsm_isem (
    idisem integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.enrjsm_isem;
       public         heap    postgres    false            .           1259    28095    enrjsm_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.enrjsm_isem_idisem_seq;
       public          postgres    false    303            �           0    0    enrjsm_isem_idisem_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.enrjsm_isem_idisem_seq OWNED BY public.enrjsm_isem.idisem;
          public          postgres    false    302            ?           1259    28207    enrjsm_tasa_acreditacion    TABLE       CREATE TABLE public.enrjsm_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 ,   DROP TABLE public.enrjsm_tasa_acreditacion;
       public         heap    postgres    false            >           1259    28206 !   enrjsm_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_acreditacion_idta_seq;
       public          postgres    false    319            �           0    0 !   enrjsm_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_acreditacion_idta_seq OWNED BY public.enrjsm_tasa_acreditacion.idta;
          public          postgres    false    318            %           1259    28026    enrjsm_tasa_cobertura    TABLE     �   CREATE TABLE public.enrjsm_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 )   DROP TABLE public.enrjsm_tasa_cobertura;
       public         heap    postgres    false            $           1259    28025    enrjsm_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.enrjsm_tasa_cobertura_idtc_seq;
       public          postgres    false    293            �           0    0    enrjsm_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.enrjsm_tasa_cobertura_idtc_seq OWNED BY public.enrjsm_tasa_cobertura.idtc;
          public          postgres    false    292            1           1259    28110    enrjsm_tasa_docentes    TABLE     �   CREATE TABLE public.enrjsm_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 (   DROP TABLE public.enrjsm_tasa_docentes;
       public         heap    postgres    false            0           1259    28109    enrjsm_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.enrjsm_tasa_docentes_idtd_seq;
       public          postgres    false    305            �           0    0    enrjsm_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.enrjsm_tasa_docentes_idtd_seq OWNED BY public.enrjsm_tasa_docentes.idtd;
          public          postgres    false    304            ;           1259    28179    enrjsm_tasa_mov_alumnos    TABLE       CREATE TABLE public.enrjsm_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 +   DROP TABLE public.enrjsm_tasa_mov_alumnos;
       public         heap    postgres    false            :           1259    28178 !   enrjsm_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    315            �           0    0 !   enrjsm_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_mov_alumnos_idtma_seq OWNED BY public.enrjsm_tasa_mov_alumnos.idtma;
          public          postgres    false    314            =           1259    28193    enrjsm_tasa_mov_docentes    TABLE       CREATE TABLE public.enrjsm_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 ,   DROP TABLE public.enrjsm_tasa_mov_docentes;
       public         heap    postgres    false            <           1259    28192 "   enrjsm_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.enrjsm_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    317            �           0    0 "   enrjsm_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.enrjsm_tasa_mov_docentes_idtmd_seq OWNED BY public.enrjsm_tasa_mov_docentes.idtmd;
          public          postgres    false    316            5           1259    28141    enrjsm_tasa_pe_asat    TABLE     �   CREATE TABLE public.enrjsm_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 '   DROP TABLE public.enrjsm_tasa_pe_asat;
       public         heap    postgres    false            4           1259    28140 !   enrjsm_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    309            �           0    0 !   enrjsm_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_pe_asat_idtpeasat_seq OWNED BY public.enrjsm_tasa_pe_asat.idtpeasat;
          public          postgres    false    308            7           1259    28153    enrjsm_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.enrjsm_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 .   DROP TABLE public.enrjsm_tasa_pe_pertinencia;
       public         heap    postgres    false            6           1259    28152 %   enrjsm_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.enrjsm_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    311            �           0    0 %   enrjsm_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.enrjsm_tasa_pe_pertinencia_idtpep_seq OWNED BY public.enrjsm_tasa_pe_pertinencia.idtpep;
          public          postgres    false    310            )           1259    28054    enrjsm_tasa_puntaje_egel    TABLE     A  CREATE TABLE public.enrjsm_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 ,   DROP TABLE public.enrjsm_tasa_puntaje_egel;
       public         heap    postgres    false            (           1259    28053 %   enrjsm_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.enrjsm_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    297            �           0    0 %   enrjsm_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.enrjsm_tasa_puntaje_egel_idtpegel_seq OWNED BY public.enrjsm_tasa_puntaje_egel.idtpegel;
          public          postgres    false    296            A           1259    28219    enrjsm_tasa_puntaje_ex    TABLE     =  CREATE TABLE public.enrjsm_tasa_puntaje_ex (
    idtpex integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 *   DROP TABLE public.enrjsm_tasa_puntaje_ex;
       public         heap    postgres    false            @           1259    28218 !   enrjsm_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    321            �           0    0 !   enrjsm_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_puntaje_ex_idtpex_seq OWNED BY public.enrjsm_tasa_puntaje_ex.idtpex;
          public          postgres    false    320            C           1259    28233    enrr_carreras    TABLE     �   CREATE TABLE public.enrr_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 !   DROP TABLE public.enrr_carreras;
       public         heap    postgres    false            B           1259    28232    enrr_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.enrr_carreras_idcarrera_seq;
       public          postgres    false    323            �           0    0    enrr_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.enrr_carreras_idcarrera_seq OWNED BY public.enrr_carreras.idcarrera;
          public          postgres    false    322            G           1259    28259    enrr_eficiencia_ire    TABLE     �   CREATE TABLE public.enrr_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.enrr_eficiencia_ire;
       public         heap    postgres    false            F           1259    28258    enrr_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.enrr_eficiencia_ire_ideire_seq;
       public          postgres    false    327            �           0    0    enrr_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.enrr_eficiencia_ire_ideire_seq OWNED BY public.enrr_eficiencia_ire.ideire;
          public          postgres    false    326            Y           1259    28384    enrr_indice_colocacion    TABLE     �   CREATE TABLE public.enrr_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.enrr_indice_colocacion;
       public         heap    postgres    false            X           1259    28383    enrr_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_indice_colocacion_idic_seq;
       public          postgres    false    345            �           0    0    enrr_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_indice_colocacion_idic_seq OWNED BY public.enrr_indice_colocacion.idic;
          public          postgres    false    344            S           1259    28343    enrr_indice_ptc    TABLE     �  CREATE TABLE public.enrr_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 #   DROP TABLE public.enrr_indice_ptc;
       public         heap    postgres    false            R           1259    28342    enrr_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.enrr_indice_ptc_idiptc_seq;
       public          postgres    false    339            �           0    0    enrr_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.enrr_indice_ptc_idiptc_seq OWNED BY public.enrr_indice_ptc.idiptc;
          public          postgres    false    338            K           1259    28287    enrr_indice_servicios    TABLE     �  CREATE TABLE public.enrr_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 )   DROP TABLE public.enrr_indice_servicios;
       public         heap    postgres    false            J           1259    28286    enrr_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.enrr_indice_servicios_idis_seq;
       public          postgres    false    331            �           0    0    enrr_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.enrr_indice_servicios_idis_seq OWNED BY public.enrr_indice_servicios.idis;
          public          postgres    false    330            M           1259    28301 	   enrr_iseg    TABLE     �  CREATE TABLE public.enrr_iseg (
    idiseg integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.enrr_iseg;
       public         heap    postgres    false            L           1259    28300    enrr_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.enrr_iseg_idiseg_seq;
       public          postgres    false    333            �           0    0    enrr_iseg_idiseg_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.enrr_iseg_idiseg_seq OWNED BY public.enrr_iseg.idiseg;
          public          postgres    false    332            O           1259    28315 	   enrr_isem    TABLE     `  CREATE TABLE public.enrr_isem (
    idisem integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.enrr_isem;
       public         heap    postgres    false            N           1259    28314    enrr_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.enrr_isem_idisem_seq;
       public          postgres    false    335            �           0    0    enrr_isem_idisem_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.enrr_isem_idisem_seq OWNED BY public.enrr_isem.idisem;
          public          postgres    false    334            _           1259    28426    enrr_tasa_acreditacion    TABLE        CREATE TABLE public.enrr_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.enrr_tasa_acreditacion;
       public         heap    postgres    false            ^           1259    28425    enrr_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_acreditacion_idta_seq;
       public          postgres    false    351            �           0    0    enrr_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_acreditacion_idta_seq OWNED BY public.enrr_tasa_acreditacion.idta;
          public          postgres    false    350            E           1259    28245    enrr_tasa_cobertura    TABLE     �   CREATE TABLE public.enrr_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.enrr_tasa_cobertura;
       public         heap    postgres    false            D           1259    28244    enrr_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.enrr_tasa_cobertura_idtc_seq;
       public          postgres    false    325            �           0    0    enrr_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.enrr_tasa_cobertura_idtc_seq OWNED BY public.enrr_tasa_cobertura.idtc;
          public          postgres    false    324            Q           1259    28329    enrr_tasa_docentes    TABLE     �   CREATE TABLE public.enrr_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.enrr_tasa_docentes;
       public         heap    postgres    false            P           1259    28328    enrr_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.enrr_tasa_docentes_idtd_seq;
       public          postgres    false    337            �           0    0    enrr_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.enrr_tasa_docentes_idtd_seq OWNED BY public.enrr_tasa_docentes.idtd;
          public          postgres    false    336            [           1259    28398    enrr_tasa_mov_alumnos    TABLE       CREATE TABLE public.enrr_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 )   DROP TABLE public.enrr_tasa_mov_alumnos;
       public         heap    postgres    false            Z           1259    28397    enrr_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    347            �           0    0    enrr_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_mov_alumnos_idtma_seq OWNED BY public.enrr_tasa_mov_alumnos.idtma;
          public          postgres    false    346            ]           1259    28412    enrr_tasa_mov_docentes    TABLE       CREATE TABLE public.enrr_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 *   DROP TABLE public.enrr_tasa_mov_docentes;
       public         heap    postgres    false            \           1259    28411     enrr_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.enrr_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    349            �           0    0     enrr_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.enrr_tasa_mov_docentes_idtmd_seq OWNED BY public.enrr_tasa_mov_docentes.idtmd;
          public          postgres    false    348            U           1259    28360    enrr_tasa_pe_asat    TABLE     �   CREATE TABLE public.enrr_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.enrr_tasa_pe_asat;
       public         heap    postgres    false            T           1259    28359    enrr_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    341            �           0    0    enrr_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_pe_asat_idtpeasat_seq OWNED BY public.enrr_tasa_pe_asat.idtpeasat;
          public          postgres    false    340            W           1259    28372    enrr_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.enrr_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.enrr_tasa_pe_pertinencia;
       public         heap    postgres    false            V           1259    28371 #   enrr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.enrr_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    343            �           0    0 #   enrr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.enrr_tasa_pe_pertinencia_idtpep_seq OWNED BY public.enrr_tasa_pe_pertinencia.idtpep;
          public          postgres    false    342            I           1259    28273    enrr_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.enrr_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 *   DROP TABLE public.enrr_tasa_puntaje_egel;
       public         heap    postgres    false            H           1259    28272 #   enrr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.enrr_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    329            �           0    0 #   enrr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.enrr_tasa_puntaje_egel_idtpegel_seq OWNED BY public.enrr_tasa_puntaje_egel.idtpegel;
          public          postgres    false    328            a           1259    28438    enrr_tasa_puntaje_ex    TABLE     ;  CREATE TABLE public.enrr_tasa_puntaje_ex (
    idtpex integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 (   DROP TABLE public.enrr_tasa_puntaje_ex;
       public         heap    postgres    false            `           1259    28437    enrr_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    353            �           0    0    enrr_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_puntaje_ex_idtpex_seq OWNED BY public.enrr_tasa_puntaje_ex.idtpex;
          public          postgres    false    352            c           1259    28452    ensfa_carreras    TABLE     �   CREATE TABLE public.ensfa_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 "   DROP TABLE public.ensfa_carreras;
       public         heap    postgres    false            b           1259    28451    ensfa_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ensfa_carreras_idcarrera_seq;
       public          postgres    false    355            �           0    0    ensfa_carreras_idcarrera_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ensfa_carreras_idcarrera_seq OWNED BY public.ensfa_carreras.idcarrera;
          public          postgres    false    354            g           1259    28478    ensfa_eficiencia_ire    TABLE        CREATE TABLE public.ensfa_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 (   DROP TABLE public.ensfa_eficiencia_ire;
       public         heap    postgres    false            f           1259    28477    ensfa_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ensfa_eficiencia_ire_ideire_seq;
       public          postgres    false    359            �           0    0    ensfa_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ensfa_eficiencia_ire_ideire_seq OWNED BY public.ensfa_eficiencia_ire.ideire;
          public          postgres    false    358            y           1259    28603    ensfa_indice_colocacion    TABLE     �   CREATE TABLE public.ensfa_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 +   DROP TABLE public.ensfa_indice_colocacion;
       public         heap    postgres    false            x           1259    28602     ensfa_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_indice_colocacion_idic_seq;
       public          postgres    false    377            �           0    0     ensfa_indice_colocacion_idic_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_indice_colocacion_idic_seq OWNED BY public.ensfa_indice_colocacion.idic;
          public          postgres    false    376            s           1259    28562    ensfa_indice_ptc    TABLE     �  CREATE TABLE public.ensfa_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 $   DROP TABLE public.ensfa_indice_ptc;
       public         heap    postgres    false            r           1259    28561    ensfa_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ensfa_indice_ptc_idiptc_seq;
       public          postgres    false    371            �           0    0    ensfa_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ensfa_indice_ptc_idiptc_seq OWNED BY public.ensfa_indice_ptc.idiptc;
          public          postgres    false    370            k           1259    28506    ensfa_indice_servicios    TABLE     �  CREATE TABLE public.ensfa_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 *   DROP TABLE public.ensfa_indice_servicios;
       public         heap    postgres    false            j           1259    28505    ensfa_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ensfa_indice_servicios_idis_seq;
       public          postgres    false    363            �           0    0    ensfa_indice_servicios_idis_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ensfa_indice_servicios_idis_seq OWNED BY public.ensfa_indice_servicios.idis;
          public          postgres    false    362            m           1259    28520 
   ensfa_iseg    TABLE     �  CREATE TABLE public.ensfa_iseg (
    idiseg integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.ensfa_iseg;
       public         heap    postgres    false            l           1259    28519    ensfa_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ensfa_iseg_idiseg_seq;
       public          postgres    false    365            �           0    0    ensfa_iseg_idiseg_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ensfa_iseg_idiseg_seq OWNED BY public.ensfa_iseg.idiseg;
          public          postgres    false    364            o           1259    28534 
   ensfa_isem    TABLE     a  CREATE TABLE public.ensfa_isem (
    idisem integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.ensfa_isem;
       public         heap    postgres    false            n           1259    28533    ensfa_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ensfa_isem_idisem_seq;
       public          postgres    false    367            �           0    0    ensfa_isem_idisem_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ensfa_isem_idisem_seq OWNED BY public.ensfa_isem.idisem;
          public          postgres    false    366                       1259    28645    ensfa_tasa_acreditacion    TABLE       CREATE TABLE public.ensfa_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 +   DROP TABLE public.ensfa_tasa_acreditacion;
       public         heap    postgres    false            ~           1259    28644     ensfa_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_acreditacion_idta_seq;
       public          postgres    false    383            �           0    0     ensfa_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_acreditacion_idta_seq OWNED BY public.ensfa_tasa_acreditacion.idta;
          public          postgres    false    382            e           1259    28464    ensfa_tasa_cobertura    TABLE     �   CREATE TABLE public.ensfa_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 (   DROP TABLE public.ensfa_tasa_cobertura;
       public         heap    postgres    false            d           1259    28463    ensfa_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ensfa_tasa_cobertura_idtc_seq;
       public          postgres    false    357            �           0    0    ensfa_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ensfa_tasa_cobertura_idtc_seq OWNED BY public.ensfa_tasa_cobertura.idtc;
          public          postgres    false    356            q           1259    28548    ensfa_tasa_docentes    TABLE     �   CREATE TABLE public.ensfa_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 '   DROP TABLE public.ensfa_tasa_docentes;
       public         heap    postgres    false            p           1259    28547    ensfa_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ensfa_tasa_docentes_idtd_seq;
       public          postgres    false    369            �           0    0    ensfa_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ensfa_tasa_docentes_idtd_seq OWNED BY public.ensfa_tasa_docentes.idtd;
          public          postgres    false    368            {           1259    28617    ensfa_tasa_mov_alumnos    TABLE       CREATE TABLE public.ensfa_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 *   DROP TABLE public.ensfa_tasa_mov_alumnos;
       public         heap    postgres    false            z           1259    28616     ensfa_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    379            �           0    0     ensfa_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_mov_alumnos_idtma_seq OWNED BY public.ensfa_tasa_mov_alumnos.idtma;
          public          postgres    false    378            }           1259    28631    ensfa_tasa_mov_docentes    TABLE       CREATE TABLE public.ensfa_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 +   DROP TABLE public.ensfa_tasa_mov_docentes;
       public         heap    postgres    false            |           1259    28630 !   ensfa_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.ensfa_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    381            �           0    0 !   ensfa_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.ensfa_tasa_mov_docentes_idtmd_seq OWNED BY public.ensfa_tasa_mov_docentes.idtmd;
          public          postgres    false    380            u           1259    28579    ensfa_tasa_pe_asat    TABLE     �   CREATE TABLE public.ensfa_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 &   DROP TABLE public.ensfa_tasa_pe_asat;
       public         heap    postgres    false            t           1259    28578     ensfa_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    373            �           0    0     ensfa_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_pe_asat_idtpeasat_seq OWNED BY public.ensfa_tasa_pe_asat.idtpeasat;
          public          postgres    false    372            w           1259    28591    ensfa_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.ensfa_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 -   DROP TABLE public.ensfa_tasa_pe_pertinencia;
       public         heap    postgres    false            v           1259    28590 $   ensfa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.ensfa_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    375            �           0    0 $   ensfa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.ensfa_tasa_pe_pertinencia_idtpep_seq OWNED BY public.ensfa_tasa_pe_pertinencia.idtpep;
          public          postgres    false    374            i           1259    28492    ensfa_tasa_puntaje_egel    TABLE     @  CREATE TABLE public.ensfa_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 +   DROP TABLE public.ensfa_tasa_puntaje_egel;
       public         heap    postgres    false            h           1259    28491 $   ensfa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.ensfa_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    361            �           0    0 $   ensfa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.ensfa_tasa_puntaje_egel_idtpegel_seq OWNED BY public.ensfa_tasa_puntaje_egel.idtpegel;
          public          postgres    false    360            �           1259    28657    ensfa_tasa_puntaje_ex    TABLE     <  CREATE TABLE public.ensfa_tasa_puntaje_ex (
    idtpex integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 )   DROP TABLE public.ensfa_tasa_puntaje_ex;
       public         heap    postgres    false            �           1259    28656     ensfa_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    385            �           0    0     ensfa_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_puntaje_ex_idtpex_seq OWNED BY public.ensfa_tasa_puntaje_ex.idtpex;
          public          postgres    false    384            �            1259    27279    universidades    TABLE     �   CREATE TABLE public.universidades (
    iduniversidad integer NOT NULL,
    abreviacion character varying(10),
    nombre character varying(100),
    plan_estudios character varying(15)
);
 !   DROP TABLE public.universidades;
       public         heap    postgres    false            �            1259    27282    universidades_iduniversidad_seq    SEQUENCE     �   CREATE SEQUENCE public.universidades_iduniversidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.universidades_iduniversidad_seq;
       public          postgres    false    214            �           0    0    universidades_iduniversidad_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.universidades_iduniversidad_seq OWNED BY public.universidades.iduniversidad;
          public          postgres    false    215            �           1259    28671    upa_carreras    TABLE     �   CREATE TABLE public.upa_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.upa_carreras;
       public         heap    postgres    false            �           1259    28670    upa_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.upa_carreras_idcarrera_seq;
       public          postgres    false    387            �           0    0    upa_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.upa_carreras_idcarrera_seq OWNED BY public.upa_carreras.idcarrera;
          public          postgres    false    386            �           1259    28697    upa_eficiencia_ire    TABLE     �   CREATE TABLE public.upa_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.upa_eficiencia_ire;
       public         heap    postgres    false            �           1259    28696    upa_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.upa_eficiencia_ire_ideire_seq;
       public          postgres    false    391            �           0    0    upa_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.upa_eficiencia_ire_ideire_seq OWNED BY public.upa_eficiencia_ire.ideire;
          public          postgres    false    390            �           1259    28822    upa_indice_colocacion    TABLE     �   CREATE TABLE public.upa_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.upa_indice_colocacion;
       public         heap    postgres    false            �           1259    28821    upa_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_indice_colocacion_idic_seq;
       public          postgres    false    409            �           0    0    upa_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_indice_colocacion_idic_seq OWNED BY public.upa_indice_colocacion.idic;
          public          postgres    false    408            �           1259    28781    upa_indice_ptc    TABLE     �  CREATE TABLE public.upa_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 "   DROP TABLE public.upa_indice_ptc;
       public         heap    postgres    false            �           1259    28780    upa_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.upa_indice_ptc_idiptc_seq;
       public          postgres    false    403            �           0    0    upa_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.upa_indice_ptc_idiptc_seq OWNED BY public.upa_indice_ptc.idiptc;
          public          postgres    false    402            �           1259    28725    upa_indice_servicios    TABLE     �  CREATE TABLE public.upa_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 (   DROP TABLE public.upa_indice_servicios;
       public         heap    postgres    false            �           1259    28724    upa_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.upa_indice_servicios_idis_seq;
       public          postgres    false    395            �           0    0    upa_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.upa_indice_servicios_idis_seq OWNED BY public.upa_indice_servicios.idis;
          public          postgres    false    394            �           1259    28739    upa_iseg    TABLE     �  CREATE TABLE public.upa_iseg (
    idiseg integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.upa_iseg;
       public         heap    postgres    false            �           1259    28738    upa_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.upa_iseg_idiseg_seq;
       public          postgres    false    397            �           0    0    upa_iseg_idiseg_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.upa_iseg_idiseg_seq OWNED BY public.upa_iseg.idiseg;
          public          postgres    false    396            �           1259    28753    upa_isem    TABLE     _  CREATE TABLE public.upa_isem (
    idisem integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.upa_isem;
       public         heap    postgres    false            �           1259    28752    upa_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.upa_isem_idisem_seq;
       public          postgres    false    399            �           0    0    upa_isem_idisem_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.upa_isem_idisem_seq OWNED BY public.upa_isem.idisem;
          public          postgres    false    398            �           1259    28864    upa_tasa_acreditacion    TABLE     �   CREATE TABLE public.upa_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.upa_tasa_acreditacion;
       public         heap    postgres    false            �           1259    28863    upa_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_acreditacion_idta_seq;
       public          postgres    false    415            �           0    0    upa_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_acreditacion_idta_seq OWNED BY public.upa_tasa_acreditacion.idta;
          public          postgres    false    414            �           1259    28683    upa_tasa_cobertura    TABLE     �   CREATE TABLE public.upa_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.upa_tasa_cobertura;
       public         heap    postgres    false            �           1259    28682    upa_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.upa_tasa_cobertura_idtc_seq;
       public          postgres    false    389            �           0    0    upa_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.upa_tasa_cobertura_idtc_seq OWNED BY public.upa_tasa_cobertura.idtc;
          public          postgres    false    388            �           1259    28767    upa_tasa_docentes    TABLE     �   CREATE TABLE public.upa_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.upa_tasa_docentes;
       public         heap    postgres    false            �           1259    28766    upa_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.upa_tasa_docentes_idtd_seq;
       public          postgres    false    401            �           0    0    upa_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.upa_tasa_docentes_idtd_seq OWNED BY public.upa_tasa_docentes.idtd;
          public          postgres    false    400            �           1259    28836    upa_tasa_mov_alumnos    TABLE       CREATE TABLE public.upa_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 (   DROP TABLE public.upa_tasa_mov_alumnos;
       public         heap    postgres    false            �           1259    28835    upa_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    411            �           0    0    upa_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_mov_alumnos_idtma_seq OWNED BY public.upa_tasa_mov_alumnos.idtma;
          public          postgres    false    410            �           1259    28850    upa_tasa_mov_docentes    TABLE       CREATE TABLE public.upa_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 )   DROP TABLE public.upa_tasa_mov_docentes;
       public         heap    postgres    false            �           1259    28849    upa_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.upa_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    413            �           0    0    upa_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.upa_tasa_mov_docentes_idtmd_seq OWNED BY public.upa_tasa_mov_docentes.idtmd;
          public          postgres    false    412            �           1259    28798    upa_tasa_pe_asat    TABLE     �   CREATE TABLE public.upa_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.upa_tasa_pe_asat;
       public         heap    postgres    false            �           1259    28797    upa_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    405            �           0    0    upa_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_pe_asat_idtpeasat_seq OWNED BY public.upa_tasa_pe_asat.idtpeasat;
          public          postgres    false    404            �           1259    28810    upa_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.upa_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.upa_tasa_pe_pertinencia;
       public         heap    postgres    false            �           1259    28809 "   upa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upa_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    407            �           0    0 "   upa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upa_tasa_pe_pertinencia_idtpep_seq OWNED BY public.upa_tasa_pe_pertinencia.idtpep;
          public          postgres    false    406            �           1259    28711    upa_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.upa_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 )   DROP TABLE public.upa_tasa_puntaje_egel;
       public         heap    postgres    false            �           1259    28710 "   upa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upa_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    393            �           0    0 "   upa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upa_tasa_puntaje_egel_idtpegel_seq OWNED BY public.upa_tasa_puntaje_egel.idtpegel;
          public          postgres    false    392            �           1259    28876    upa_tasa_puntaje_ex    TABLE     :  CREATE TABLE public.upa_tasa_puntaje_ex (
    idtpex integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 '   DROP TABLE public.upa_tasa_puntaje_ex;
       public         heap    postgres    false            �           1259    28875    upa_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    417            �           0    0    upa_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_puntaje_ex_idtpex_seq OWNED BY public.upa_tasa_puntaje_ex.idtpex;
          public          postgres    false    416            �            1259    27283    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    idusuario integer NOT NULL,
    nombre_usuario character varying(20) NOT NULL,
    "contraseña" character varying(8),
    cargo character varying(10),
    universidad integer NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    27286    usuarios_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuarios_idusuario_seq;
       public          postgres    false    216            �           0    0    usuarios_idusuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuarios_idusuario_seq OWNED BY public.usuarios.idusuario;
          public          postgres    false    217            �           1259    28891    uta_carreras    TABLE       CREATE TABLE public.uta_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.uta_carreras;
       public         heap    postgres    false            �           1259    28890    uta_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_carreras_idcarrera_seq;
       public          postgres    false    419            �           0    0    uta_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_carreras_idcarrera_seq OWNED BY public.uta_carreras.idcarrera;
          public          postgres    false    418            �           1259    28917    uta_eficiencia_ire    TABLE     �   CREATE TABLE public.uta_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.uta_eficiencia_ire;
       public         heap    postgres    false            �           1259    28916    uta_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.uta_eficiencia_ire_ideire_seq;
       public          postgres    false    423            �           0    0    uta_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.uta_eficiencia_ire_ideire_seq OWNED BY public.uta_eficiencia_ire.ideire;
          public          postgres    false    422            �           1259    29112    uta_indice_colocacion    TABLE     �   CREATE TABLE public.uta_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.uta_indice_colocacion;
       public         heap    postgres    false            �           1259    29111    uta_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_indice_colocacion_idic_seq;
       public          postgres    false    451            �           0    0    uta_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_indice_colocacion_idic_seq OWNED BY public.uta_indice_colocacion.idic;
          public          postgres    false    450            �           1259    29071    uta_indice_ptc    TABLE     �  CREATE TABLE public.uta_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 "   DROP TABLE public.uta_indice_ptc;
       public         heap    postgres    false            �           1259    29070    uta_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.uta_indice_ptc_idiptc_seq;
       public          postgres    false    445            �           0    0    uta_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.uta_indice_ptc_idiptc_seq OWNED BY public.uta_indice_ptc.idiptc;
          public          postgres    false    444            �           1259    28987    uta_indice_servicios    TABLE     �  CREATE TABLE public.uta_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 (   DROP TABLE public.uta_indice_servicios;
       public         heap    postgres    false            �           1259    28986    uta_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.uta_indice_servicios_idis_seq;
       public          postgres    false    433            �           0    0    uta_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.uta_indice_servicios_idis_seq OWNED BY public.uta_indice_servicios.idis;
          public          postgres    false    432            �           1259    29015 
   uta_iseg_l    TABLE     �  CREATE TABLE public.uta_iseg_l (
    idisegl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    esperiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.uta_iseg_l;
       public         heap    postgres    false            �           1259    29014    uta_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.uta_iseg_l_idisegl_seq;
       public          postgres    false    437            �           0    0    uta_iseg_l_idisegl_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.uta_iseg_l_idisegl_seq OWNED BY public.uta_iseg_l.idisegl;
          public          postgres    false    436            �           1259    29001    uta_iseg_tsu    TABLE     �  CREATE TABLE public.uta_iseg_tsu (
    idisegtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_meb5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
     DROP TABLE public.uta_iseg_tsu;
       public         heap    postgres    false            �           1259    29000    uta_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_iseg_tsu_idisegtsu_seq;
       public          postgres    false    435            �           0    0    uta_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_iseg_tsu_idisegtsu_seq OWNED BY public.uta_iseg_tsu.idisegtsu;
          public          postgres    false    434            �           1259    29043 
   uta_isem_l    TABLE     b  CREATE TABLE public.uta_isem_l (
    idiseml integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.uta_isem_l;
       public         heap    postgres    false            �           1259    29042    uta_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.uta_isem_l_idiseml_seq;
       public          postgres    false    441            �           0    0    uta_isem_l_idiseml_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.uta_isem_l_idiseml_seq OWNED BY public.uta_isem_l.idiseml;
          public          postgres    false    440            �           1259    29029    uta_isem_tsu    TABLE     f  CREATE TABLE public.uta_isem_tsu (
    idisemtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
     DROP TABLE public.uta_isem_tsu;
       public         heap    postgres    false            �           1259    29028    uta_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_isem_tsu_idisemtsu_seq;
       public          postgres    false    439            �           0    0    uta_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_isem_tsu_idisemtsu_seq OWNED BY public.uta_isem_tsu.idisemtsu;
          public          postgres    false    438            �           1259    29154    uta_tasa_acreditacion    TABLE     �   CREATE TABLE public.uta_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.uta_tasa_acreditacion;
       public         heap    postgres    false            �           1259    29153    uta_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_tasa_acreditacion_idta_seq;
       public          postgres    false    457            �           0    0    uta_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_tasa_acreditacion_idta_seq OWNED BY public.uta_tasa_acreditacion.idta;
          public          postgres    false    456            �           1259    28903    uta_tasa_cobertura    TABLE     �   CREATE TABLE public.uta_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.uta_tasa_cobertura;
       public         heap    postgres    false            �           1259    28902    uta_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.uta_tasa_cobertura_idtc_seq;
       public          postgres    false    421            �           0    0    uta_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.uta_tasa_cobertura_idtc_seq OWNED BY public.uta_tasa_cobertura.idtc;
          public          postgres    false    420            �           1259    29057    uta_tasa_docentes    TABLE     �   CREATE TABLE public.uta_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.uta_tasa_docentes;
       public         heap    postgres    false            �           1259    29056    uta_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_tasa_docentes_idtd_seq;
       public          postgres    false    443            �           0    0    uta_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_tasa_docentes_idtd_seq OWNED BY public.uta_tasa_docentes.idtd;
          public          postgres    false    442            �           1259    29126    uta_tasa_mov_alumnos    TABLE       CREATE TABLE public.uta_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 (   DROP TABLE public.uta_tasa_mov_alumnos;
       public         heap    postgres    false            �           1259    29125    uta_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    453            �           0    0    uta_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_tasa_mov_alumnos_idtma_seq OWNED BY public.uta_tasa_mov_alumnos.idtma;
          public          postgres    false    452            �           1259    29140    uta_tasa_mov_docentes    TABLE       CREATE TABLE public.uta_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 )   DROP TABLE public.uta_tasa_mov_docentes;
       public         heap    postgres    false            �           1259    29139    uta_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.uta_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    455            �           0    0    uta_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.uta_tasa_mov_docentes_idtmd_seq OWNED BY public.uta_tasa_mov_docentes.idtmd;
          public          postgres    false    454            �           1259    29088    uta_tasa_pe_asat    TABLE     �   CREATE TABLE public.uta_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.uta_tasa_pe_asat;
       public         heap    postgres    false            �           1259    29087    uta_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    447            �           0    0    uta_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_tasa_pe_asat_idtpeasat_seq OWNED BY public.uta_tasa_pe_asat.idtpeasat;
          public          postgres    false    446            �           1259    29100    uta_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.uta_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.uta_tasa_pe_pertinencia;
       public         heap    postgres    false            �           1259    29099 "   uta_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.uta_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    449            �           0    0 "   uta_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.uta_tasa_pe_pertinencia_idtpep_seq OWNED BY public.uta_tasa_pe_pertinencia.idtpep;
          public          postgres    false    448            �           1259    28945    uta_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.uta_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 )   DROP TABLE public.uta_tasa_puntaje_egel;
       public         heap    postgres    false            �           1259    28944 "   uta_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.uta_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    427            �           0    0 "   uta_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.uta_tasa_puntaje_egel_idtpegel_seq OWNED BY public.uta_tasa_puntaje_egel.idtpegel;
          public          postgres    false    426            �           1259    28931    uta_tasa_puntaje_egetsu    TABLE     B  CREATE TABLE public.uta_tasa_puntaje_egetsu (
    idtpegetsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 +   DROP TABLE public.uta_tasa_puntaje_egetsu;
       public         heap    postgres    false            �           1259    28930 &   uta_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.uta_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    425            �           0    0 &   uta_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.uta_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.uta_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    424            �           1259    28973    uta_tasa_puntaje_exl    TABLE     <  CREATE TABLE public.uta_tasa_puntaje_exl (
    idtpexl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 (   DROP TABLE public.uta_tasa_puntaje_exl;
       public         heap    postgres    false            �           1259    28972     uta_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.uta_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    431            �           0    0     uta_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.uta_tasa_puntaje_exl_idtpexl_seq OWNED BY public.uta_tasa_puntaje_exl.idtpexl;
          public          postgres    false    430            �           1259    28959    uta_tasa_puntaje_extsu    TABLE     @  CREATE TABLE public.uta_tasa_puntaje_extsu (
    idtpextsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 *   DROP TABLE public.uta_tasa_puntaje_extsu;
       public         heap    postgres    false            �           1259    28958 $   uta_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.uta_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    429            �           0    0 $   uta_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.uta_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.uta_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    428            �           1259    29166    utc_carreras    TABLE       CREATE TABLE public.utc_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.utc_carreras;
       public         heap    postgres    false            �           1259    29165    utc_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_carreras_idcarrera_seq;
       public          postgres    false    459            �           0    0    utc_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_carreras_idcarrera_seq OWNED BY public.utc_carreras.idcarrera;
          public          postgres    false    458            �           1259    29192    utc_eficiencia_ire    TABLE     �   CREATE TABLE public.utc_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.utc_eficiencia_ire;
       public         heap    postgres    false            �           1259    29191    utc_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utc_eficiencia_ire_ideire_seq;
       public          postgres    false    463            �           0    0    utc_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utc_eficiencia_ire_ideire_seq OWNED BY public.utc_eficiencia_ire.ideire;
          public          postgres    false    462            �           1259    29387    utc_indice_colocacion    TABLE     �   CREATE TABLE public.utc_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.utc_indice_colocacion;
       public         heap    postgres    false            �           1259    29386    utc_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_indice_colocacion_idic_seq;
       public          postgres    false    491            �           0    0    utc_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_indice_colocacion_idic_seq OWNED BY public.utc_indice_colocacion.idic;
          public          postgres    false    490            �           1259    29346    utc_indice_ptc    TABLE     �  CREATE TABLE public.utc_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 "   DROP TABLE public.utc_indice_ptc;
       public         heap    postgres    false            �           1259    29345    utc_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.utc_indice_ptc_idiptc_seq;
       public          postgres    false    485            �           0    0    utc_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.utc_indice_ptc_idiptc_seq OWNED BY public.utc_indice_ptc.idiptc;
          public          postgres    false    484            �           1259    29262    utc_indice_servicios    TABLE     �  CREATE TABLE public.utc_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 (   DROP TABLE public.utc_indice_servicios;
       public         heap    postgres    false            �           1259    29261    utc_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utc_indice_servicios_idis_seq;
       public          postgres    false    473            �           0    0    utc_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utc_indice_servicios_idis_seq OWNED BY public.utc_indice_servicios.idis;
          public          postgres    false    472            �           1259    29290 
   utc_iseg_l    TABLE     �  CREATE TABLE public.utc_iseg_l (
    idisegl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.utc_iseg_l;
       public         heap    postgres    false            �           1259    29289    utc_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utc_iseg_l_idisegl_seq;
       public          postgres    false    477            �           0    0    utc_iseg_l_idisegl_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utc_iseg_l_idisegl_seq OWNED BY public.utc_iseg_l.idisegl;
          public          postgres    false    476            �           1259    29276    utc_iseg_tsu    TABLE     �  CREATE TABLE public.utc_iseg_tsu (
    idisegtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_meb5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
     DROP TABLE public.utc_iseg_tsu;
       public         heap    postgres    false            �           1259    29275    utc_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_iseg_tsu_idisegtsu_seq;
       public          postgres    false    475            �           0    0    utc_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_iseg_tsu_idisegtsu_seq OWNED BY public.utc_iseg_tsu.idisegtsu;
          public          postgres    false    474            �           1259    29318 
   utc_isem_l    TABLE     b  CREATE TABLE public.utc_isem_l (
    idiseml integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.utc_isem_l;
       public         heap    postgres    false            �           1259    29317    utc_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utc_isem_l_idiseml_seq;
       public          postgres    false    481            �           0    0    utc_isem_l_idiseml_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utc_isem_l_idiseml_seq OWNED BY public.utc_isem_l.idiseml;
          public          postgres    false    480            �           1259    29304    utc_isem_tsu    TABLE     f  CREATE TABLE public.utc_isem_tsu (
    idisemtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
     DROP TABLE public.utc_isem_tsu;
       public         heap    postgres    false            �           1259    29303    utc_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_isem_tsu_idisemtsu_seq;
       public          postgres    false    479            �           0    0    utc_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_isem_tsu_idisemtsu_seq OWNED BY public.utc_isem_tsu.idisemtsu;
          public          postgres    false    478            �           1259    29429    utc_tasa_acreditacion    TABLE     �   CREATE TABLE public.utc_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.utc_tasa_acreditacion;
       public         heap    postgres    false            �           1259    29428    utc_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_tasa_acreditacion_idta_seq;
       public          postgres    false    497            �           0    0    utc_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_tasa_acreditacion_idta_seq OWNED BY public.utc_tasa_acreditacion.idta;
          public          postgres    false    496            �           1259    29178    utc_tasa_cobertura    TABLE     �   CREATE TABLE public.utc_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.utc_tasa_cobertura;
       public         heap    postgres    false            �           1259    29177    utc_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utc_tasa_cobertura_idtc_seq;
       public          postgres    false    461                        0    0    utc_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utc_tasa_cobertura_idtc_seq OWNED BY public.utc_tasa_cobertura.idtc;
          public          postgres    false    460            �           1259    29332    utc_tasa_docentes    TABLE     �   CREATE TABLE public.utc_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.utc_tasa_docentes;
       public         heap    postgres    false            �           1259    29331    utc_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_tasa_docentes_idtd_seq;
       public          postgres    false    483                       0    0    utc_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_tasa_docentes_idtd_seq OWNED BY public.utc_tasa_docentes.idtd;
          public          postgres    false    482            �           1259    29401    utc_tasa_mov_alumnos    TABLE       CREATE TABLE public.utc_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 (   DROP TABLE public.utc_tasa_mov_alumnos;
       public         heap    postgres    false            �           1259    29400    utc_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    493                       0    0    utc_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_tasa_mov_alumnos_idtma_seq OWNED BY public.utc_tasa_mov_alumnos.idtma;
          public          postgres    false    492            �           1259    29415    utc_tasa_mov_docentes    TABLE       CREATE TABLE public.utc_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 )   DROP TABLE public.utc_tasa_mov_docentes;
       public         heap    postgres    false            �           1259    29414    utc_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utc_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    495                       0    0    utc_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utc_tasa_mov_docentes_idtmd_seq OWNED BY public.utc_tasa_mov_docentes.idtmd;
          public          postgres    false    494            �           1259    29363    utc_tasa_pe_asat    TABLE     �   CREATE TABLE public.utc_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.utc_tasa_pe_asat;
       public         heap    postgres    false            �           1259    29362    utc_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    487                       0    0    utc_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_tasa_pe_asat_idtpeasat_seq OWNED BY public.utc_tasa_pe_asat.idtpeasat;
          public          postgres    false    486            �           1259    29375    utc_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utc_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.utc_tasa_pe_pertinencia;
       public         heap    postgres    false            �           1259    29374 "   utc_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utc_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    489                       0    0 "   utc_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utc_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utc_tasa_pe_pertinencia.idtpep;
          public          postgres    false    488            �           1259    29220    utc_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.utc_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 )   DROP TABLE public.utc_tasa_puntaje_egel;
       public         heap    postgres    false            �           1259    29219 "   utc_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utc_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    467                       0    0 "   utc_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utc_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utc_tasa_puntaje_egel.idtpegel;
          public          postgres    false    466            �           1259    29206    utc_tasa_puntaje_egetsu    TABLE     B  CREATE TABLE public.utc_tasa_puntaje_egetsu (
    idtpegetsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 +   DROP TABLE public.utc_tasa_puntaje_egetsu;
       public         heap    postgres    false            �           1259    29205 &   utc_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.utc_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    465                       0    0 &   utc_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.utc_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.utc_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    464            �           1259    29248    utc_tasa_puntaje_exl    TABLE     <  CREATE TABLE public.utc_tasa_puntaje_exl (
    idtpexl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 (   DROP TABLE public.utc_tasa_puntaje_exl;
       public         heap    postgres    false            �           1259    29247     utc_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utc_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    471                       0    0     utc_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utc_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utc_tasa_puntaje_exl.idtpexl;
          public          postgres    false    470            �           1259    29234    utc_tasa_puntaje_extsu    TABLE     @  CREATE TABLE public.utc_tasa_puntaje_extsu (
    idtpextsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 *   DROP TABLE public.utc_tasa_puntaje_extsu;
       public         heap    postgres    false            �           1259    29233 $   utc_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.utc_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    469            	           0    0 $   utc_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.utc_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utc_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    468            �           1259    29441    utma_carreras    TABLE       CREATE TABLE public.utma_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 !   DROP TABLE public.utma_carreras;
       public         heap    postgres    false            �           1259    29440    utma_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_carreras_idcarrera_seq;
       public          postgres    false    499            
           0    0    utma_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_carreras_idcarrera_seq OWNED BY public.utma_carreras.idcarrera;
          public          postgres    false    498            �           1259    29467    utma_eficiencia_ire    TABLE     �   CREATE TABLE public.utma_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.utma_eficiencia_ire;
       public         heap    postgres    false            �           1259    29466    utma_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utma_eficiencia_ire_ideire_seq;
       public          postgres    false    503                       0    0    utma_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utma_eficiencia_ire_ideire_seq OWNED BY public.utma_eficiencia_ire.ideire;
          public          postgres    false    502                       1259    29662    utma_indice_colocacion    TABLE     �   CREATE TABLE public.utma_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.utma_indice_colocacion;
       public         heap    postgres    false                       1259    29661    utma_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_indice_colocacion_idic_seq;
       public          postgres    false    531                       0    0    utma_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_indice_colocacion_idic_seq OWNED BY public.utma_indice_colocacion.idic;
          public          postgres    false    530                       1259    29621    utma_indice_ptc    TABLE     �  CREATE TABLE public.utma_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 #   DROP TABLE public.utma_indice_ptc;
       public         heap    postgres    false                       1259    29620    utma_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utma_indice_ptc_idiptc_seq;
       public          postgres    false    525                       0    0    utma_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utma_indice_ptc_idiptc_seq OWNED BY public.utma_indice_ptc.idiptc;
          public          postgres    false    524                       1259    29537    utma_indice_servicios    TABLE     �  CREATE TABLE public.utma_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 )   DROP TABLE public.utma_indice_servicios;
       public         heap    postgres    false                        1259    29536    utma_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utma_indice_servicios_idis_seq;
       public          postgres    false    513                       0    0    utma_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utma_indice_servicios_idis_seq OWNED BY public.utma_indice_servicios.idis;
          public          postgres    false    512                       1259    29565    utma_iseg_l    TABLE     �  CREATE TABLE public.utma_iseg_l (
    idisegl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.utma_iseg_l;
       public         heap    postgres    false                       1259    29564    utma_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utma_iseg_l_idisegl_seq;
       public          postgres    false    517                       0    0    utma_iseg_l_idisegl_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utma_iseg_l_idisegl_seq OWNED BY public.utma_iseg_l.idisegl;
          public          postgres    false    516                       1259    29551    utma_iseg_tsu    TABLE     �  CREATE TABLE public.utma_iseg_tsu (
    idisegtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_meb5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
 !   DROP TABLE public.utma_iseg_tsu;
       public         heap    postgres    false                       1259    29550    utma_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_iseg_tsu_idisegtsu_seq;
       public          postgres    false    515                       0    0    utma_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_iseg_tsu_idisegtsu_seq OWNED BY public.utma_iseg_tsu.idisegtsu;
          public          postgres    false    514            	           1259    29593    utma_isem_l    TABLE     c  CREATE TABLE public.utma_isem_l (
    idiseml integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.utma_isem_l;
       public         heap    postgres    false                       1259    29592    utma_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utma_isem_l_idiseml_seq;
       public          postgres    false    521                       0    0    utma_isem_l_idiseml_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utma_isem_l_idiseml_seq OWNED BY public.utma_isem_l.idiseml;
          public          postgres    false    520                       1259    29579    utma_isem_tsu    TABLE     g  CREATE TABLE public.utma_isem_tsu (
    idisemtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
 !   DROP TABLE public.utma_isem_tsu;
       public         heap    postgres    false                       1259    29578    utma_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_isem_tsu_idisemtsu_seq;
       public          postgres    false    519                       0    0    utma_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_isem_tsu_idisemtsu_seq OWNED BY public.utma_isem_tsu.idisemtsu;
          public          postgres    false    518                       1259    29704    utma_tasa_acreditacion    TABLE        CREATE TABLE public.utma_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.utma_tasa_acreditacion;
       public         heap    postgres    false                       1259    29703    utma_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_tasa_acreditacion_idta_seq;
       public          postgres    false    537                       0    0    utma_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_tasa_acreditacion_idta_seq OWNED BY public.utma_tasa_acreditacion.idta;
          public          postgres    false    536            �           1259    29453    utma_tasa_cobertura    TABLE     �   CREATE TABLE public.utma_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.utma_tasa_cobertura;
       public         heap    postgres    false            �           1259    29452    utma_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.utma_tasa_cobertura_idtc_seq;
       public          postgres    false    501                       0    0    utma_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.utma_tasa_cobertura_idtc_seq OWNED BY public.utma_tasa_cobertura.idtc;
          public          postgres    false    500                       1259    29607    utma_tasa_docentes    TABLE     �   CREATE TABLE public.utma_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.utma_tasa_docentes;
       public         heap    postgres    false            
           1259    29606    utma_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_tasa_docentes_idtd_seq;
       public          postgres    false    523                       0    0    utma_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_tasa_docentes_idtd_seq OWNED BY public.utma_tasa_docentes.idtd;
          public          postgres    false    522                       1259    29676    utma_tasa_mov_alumnos    TABLE       CREATE TABLE public.utma_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 )   DROP TABLE public.utma_tasa_mov_alumnos;
       public         heap    postgres    false                       1259    29675    utma_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    533                       0    0    utma_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_tasa_mov_alumnos_idtma_seq OWNED BY public.utma_tasa_mov_alumnos.idtma;
          public          postgres    false    532                       1259    29690    utma_tasa_mov_docentes    TABLE       CREATE TABLE public.utma_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 *   DROP TABLE public.utma_tasa_mov_docentes;
       public         heap    postgres    false                       1259    29689     utma_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utma_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    535                       0    0     utma_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utma_tasa_mov_docentes_idtmd_seq OWNED BY public.utma_tasa_mov_docentes.idtmd;
          public          postgres    false    534                       1259    29638    utma_tasa_pe_asat    TABLE     �   CREATE TABLE public.utma_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.utma_tasa_pe_asat;
       public         heap    postgres    false                       1259    29637    utma_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    527                       0    0    utma_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_tasa_pe_asat_idtpeasat_seq OWNED BY public.utma_tasa_pe_asat.idtpeasat;
          public          postgres    false    526                       1259    29650    utma_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utma_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.utma_tasa_pe_pertinencia;
       public         heap    postgres    false                       1259    29649 #   utma_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utma_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    529                       0    0 #   utma_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utma_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utma_tasa_pe_pertinencia.idtpep;
          public          postgres    false    528            �           1259    29523    utma_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.utma_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 *   DROP TABLE public.utma_tasa_puntaje_egel;
       public         heap    postgres    false            �           1259    29522 #   utma_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utma_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    511                       0    0 #   utma_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utma_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utma_tasa_puntaje_egel.idtpegel;
          public          postgres    false    510            �           1259    29481    utma_tasa_puntaje_egetsu    TABLE     C  CREATE TABLE public.utma_tasa_puntaje_egetsu (
    idtpegetsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 ,   DROP TABLE public.utma_tasa_puntaje_egetsu;
       public         heap    postgres    false            �           1259    29480 '   utma_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.utma_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    505                       0    0 '   utma_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.utma_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.utma_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    504            �           1259    29509    utma_tasa_puntaje_exl    TABLE     =  CREATE TABLE public.utma_tasa_puntaje_exl (
    idtpexl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 )   DROP TABLE public.utma_tasa_puntaje_exl;
       public         heap    postgres    false            �           1259    29508 !   utma_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.utma_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    509                       0    0 !   utma_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.utma_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utma_tasa_puntaje_exl.idtpexl;
          public          postgres    false    508            �           1259    29495    utma_tasa_puntaje_extsu    TABLE     A  CREATE TABLE public.utma_tasa_puntaje_extsu (
    idtpextsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 +   DROP TABLE public.utma_tasa_puntaje_extsu;
       public         heap    postgres    false            �           1259    29494 %   utma_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.utma_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    507                       0    0 %   utma_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.utma_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utma_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    506            �            1259    27287    utna_carreras    TABLE       CREATE TABLE public.utna_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 !   DROP TABLE public.utna_carreras;
       public         heap    postgres    false            �            1259    27290    utna_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_carreras_idcarrera_seq;
       public          postgres    false    218                       0    0    utna_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_carreras_idcarrera_seq OWNED BY public.utna_carreras.idcarrera;
          public          postgres    false    219            �            1259    27291    utna_eficiencia_ire    TABLE     �   CREATE TABLE public.utna_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.utna_eficiencia_ire;
       public         heap    postgres    false            �            1259    27296    utna_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_eficiencia_ire_ideire_seq;
       public          postgres    false    220                       0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_eficiencia_ire_ideire_seq OWNED BY public.utna_eficiencia_ire.ideire;
          public          postgres    false    221            �            1259    27297    utna_indice_colocacion    TABLE     �   CREATE TABLE public.utna_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.utna_indice_colocacion;
       public         heap    postgres    false            �            1259    27302    utna_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_indice_colocacion_idic_seq;
       public          postgres    false    222                        0    0    utna_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_indice_colocacion_idic_seq OWNED BY public.utna_indice_colocacion.idic;
          public          postgres    false    223            �            1259    27303    utna_indice_ptc    TABLE     �  CREATE TABLE public.utna_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 #   DROP TABLE public.utna_indice_ptc;
       public         heap    postgres    false            �            1259    27306    utna_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utna_indice_ptc_idiptc_seq;
       public          postgres    false    224            !           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utna_indice_ptc_idiptc_seq OWNED BY public.utna_indice_ptc.idiptc;
          public          postgres    false    225            �            1259    27307    utna_indice_servicios    TABLE     �  CREATE TABLE public.utna_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 )   DROP TABLE public.utna_indice_servicios;
       public         heap    postgres    false            �            1259    27312    utna_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_indice_servicios_idis_seq;
       public          postgres    false    226            "           0    0    utna_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_indice_servicios_idis_seq OWNED BY public.utna_indice_servicios.idis;
          public          postgres    false    227            �            1259    27313    utna_iseg_l    TABLE     �  CREATE TABLE public.utna_iseg_l (
    idisegl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    esperiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.utna_iseg_l;
       public         heap    postgres    false            �            1259    27318    utna_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_iseg_l_idisegl_seq;
       public          postgres    false    228            #           0    0    utna_iseg_l_idisegl_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_iseg_l_idisegl_seq OWNED BY public.utna_iseg_l.idisegl;
          public          postgres    false    229            �            1259    27319    utna_iseg_tsu    TABLE     �  CREATE TABLE public.utna_iseg_tsu (
    idisegtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_meb5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
 !   DROP TABLE public.utna_iseg_tsu;
       public         heap    postgres    false            �            1259    27324    utna_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_iseg_tsu_idisegtsu_seq;
       public          postgres    false    230            $           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_iseg_tsu_idisegtsu_seq OWNED BY public.utna_iseg_tsu.idisegtsu;
          public          postgres    false    231            �            1259    27325    utna_isem_l    TABLE     c  CREATE TABLE public.utna_isem_l (
    idiseml integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.utna_isem_l;
       public         heap    postgres    false            �            1259    27330    utna_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_isem_l_idiseml_seq;
       public          postgres    false    232            %           0    0    utna_isem_l_idiseml_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_isem_l_idiseml_seq OWNED BY public.utna_isem_l.idiseml;
          public          postgres    false    233            �            1259    27331    utna_isem_tsu    TABLE     g  CREATE TABLE public.utna_isem_tsu (
    idisemtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
 !   DROP TABLE public.utna_isem_tsu;
       public         heap    postgres    false            �            1259    27336    utna_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_isem_tsu_idisemtsu_seq;
       public          postgres    false    234            &           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_isem_tsu_idisemtsu_seq OWNED BY public.utna_isem_tsu.idisemtsu;
          public          postgres    false    235            �            1259    27337    utna_tasa_acreditacion    TABLE        CREATE TABLE public.utna_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.utna_tasa_acreditacion;
       public         heap    postgres    false            �            1259    27340    utna_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_acreditacion_idta_seq;
       public          postgres    false    236            '           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_acreditacion_idta_seq OWNED BY public.utna_tasa_acreditacion.idta;
          public          postgres    false    237            �            1259    27341    utna_tasa_cobertura    TABLE     �   CREATE TABLE public.utna_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.utna_tasa_cobertura;
       public         heap    postgres    false            �            1259    27346    utna_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.utna_tasa_cobertura_idtc_seq;
       public          postgres    false    238            (           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.utna_tasa_cobertura_idtc_seq OWNED BY public.utna_tasa_cobertura.idtc;
          public          postgres    false    239            �            1259    27347    utna_tasa_docentes    TABLE     �   CREATE TABLE public.utna_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.utna_tasa_docentes;
       public         heap    postgres    false            �            1259    27352    utna_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_tasa_docentes_idtd_seq;
       public          postgres    false    240            )           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_tasa_docentes_idtd_seq OWNED BY public.utna_tasa_docentes.idtd;
          public          postgres    false    241            �            1259    27353    utna_tasa_mov_alumnos    TABLE       CREATE TABLE public.utna_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 )   DROP TABLE public.utna_tasa_mov_alumnos;
       public         heap    postgres    false            �            1259    27358    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    242            *           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq OWNED BY public.utna_tasa_mov_alumnos.idtma;
          public          postgres    false    243            �            1259    27359    utna_tasa_mov_docentes    TABLE       CREATE TABLE public.utna_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 *   DROP TABLE public.utna_tasa_mov_docentes;
       public         heap    postgres    false            �            1259    27364     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    244            +           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq OWNED BY public.utna_tasa_mov_docentes.idtmd;
          public          postgres    false    245            �            1259    27365    utna_tasa_pe_asat    TABLE     �   CREATE TABLE public.utna_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.utna_tasa_pe_asat;
       public         heap    postgres    false            �            1259    27368    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    246            ,           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq OWNED BY public.utna_tasa_pe_asat.idtpeasat;
          public          postgres    false    247            �            1259    27369    utna_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utna_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.utna_tasa_pe_pertinencia;
       public         heap    postgres    false            �            1259    27372 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    248            -           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utna_tasa_pe_pertinencia.idtpep;
          public          postgres    false    249            �            1259    27373    utna_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.utna_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 *   DROP TABLE public.utna_tasa_puntaje_egel;
       public         heap    postgres    false            �            1259    27378 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    250            .           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utna_tasa_puntaje_egel.idtpegel;
          public          postgres    false    251            �            1259    27379    utna_tasa_puntaje_egetsu    TABLE     C  CREATE TABLE public.utna_tasa_puntaje_egetsu (
    idtpegestu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 ,   DROP TABLE public.utna_tasa_puntaje_egetsu;
       public         heap    postgres    false            �            1259    27384 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq;
       public          postgres    false    252            /           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq OWNED BY public.utna_tasa_puntaje_egetsu.idtpegestu;
          public          postgres    false    253            �            1259    27385    utna_tasa_puntaje_exl    TABLE     =  CREATE TABLE public.utna_tasa_puntaje_exl (
    idtpexl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 )   DROP TABLE public.utna_tasa_puntaje_exl;
       public         heap    postgres    false            �            1259    27390 !   utna_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.utna_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    254            0           0    0 !   utna_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.utna_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utna_tasa_puntaje_exl.idtpexl;
          public          postgres    false    255                        1259    27391    utna_tasa_puntaje_extsu    TABLE     A  CREATE TABLE public.utna_tasa_puntaje_extsu (
    idtpextsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 +   DROP TABLE public.utna_tasa_puntaje_extsu;
       public         heap    postgres    false                       1259    27396 %   utna_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.utna_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    256            1           0    0 %   utna_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.utna_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utna_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    257                       1259    29716    utr_carreras    TABLE       CREATE TABLE public.utr_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.utr_carreras;
       public         heap    postgres    false                       1259    29715    utr_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_carreras_idcarrera_seq;
       public          postgres    false    539            2           0    0    utr_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_carreras_idcarrera_seq OWNED BY public.utr_carreras.idcarrera;
          public          postgres    false    538                       1259    29742    utr_eficiencia_ire    TABLE     �   CREATE TABLE public.utr_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.utr_eficiencia_ire;
       public         heap    postgres    false                       1259    29741    utr_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utr_eficiencia_ire_ideire_seq;
       public          postgres    false    543            3           0    0    utr_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utr_eficiencia_ire_ideire_seq OWNED BY public.utr_eficiencia_ire.ideire;
          public          postgres    false    542            ;           1259    29937    utr_indice_colocacion    TABLE     �   CREATE TABLE public.utr_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.utr_indice_colocacion;
       public         heap    postgres    false            :           1259    29936    utr_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_indice_colocacion_idic_seq;
       public          postgres    false    571            4           0    0    utr_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_indice_colocacion_idic_seq OWNED BY public.utr_indice_colocacion.idic;
          public          postgres    false    570            5           1259    29896    utr_indice_ptc    TABLE     �  CREATE TABLE public.utr_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(250),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10),
    perfil_prodept boolean,
    "participación_ca" boolean
);
 "   DROP TABLE public.utr_indice_ptc;
       public         heap    postgres    false            4           1259    29895    utr_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.utr_indice_ptc_idiptc_seq;
       public          postgres    false    565            5           0    0    utr_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.utr_indice_ptc_idiptc_seq OWNED BY public.utr_indice_ptc.idiptc;
          public          postgres    false    564            )           1259    29812    utr_indice_servicios    TABLE     �  CREATE TABLE public.utr_indice_servicios (
    idis integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    salud_externa numeric,
    bolsa_trabajo numeric,
    salud_interna numeric,
    asesoria_academica numeric,
    actividades_crecimiento numeric,
    tutoria numeric,
    orientacion numeric,
    espacio_expresion numeric,
    "estimulos_desempeño" numeric,
    seguridad numeric,
    instalaciones numeric,
    actividades_arte numeric,
    traslado numeric,
    fomento_salud numeric,
    alimentos numeric,
    biblioteca numeric,
    conectividad numeric,
    laboratorio_computo numeric,
    laboratorio_practica numeric,
    indice_satisfaccion numeric
);
 (   DROP TABLE public.utr_indice_servicios;
       public         heap    postgres    false            (           1259    29811    utr_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utr_indice_servicios_idis_seq;
       public          postgres    false    553            6           0    0    utr_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utr_indice_servicios_idis_seq OWNED BY public.utr_indice_servicios.idis;
          public          postgres    false    552            -           1259    29840 
   utr_iseg_l    TABLE     �  CREATE TABLE public.utr_iseg_l (
    idisegl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_mea5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.utr_iseg_l;
       public         heap    postgres    false            ,           1259    29839    utr_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utr_iseg_l_idisegl_seq;
       public          postgres    false    557            7           0    0    utr_iseg_l_idisegl_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utr_iseg_l_idisegl_seq OWNED BY public.utr_iseg_l.idisegl;
          public          postgres    false    556            +           1259    29826    utr_iseg_tsu    TABLE     �  CREATE TABLE public.utr_iseg_tsu (
    idisegtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
    trabaja_lugar_estadia numeric,
    experiencia_practica numeric,
    laboratorios_talleres numeric,
    infraestructura numeric,
    dominio_prob_lab numeric,
    conocimiento_prof numeric,
    calificaion_meb5 numeric,
    op_preparacion numeric,
    indice_satisfaccion numeric
);
     DROP TABLE public.utr_iseg_tsu;
       public         heap    postgres    false            *           1259    29825    utr_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_iseg_tsu_idisegtsu_seq;
       public          postgres    false    555            8           0    0    utr_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_iseg_tsu_idisegtsu_seq OWNED BY public.utr_iseg_tsu.idisegtsu;
          public          postgres    false    554            1           1259    29868 
   utr_isem_l    TABLE     b  CREATE TABLE public.utr_isem_l (
    idiseml integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
    DROP TABLE public.utr_isem_l;
       public         heap    postgres    false            0           1259    29867    utr_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utr_isem_l_idiseml_seq;
       public          postgres    false    561            9           0    0    utr_isem_l_idiseml_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utr_isem_l_idiseml_seq OWNED BY public.utr_isem_l.idiseml;
          public          postgres    false    560            /           1259    29854    utr_isem_tsu    TABLE     f  CREATE TABLE public.utr_isem_tsu (
    idisemtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    op_grado numeric,
    creatividad numeric,
    manejo_equipo numeric,
    solucion_prob numeric,
    op_trabajo numeric,
    capacidad numeric,
    cumple_req numeric,
    calificaion_trabajo numeric,
    indice_satisfaccion numeric
);
     DROP TABLE public.utr_isem_tsu;
       public         heap    postgres    false            .           1259    29853    utr_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_isem_tsu_idisemtsu_seq;
       public          postgres    false    559            :           0    0    utr_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_isem_tsu_idisemtsu_seq OWNED BY public.utr_isem_tsu.idisemtsu;
          public          postgres    false    558            A           1259    29979    utr_tasa_acreditacion    TABLE     �   CREATE TABLE public.utr_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.utr_tasa_acreditacion;
       public         heap    postgres    false            @           1259    29978    utr_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_tasa_acreditacion_idta_seq;
       public          postgres    false    577            ;           0    0    utr_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_tasa_acreditacion_idta_seq OWNED BY public.utr_tasa_acreditacion.idta;
          public          postgres    false    576                       1259    29728    utr_tasa_cobertura    TABLE     �   CREATE TABLE public.utr_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.utr_tasa_cobertura;
       public         heap    postgres    false                       1259    29727    utr_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utr_tasa_cobertura_idtc_seq;
       public          postgres    false    541            <           0    0    utr_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utr_tasa_cobertura_idtc_seq OWNED BY public.utr_tasa_cobertura.idtc;
          public          postgres    false    540            3           1259    29882    utr_tasa_docentes    TABLE     �   CREATE TABLE public.utr_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.utr_tasa_docentes;
       public         heap    postgres    false            2           1259    29881    utr_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_tasa_docentes_idtd_seq;
       public          postgres    false    563            =           0    0    utr_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_tasa_docentes_idtd_seq OWNED BY public.utr_tasa_docentes.idtd;
          public          postgres    false    562            =           1259    29951    utr_tasa_mov_alumnos    TABLE       CREATE TABLE public.utr_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 (   DROP TABLE public.utr_tasa_mov_alumnos;
       public         heap    postgres    false            <           1259    29950    utr_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    573            >           0    0    utr_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_tasa_mov_alumnos_idtma_seq OWNED BY public.utr_tasa_mov_alumnos.idtma;
          public          postgres    false    572            ?           1259    29965    utr_tasa_mov_docentes    TABLE       CREATE TABLE public.utr_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    estados character varying(100),
    paises character varying(100),
    tasa_movilidad numeric
);
 )   DROP TABLE public.utr_tasa_mov_docentes;
       public         heap    postgres    false            >           1259    29964    utr_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utr_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    575            ?           0    0    utr_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utr_tasa_mov_docentes_idtmd_seq OWNED BY public.utr_tasa_mov_docentes.idtmd;
          public          postgres    false    574            7           1259    29913    utr_tasa_pe_asat    TABLE     �   CREATE TABLE public.utr_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.utr_tasa_pe_asat;
       public         heap    postgres    false            6           1259    29912    utr_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    567            @           0    0    utr_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_tasa_pe_asat_idtpeasat_seq OWNED BY public.utr_tasa_pe_asat.idtpeasat;
          public          postgres    false    566            9           1259    29925    utr_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utr_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.utr_tasa_pe_pertinencia;
       public         heap    postgres    false            8           1259    29924 "   utr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utr_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    569            A           0    0 "   utr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utr_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utr_tasa_pe_pertinencia.idtpep;
          public          postgres    false    568            #           1259    29770    utr_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.utr_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 )   DROP TABLE public.utr_tasa_puntaje_egel;
       public         heap    postgres    false            "           1259    29769 "   utr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utr_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    547            B           0    0 "   utr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utr_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utr_tasa_puntaje_egel.idtpegel;
          public          postgres    false    546            !           1259    29756    utr_tasa_puntaje_egetsu    TABLE     B  CREATE TABLE public.utr_tasa_puntaje_egetsu (
    idtpegetsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 +   DROP TABLE public.utr_tasa_puntaje_egetsu;
       public         heap    postgres    false                        1259    29755 &   utr_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.utr_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    545            C           0    0 &   utr_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.utr_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.utr_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    544            '           1259    29798    utr_tasa_puntaje_exl    TABLE     <  CREATE TABLE public.utr_tasa_puntaje_exl (
    idtpexl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 (   DROP TABLE public.utr_tasa_puntaje_exl;
       public         heap    postgres    false            &           1259    29797     utr_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utr_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    551            D           0    0     utr_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utr_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utr_tasa_puntaje_exl.idtpexl;
          public          postgres    false    550            %           1259    29784    utr_tasa_puntaje_extsu    TABLE     @  CREATE TABLE public.utr_tasa_puntaje_extsu (
    idtpextsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 *   DROP TABLE public.utr_tasa_puntaje_extsu;
       public         heap    postgres    false            $           1259    29783 $   utr_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.utr_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    549            E           0    0 $   utr_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.utr_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utr_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    548            T           2604    27578    crena_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.crena_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.crena_carreras_idcarrera_seq'::regclass);
 G   ALTER TABLE public.crena_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    258    259    259            V           2604    27604    crena_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.crena_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.crena_eficiencia_ire_ideire_seq'::regclass);
 J   ALTER TABLE public.crena_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    262    263    263            `           2604    27743    crena_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.crena_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.crena_indice_colocacion_idic_seq'::regclass);
 K   ALTER TABLE public.crena_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    283    282    283            ]           2604    27702    crena_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.crena_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.crena_indice_ptc_idiptc_seq'::regclass);
 F   ALTER TABLE public.crena_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    277    276    277            Y           2604    27646    crena_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.crena_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.crena_indice_servicios_idis_seq'::regclass);
 J   ALTER TABLE public.crena_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    269    268    269            Z           2604    27660    crena_iseg idiseg    DEFAULT     v   ALTER TABLE ONLY public.crena_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.crena_iseg_idiseg_seq'::regclass);
 @   ALTER TABLE public.crena_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    271    270    271            [           2604    27674    crena_isem idisem    DEFAULT     v   ALTER TABLE ONLY public.crena_isem ALTER COLUMN idisem SET DEFAULT nextval('public.crena_isem_idisem_seq'::regclass);
 @   ALTER TABLE public.crena_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    272    273    273            c           2604    27785    crena_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.crena_tasa_acreditacion_idta_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    288    289    289            U           2604    27590    crena_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.crena_tasa_cobertura_idtc_seq'::regclass);
 H   ALTER TABLE public.crena_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    260    261    261            \           2604    27688    crena_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.crena_tasa_docentes_idtd_seq'::regclass);
 G   ALTER TABLE public.crena_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    275    274    275            a           2604    27757    crena_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.crena_tasa_mov_alumnos_idtma_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    285    284    285            b           2604    27771    crena_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.crena_tasa_mov_docentes_idtmd_seq'::regclass);
 L   ALTER TABLE public.crena_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    286    287    287            ^           2604    27719    crena_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.crena_tasa_pe_asat_idtpeasat_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    278    279    279            _           2604    27731     crena_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.crena_tasa_pe_pertinencia_idtpep_seq'::regclass);
 O   ALTER TABLE public.crena_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    280    281    281            W           2604    27618     crena_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.crena_tasa_puntaje_egel_idtpegel_seq'::regclass);
 O   ALTER TABLE public.crena_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    264    265    265            X           2604    27632    crena_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.crena_tasa_puntaje_ex_idtpex_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    266    267    267            �           2604    29995    ena_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.ena_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.ena_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.ena_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    579    578    579            �           2604    30021    ena_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.ena_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.ena_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.ena_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    583    582    583                        2604    30160    ena_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.ena_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.ena_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.ena_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    603    602    603            �           2604    30119    ena_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.ena_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.ena_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.ena_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    597    596    597            �           2604    30063    ena_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.ena_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.ena_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.ena_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    589    588    589            �           2604    30077    ena_iseg idiseg    DEFAULT     r   ALTER TABLE ONLY public.ena_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.ena_iseg_idiseg_seq'::regclass);
 >   ALTER TABLE public.ena_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    591    590    591            �           2604    30091    ena_isem idisem    DEFAULT     r   ALTER TABLE ONLY public.ena_isem ALTER COLUMN idisem SET DEFAULT nextval('public.ena_isem_idisem_seq'::regclass);
 >   ALTER TABLE public.ena_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    592    593    593                       2604    30202    ena_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.ena_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    608    609    609            �           2604    30007    ena_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.ena_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.ena_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    580    581    581            �           2604    30105    ena_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.ena_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.ena_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    595    594    595                       2604    30174    ena_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.ena_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    604    605    605                       2604    30188    ena_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.ena_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.ena_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    606    607    607            �           2604    30136    ena_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.ena_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    599    598    599            �           2604    30148    ena_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.ena_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.ena_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    601    600    601            �           2604    30035    ena_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.ena_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.ena_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    585    584    585            �           2604    30049    ena_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.ena_tasa_puntaje_ex_idtpex_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    587    586    587            d           2604    28017    enrjsm_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.enrjsm_carreras_idcarrera_seq'::regclass);
 H   ALTER TABLE public.enrjsm_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    291    290    291            f           2604    28043    enrjsm_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.enrjsm_eficiencia_ire_ideire_seq'::regclass);
 K   ALTER TABLE public.enrjsm_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    294    295    295            o           2604    28168    enrjsm_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.enrjsm_indice_colocacion_idic_seq'::regclass);
 L   ALTER TABLE public.enrjsm_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    313    312    313            l           2604    28127    enrjsm_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.enrjsm_indice_ptc_idiptc_seq'::regclass);
 G   ALTER TABLE public.enrjsm_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    306    307    307            h           2604    28071    enrjsm_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.enrjsm_indice_servicios_idis_seq'::regclass);
 K   ALTER TABLE public.enrjsm_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    298    299    299            i           2604    28085    enrjsm_iseg idiseg    DEFAULT     x   ALTER TABLE ONLY public.enrjsm_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.enrjsm_iseg_idiseg_seq'::regclass);
 A   ALTER TABLE public.enrjsm_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    300    301    301            j           2604    28099    enrjsm_isem idisem    DEFAULT     x   ALTER TABLE ONLY public.enrjsm_isem ALTER COLUMN idisem SET DEFAULT nextval('public.enrjsm_isem_idisem_seq'::regclass);
 A   ALTER TABLE public.enrjsm_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    302    303    303            r           2604    28210    enrjsm_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.enrjsm_tasa_acreditacion_idta_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    319    318    319            e           2604    28029    enrjsm_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.enrjsm_tasa_cobertura_idtc_seq'::regclass);
 I   ALTER TABLE public.enrjsm_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    293    292    293            k           2604    28113    enrjsm_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.enrjsm_tasa_docentes_idtd_seq'::regclass);
 H   ALTER TABLE public.enrjsm_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    305    304    305            p           2604    28182    enrjsm_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.enrjsm_tasa_mov_alumnos_idtma_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    315    314    315            q           2604    28196    enrjsm_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.enrjsm_tasa_mov_docentes_idtmd_seq'::regclass);
 M   ALTER TABLE public.enrjsm_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    317    316    317            m           2604    28144    enrjsm_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.enrjsm_tasa_pe_asat_idtpeasat_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    308    309    309            n           2604    28156 !   enrjsm_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.enrjsm_tasa_pe_pertinencia_idtpep_seq'::regclass);
 P   ALTER TABLE public.enrjsm_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    311    310    311            g           2604    28057 !   enrjsm_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.enrjsm_tasa_puntaje_egel_idtpegel_seq'::regclass);
 P   ALTER TABLE public.enrjsm_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    296    297    297            s           2604    28222    enrjsm_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.enrjsm_tasa_puntaje_ex_idtpex_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    321    320    321            t           2604    28236    enrr_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.enrr_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.enrr_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.enrr_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    322    323    323            v           2604    28262    enrr_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.enrr_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.enrr_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.enrr_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    326    327    327                       2604    28387    enrr_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.enrr_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.enrr_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.enrr_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    345    344    345            |           2604    28346    enrr_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.enrr_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.enrr_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.enrr_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    339    338    339            x           2604    28290    enrr_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.enrr_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.enrr_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.enrr_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    331    330    331            y           2604    28304    enrr_iseg idiseg    DEFAULT     t   ALTER TABLE ONLY public.enrr_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.enrr_iseg_idiseg_seq'::regclass);
 ?   ALTER TABLE public.enrr_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    332    333    333            z           2604    28318    enrr_isem idisem    DEFAULT     t   ALTER TABLE ONLY public.enrr_isem ALTER COLUMN idisem SET DEFAULT nextval('public.enrr_isem_idisem_seq'::regclass);
 ?   ALTER TABLE public.enrr_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    334    335    335            �           2604    28429    enrr_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.enrr_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    350    351    351            u           2604    28248    enrr_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.enrr_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.enrr_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    324    325    325            {           2604    28332    enrr_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.enrr_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.enrr_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    337    336    337            �           2604    28401    enrr_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.enrr_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    347    346    347            �           2604    28415    enrr_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.enrr_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.enrr_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    348    349    349            }           2604    28363    enrr_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.enrr_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    341    340    341            ~           2604    28375    enrr_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.enrr_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.enrr_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    343    342    343            w           2604    28276    enrr_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.enrr_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.enrr_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    328    329    329            �           2604    28441    enrr_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.enrr_tasa_puntaje_ex_idtpex_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    352    353    353            �           2604    28455    ensfa_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.ensfa_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.ensfa_carreras_idcarrera_seq'::regclass);
 G   ALTER TABLE public.ensfa_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    355    354    355            �           2604    28481    ensfa_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.ensfa_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.ensfa_eficiencia_ire_ideire_seq'::regclass);
 J   ALTER TABLE public.ensfa_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    358    359    359            �           2604    28606    ensfa_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.ensfa_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.ensfa_indice_colocacion_idic_seq'::regclass);
 K   ALTER TABLE public.ensfa_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    377    376    377            �           2604    28565    ensfa_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.ensfa_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.ensfa_indice_ptc_idiptc_seq'::regclass);
 F   ALTER TABLE public.ensfa_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    371    370    371            �           2604    28509    ensfa_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.ensfa_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.ensfa_indice_servicios_idis_seq'::regclass);
 J   ALTER TABLE public.ensfa_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    362    363    363            �           2604    28523    ensfa_iseg idiseg    DEFAULT     v   ALTER TABLE ONLY public.ensfa_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.ensfa_iseg_idiseg_seq'::regclass);
 @   ALTER TABLE public.ensfa_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    365    364    365            �           2604    28537    ensfa_isem idisem    DEFAULT     v   ALTER TABLE ONLY public.ensfa_isem ALTER COLUMN idisem SET DEFAULT nextval('public.ensfa_isem_idisem_seq'::regclass);
 @   ALTER TABLE public.ensfa_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    366    367    367            �           2604    28648    ensfa_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.ensfa_tasa_acreditacion_idta_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    383    382    383            �           2604    28467    ensfa_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.ensfa_tasa_cobertura_idtc_seq'::regclass);
 H   ALTER TABLE public.ensfa_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    357    356    357            �           2604    28551    ensfa_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.ensfa_tasa_docentes_idtd_seq'::regclass);
 G   ALTER TABLE public.ensfa_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    369    368    369            �           2604    28620    ensfa_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.ensfa_tasa_mov_alumnos_idtma_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    378    379    379            �           2604    28634    ensfa_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.ensfa_tasa_mov_docentes_idtmd_seq'::regclass);
 L   ALTER TABLE public.ensfa_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    381    380    381            �           2604    28582    ensfa_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.ensfa_tasa_pe_asat_idtpeasat_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    373    372    373            �           2604    28594     ensfa_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.ensfa_tasa_pe_pertinencia_idtpep_seq'::regclass);
 O   ALTER TABLE public.ensfa_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    375    374    375            �           2604    28495     ensfa_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.ensfa_tasa_puntaje_egel_idtpegel_seq'::regclass);
 O   ALTER TABLE public.ensfa_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    360    361    361            �           2604    28660    ensfa_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.ensfa_tasa_puntaje_ex_idtpex_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    384    385    385            >           2604    30653    universidades iduniversidad    DEFAULT     �   ALTER TABLE ONLY public.universidades ALTER COLUMN iduniversidad SET DEFAULT nextval('public.universidades_iduniversidad_seq'::regclass);
 J   ALTER TABLE public.universidades ALTER COLUMN iduniversidad DROP DEFAULT;
       public          postgres    false    215    214            �           2604    28674    upa_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.upa_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.upa_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.upa_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    386    387    387            �           2604    28700    upa_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.upa_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.upa_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.upa_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    390    391    391            �           2604    28825    upa_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.upa_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.upa_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.upa_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    409    408    409            �           2604    28784    upa_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.upa_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.upa_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.upa_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    403    402    403            �           2604    28728    upa_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.upa_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.upa_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.upa_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    395    394    395            �           2604    28742    upa_iseg idiseg    DEFAULT     r   ALTER TABLE ONLY public.upa_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.upa_iseg_idiseg_seq'::regclass);
 >   ALTER TABLE public.upa_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    397    396    397            �           2604    28756    upa_isem idisem    DEFAULT     r   ALTER TABLE ONLY public.upa_isem ALTER COLUMN idisem SET DEFAULT nextval('public.upa_isem_idisem_seq'::regclass);
 >   ALTER TABLE public.upa_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    399    398    399            �           2604    28867    upa_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.upa_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    414    415    415            �           2604    28686    upa_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.upa_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.upa_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    388    389    389            �           2604    28770    upa_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.upa_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.upa_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    401    400    401            �           2604    28839    upa_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.upa_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    411    410    411            �           2604    28853    upa_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.upa_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.upa_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    413    412    413            �           2604    28801    upa_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.upa_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    404    405    405            �           2604    28813    upa_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.upa_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.upa_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    406    407    407            �           2604    28714    upa_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.upa_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.upa_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    393    392    393            �           2604    28879    upa_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.upa_tasa_puntaje_ex_idtpex_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    416    417    417            ?           2604    30654    usuarios idusuario    DEFAULT     x   ALTER TABLE ONLY public.usuarios ALTER COLUMN idusuario SET DEFAULT nextval('public.usuarios_idusuario_seq'::regclass);
 A   ALTER TABLE public.usuarios ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    217    216            �           2604    28894    uta_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.uta_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.uta_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.uta_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    418    419    419            �           2604    28920    uta_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.uta_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.uta_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.uta_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    422    423    423            �           2604    29115    uta_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.uta_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.uta_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.uta_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    451    450    451            �           2604    29074    uta_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.uta_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.uta_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.uta_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    445    444    445            �           2604    28990    uta_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.uta_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.uta_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.uta_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    432    433    433            �           2604    29018    uta_iseg_l idisegl    DEFAULT     x   ALTER TABLE ONLY public.uta_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.uta_iseg_l_idisegl_seq'::regclass);
 A   ALTER TABLE public.uta_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    437    436    437            �           2604    29004    uta_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.uta_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.uta_iseg_tsu_idisegtsu_seq'::regclass);
 E   ALTER TABLE public.uta_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    435    434    435            �           2604    29046    uta_isem_l idiseml    DEFAULT     x   ALTER TABLE ONLY public.uta_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.uta_isem_l_idiseml_seq'::regclass);
 A   ALTER TABLE public.uta_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    441    440    441            �           2604    29032    uta_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.uta_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.uta_isem_tsu_idisemtsu_seq'::regclass);
 E   ALTER TABLE public.uta_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    438    439    439            �           2604    29157    uta_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.uta_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.uta_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    456    457    457            �           2604    28906    uta_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.uta_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.uta_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    421    420    421            �           2604    29060    uta_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.uta_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.uta_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    442    443    443            �           2604    29129    uta_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.uta_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.uta_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    452    453    453            �           2604    29143    uta_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.uta_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.uta_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    455    454    455            �           2604    29091    uta_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.uta_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.uta_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    447    446    447            �           2604    29103    uta_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.uta_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.uta_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    449    448    449            �           2604    28948    uta_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.uta_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.uta_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    427    426    427            �           2604    28934 "   uta_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.uta_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 Q   ALTER TABLE public.uta_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    425    424    425            �           2604    28976    uta_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.uta_tasa_puntaje_exl_idtpexl_seq'::regclass);
 K   ALTER TABLE public.uta_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    431    430    431            �           2604    28962     uta_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.uta_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 O   ALTER TABLE public.uta_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    428    429    429            �           2604    29169    utc_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utc_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utc_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.utc_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    458    459    459            �           2604    29195    utc_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utc_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utc_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.utc_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    463    462    463            �           2604    29390    utc_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utc_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utc_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.utc_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    490    491    491            �           2604    29349    utc_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.utc_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utc_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.utc_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    484    485    485            �           2604    29265    utc_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utc_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utc_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.utc_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    472    473    473            �           2604    29293    utc_iseg_l idisegl    DEFAULT     x   ALTER TABLE ONLY public.utc_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utc_iseg_l_idisegl_seq'::regclass);
 A   ALTER TABLE public.utc_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    476    477    477            �           2604    29279    utc_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utc_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utc_iseg_tsu_idisegtsu_seq'::regclass);
 E   ALTER TABLE public.utc_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    474    475    475            �           2604    29321    utc_isem_l idiseml    DEFAULT     x   ALTER TABLE ONLY public.utc_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utc_isem_l_idiseml_seq'::regclass);
 A   ALTER TABLE public.utc_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    481    480    481            �           2604    29307    utc_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utc_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utc_isem_tsu_idisemtsu_seq'::regclass);
 E   ALTER TABLE public.utc_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    478    479    479            �           2604    29432    utc_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utc_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.utc_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    497    496    497            �           2604    29181    utc_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utc_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.utc_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    461    460    461            �           2604    29335    utc_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utc_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.utc_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    482    483    483            �           2604    29404    utc_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utc_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.utc_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    492    493    493            �           2604    29418    utc_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utc_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.utc_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    495    494    495            �           2604    29366    utc_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utc_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.utc_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    486    487    487            �           2604    29378    utc_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utc_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.utc_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    489    488    489            �           2604    29223    utc_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utc_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.utc_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    466    467    467            �           2604    29209 "   utc_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.utc_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 Q   ALTER TABLE public.utc_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    464    465    465            �           2604    29251    utc_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utc_tasa_puntaje_exl_idtpexl_seq'::regclass);
 K   ALTER TABLE public.utc_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    470    471    471            �           2604    29237     utc_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utc_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 O   ALTER TABLE public.utc_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    469    468    469            �           2604    29444    utma_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utma_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utma_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.utma_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    498    499    499            �           2604    29470    utma_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utma_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utma_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.utma_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    502    503    503            �           2604    29665    utma_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utma_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utma_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.utma_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    530    531    531            �           2604    29624    utma_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.utma_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utma_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.utma_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    525    524    525            �           2604    29540    utma_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utma_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utma_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.utma_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    513    512    513            �           2604    29568    utma_iseg_l idisegl    DEFAULT     z   ALTER TABLE ONLY public.utma_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utma_iseg_l_idisegl_seq'::regclass);
 B   ALTER TABLE public.utma_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    516    517    517            �           2604    29554    utma_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utma_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utma_iseg_tsu_idisegtsu_seq'::regclass);
 F   ALTER TABLE public.utma_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    515    514    515            �           2604    29596    utma_isem_l idiseml    DEFAULT     z   ALTER TABLE ONLY public.utma_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utma_isem_l_idiseml_seq'::regclass);
 B   ALTER TABLE public.utma_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    520    521    521            �           2604    29582    utma_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utma_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utma_isem_tsu_idisemtsu_seq'::regclass);
 F   ALTER TABLE public.utma_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    518    519    519            �           2604    29707    utma_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utma_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.utma_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    536    537    537            �           2604    29456    utma_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utma_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.utma_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    501    500    501            �           2604    29610    utma_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utma_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.utma_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    523    522    523            �           2604    29679    utma_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utma_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.utma_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    532    533    533            �           2604    29693    utma_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utma_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.utma_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    534    535    535            �           2604    29641    utma_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utma_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.utma_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    527    526    527            �           2604    29653    utma_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utma_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.utma_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    528    529    529            �           2604    29526    utma_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utma_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.utma_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    511    510    511            �           2604    29484 #   utma_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.utma_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 R   ALTER TABLE public.utma_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    504    505    505            �           2604    29512    utma_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utma_tasa_puntaje_exl_idtpexl_seq'::regclass);
 L   ALTER TABLE public.utma_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    508    509    509            �           2604    29498 !   utma_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utma_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 P   ALTER TABLE public.utma_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    506    507    507            @           2604    30655    utna_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utna_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utna_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.utna_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    219    218            A           2604    30656    utna_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utna_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utna_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.utna_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    221    220            B           2604    30657    utna_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utna_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.utna_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    223    222            C           2604    30658    utna_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utna_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.utna_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    225    224            D           2604    30659    utna_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utna_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.utna_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    227    226            E           2604    30660    utna_iseg_l idisegl    DEFAULT     z   ALTER TABLE ONLY public.utna_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utna_iseg_l_idisegl_seq'::regclass);
 B   ALTER TABLE public.utna_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    229    228            F           2604    30661    utna_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utna_iseg_tsu_idisegtsu_seq'::regclass);
 F   ALTER TABLE public.utna_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    231    230            G           2604    30662    utna_isem_l idiseml    DEFAULT     z   ALTER TABLE ONLY public.utna_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utna_isem_l_idiseml_seq'::regclass);
 B   ALTER TABLE public.utna_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    233    232            H           2604    30663    utna_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utna_isem_tsu_idisemtsu_seq'::regclass);
 F   ALTER TABLE public.utna_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    235    234            I           2604    30664    utna_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utna_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    237    236            J           2604    30665    utna_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utna_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.utna_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    239    238            K           2604    30666    utna_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utna_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.utna_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    241    240            L           2604    30667    utna_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utna_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    243    242            M           2604    30668    utna_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utna_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.utna_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    245    244            N           2604    30669    utna_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utna_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    247    246            O           2604    30670    utna_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utna_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    249    248            P           2604    30671    utna_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utna_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    251    250            Q           2604    30672 #   utna_tasa_puntaje_egetsu idtpegestu    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu SET DEFAULT nextval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq'::regclass);
 R   ALTER TABLE public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu DROP DEFAULT;
       public          postgres    false    253    252            R           2604    30673    utna_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utna_tasa_puntaje_exl_idtpexl_seq'::regclass);
 L   ALTER TABLE public.utna_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    255    254            S           2604    30674 !   utna_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utna_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 P   ALTER TABLE public.utna_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    257    256            �           2604    29719    utr_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utr_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utr_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.utr_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    539    538    539            �           2604    29745    utr_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utr_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utr_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.utr_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    542    543    543            �           2604    29940    utr_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utr_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utr_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.utr_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    571    570    571            �           2604    29899    utr_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.utr_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utr_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.utr_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    565    564    565            �           2604    29815    utr_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utr_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utr_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.utr_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    553    552    553            �           2604    29843    utr_iseg_l idisegl    DEFAULT     x   ALTER TABLE ONLY public.utr_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utr_iseg_l_idisegl_seq'::regclass);
 A   ALTER TABLE public.utr_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    557    556    557            �           2604    29829    utr_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utr_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utr_iseg_tsu_idisegtsu_seq'::regclass);
 E   ALTER TABLE public.utr_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    555    554    555            �           2604    29871    utr_isem_l idiseml    DEFAULT     x   ALTER TABLE ONLY public.utr_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utr_isem_l_idiseml_seq'::regclass);
 A   ALTER TABLE public.utr_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    561    560    561            �           2604    29857    utr_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utr_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utr_isem_tsu_idisemtsu_seq'::regclass);
 E   ALTER TABLE public.utr_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    558    559    559            �           2604    29982    utr_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utr_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.utr_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    577    576    577            �           2604    29731    utr_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utr_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.utr_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    541    540    541            �           2604    29885    utr_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utr_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.utr_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    562    563    563            �           2604    29954    utr_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utr_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.utr_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    573    572    573            �           2604    29968    utr_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utr_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.utr_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    574    575    575            �           2604    29916    utr_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utr_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.utr_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    566    567    567            �           2604    29928    utr_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utr_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.utr_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    569    568    569            �           2604    29773    utr_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utr_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.utr_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    546    547    547            �           2604    29759 "   utr_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.utr_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 Q   ALTER TABLE public.utr_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    545    544    545            �           2604    29801    utr_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utr_tasa_puntaje_exl_idtpexl_seq'::regclass);
 K   ALTER TABLE public.utr_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    550    551    551            �           2604    29787     utr_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utr_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 O   ALTER TABLE public.utr_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    548    549    549                      0    27575    crena_carreras 
   TABLE DATA           g   COPY public.crena_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    259   ��                0    27601    crena_eficiencia_ire 
   TABLE DATA           �   COPY public.crena_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    263   �      3          0    27740    crena_indice_colocacion 
   TABLE DATA           r   COPY public.crena_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    283   8�      -          0    27699    crena_indice_ptc 
   TABLE DATA           �   COPY public.crena_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    277   U�      %          0    27643    crena_indice_servicios 
   TABLE DATA           �  COPY public.crena_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    269   r�      '          0    27657 
   crena_iseg 
   TABLE DATA           
  COPY public.crena_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    271   ��      )          0    27671 
   crena_isem 
   TABLE DATA           �   COPY public.crena_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    273   ��      9          0    27782    crena_tasa_acreditacion 
   TABLE DATA           �   COPY public.crena_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    289   Ɋ                0    27587    crena_tasa_cobertura 
   TABLE DATA           \   COPY public.crena_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    261   �      +          0    27685    crena_tasa_docentes 
   TABLE DATA           �   COPY public.crena_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    275   �      5          0    27754    crena_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.crena_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    285    �      7          0    27768    crena_tasa_mov_docentes 
   TABLE DATA           �   COPY public.crena_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    287   =�      /          0    27716    crena_tasa_pe_asat 
   TABLE DATA           ^   COPY public.crena_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    279   Z�      1          0    27728    crena_tasa_pe_pertinencia 
   TABLE DATA           e   COPY public.crena_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    281   w�      !          0    27615    crena_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.crena_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    265   ��      #          0    27629    crena_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.crena_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    267   ��      [          0    29992    ena_carreras 
   TABLE DATA           e   COPY public.ena_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    579   ΋      _          0    30018    ena_eficiencia_ire 
   TABLE DATA           �   COPY public.ena_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    583   3�      s          0    30157    ena_indice_colocacion 
   TABLE DATA           p   COPY public.ena_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    603   P�      m          0    30116    ena_indice_ptc 
   TABLE DATA           �   COPY public.ena_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    597   m�      e          0    30060    ena_indice_servicios 
   TABLE DATA           �  COPY public.ena_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    589   ��      g          0    30074    ena_iseg 
   TABLE DATA             COPY public.ena_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    591   ��      i          0    30088    ena_isem 
   TABLE DATA           �   COPY public.ena_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    593   Č      y          0    30199    ena_tasa_acreditacion 
   TABLE DATA           �   COPY public.ena_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    609   �      ]          0    30004    ena_tasa_cobertura 
   TABLE DATA           Z   COPY public.ena_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    581   ��      k          0    30102    ena_tasa_docentes 
   TABLE DATA           �   COPY public.ena_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    595   �      u          0    30171    ena_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.ena_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    605   8�      w          0    30185    ena_tasa_mov_docentes 
   TABLE DATA           �   COPY public.ena_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    607   U�      o          0    30133    ena_tasa_pe_asat 
   TABLE DATA           \   COPY public.ena_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    599   r�      q          0    30145    ena_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.ena_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    601   ��      a          0    30032    ena_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.ena_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    585   ��      c          0    30046    ena_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.ena_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    587   ɍ      ;          0    28014    enrjsm_carreras 
   TABLE DATA           h   COPY public.enrjsm_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    291   �      ?          0    28040    enrjsm_eficiencia_ire 
   TABLE DATA           �   COPY public.enrjsm_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    295   6�      Q          0    28165    enrjsm_indice_colocacion 
   TABLE DATA           s   COPY public.enrjsm_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    313   S�      K          0    28124    enrjsm_indice_ptc 
   TABLE DATA           �   COPY public.enrjsm_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    307   p�      C          0    28068    enrjsm_indice_servicios 
   TABLE DATA           �  COPY public.enrjsm_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    299   ��      E          0    28082    enrjsm_iseg 
   TABLE DATA             COPY public.enrjsm_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    301   ��      G          0    28096    enrjsm_isem 
   TABLE DATA           �   COPY public.enrjsm_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    303   ǎ      W          0    28207    enrjsm_tasa_acreditacion 
   TABLE DATA           �   COPY public.enrjsm_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    319   �      =          0    28026    enrjsm_tasa_cobertura 
   TABLE DATA           ]   COPY public.enrjsm_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    293   �      I          0    28110    enrjsm_tasa_docentes 
   TABLE DATA           �   COPY public.enrjsm_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    305   �      S          0    28179    enrjsm_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.enrjsm_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    315   ;�      U          0    28193    enrjsm_tasa_mov_docentes 
   TABLE DATA           �   COPY public.enrjsm_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    317   X�      M          0    28141    enrjsm_tasa_pe_asat 
   TABLE DATA           _   COPY public.enrjsm_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    309   u�      O          0    28153    enrjsm_tasa_pe_pertinencia 
   TABLE DATA           f   COPY public.enrjsm_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    311   ��      A          0    28054    enrjsm_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.enrjsm_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    297   ��      Y          0    28219    enrjsm_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.enrjsm_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    321   ̏      [          0    28233    enrr_carreras 
   TABLE DATA           f   COPY public.enrr_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    323   �      _          0    28259    enrr_eficiencia_ire 
   TABLE DATA           �   COPY public.enrr_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    327   F�      q          0    28384    enrr_indice_colocacion 
   TABLE DATA           q   COPY public.enrr_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    345   c�      k          0    28343    enrr_indice_ptc 
   TABLE DATA           �   COPY public.enrr_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    339   ��      c          0    28287    enrr_indice_servicios 
   TABLE DATA           �  COPY public.enrr_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    331   ��      e          0    28301 	   enrr_iseg 
   TABLE DATA           	  COPY public.enrr_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    333   ��      g          0    28315 	   enrr_isem 
   TABLE DATA           �   COPY public.enrr_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    335   א      w          0    28426    enrr_tasa_acreditacion 
   TABLE DATA           �   COPY public.enrr_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    351   ��      ]          0    28245    enrr_tasa_cobertura 
   TABLE DATA           [   COPY public.enrr_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    325   �      i          0    28329    enrr_tasa_docentes 
   TABLE DATA           �   COPY public.enrr_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    337   .�      s          0    28398    enrr_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.enrr_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    347   K�      u          0    28412    enrr_tasa_mov_docentes 
   TABLE DATA           �   COPY public.enrr_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    349   h�      m          0    28360    enrr_tasa_pe_asat 
   TABLE DATA           ]   COPY public.enrr_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    341   ��      o          0    28372    enrr_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.enrr_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    343   ��      a          0    28273    enrr_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.enrr_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    329   ��      y          0    28438    enrr_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.enrr_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    353   ܑ      {          0    28452    ensfa_carreras 
   TABLE DATA           g   COPY public.ensfa_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    355   ��                0    28478    ensfa_eficiencia_ire 
   TABLE DATA           �   COPY public.ensfa_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    359   �      �          0    28603    ensfa_indice_colocacion 
   TABLE DATA           r   COPY public.ensfa_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    377   �      �          0    28562    ensfa_indice_ptc 
   TABLE DATA           �   COPY public.ensfa_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    371   ,�      �          0    28506    ensfa_indice_servicios 
   TABLE DATA           �  COPY public.ensfa_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    363   I�      �          0    28520 
   ensfa_iseg 
   TABLE DATA           
  COPY public.ensfa_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    365   f�      �          0    28534 
   ensfa_isem 
   TABLE DATA           �   COPY public.ensfa_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    367   ��      �          0    28645    ensfa_tasa_acreditacion 
   TABLE DATA           �   COPY public.ensfa_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    383   ��      }          0    28464    ensfa_tasa_cobertura 
   TABLE DATA           \   COPY public.ensfa_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    357   ��      �          0    28548    ensfa_tasa_docentes 
   TABLE DATA           �   COPY public.ensfa_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    369   ړ      �          0    28617    ensfa_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.ensfa_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    379   ��      �          0    28631    ensfa_tasa_mov_docentes 
   TABLE DATA           �   COPY public.ensfa_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    381   �      �          0    28579    ensfa_tasa_pe_asat 
   TABLE DATA           ^   COPY public.ensfa_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    373   1�      �          0    28591    ensfa_tasa_pe_pertinencia 
   TABLE DATA           e   COPY public.ensfa_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    375   N�      �          0    28492    ensfa_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.ensfa_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    361   k�      �          0    28657    ensfa_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.ensfa_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    385   ��      �          0    27279    universidades 
   TABLE DATA           Z   COPY public.universidades (iduniversidad, abreviacion, nombre, plan_estudios) FROM stdin;
    public          postgres    false    214   ��      �          0    28671    upa_carreras 
   TABLE DATA           e   COPY public.upa_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    387   ��      �          0    28697    upa_eficiencia_ire 
   TABLE DATA           �   COPY public.upa_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    391   �      �          0    28822    upa_indice_colocacion 
   TABLE DATA           p   COPY public.upa_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    409   ��      �          0    28781    upa_indice_ptc 
   TABLE DATA           �   COPY public.upa_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    403   �      �          0    28725    upa_indice_servicios 
   TABLE DATA           �  COPY public.upa_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    395   9�      �          0    28739    upa_iseg 
   TABLE DATA             COPY public.upa_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    397   V�      �          0    28753    upa_isem 
   TABLE DATA           �   COPY public.upa_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    399   s�      �          0    28864    upa_tasa_acreditacion 
   TABLE DATA           �   COPY public.upa_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    415   ��      �          0    28683    upa_tasa_cobertura 
   TABLE DATA           Z   COPY public.upa_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    389   ��      �          0    28767    upa_tasa_docentes 
   TABLE DATA           �   COPY public.upa_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    401   ʗ      �          0    28836    upa_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.upa_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    411   �      �          0    28850    upa_tasa_mov_docentes 
   TABLE DATA           �   COPY public.upa_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    413   �      �          0    28798    upa_tasa_pe_asat 
   TABLE DATA           \   COPY public.upa_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    405   !�      �          0    28810    upa_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.upa_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    407   >�      �          0    28711    upa_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.upa_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    393   [�      �          0    28876    upa_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.upa_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    417   x�      �          0    27283    usuarios 
   TABLE DATA           `   COPY public.usuarios (idusuario, nombre_usuario, "contraseña", cargo, universidad) FROM stdin;
    public          postgres    false    216   ��      �          0    28891    uta_carreras 
   TABLE DATA           r   COPY public.uta_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    419   z�      �          0    28917    uta_eficiencia_ire 
   TABLE DATA           �   COPY public.uta_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    423   ��      �          0    29112    uta_indice_colocacion 
   TABLE DATA           p   COPY public.uta_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    451   �      �          0    29071    uta_indice_ptc 
   TABLE DATA           �   COPY public.uta_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    445   .�      �          0    28987    uta_indice_servicios 
   TABLE DATA           �  COPY public.uta_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    433   K�      �          0    29015 
   uta_iseg_l 
   TABLE DATA             COPY public.uta_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    437   h�      �          0    29001    uta_iseg_tsu 
   TABLE DATA             COPY public.uta_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    435   ��      �          0    29043 
   uta_isem_l 
   TABLE DATA           �   COPY public.uta_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    441   ��      �          0    29029    uta_isem_tsu 
   TABLE DATA           �   COPY public.uta_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    439   ��      �          0    29154    uta_tasa_acreditacion 
   TABLE DATA           �   COPY public.uta_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    457   ܝ      �          0    28903    uta_tasa_cobertura 
   TABLE DATA           Z   COPY public.uta_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    421   ��      �          0    29057    uta_tasa_docentes 
   TABLE DATA           �   COPY public.uta_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    443   �      �          0    29126    uta_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.uta_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    453   3�      �          0    29140    uta_tasa_mov_docentes 
   TABLE DATA           �   COPY public.uta_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    455   P�      �          0    29088    uta_tasa_pe_asat 
   TABLE DATA           \   COPY public.uta_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    447   m�      �          0    29100    uta_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.uta_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    449   ��      �          0    28945    uta_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    427   ��      �          0    28931    uta_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    425   Ğ      �          0    28973    uta_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    431   �      �          0    28959    uta_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    429   ��      �          0    29166    utc_carreras 
   TABLE DATA           r   COPY public.utc_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    459   �      �          0    29192    utc_eficiencia_ire 
   TABLE DATA           �   COPY public.utc_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    463   ��                0    29387    utc_indice_colocacion 
   TABLE DATA           p   COPY public.utc_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    491   ��      �          0    29346    utc_indice_ptc 
   TABLE DATA           �   COPY public.utc_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    485   נ      �          0    29262    utc_indice_servicios 
   TABLE DATA           �  COPY public.utc_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    473   ��      �          0    29290 
   utc_iseg_l 
   TABLE DATA             COPY public.utc_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    477   �      �          0    29276    utc_iseg_tsu 
   TABLE DATA             COPY public.utc_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    475   .�      �          0    29318 
   utc_isem_l 
   TABLE DATA           �   COPY public.utc_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    481   K�      �          0    29304    utc_isem_tsu 
   TABLE DATA           �   COPY public.utc_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    479   h�      	          0    29429    utc_tasa_acreditacion 
   TABLE DATA           �   COPY public.utc_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    497   ��      �          0    29178    utc_tasa_cobertura 
   TABLE DATA           Z   COPY public.utc_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    461   ��      �          0    29332    utc_tasa_docentes 
   TABLE DATA           �   COPY public.utc_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    483   ��                0    29401    utc_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utc_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    493   ܡ                0    29415    utc_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utc_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    495   ��      �          0    29363    utc_tasa_pe_asat 
   TABLE DATA           \   COPY public.utc_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    487   �                0    29375    utc_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.utc_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    489   3�      �          0    29220    utc_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    467   P�      �          0    29206    utc_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    465   m�      �          0    29248    utc_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    471   ��      �          0    29234    utc_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    469   ��                0    29441    utma_carreras 
   TABLE DATA           s   COPY public.utma_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    499   Ģ                0    29467    utma_eficiencia_ire 
   TABLE DATA           �   COPY public.utma_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    503   =�      +          0    29662    utma_indice_colocacion 
   TABLE DATA           q   COPY public.utma_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    531   Z�      %          0    29621    utma_indice_ptc 
   TABLE DATA           �   COPY public.utma_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    525   w�                0    29537    utma_indice_servicios 
   TABLE DATA           �  COPY public.utma_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    513   ��                0    29565    utma_iseg_l 
   TABLE DATA             COPY public.utma_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    517   ��                0    29551    utma_iseg_tsu 
   TABLE DATA             COPY public.utma_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    515   Τ      !          0    29593    utma_isem_l 
   TABLE DATA           �   COPY public.utma_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    521   �                0    29579    utma_isem_tsu 
   TABLE DATA           �   COPY public.utma_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    519   �      1          0    29704    utma_tasa_acreditacion 
   TABLE DATA           �   COPY public.utma_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    537   %�                0    29453    utma_tasa_cobertura 
   TABLE DATA           [   COPY public.utma_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    501   B�      #          0    29607    utma_tasa_docentes 
   TABLE DATA           �   COPY public.utma_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    523   _�      -          0    29676    utma_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utma_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    533   |�      /          0    29690    utma_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utma_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    535   ��      '          0    29638    utma_tasa_pe_asat 
   TABLE DATA           ]   COPY public.utma_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    527   ��      )          0    29650    utma_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.utma_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    529   ӥ                0    29523    utma_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    511   �                0    29481    utma_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    505   �                0    29509    utma_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    509   *�                0    29495    utma_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    507   G�      �          0    27287    utna_carreras 
   TABLE DATA           s   COPY public.utna_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    218   d�      �          0    27291    utna_eficiencia_ire 
   TABLE DATA           �   COPY public.utna_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    220    �      �          0    27297    utna_indice_colocacion 
   TABLE DATA           q   COPY public.utna_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    222   �      �          0    27303    utna_indice_ptc 
   TABLE DATA           �   COPY public.utna_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    224   �      �          0    27307    utna_indice_servicios 
   TABLE DATA           �  COPY public.utna_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    226   (�      �          0    27313    utna_iseg_l 
   TABLE DATA             COPY public.utna_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    228   E�      �          0    27319    utna_iseg_tsu 
   TABLE DATA             COPY public.utna_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    230   *�                 0    27325    utna_isem_l 
   TABLE DATA           �   COPY public.utna_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    232   X�                0    27331    utna_isem_tsu 
   TABLE DATA           �   COPY public.utna_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    234   ɹ                0    27337    utna_tasa_acreditacion 
   TABLE DATA           �   COPY public.utna_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    236   J�                0    27341    utna_tasa_cobertura 
   TABLE DATA           [   COPY public.utna_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    238   g�                0    27347    utna_tasa_docentes 
   TABLE DATA           �   COPY public.utna_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    240   ��      
          0    27353    utna_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utna_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    242   ��                0    27359    utna_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utna_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    244   ��                0    27365    utna_tasa_pe_asat 
   TABLE DATA           ]   COPY public.utna_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    246   پ                0    27369    utna_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.utna_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    248   �                0    27373    utna_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    250   ��                0    27379    utna_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egetsu (idtpegestu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    252   i�                0    27385    utna_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    254   �                0    27391    utna_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    256   4�      3          0    29716    utr_carreras 
   TABLE DATA           r   COPY public.utr_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    539   Q�      7          0    29742    utr_eficiencia_ire 
   TABLE DATA           �   COPY public.utr_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    543   ��      S          0    29937    utr_indice_colocacion 
   TABLE DATA           p   COPY public.utr_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    571   �      M          0    29896    utr_indice_ptc 
   TABLE DATA           �   COPY public.utr_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    565   .�      A          0    29812    utr_indice_servicios 
   TABLE DATA           �  COPY public.utr_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    553   K�      E          0    29840 
   utr_iseg_l 
   TABLE DATA             COPY public.utr_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    557   h�      C          0    29826    utr_iseg_tsu 
   TABLE DATA             COPY public.utr_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    555   ��      I          0    29868 
   utr_isem_l 
   TABLE DATA           �   COPY public.utr_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    561   ��      G          0    29854    utr_isem_tsu 
   TABLE DATA           �   COPY public.utr_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    559   ��      Y          0    29979    utr_tasa_acreditacion 
   TABLE DATA           �   COPY public.utr_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    577   ��      5          0    29728    utr_tasa_cobertura 
   TABLE DATA           Z   COPY public.utr_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    541   ��      K          0    29882    utr_tasa_docentes 
   TABLE DATA           �   COPY public.utr_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    563   �      U          0    29951    utr_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utr_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    573   3�      W          0    29965    utr_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utr_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    575   P�      O          0    29913    utr_tasa_pe_asat 
   TABLE DATA           \   COPY public.utr_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    567   m�      Q          0    29925    utr_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.utr_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    569   ��      ;          0    29770    utr_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    547   ��      9          0    29756    utr_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    545   ��      ?          0    29798    utr_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    551   ��      =          0    29784    utr_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    549   ��      F           0    0    crena_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.crena_carreras_idcarrera_seq', 6, true);
          public          postgres    false    258            G           0    0    crena_eficiencia_ire_ideire_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.crena_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    262            H           0    0     crena_indice_colocacion_idic_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    282            I           0    0    crena_indice_ptc_idiptc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.crena_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    276            J           0    0    crena_indice_servicios_idis_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.crena_indice_servicios_idis_seq', 1, false);
          public          postgres    false    268            K           0    0    crena_iseg_idiseg_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.crena_iseg_idiseg_seq', 1, false);
          public          postgres    false    270            L           0    0    crena_isem_idisem_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.crena_isem_idisem_seq', 1, false);
          public          postgres    false    272            M           0    0     crena_tasa_acreditacion_idta_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    288            N           0    0    crena_tasa_cobertura_idtc_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.crena_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    260            O           0    0    crena_tasa_docentes_idtd_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.crena_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    274            P           0    0     crena_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    284            Q           0    0 !   crena_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.crena_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    286            R           0    0     crena_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    278            S           0    0 $   crena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.crena_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    280            T           0    0 $   crena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.crena_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    264            U           0    0     crena_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    266            V           0    0    ena_carreras_idcarrera_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ena_carreras_idcarrera_seq', 3, true);
          public          postgres    false    578            W           0    0    ena_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ena_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    582            X           0    0    ena_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    602            Y           0    0    ena_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ena_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    596            Z           0    0    ena_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ena_indice_servicios_idis_seq', 1, false);
          public          postgres    false    588            [           0    0    ena_iseg_idiseg_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ena_iseg_idiseg_seq', 1, false);
          public          postgres    false    590            \           0    0    ena_isem_idisem_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ena_isem_idisem_seq', 1, false);
          public          postgres    false    592            ]           0    0    ena_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    608            ^           0    0    ena_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ena_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    580            _           0    0    ena_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ena_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    594            `           0    0    ena_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    604            a           0    0    ena_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ena_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    606            b           0    0    ena_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    598            c           0    0 "   ena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ena_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    600            d           0    0 "   ena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ena_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    584            e           0    0    ena_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    586            f           0    0    enrjsm_carreras_idcarrera_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enrjsm_carreras_idcarrera_seq', 1, true);
          public          postgres    false    290            g           0    0     enrjsm_eficiencia_ire_ideire_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.enrjsm_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    294            h           0    0 !   enrjsm_indice_colocacion_idic_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    312            i           0    0    enrjsm_indice_ptc_idiptc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enrjsm_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    306            j           0    0     enrjsm_indice_servicios_idis_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.enrjsm_indice_servicios_idis_seq', 1, false);
          public          postgres    false    298            k           0    0    enrjsm_iseg_idiseg_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.enrjsm_iseg_idiseg_seq', 1, false);
          public          postgres    false    300            l           0    0    enrjsm_isem_idisem_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.enrjsm_isem_idisem_seq', 1, false);
          public          postgres    false    302            m           0    0 !   enrjsm_tasa_acreditacion_idta_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    318            n           0    0    enrjsm_tasa_cobertura_idtc_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.enrjsm_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    292            o           0    0    enrjsm_tasa_docentes_idtd_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.enrjsm_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    304            p           0    0 !   enrjsm_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    314            q           0    0 "   enrjsm_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.enrjsm_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    316            r           0    0 !   enrjsm_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    308            s           0    0 %   enrjsm_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.enrjsm_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    310            t           0    0 %   enrjsm_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.enrjsm_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    296            u           0    0 !   enrjsm_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    320            v           0    0    enrr_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.enrr_carreras_idcarrera_seq', 2, true);
          public          postgres    false    322            w           0    0    enrr_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.enrr_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    326            x           0    0    enrr_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    344            y           0    0    enrr_indice_ptc_idiptc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.enrr_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    338            z           0    0    enrr_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.enrr_indice_servicios_idis_seq', 1, false);
          public          postgres    false    330            {           0    0    enrr_iseg_idiseg_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.enrr_iseg_idiseg_seq', 1, false);
          public          postgres    false    332            |           0    0    enrr_isem_idisem_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.enrr_isem_idisem_seq', 1, false);
          public          postgres    false    334            }           0    0    enrr_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    350            ~           0    0    enrr_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enrr_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    324                       0    0    enrr_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.enrr_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    336            �           0    0    enrr_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    346            �           0    0     enrr_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.enrr_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    348            �           0    0    enrr_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    340            �           0    0 #   enrr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.enrr_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    342            �           0    0 #   enrr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.enrr_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    328            �           0    0    enrr_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    352            �           0    0    ensfa_carreras_idcarrera_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ensfa_carreras_idcarrera_seq', 10, true);
          public          postgres    false    354            �           0    0    ensfa_eficiencia_ire_ideire_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ensfa_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    358            �           0    0     ensfa_indice_colocacion_idic_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    376            �           0    0    ensfa_indice_ptc_idiptc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ensfa_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    370            �           0    0    ensfa_indice_servicios_idis_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ensfa_indice_servicios_idis_seq', 1, false);
          public          postgres    false    362            �           0    0    ensfa_iseg_idiseg_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ensfa_iseg_idiseg_seq', 1, false);
          public          postgres    false    364            �           0    0    ensfa_isem_idisem_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ensfa_isem_idisem_seq', 1, false);
          public          postgres    false    366            �           0    0     ensfa_tasa_acreditacion_idta_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    382            �           0    0    ensfa_tasa_cobertura_idtc_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ensfa_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    356            �           0    0    ensfa_tasa_docentes_idtd_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ensfa_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    368            �           0    0     ensfa_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    378            �           0    0 !   ensfa_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.ensfa_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    380            �           0    0     ensfa_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    372            �           0    0 $   ensfa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.ensfa_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    374            �           0    0 $   ensfa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.ensfa_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    360            �           0    0     ensfa_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    384            �           0    0    universidades_iduniversidad_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.universidades_iduniversidad_seq', 11, true);
          public          postgres    false    215            �           0    0    upa_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.upa_carreras_idcarrera_seq', 10, true);
          public          postgres    false    386            �           0    0    upa_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.upa_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    390            �           0    0    upa_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    408            �           0    0    upa_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.upa_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    402            �           0    0    upa_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.upa_indice_servicios_idis_seq', 1, false);
          public          postgres    false    394            �           0    0    upa_iseg_idiseg_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.upa_iseg_idiseg_seq', 1, false);
          public          postgres    false    396            �           0    0    upa_isem_idisem_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.upa_isem_idisem_seq', 1, false);
          public          postgres    false    398            �           0    0    upa_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    414            �           0    0    upa_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.upa_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    388            �           0    0    upa_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.upa_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    400            �           0    0    upa_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    410            �           0    0    upa_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.upa_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    412            �           0    0    upa_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    404            �           0    0 "   upa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upa_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    406            �           0    0 "   upa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upa_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    392            �           0    0    upa_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    416            �           0    0    usuarios_idusuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_idusuario_seq', 22, true);
          public          postgres    false    217            �           0    0    uta_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_carreras_idcarrera_seq', 24, true);
          public          postgres    false    418            �           0    0    uta_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.uta_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    422            �           0    0    uta_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.uta_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    450            �           0    0    uta_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.uta_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    444            �           0    0    uta_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.uta_indice_servicios_idis_seq', 1, false);
          public          postgres    false    432            �           0    0    uta_iseg_l_idisegl_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.uta_iseg_l_idisegl_seq', 1, false);
          public          postgres    false    436            �           0    0    uta_iseg_tsu_idisegtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_iseg_tsu_idisegtsu_seq', 1, false);
          public          postgres    false    434            �           0    0    uta_isem_l_idiseml_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.uta_isem_l_idiseml_seq', 1, false);
          public          postgres    false    440            �           0    0    uta_isem_tsu_idisemtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_isem_tsu_idisemtsu_seq', 1, false);
          public          postgres    false    438            �           0    0    uta_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.uta_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    456            �           0    0    uta_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.uta_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    420            �           0    0    uta_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    442            �           0    0    uta_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.uta_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    452            �           0    0    uta_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.uta_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    454            �           0    0    uta_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.uta_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    446            �           0    0 "   uta_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.uta_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    448            �           0    0 "   uta_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.uta_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    426            �           0    0 &   uta_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.uta_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    424            �           0    0     uta_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.uta_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    430            �           0    0 $   uta_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.uta_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    428            �           0    0    utc_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_carreras_idcarrera_seq', 12, true);
          public          postgres    false    458            �           0    0    utc_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utc_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    462            �           0    0    utc_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    490            �           0    0    utc_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.utc_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    484            �           0    0    utc_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utc_indice_servicios_idis_seq', 1, false);
          public          postgres    false    472            �           0    0    utc_iseg_l_idisegl_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utc_iseg_l_idisegl_seq', 1, false);
          public          postgres    false    476            �           0    0    utc_iseg_tsu_idisegtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_iseg_tsu_idisegtsu_seq', 1, false);
          public          postgres    false    474            �           0    0    utc_isem_l_idiseml_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utc_isem_l_idiseml_seq', 1, false);
          public          postgres    false    480            �           0    0    utc_isem_tsu_idisemtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_isem_tsu_idisemtsu_seq', 1, false);
          public          postgres    false    478            �           0    0    utc_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    496            �           0    0    utc_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utc_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    460            �           0    0    utc_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    482            �           0    0    utc_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    492            �           0    0    utc_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utc_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    494            �           0    0    utc_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    486            �           0    0 "   utc_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utc_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    488            �           0    0 "   utc_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utc_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    466            �           0    0 &   utc_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.utc_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    464            �           0    0     utc_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utc_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    470            �           0    0 $   utc_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.utc_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    468            �           0    0    utma_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utma_carreras_idcarrera_seq', 12, true);
          public          postgres    false    498            �           0    0    utma_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utma_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    502            �           0    0    utma_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    530            �           0    0    utma_indice_ptc_idiptc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utma_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    524            �           0    0    utma_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utma_indice_servicios_idis_seq', 1, false);
          public          postgres    false    512            �           0    0    utma_iseg_l_idisegl_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utma_iseg_l_idisegl_seq', 1, false);
          public          postgres    false    516            �           0    0    utma_iseg_tsu_idisegtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utma_iseg_tsu_idisegtsu_seq', 1, false);
          public          postgres    false    514            �           0    0    utma_isem_l_idiseml_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utma_isem_l_idiseml_seq', 1, false);
          public          postgres    false    520            �           0    0    utma_isem_tsu_idisemtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utma_isem_tsu_idisemtsu_seq', 1, false);
          public          postgres    false    518            �           0    0    utma_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    536            �           0    0    utma_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.utma_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    500            �           0    0    utma_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utma_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    522            �           0    0    utma_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    532            �           0    0     utma_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utma_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    534            �           0    0    utma_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    526            �           0    0 #   utma_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utma_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    528            �           0    0 #   utma_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utma_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    510            �           0    0 '   utma_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.utma_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    504            �           0    0 !   utma_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.utma_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    508            �           0    0 %   utma_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.utma_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    506            �           0    0    utna_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_carreras_idcarrera_seq', 29, true);
          public          postgres    false    219            �           0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    221            �           0    0    utna_indice_colocacion_idic_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_indice_colocacion_idic_seq', 140, true);
          public          postgres    false    223            �           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utna_indice_ptc_idiptc_seq', 51, true);
          public          postgres    false    225            �           0    0    utna_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_indice_servicios_idis_seq', 1, false);
          public          postgres    false    227            �           0    0    utna_iseg_l_idisegl_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_iseg_l_idisegl_seq', 12, true);
          public          postgres    false    229            �           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_iseg_tsu_idisegtsu_seq', 17, true);
          public          postgres    false    231            �           0    0    utna_isem_l_idiseml_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_isem_l_idiseml_seq', 12, true);
          public          postgres    false    233            �           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_isem_tsu_idisemtsu_seq', 17, true);
          public          postgres    false    235            �           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    237            �           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.utna_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    239            �           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    241            �           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_tasa_mov_alumnos_idtma_seq', 145, true);
          public          postgres    false    243            �           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    245            �           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_pe_asat_idtpeasat_seq', 29, true);
          public          postgres    false    247            �           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_pe_pertinencia_idtpep_seq', 29, true);
          public          postgres    false    249            �           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egel_idtpegel_seq', 12, true);
          public          postgres    false    251            �           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq', 17, true);
          public          postgres    false    253            �           0    0 !   utna_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.utna_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    255            �           0    0 %   utna_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.utna_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    257            �           0    0    utr_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utr_carreras_idcarrera_seq', 13, true);
          public          postgres    false    538            �           0    0    utr_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utr_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    542            �           0    0    utr_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    570            �           0    0    utr_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.utr_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    564            �           0    0    utr_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utr_indice_servicios_idis_seq', 1, false);
          public          postgres    false    552            �           0    0    utr_iseg_l_idisegl_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utr_iseg_l_idisegl_seq', 1, false);
          public          postgres    false    556            �           0    0    utr_iseg_tsu_idisegtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utr_iseg_tsu_idisegtsu_seq', 1, false);
          public          postgres    false    554            �           0    0    utr_isem_l_idiseml_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utr_isem_l_idiseml_seq', 1, false);
          public          postgres    false    560                        0    0    utr_isem_tsu_idisemtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utr_isem_tsu_idisemtsu_seq', 1, false);
          public          postgres    false    558                       0    0    utr_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    576                       0    0    utr_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utr_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    540                       0    0    utr_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utr_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    562                       0    0    utr_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    572                       0    0    utr_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utr_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    574                       0    0    utr_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    566                       0    0 "   utr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utr_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    568                       0    0 "   utr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utr_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    546            	           0    0 &   utr_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.utr_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    544            
           0    0     utr_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utr_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    550                       0    0 $   utr_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.utr_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    548            1           2606    27580 "   crena_carreras crena_carreras_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.crena_carreras
    ADD CONSTRAINT crena_carreras_pkey PRIMARY KEY (idcarrera);
 L   ALTER TABLE ONLY public.crena_carreras DROP CONSTRAINT crena_carreras_pkey;
       public            postgres    false    259            5           2606    27608 .   crena_eficiencia_ire crena_eficiencia_ire_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.crena_eficiencia_ire
    ADD CONSTRAINT crena_eficiencia_ire_pkey PRIMARY KEY (ideire);
 X   ALTER TABLE ONLY public.crena_eficiencia_ire DROP CONSTRAINT crena_eficiencia_ire_pkey;
       public            postgres    false    263            I           2606    27747 4   crena_indice_colocacion crena_indice_colocacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.crena_indice_colocacion
    ADD CONSTRAINT crena_indice_colocacion_pkey PRIMARY KEY (idic);
 ^   ALTER TABLE ONLY public.crena_indice_colocacion DROP CONSTRAINT crena_indice_colocacion_pkey;
       public            postgres    false    283            C           2606    27704 &   crena_indice_ptc crena_indice_ptc_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.crena_indice_ptc
    ADD CONSTRAINT crena_indice_ptc_pkey PRIMARY KEY (idiptc);
 P   ALTER TABLE ONLY public.crena_indice_ptc DROP CONSTRAINT crena_indice_ptc_pkey;
       public            postgres    false    277            ;           2606    27650 2   crena_indice_servicios crena_indice_servicios_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.crena_indice_servicios
    ADD CONSTRAINT crena_indice_servicios_pkey PRIMARY KEY (idis);
 \   ALTER TABLE ONLY public.crena_indice_servicios DROP CONSTRAINT crena_indice_servicios_pkey;
       public            postgres    false    269            =           2606    27664    crena_iseg crena_iseg_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.crena_iseg
    ADD CONSTRAINT crena_iseg_pkey PRIMARY KEY (idiseg);
 D   ALTER TABLE ONLY public.crena_iseg DROP CONSTRAINT crena_iseg_pkey;
       public            postgres    false    271            ?           2606    27678    crena_isem crena_isem_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.crena_isem
    ADD CONSTRAINT crena_isem_pkey PRIMARY KEY (idisem);
 D   ALTER TABLE ONLY public.crena_isem DROP CONSTRAINT crena_isem_pkey;
       public            postgres    false    273            O           2606    27787 4   crena_tasa_acreditacion crena_tasa_acreditacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.crena_tasa_acreditacion
    ADD CONSTRAINT crena_tasa_acreditacion_pkey PRIMARY KEY (idta);
 ^   ALTER TABLE ONLY public.crena_tasa_acreditacion DROP CONSTRAINT crena_tasa_acreditacion_pkey;
       public            postgres    false    289            3           2606    27594 .   crena_tasa_cobertura crena_tasa_cobertura_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.crena_tasa_cobertura
    ADD CONSTRAINT crena_tasa_cobertura_pkey PRIMARY KEY (idtc);
 X   ALTER TABLE ONLY public.crena_tasa_cobertura DROP CONSTRAINT crena_tasa_cobertura_pkey;
       public            postgres    false    261            A           2606    27692 ,   crena_tasa_docentes crena_tasa_docentes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.crena_tasa_docentes
    ADD CONSTRAINT crena_tasa_docentes_pkey PRIMARY KEY (idtd);
 V   ALTER TABLE ONLY public.crena_tasa_docentes DROP CONSTRAINT crena_tasa_docentes_pkey;
       public            postgres    false    275            K           2606    27761 2   crena_tasa_mov_alumnos crena_tasa_mov_alumnos_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.crena_tasa_mov_alumnos
    ADD CONSTRAINT crena_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 \   ALTER TABLE ONLY public.crena_tasa_mov_alumnos DROP CONSTRAINT crena_tasa_mov_alumnos_pkey;
       public            postgres    false    285            M           2606    27775 4   crena_tasa_mov_docentes crena_tasa_mov_docentes_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.crena_tasa_mov_docentes
    ADD CONSTRAINT crena_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 ^   ALTER TABLE ONLY public.crena_tasa_mov_docentes DROP CONSTRAINT crena_tasa_mov_docentes_pkey;
       public            postgres    false    287            E           2606    27721 *   crena_tasa_pe_asat crena_tasa_pe_asat_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.crena_tasa_pe_asat
    ADD CONSTRAINT crena_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 T   ALTER TABLE ONLY public.crena_tasa_pe_asat DROP CONSTRAINT crena_tasa_pe_asat_pkey;
       public            postgres    false    279            G           2606    27733 8   crena_tasa_pe_pertinencia crena_tasa_pe_pertinencia_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia
    ADD CONSTRAINT crena_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 b   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia DROP CONSTRAINT crena_tasa_pe_pertinencia_pkey;
       public            postgres    false    281            7           2606    27622 4   crena_tasa_puntaje_egel crena_tasa_puntaje_egel_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.crena_tasa_puntaje_egel
    ADD CONSTRAINT crena_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 ^   ALTER TABLE ONLY public.crena_tasa_puntaje_egel DROP CONSTRAINT crena_tasa_puntaje_egel_pkey;
       public            postgres    false    265            9           2606    27636 0   crena_tasa_puntaje_ex crena_tasa_puntaje_ex_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.crena_tasa_puntaje_ex
    ADD CONSTRAINT crena_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 Z   ALTER TABLE ONLY public.crena_tasa_puntaje_ex DROP CONSTRAINT crena_tasa_puntaje_ex_pkey;
       public            postgres    false    267            q           2606    29997    ena_carreras ena_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.ena_carreras
    ADD CONSTRAINT ena_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.ena_carreras DROP CONSTRAINT ena_carreras_pkey;
       public            postgres    false    579            u           2606    30025 *   ena_eficiencia_ire ena_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ena_eficiencia_ire
    ADD CONSTRAINT ena_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.ena_eficiencia_ire DROP CONSTRAINT ena_eficiencia_ire_pkey;
       public            postgres    false    583            �           2606    30164 0   ena_indice_colocacion ena_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ena_indice_colocacion
    ADD CONSTRAINT ena_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.ena_indice_colocacion DROP CONSTRAINT ena_indice_colocacion_pkey;
       public            postgres    false    603            �           2606    30121 "   ena_indice_ptc ena_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ena_indice_ptc
    ADD CONSTRAINT ena_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.ena_indice_ptc DROP CONSTRAINT ena_indice_ptc_pkey;
       public            postgres    false    597            {           2606    30067 .   ena_indice_servicios ena_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.ena_indice_servicios
    ADD CONSTRAINT ena_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.ena_indice_servicios DROP CONSTRAINT ena_indice_servicios_pkey;
       public            postgres    false    589            }           2606    30081    ena_iseg ena_iseg_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ena_iseg
    ADD CONSTRAINT ena_iseg_pkey PRIMARY KEY (idiseg);
 @   ALTER TABLE ONLY public.ena_iseg DROP CONSTRAINT ena_iseg_pkey;
       public            postgres    false    591                       2606    30095    ena_isem ena_isem_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ena_isem
    ADD CONSTRAINT ena_isem_pkey PRIMARY KEY (idisem);
 @   ALTER TABLE ONLY public.ena_isem DROP CONSTRAINT ena_isem_pkey;
       public            postgres    false    593            �           2606    30204 0   ena_tasa_acreditacion ena_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ena_tasa_acreditacion
    ADD CONSTRAINT ena_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.ena_tasa_acreditacion DROP CONSTRAINT ena_tasa_acreditacion_pkey;
       public            postgres    false    609            s           2606    30011 *   ena_tasa_cobertura ena_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ena_tasa_cobertura
    ADD CONSTRAINT ena_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.ena_tasa_cobertura DROP CONSTRAINT ena_tasa_cobertura_pkey;
       public            postgres    false    581            �           2606    30109 (   ena_tasa_docentes ena_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ena_tasa_docentes
    ADD CONSTRAINT ena_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.ena_tasa_docentes DROP CONSTRAINT ena_tasa_docentes_pkey;
       public            postgres    false    595            �           2606    30178 .   ena_tasa_mov_alumnos ena_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.ena_tasa_mov_alumnos
    ADD CONSTRAINT ena_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.ena_tasa_mov_alumnos DROP CONSTRAINT ena_tasa_mov_alumnos_pkey;
       public            postgres    false    605            �           2606    30192 0   ena_tasa_mov_docentes ena_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.ena_tasa_mov_docentes
    ADD CONSTRAINT ena_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.ena_tasa_mov_docentes DROP CONSTRAINT ena_tasa_mov_docentes_pkey;
       public            postgres    false    607            �           2606    30138 &   ena_tasa_pe_asat ena_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.ena_tasa_pe_asat
    ADD CONSTRAINT ena_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.ena_tasa_pe_asat DROP CONSTRAINT ena_tasa_pe_asat_pkey;
       public            postgres    false    599            �           2606    30150 4   ena_tasa_pe_pertinencia ena_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia
    ADD CONSTRAINT ena_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia DROP CONSTRAINT ena_tasa_pe_pertinencia_pkey;
       public            postgres    false    601            w           2606    30039 0   ena_tasa_puntaje_egel ena_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ena_tasa_puntaje_egel
    ADD CONSTRAINT ena_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.ena_tasa_puntaje_egel DROP CONSTRAINT ena_tasa_puntaje_egel_pkey;
       public            postgres    false    585            y           2606    30053 ,   ena_tasa_puntaje_ex ena_tasa_puntaje_ex_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.ena_tasa_puntaje_ex
    ADD CONSTRAINT ena_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 V   ALTER TABLE ONLY public.ena_tasa_puntaje_ex DROP CONSTRAINT ena_tasa_puntaje_ex_pkey;
       public            postgres    false    587            Q           2606    28019 $   enrjsm_carreras enrjsm_carreras_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.enrjsm_carreras
    ADD CONSTRAINT enrjsm_carreras_pkey PRIMARY KEY (idcarrera);
 N   ALTER TABLE ONLY public.enrjsm_carreras DROP CONSTRAINT enrjsm_carreras_pkey;
       public            postgres    false    291            U           2606    28047 0   enrjsm_eficiencia_ire enrjsm_eficiencia_ire_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.enrjsm_eficiencia_ire
    ADD CONSTRAINT enrjsm_eficiencia_ire_pkey PRIMARY KEY (ideire);
 Z   ALTER TABLE ONLY public.enrjsm_eficiencia_ire DROP CONSTRAINT enrjsm_eficiencia_ire_pkey;
       public            postgres    false    295            g           2606    28172 6   enrjsm_indice_colocacion enrjsm_indice_colocacion_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.enrjsm_indice_colocacion
    ADD CONSTRAINT enrjsm_indice_colocacion_pkey PRIMARY KEY (idic);
 `   ALTER TABLE ONLY public.enrjsm_indice_colocacion DROP CONSTRAINT enrjsm_indice_colocacion_pkey;
       public            postgres    false    313            a           2606    28129 (   enrjsm_indice_ptc enrjsm_indice_ptc_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.enrjsm_indice_ptc
    ADD CONSTRAINT enrjsm_indice_ptc_pkey PRIMARY KEY (idiptc);
 R   ALTER TABLE ONLY public.enrjsm_indice_ptc DROP CONSTRAINT enrjsm_indice_ptc_pkey;
       public            postgres    false    307            Y           2606    28075 4   enrjsm_indice_servicios enrjsm_indice_servicios_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.enrjsm_indice_servicios
    ADD CONSTRAINT enrjsm_indice_servicios_pkey PRIMARY KEY (idis);
 ^   ALTER TABLE ONLY public.enrjsm_indice_servicios DROP CONSTRAINT enrjsm_indice_servicios_pkey;
       public            postgres    false    299            [           2606    28089    enrjsm_iseg enrjsm_iseg_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.enrjsm_iseg
    ADD CONSTRAINT enrjsm_iseg_pkey PRIMARY KEY (idiseg);
 F   ALTER TABLE ONLY public.enrjsm_iseg DROP CONSTRAINT enrjsm_iseg_pkey;
       public            postgres    false    301            ]           2606    28103    enrjsm_isem enrjsm_isem_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.enrjsm_isem
    ADD CONSTRAINT enrjsm_isem_pkey PRIMARY KEY (idisem);
 F   ALTER TABLE ONLY public.enrjsm_isem DROP CONSTRAINT enrjsm_isem_pkey;
       public            postgres    false    303            m           2606    28212 6   enrjsm_tasa_acreditacion enrjsm_tasa_acreditacion_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion
    ADD CONSTRAINT enrjsm_tasa_acreditacion_pkey PRIMARY KEY (idta);
 `   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion DROP CONSTRAINT enrjsm_tasa_acreditacion_pkey;
       public            postgres    false    319            S           2606    28033 0   enrjsm_tasa_cobertura enrjsm_tasa_cobertura_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.enrjsm_tasa_cobertura
    ADD CONSTRAINT enrjsm_tasa_cobertura_pkey PRIMARY KEY (idtc);
 Z   ALTER TABLE ONLY public.enrjsm_tasa_cobertura DROP CONSTRAINT enrjsm_tasa_cobertura_pkey;
       public            postgres    false    293            _           2606    28117 .   enrjsm_tasa_docentes enrjsm_tasa_docentes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.enrjsm_tasa_docentes
    ADD CONSTRAINT enrjsm_tasa_docentes_pkey PRIMARY KEY (idtd);
 X   ALTER TABLE ONLY public.enrjsm_tasa_docentes DROP CONSTRAINT enrjsm_tasa_docentes_pkey;
       public            postgres    false    305            i           2606    28186 4   enrjsm_tasa_mov_alumnos enrjsm_tasa_mov_alumnos_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos
    ADD CONSTRAINT enrjsm_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 ^   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos DROP CONSTRAINT enrjsm_tasa_mov_alumnos_pkey;
       public            postgres    false    315            k           2606    28200 6   enrjsm_tasa_mov_docentes enrjsm_tasa_mov_docentes_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes
    ADD CONSTRAINT enrjsm_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 `   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes DROP CONSTRAINT enrjsm_tasa_mov_docentes_pkey;
       public            postgres    false    317            c           2606    28146 ,   enrjsm_tasa_pe_asat enrjsm_tasa_pe_asat_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat
    ADD CONSTRAINT enrjsm_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 V   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat DROP CONSTRAINT enrjsm_tasa_pe_asat_pkey;
       public            postgres    false    309            e           2606    28158 :   enrjsm_tasa_pe_pertinencia enrjsm_tasa_pe_pertinencia_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia
    ADD CONSTRAINT enrjsm_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 d   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia DROP CONSTRAINT enrjsm_tasa_pe_pertinencia_pkey;
       public            postgres    false    311            W           2606    28061 6   enrjsm_tasa_puntaje_egel enrjsm_tasa_puntaje_egel_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel
    ADD CONSTRAINT enrjsm_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 `   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel DROP CONSTRAINT enrjsm_tasa_puntaje_egel_pkey;
       public            postgres    false    297            o           2606    28226 2   enrjsm_tasa_puntaje_ex enrjsm_tasa_puntaje_ex_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex
    ADD CONSTRAINT enrjsm_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 \   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex DROP CONSTRAINT enrjsm_tasa_puntaje_ex_pkey;
       public            postgres    false    321            q           2606    28238     enrr_carreras enrr_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.enrr_carreras
    ADD CONSTRAINT enrr_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.enrr_carreras DROP CONSTRAINT enrr_carreras_pkey;
       public            postgres    false    323            u           2606    28266 ,   enrr_eficiencia_ire enrr_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.enrr_eficiencia_ire
    ADD CONSTRAINT enrr_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.enrr_eficiencia_ire DROP CONSTRAINT enrr_eficiencia_ire_pkey;
       public            postgres    false    327            �           2606    28391 2   enrr_indice_colocacion enrr_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.enrr_indice_colocacion
    ADD CONSTRAINT enrr_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.enrr_indice_colocacion DROP CONSTRAINT enrr_indice_colocacion_pkey;
       public            postgres    false    345            �           2606    28348 $   enrr_indice_ptc enrr_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.enrr_indice_ptc
    ADD CONSTRAINT enrr_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.enrr_indice_ptc DROP CONSTRAINT enrr_indice_ptc_pkey;
       public            postgres    false    339            y           2606    28294 0   enrr_indice_servicios enrr_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.enrr_indice_servicios
    ADD CONSTRAINT enrr_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.enrr_indice_servicios DROP CONSTRAINT enrr_indice_servicios_pkey;
       public            postgres    false    331            {           2606    28308    enrr_iseg enrr_iseg_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.enrr_iseg
    ADD CONSTRAINT enrr_iseg_pkey PRIMARY KEY (idiseg);
 B   ALTER TABLE ONLY public.enrr_iseg DROP CONSTRAINT enrr_iseg_pkey;
       public            postgres    false    333            }           2606    28322    enrr_isem enrr_isem_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.enrr_isem
    ADD CONSTRAINT enrr_isem_pkey PRIMARY KEY (idisem);
 B   ALTER TABLE ONLY public.enrr_isem DROP CONSTRAINT enrr_isem_pkey;
       public            postgres    false    335            �           2606    28431 2   enrr_tasa_acreditacion enrr_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.enrr_tasa_acreditacion
    ADD CONSTRAINT enrr_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.enrr_tasa_acreditacion DROP CONSTRAINT enrr_tasa_acreditacion_pkey;
       public            postgres    false    351            s           2606    28252 ,   enrr_tasa_cobertura enrr_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.enrr_tasa_cobertura
    ADD CONSTRAINT enrr_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.enrr_tasa_cobertura DROP CONSTRAINT enrr_tasa_cobertura_pkey;
       public            postgres    false    325                       2606    28336 *   enrr_tasa_docentes enrr_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.enrr_tasa_docentes
    ADD CONSTRAINT enrr_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.enrr_tasa_docentes DROP CONSTRAINT enrr_tasa_docentes_pkey;
       public            postgres    false    337            �           2606    28405 0   enrr_tasa_mov_alumnos enrr_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos
    ADD CONSTRAINT enrr_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos DROP CONSTRAINT enrr_tasa_mov_alumnos_pkey;
       public            postgres    false    347            �           2606    28419 2   enrr_tasa_mov_docentes enrr_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.enrr_tasa_mov_docentes
    ADD CONSTRAINT enrr_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.enrr_tasa_mov_docentes DROP CONSTRAINT enrr_tasa_mov_docentes_pkey;
       public            postgres    false    349            �           2606    28365 (   enrr_tasa_pe_asat enrr_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.enrr_tasa_pe_asat
    ADD CONSTRAINT enrr_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.enrr_tasa_pe_asat DROP CONSTRAINT enrr_tasa_pe_asat_pkey;
       public            postgres    false    341            �           2606    28377 6   enrr_tasa_pe_pertinencia enrr_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia
    ADD CONSTRAINT enrr_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia DROP CONSTRAINT enrr_tasa_pe_pertinencia_pkey;
       public            postgres    false    343            w           2606    28280 2   enrr_tasa_puntaje_egel enrr_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel
    ADD CONSTRAINT enrr_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel DROP CONSTRAINT enrr_tasa_puntaje_egel_pkey;
       public            postgres    false    329            �           2606    28445 .   enrr_tasa_puntaje_ex enrr_tasa_puntaje_ex_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex
    ADD CONSTRAINT enrr_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 X   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex DROP CONSTRAINT enrr_tasa_puntaje_ex_pkey;
       public            postgres    false    353            �           2606    28457 "   ensfa_carreras ensfa_carreras_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.ensfa_carreras
    ADD CONSTRAINT ensfa_carreras_pkey PRIMARY KEY (idcarrera);
 L   ALTER TABLE ONLY public.ensfa_carreras DROP CONSTRAINT ensfa_carreras_pkey;
       public            postgres    false    355            �           2606    28485 .   ensfa_eficiencia_ire ensfa_eficiencia_ire_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ensfa_eficiencia_ire
    ADD CONSTRAINT ensfa_eficiencia_ire_pkey PRIMARY KEY (ideire);
 X   ALTER TABLE ONLY public.ensfa_eficiencia_ire DROP CONSTRAINT ensfa_eficiencia_ire_pkey;
       public            postgres    false    359            �           2606    28610 4   ensfa_indice_colocacion ensfa_indice_colocacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ensfa_indice_colocacion
    ADD CONSTRAINT ensfa_indice_colocacion_pkey PRIMARY KEY (idic);
 ^   ALTER TABLE ONLY public.ensfa_indice_colocacion DROP CONSTRAINT ensfa_indice_colocacion_pkey;
       public            postgres    false    377            �           2606    28567 &   ensfa_indice_ptc ensfa_indice_ptc_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ensfa_indice_ptc
    ADD CONSTRAINT ensfa_indice_ptc_pkey PRIMARY KEY (idiptc);
 P   ALTER TABLE ONLY public.ensfa_indice_ptc DROP CONSTRAINT ensfa_indice_ptc_pkey;
       public            postgres    false    371            �           2606    28513 2   ensfa_indice_servicios ensfa_indice_servicios_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ensfa_indice_servicios
    ADD CONSTRAINT ensfa_indice_servicios_pkey PRIMARY KEY (idis);
 \   ALTER TABLE ONLY public.ensfa_indice_servicios DROP CONSTRAINT ensfa_indice_servicios_pkey;
       public            postgres    false    363            �           2606    28527    ensfa_iseg ensfa_iseg_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ensfa_iseg
    ADD CONSTRAINT ensfa_iseg_pkey PRIMARY KEY (idiseg);
 D   ALTER TABLE ONLY public.ensfa_iseg DROP CONSTRAINT ensfa_iseg_pkey;
       public            postgres    false    365            �           2606    28541    ensfa_isem ensfa_isem_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ensfa_isem
    ADD CONSTRAINT ensfa_isem_pkey PRIMARY KEY (idisem);
 D   ALTER TABLE ONLY public.ensfa_isem DROP CONSTRAINT ensfa_isem_pkey;
       public            postgres    false    367            �           2606    28650 4   ensfa_tasa_acreditacion ensfa_tasa_acreditacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ensfa_tasa_acreditacion
    ADD CONSTRAINT ensfa_tasa_acreditacion_pkey PRIMARY KEY (idta);
 ^   ALTER TABLE ONLY public.ensfa_tasa_acreditacion DROP CONSTRAINT ensfa_tasa_acreditacion_pkey;
       public            postgres    false    383            �           2606    28471 .   ensfa_tasa_cobertura ensfa_tasa_cobertura_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.ensfa_tasa_cobertura
    ADD CONSTRAINT ensfa_tasa_cobertura_pkey PRIMARY KEY (idtc);
 X   ALTER TABLE ONLY public.ensfa_tasa_cobertura DROP CONSTRAINT ensfa_tasa_cobertura_pkey;
       public            postgres    false    357            �           2606    28555 ,   ensfa_tasa_docentes ensfa_tasa_docentes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ensfa_tasa_docentes
    ADD CONSTRAINT ensfa_tasa_docentes_pkey PRIMARY KEY (idtd);
 V   ALTER TABLE ONLY public.ensfa_tasa_docentes DROP CONSTRAINT ensfa_tasa_docentes_pkey;
       public            postgres    false    369            �           2606    28624 2   ensfa_tasa_mov_alumnos ensfa_tasa_mov_alumnos_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos
    ADD CONSTRAINT ensfa_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 \   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos DROP CONSTRAINT ensfa_tasa_mov_alumnos_pkey;
       public            postgres    false    379            �           2606    28638 4   ensfa_tasa_mov_docentes ensfa_tasa_mov_docentes_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes
    ADD CONSTRAINT ensfa_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 ^   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes DROP CONSTRAINT ensfa_tasa_mov_docentes_pkey;
       public            postgres    false    381            �           2606    28584 *   ensfa_tasa_pe_asat ensfa_tasa_pe_asat_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.ensfa_tasa_pe_asat
    ADD CONSTRAINT ensfa_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 T   ALTER TABLE ONLY public.ensfa_tasa_pe_asat DROP CONSTRAINT ensfa_tasa_pe_asat_pkey;
       public            postgres    false    373            �           2606    28596 8   ensfa_tasa_pe_pertinencia ensfa_tasa_pe_pertinencia_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia
    ADD CONSTRAINT ensfa_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 b   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia DROP CONSTRAINT ensfa_tasa_pe_pertinencia_pkey;
       public            postgres    false    375            �           2606    28499 4   ensfa_tasa_puntaje_egel ensfa_tasa_puntaje_egel_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel
    ADD CONSTRAINT ensfa_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 ^   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel DROP CONSTRAINT ensfa_tasa_puntaje_egel_pkey;
       public            postgres    false    361            �           2606    28664 0   ensfa_tasa_puntaje_ex ensfa_tasa_puntaje_ex_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex
    ADD CONSTRAINT ensfa_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 Z   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex DROP CONSTRAINT ensfa_tasa_puntaje_ex_pkey;
       public            postgres    false    385                       2606    27420     universidades universidades_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.universidades
    ADD CONSTRAINT universidades_pkey PRIMARY KEY (iduniversidad);
 J   ALTER TABLE ONLY public.universidades DROP CONSTRAINT universidades_pkey;
       public            postgres    false    214            �           2606    28676    upa_carreras upa_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.upa_carreras
    ADD CONSTRAINT upa_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.upa_carreras DROP CONSTRAINT upa_carreras_pkey;
       public            postgres    false    387            �           2606    28704 *   upa_eficiencia_ire upa_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.upa_eficiencia_ire
    ADD CONSTRAINT upa_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.upa_eficiencia_ire DROP CONSTRAINT upa_eficiencia_ire_pkey;
       public            postgres    false    391            �           2606    28829 0   upa_indice_colocacion upa_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.upa_indice_colocacion
    ADD CONSTRAINT upa_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.upa_indice_colocacion DROP CONSTRAINT upa_indice_colocacion_pkey;
       public            postgres    false    409            �           2606    28786 "   upa_indice_ptc upa_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.upa_indice_ptc
    ADD CONSTRAINT upa_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.upa_indice_ptc DROP CONSTRAINT upa_indice_ptc_pkey;
       public            postgres    false    403            �           2606    28732 .   upa_indice_servicios upa_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.upa_indice_servicios
    ADD CONSTRAINT upa_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.upa_indice_servicios DROP CONSTRAINT upa_indice_servicios_pkey;
       public            postgres    false    395            �           2606    28746    upa_iseg upa_iseg_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.upa_iseg
    ADD CONSTRAINT upa_iseg_pkey PRIMARY KEY (idiseg);
 @   ALTER TABLE ONLY public.upa_iseg DROP CONSTRAINT upa_iseg_pkey;
       public            postgres    false    397            �           2606    28760    upa_isem upa_isem_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.upa_isem
    ADD CONSTRAINT upa_isem_pkey PRIMARY KEY (idisem);
 @   ALTER TABLE ONLY public.upa_isem DROP CONSTRAINT upa_isem_pkey;
       public            postgres    false    399            �           2606    28869 0   upa_tasa_acreditacion upa_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.upa_tasa_acreditacion
    ADD CONSTRAINT upa_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.upa_tasa_acreditacion DROP CONSTRAINT upa_tasa_acreditacion_pkey;
       public            postgres    false    415            �           2606    28690 *   upa_tasa_cobertura upa_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.upa_tasa_cobertura
    ADD CONSTRAINT upa_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.upa_tasa_cobertura DROP CONSTRAINT upa_tasa_cobertura_pkey;
       public            postgres    false    389            �           2606    28774 (   upa_tasa_docentes upa_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.upa_tasa_docentes
    ADD CONSTRAINT upa_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.upa_tasa_docentes DROP CONSTRAINT upa_tasa_docentes_pkey;
       public            postgres    false    401            �           2606    28843 .   upa_tasa_mov_alumnos upa_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.upa_tasa_mov_alumnos
    ADD CONSTRAINT upa_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.upa_tasa_mov_alumnos DROP CONSTRAINT upa_tasa_mov_alumnos_pkey;
       public            postgres    false    411            �           2606    28857 0   upa_tasa_mov_docentes upa_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.upa_tasa_mov_docentes
    ADD CONSTRAINT upa_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.upa_tasa_mov_docentes DROP CONSTRAINT upa_tasa_mov_docentes_pkey;
       public            postgres    false    413            �           2606    28803 &   upa_tasa_pe_asat upa_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.upa_tasa_pe_asat
    ADD CONSTRAINT upa_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.upa_tasa_pe_asat DROP CONSTRAINT upa_tasa_pe_asat_pkey;
       public            postgres    false    405            �           2606    28815 4   upa_tasa_pe_pertinencia upa_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia
    ADD CONSTRAINT upa_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia DROP CONSTRAINT upa_tasa_pe_pertinencia_pkey;
       public            postgres    false    407            �           2606    28718 0   upa_tasa_puntaje_egel upa_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.upa_tasa_puntaje_egel
    ADD CONSTRAINT upa_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.upa_tasa_puntaje_egel DROP CONSTRAINT upa_tasa_puntaje_egel_pkey;
       public            postgres    false    393            �           2606    28883 ,   upa_tasa_puntaje_ex upa_tasa_puntaje_ex_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.upa_tasa_puntaje_ex
    ADD CONSTRAINT upa_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 V   ALTER TABLE ONLY public.upa_tasa_puntaje_ex DROP CONSTRAINT upa_tasa_puntaje_ex_pkey;
       public            postgres    false    417                       2606    27422    usuarios usuarios_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    216            �           2606    28896    uta_carreras uta_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.uta_carreras
    ADD CONSTRAINT uta_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.uta_carreras DROP CONSTRAINT uta_carreras_pkey;
       public            postgres    false    419            �           2606    28924 *   uta_eficiencia_ire uta_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.uta_eficiencia_ire
    ADD CONSTRAINT uta_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.uta_eficiencia_ire DROP CONSTRAINT uta_eficiencia_ire_pkey;
       public            postgres    false    423            �           2606    29119 0   uta_indice_colocacion uta_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.uta_indice_colocacion
    ADD CONSTRAINT uta_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.uta_indice_colocacion DROP CONSTRAINT uta_indice_colocacion_pkey;
       public            postgres    false    451            �           2606    29076 "   uta_indice_ptc uta_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.uta_indice_ptc
    ADD CONSTRAINT uta_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.uta_indice_ptc DROP CONSTRAINT uta_indice_ptc_pkey;
       public            postgres    false    445            �           2606    28994 .   uta_indice_servicios uta_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.uta_indice_servicios
    ADD CONSTRAINT uta_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.uta_indice_servicios DROP CONSTRAINT uta_indice_servicios_pkey;
       public            postgres    false    433            �           2606    29022    uta_iseg_l uta_iseg_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.uta_iseg_l
    ADD CONSTRAINT uta_iseg_l_pkey PRIMARY KEY (idisegl);
 D   ALTER TABLE ONLY public.uta_iseg_l DROP CONSTRAINT uta_iseg_l_pkey;
       public            postgres    false    437            �           2606    29008    uta_iseg_tsu uta_iseg_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.uta_iseg_tsu
    ADD CONSTRAINT uta_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 H   ALTER TABLE ONLY public.uta_iseg_tsu DROP CONSTRAINT uta_iseg_tsu_pkey;
       public            postgres    false    435            �           2606    29050    uta_isem_l uta_isem_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.uta_isem_l
    ADD CONSTRAINT uta_isem_l_pkey PRIMARY KEY (idiseml);
 D   ALTER TABLE ONLY public.uta_isem_l DROP CONSTRAINT uta_isem_l_pkey;
       public            postgres    false    441            �           2606    29036    uta_isem_tsu uta_isem_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.uta_isem_tsu
    ADD CONSTRAINT uta_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 H   ALTER TABLE ONLY public.uta_isem_tsu DROP CONSTRAINT uta_isem_tsu_pkey;
       public            postgres    false    439            �           2606    29159 0   uta_tasa_acreditacion uta_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.uta_tasa_acreditacion
    ADD CONSTRAINT uta_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.uta_tasa_acreditacion DROP CONSTRAINT uta_tasa_acreditacion_pkey;
       public            postgres    false    457            �           2606    28910 *   uta_tasa_cobertura uta_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.uta_tasa_cobertura
    ADD CONSTRAINT uta_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.uta_tasa_cobertura DROP CONSTRAINT uta_tasa_cobertura_pkey;
       public            postgres    false    421            �           2606    29064 (   uta_tasa_docentes uta_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.uta_tasa_docentes
    ADD CONSTRAINT uta_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.uta_tasa_docentes DROP CONSTRAINT uta_tasa_docentes_pkey;
       public            postgres    false    443            �           2606    29133 .   uta_tasa_mov_alumnos uta_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.uta_tasa_mov_alumnos
    ADD CONSTRAINT uta_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.uta_tasa_mov_alumnos DROP CONSTRAINT uta_tasa_mov_alumnos_pkey;
       public            postgres    false    453            �           2606    29147 0   uta_tasa_mov_docentes uta_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.uta_tasa_mov_docentes
    ADD CONSTRAINT uta_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.uta_tasa_mov_docentes DROP CONSTRAINT uta_tasa_mov_docentes_pkey;
       public            postgres    false    455            �           2606    29093 &   uta_tasa_pe_asat uta_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.uta_tasa_pe_asat
    ADD CONSTRAINT uta_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.uta_tasa_pe_asat DROP CONSTRAINT uta_tasa_pe_asat_pkey;
       public            postgres    false    447            �           2606    29105 4   uta_tasa_pe_pertinencia uta_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia
    ADD CONSTRAINT uta_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia DROP CONSTRAINT uta_tasa_pe_pertinencia_pkey;
       public            postgres    false    449            �           2606    28952 0   uta_tasa_puntaje_egel uta_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.uta_tasa_puntaje_egel
    ADD CONSTRAINT uta_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.uta_tasa_puntaje_egel DROP CONSTRAINT uta_tasa_puntaje_egel_pkey;
       public            postgres    false    427            �           2606    28938 4   uta_tasa_puntaje_egetsu uta_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu
    ADD CONSTRAINT uta_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 ^   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu DROP CONSTRAINT uta_tasa_puntaje_egetsu_pkey;
       public            postgres    false    425            �           2606    28980 .   uta_tasa_puntaje_exl uta_tasa_puntaje_exl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.uta_tasa_puntaje_exl
    ADD CONSTRAINT uta_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 X   ALTER TABLE ONLY public.uta_tasa_puntaje_exl DROP CONSTRAINT uta_tasa_puntaje_exl_pkey;
       public            postgres    false    431            �           2606    28966 2   uta_tasa_puntaje_extsu uta_tasa_puntaje_extsu_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu
    ADD CONSTRAINT uta_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 \   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu DROP CONSTRAINT uta_tasa_puntaje_extsu_pkey;
       public            postgres    false    429            �           2606    29171    utc_carreras utc_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utc_carreras
    ADD CONSTRAINT utc_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.utc_carreras DROP CONSTRAINT utc_carreras_pkey;
       public            postgres    false    459            �           2606    29199 *   utc_eficiencia_ire utc_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utc_eficiencia_ire
    ADD CONSTRAINT utc_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.utc_eficiencia_ire DROP CONSTRAINT utc_eficiencia_ire_pkey;
       public            postgres    false    463                       2606    29394 0   utc_indice_colocacion utc_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utc_indice_colocacion
    ADD CONSTRAINT utc_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.utc_indice_colocacion DROP CONSTRAINT utc_indice_colocacion_pkey;
       public            postgres    false    491                       2606    29351 "   utc_indice_ptc utc_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.utc_indice_ptc
    ADD CONSTRAINT utc_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.utc_indice_ptc DROP CONSTRAINT utc_indice_ptc_pkey;
       public            postgres    false    485                       2606    29269 .   utc_indice_servicios utc_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utc_indice_servicios
    ADD CONSTRAINT utc_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.utc_indice_servicios DROP CONSTRAINT utc_indice_servicios_pkey;
       public            postgres    false    473                       2606    29297    utc_iseg_l utc_iseg_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utc_iseg_l
    ADD CONSTRAINT utc_iseg_l_pkey PRIMARY KEY (idisegl);
 D   ALTER TABLE ONLY public.utc_iseg_l DROP CONSTRAINT utc_iseg_l_pkey;
       public            postgres    false    477            	           2606    29283    utc_iseg_tsu utc_iseg_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utc_iseg_tsu
    ADD CONSTRAINT utc_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 H   ALTER TABLE ONLY public.utc_iseg_tsu DROP CONSTRAINT utc_iseg_tsu_pkey;
       public            postgres    false    475                       2606    29325    utc_isem_l utc_isem_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utc_isem_l
    ADD CONSTRAINT utc_isem_l_pkey PRIMARY KEY (idiseml);
 D   ALTER TABLE ONLY public.utc_isem_l DROP CONSTRAINT utc_isem_l_pkey;
       public            postgres    false    481                       2606    29311    utc_isem_tsu utc_isem_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utc_isem_tsu
    ADD CONSTRAINT utc_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 H   ALTER TABLE ONLY public.utc_isem_tsu DROP CONSTRAINT utc_isem_tsu_pkey;
       public            postgres    false    479                       2606    29434 0   utc_tasa_acreditacion utc_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utc_tasa_acreditacion
    ADD CONSTRAINT utc_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.utc_tasa_acreditacion DROP CONSTRAINT utc_tasa_acreditacion_pkey;
       public            postgres    false    497            �           2606    29185 *   utc_tasa_cobertura utc_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utc_tasa_cobertura
    ADD CONSTRAINT utc_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.utc_tasa_cobertura DROP CONSTRAINT utc_tasa_cobertura_pkey;
       public            postgres    false    461                       2606    29339 (   utc_tasa_docentes utc_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.utc_tasa_docentes
    ADD CONSTRAINT utc_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.utc_tasa_docentes DROP CONSTRAINT utc_tasa_docentes_pkey;
       public            postgres    false    483                       2606    29408 .   utc_tasa_mov_alumnos utc_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.utc_tasa_mov_alumnos
    ADD CONSTRAINT utc_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.utc_tasa_mov_alumnos DROP CONSTRAINT utc_tasa_mov_alumnos_pkey;
       public            postgres    false    493                       2606    29422 0   utc_tasa_mov_docentes utc_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utc_tasa_mov_docentes
    ADD CONSTRAINT utc_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.utc_tasa_mov_docentes DROP CONSTRAINT utc_tasa_mov_docentes_pkey;
       public            postgres    false    495                       2606    29368 &   utc_tasa_pe_asat utc_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.utc_tasa_pe_asat
    ADD CONSTRAINT utc_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.utc_tasa_pe_asat DROP CONSTRAINT utc_tasa_pe_asat_pkey;
       public            postgres    false    487                       2606    29380 4   utc_tasa_pe_pertinencia utc_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia
    ADD CONSTRAINT utc_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia DROP CONSTRAINT utc_tasa_pe_pertinencia_pkey;
       public            postgres    false    489                       2606    29227 0   utc_tasa_puntaje_egel utc_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.utc_tasa_puntaje_egel
    ADD CONSTRAINT utc_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.utc_tasa_puntaje_egel DROP CONSTRAINT utc_tasa_puntaje_egel_pkey;
       public            postgres    false    467            �           2606    29213 4   utc_tasa_puntaje_egetsu utc_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu
    ADD CONSTRAINT utc_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 ^   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu DROP CONSTRAINT utc_tasa_puntaje_egetsu_pkey;
       public            postgres    false    465                       2606    29255 .   utc_tasa_puntaje_exl utc_tasa_puntaje_exl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utc_tasa_puntaje_exl
    ADD CONSTRAINT utc_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 X   ALTER TABLE ONLY public.utc_tasa_puntaje_exl DROP CONSTRAINT utc_tasa_puntaje_exl_pkey;
       public            postgres    false    471                       2606    29241 2   utc_tasa_puntaje_extsu utc_tasa_puntaje_extsu_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu
    ADD CONSTRAINT utc_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 \   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu DROP CONSTRAINT utc_tasa_puntaje_extsu_pkey;
       public            postgres    false    469            !           2606    29446     utma_carreras utma_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utma_carreras
    ADD CONSTRAINT utma_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.utma_carreras DROP CONSTRAINT utma_carreras_pkey;
       public            postgres    false    499            %           2606    29474 ,   utma_eficiencia_ire utma_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utma_eficiencia_ire
    ADD CONSTRAINT utma_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.utma_eficiencia_ire DROP CONSTRAINT utma_eficiencia_ire_pkey;
       public            postgres    false    503            A           2606    29669 2   utma_indice_colocacion utma_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utma_indice_colocacion
    ADD CONSTRAINT utma_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.utma_indice_colocacion DROP CONSTRAINT utma_indice_colocacion_pkey;
       public            postgres    false    531            ;           2606    29626 $   utma_indice_ptc utma_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.utma_indice_ptc
    ADD CONSTRAINT utma_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.utma_indice_ptc DROP CONSTRAINT utma_indice_ptc_pkey;
       public            postgres    false    525            /           2606    29544 0   utma_indice_servicios utma_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utma_indice_servicios
    ADD CONSTRAINT utma_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.utma_indice_servicios DROP CONSTRAINT utma_indice_servicios_pkey;
       public            postgres    false    513            3           2606    29572    utma_iseg_l utma_iseg_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utma_iseg_l
    ADD CONSTRAINT utma_iseg_l_pkey PRIMARY KEY (idisegl);
 F   ALTER TABLE ONLY public.utma_iseg_l DROP CONSTRAINT utma_iseg_l_pkey;
       public            postgres    false    517            1           2606    29558     utma_iseg_tsu utma_iseg_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utma_iseg_tsu
    ADD CONSTRAINT utma_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 J   ALTER TABLE ONLY public.utma_iseg_tsu DROP CONSTRAINT utma_iseg_tsu_pkey;
       public            postgres    false    515            7           2606    29600    utma_isem_l utma_isem_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utma_isem_l
    ADD CONSTRAINT utma_isem_l_pkey PRIMARY KEY (idiseml);
 F   ALTER TABLE ONLY public.utma_isem_l DROP CONSTRAINT utma_isem_l_pkey;
       public            postgres    false    521            5           2606    29586     utma_isem_tsu utma_isem_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utma_isem_tsu
    ADD CONSTRAINT utma_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 J   ALTER TABLE ONLY public.utma_isem_tsu DROP CONSTRAINT utma_isem_tsu_pkey;
       public            postgres    false    519            G           2606    29709 2   utma_tasa_acreditacion utma_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utma_tasa_acreditacion
    ADD CONSTRAINT utma_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.utma_tasa_acreditacion DROP CONSTRAINT utma_tasa_acreditacion_pkey;
       public            postgres    false    537            #           2606    29460 ,   utma_tasa_cobertura utma_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utma_tasa_cobertura
    ADD CONSTRAINT utma_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.utma_tasa_cobertura DROP CONSTRAINT utma_tasa_cobertura_pkey;
       public            postgres    false    501            9           2606    29614 *   utma_tasa_docentes utma_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utma_tasa_docentes
    ADD CONSTRAINT utma_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.utma_tasa_docentes DROP CONSTRAINT utma_tasa_docentes_pkey;
       public            postgres    false    523            C           2606    29683 0   utma_tasa_mov_alumnos utma_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utma_tasa_mov_alumnos
    ADD CONSTRAINT utma_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.utma_tasa_mov_alumnos DROP CONSTRAINT utma_tasa_mov_alumnos_pkey;
       public            postgres    false    533            E           2606    29697 2   utma_tasa_mov_docentes utma_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utma_tasa_mov_docentes
    ADD CONSTRAINT utma_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.utma_tasa_mov_docentes DROP CONSTRAINT utma_tasa_mov_docentes_pkey;
       public            postgres    false    535            =           2606    29643 (   utma_tasa_pe_asat utma_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.utma_tasa_pe_asat
    ADD CONSTRAINT utma_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.utma_tasa_pe_asat DROP CONSTRAINT utma_tasa_pe_asat_pkey;
       public            postgres    false    527            ?           2606    29655 6   utma_tasa_pe_pertinencia utma_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia
    ADD CONSTRAINT utma_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia DROP CONSTRAINT utma_tasa_pe_pertinencia_pkey;
       public            postgres    false    529            -           2606    29530 2   utma_tasa_puntaje_egel utma_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utma_tasa_puntaje_egel
    ADD CONSTRAINT utma_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.utma_tasa_puntaje_egel DROP CONSTRAINT utma_tasa_puntaje_egel_pkey;
       public            postgres    false    511            '           2606    29488 6   utma_tasa_puntaje_egetsu utma_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu
    ADD CONSTRAINT utma_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 `   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu DROP CONSTRAINT utma_tasa_puntaje_egetsu_pkey;
       public            postgres    false    505            +           2606    29516 0   utma_tasa_puntaje_exl utma_tasa_puntaje_exl_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utma_tasa_puntaje_exl
    ADD CONSTRAINT utma_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 Z   ALTER TABLE ONLY public.utma_tasa_puntaje_exl DROP CONSTRAINT utma_tasa_puntaje_exl_pkey;
       public            postgres    false    509            )           2606    29502 4   utma_tasa_puntaje_extsu utma_tasa_puntaje_extsu_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu
    ADD CONSTRAINT utma_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 ^   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu DROP CONSTRAINT utma_tasa_puntaje_extsu_pkey;
       public            postgres    false    507            	           2606    27424     utna_carreras utna_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_carreras
    ADD CONSTRAINT utna_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.utna_carreras DROP CONSTRAINT utna_carreras_pkey;
       public            postgres    false    218                       2606    27426 ,   utna_eficiencia_ire utna_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT utna_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT utna_eficiencia_ire_pkey;
       public            postgres    false    220                       2606    27428 2   utna_indice_colocacion utna_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT utna_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT utna_indice_colocacion_pkey;
       public            postgres    false    222                       2606    27430 $   utna_indice_ptc utna_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT utna_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT utna_indice_ptc_pkey;
       public            postgres    false    224                       2606    27432 0   utna_indice_servicios utna_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT utna_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT utna_indice_servicios_pkey;
       public            postgres    false    226                       2606    27434    utna_iseg_l utna_iseg_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT utna_iseg_l_pkey PRIMARY KEY (idisegl);
 F   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT utna_iseg_l_pkey;
       public            postgres    false    228                       2606    27436     utna_iseg_tsu utna_iseg_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT utna_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 J   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT utna_iseg_tsu_pkey;
       public            postgres    false    230                       2606    27438    utna_isem_l utna_isem_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT utna_isem_l_pkey PRIMARY KEY (idiseml);
 F   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT utna_isem_l_pkey;
       public            postgres    false    232                       2606    27440     utna_isem_tsu utna_isem_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT utna_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 J   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT utna_isem_tsu_pkey;
       public            postgres    false    234                       2606    27442 2   utna_tasa_acreditacion utna_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT utna_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT utna_tasa_acreditacion_pkey;
       public            postgres    false    236                       2606    27444 ,   utna_tasa_cobertura utna_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT utna_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT utna_tasa_cobertura_pkey;
       public            postgres    false    238                       2606    27446 *   utna_tasa_docentes utna_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT utna_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT utna_tasa_docentes_pkey;
       public            postgres    false    240            !           2606    27448 0   utna_tasa_mov_alumnos utna_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT utna_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT utna_tasa_mov_alumnos_pkey;
       public            postgres    false    242            #           2606    27450 2   utna_tasa_mov_docentes utna_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT utna_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT utna_tasa_mov_docentes_pkey;
       public            postgres    false    244            %           2606    27452 (   utna_tasa_pe_asat utna_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT utna_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT utna_tasa_pe_asat_pkey;
       public            postgres    false    246            '           2606    27454 6   utna_tasa_pe_pertinencia utna_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT utna_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT utna_tasa_pe_pertinencia_pkey;
       public            postgres    false    248            )           2606    27456 2   utna_tasa_puntaje_egel utna_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT utna_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT utna_tasa_puntaje_egel_pkey;
       public            postgres    false    250            +           2606    27458 6   utna_tasa_puntaje_egetsu utna_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT utna_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegestu);
 `   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT utna_tasa_puntaje_egetsu_pkey;
       public            postgres    false    252            -           2606    27460 0   utna_tasa_puntaje_exl utna_tasa_puntaje_exl_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utna_tasa_puntaje_exl
    ADD CONSTRAINT utna_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 Z   ALTER TABLE ONLY public.utna_tasa_puntaje_exl DROP CONSTRAINT utna_tasa_puntaje_exl_pkey;
       public            postgres    false    254            /           2606    27462 4   utna_tasa_puntaje_extsu utna_tasa_puntaje_extsu_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu
    ADD CONSTRAINT utna_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 ^   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu DROP CONSTRAINT utna_tasa_puntaje_extsu_pkey;
       public            postgres    false    256            I           2606    29721    utr_carreras utr_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utr_carreras
    ADD CONSTRAINT utr_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.utr_carreras DROP CONSTRAINT utr_carreras_pkey;
       public            postgres    false    539            M           2606    29749 *   utr_eficiencia_ire utr_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utr_eficiencia_ire
    ADD CONSTRAINT utr_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.utr_eficiencia_ire DROP CONSTRAINT utr_eficiencia_ire_pkey;
       public            postgres    false    543            i           2606    29944 0   utr_indice_colocacion utr_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utr_indice_colocacion
    ADD CONSTRAINT utr_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.utr_indice_colocacion DROP CONSTRAINT utr_indice_colocacion_pkey;
       public            postgres    false    571            c           2606    29901 "   utr_indice_ptc utr_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.utr_indice_ptc
    ADD CONSTRAINT utr_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.utr_indice_ptc DROP CONSTRAINT utr_indice_ptc_pkey;
       public            postgres    false    565            W           2606    29819 .   utr_indice_servicios utr_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utr_indice_servicios
    ADD CONSTRAINT utr_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.utr_indice_servicios DROP CONSTRAINT utr_indice_servicios_pkey;
       public            postgres    false    553            [           2606    29847    utr_iseg_l utr_iseg_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utr_iseg_l
    ADD CONSTRAINT utr_iseg_l_pkey PRIMARY KEY (idisegl);
 D   ALTER TABLE ONLY public.utr_iseg_l DROP CONSTRAINT utr_iseg_l_pkey;
       public            postgres    false    557            Y           2606    29833    utr_iseg_tsu utr_iseg_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utr_iseg_tsu
    ADD CONSTRAINT utr_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 H   ALTER TABLE ONLY public.utr_iseg_tsu DROP CONSTRAINT utr_iseg_tsu_pkey;
       public            postgres    false    555            _           2606    29875    utr_isem_l utr_isem_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utr_isem_l
    ADD CONSTRAINT utr_isem_l_pkey PRIMARY KEY (idiseml);
 D   ALTER TABLE ONLY public.utr_isem_l DROP CONSTRAINT utr_isem_l_pkey;
       public            postgres    false    561            ]           2606    29861    utr_isem_tsu utr_isem_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utr_isem_tsu
    ADD CONSTRAINT utr_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 H   ALTER TABLE ONLY public.utr_isem_tsu DROP CONSTRAINT utr_isem_tsu_pkey;
       public            postgres    false    559            o           2606    29984 0   utr_tasa_acreditacion utr_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utr_tasa_acreditacion
    ADD CONSTRAINT utr_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.utr_tasa_acreditacion DROP CONSTRAINT utr_tasa_acreditacion_pkey;
       public            postgres    false    577            K           2606    29735 *   utr_tasa_cobertura utr_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utr_tasa_cobertura
    ADD CONSTRAINT utr_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.utr_tasa_cobertura DROP CONSTRAINT utr_tasa_cobertura_pkey;
       public            postgres    false    541            a           2606    29889 (   utr_tasa_docentes utr_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.utr_tasa_docentes
    ADD CONSTRAINT utr_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.utr_tasa_docentes DROP CONSTRAINT utr_tasa_docentes_pkey;
       public            postgres    false    563            k           2606    29958 .   utr_tasa_mov_alumnos utr_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.utr_tasa_mov_alumnos
    ADD CONSTRAINT utr_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.utr_tasa_mov_alumnos DROP CONSTRAINT utr_tasa_mov_alumnos_pkey;
       public            postgres    false    573            m           2606    29972 0   utr_tasa_mov_docentes utr_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utr_tasa_mov_docentes
    ADD CONSTRAINT utr_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.utr_tasa_mov_docentes DROP CONSTRAINT utr_tasa_mov_docentes_pkey;
       public            postgres    false    575            e           2606    29918 &   utr_tasa_pe_asat utr_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.utr_tasa_pe_asat
    ADD CONSTRAINT utr_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.utr_tasa_pe_asat DROP CONSTRAINT utr_tasa_pe_asat_pkey;
       public            postgres    false    567            g           2606    29930 4   utr_tasa_pe_pertinencia utr_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia
    ADD CONSTRAINT utr_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia DROP CONSTRAINT utr_tasa_pe_pertinencia_pkey;
       public            postgres    false    569            Q           2606    29777 0   utr_tasa_puntaje_egel utr_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.utr_tasa_puntaje_egel
    ADD CONSTRAINT utr_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.utr_tasa_puntaje_egel DROP CONSTRAINT utr_tasa_puntaje_egel_pkey;
       public            postgres    false    547            O           2606    29763 4   utr_tasa_puntaje_egetsu utr_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu
    ADD CONSTRAINT utr_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 ^   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu DROP CONSTRAINT utr_tasa_puntaje_egetsu_pkey;
       public            postgres    false    545            U           2606    29805 .   utr_tasa_puntaje_exl utr_tasa_puntaje_exl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utr_tasa_puntaje_exl
    ADD CONSTRAINT utr_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 X   ALTER TABLE ONLY public.utr_tasa_puntaje_exl DROP CONSTRAINT utr_tasa_puntaje_exl_pkey;
       public            postgres    false    551            S           2606    29791 2   utr_tasa_puntaje_extsu utr_tasa_puntaje_extsu_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu
    ADD CONSTRAINT utr_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 \   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu DROP CONSTRAINT utr_tasa_puntaje_extsu_pkey;
       public            postgres    false    549            �           2606    27463    utna_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4361    218    238            �           2606    27468    utna_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    218    220    4361            �           2606    27473     utna_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    218    4361    252            �           2606    27478    utna_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    4361    250    218            �           2606    27483    utna_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    218    234    4361            �           2606    27488    utna_isem_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    232    4361    218            �           2606    27493    utna_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    218    4361    222            �           2606    27498    utna_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4361    226    218            �           2606    27503    utna_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 A   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    224    218    4361            �           2606    27508    utna_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    218    4361    240            �           2606    27513    utna_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    218    230    4361            �           2606    27518    utna_iseg_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    228    218    4361            �           2606    27523    utna_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4361    218    242            �           2606    27528    utna_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4361    218    244            �           2606    27533    utna_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    236    218    4361            �           2606    27538    utna_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    4361    256    218            �           2606    27543    utna_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    218    254    4361            �           2606    27595    crena_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.crena_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    261    4401    259            �           2606    27609    crena_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.crena_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    259    263    4401            �           2606    27623    crena_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    259    265    4401            �           2606    27637    crena_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.crena_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    4401    259    267            �           2606    27651    crena_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 H   ALTER TABLE ONLY public.crena_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4401    259    269            �           2606    27665    crena_iseg carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 <   ALTER TABLE ONLY public.crena_iseg DROP CONSTRAINT carrera;
       public          postgres    false    4401    259    271            �           2606    27679    crena_isem carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 <   ALTER TABLE ONLY public.crena_isem DROP CONSTRAINT carrera;
       public          postgres    false    273    4401    259            �           2606    27693    crena_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 E   ALTER TABLE ONLY public.crena_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    259    4401    275            �           2606    27705    crena_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 B   ALTER TABLE ONLY public.crena_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    259    4401    277            �           2606    27748    crena_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    259    283    4401            �           2606    27762    crena_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 H   ALTER TABLE ONLY public.crena_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4401    285    259            �           2606    27776    crena_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    259    287    4401            �           2606    27788    crena_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    259    289    4401            �           2606    28034    enrjsm_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrjsm_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4433    291    293            �           2606    28048    enrjsm_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrjsm_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    291    295    4433            �           2606    28062     enrjsm_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    297    291    4433            �           2606    28076    enrjsm_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 I   ALTER TABLE ONLY public.enrjsm_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4433    299    291            �           2606    28090    enrjsm_iseg carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 =   ALTER TABLE ONLY public.enrjsm_iseg DROP CONSTRAINT carrera;
       public          postgres    false    4433    301    291            �           2606    28104    enrjsm_isem carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 =   ALTER TABLE ONLY public.enrjsm_isem DROP CONSTRAINT carrera;
       public          postgres    false    291    303    4433            �           2606    28118    enrjsm_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 F   ALTER TABLE ONLY public.enrjsm_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    305    4433    291            �           2606    28130    enrjsm_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 C   ALTER TABLE ONLY public.enrjsm_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    4433    291    307            �           2606    28173     enrjsm_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    291    4433    313            �           2606    28187    enrjsm_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 I   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4433    291    315            �           2606    28201     enrjsm_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    291    4433    317            �           2606    28213     enrjsm_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4433    319    291            �           2606    28227    enrjsm_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    291    321    4433            �           2606    28253    enrr_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 E   ALTER TABLE ONLY public.enrr_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4465    323    325            �           2606    28267    enrr_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 E   ALTER TABLE ONLY public.enrr_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    327    4465    323            �           2606    28281    enrr_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    329    323    4465            �           2606    28295    enrr_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrr_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    331    4465    323            �           2606    28309    enrr_iseg carrera    FK CONSTRAINT        ALTER TABLE ONLY public.enrr_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 ;   ALTER TABLE ONLY public.enrr_iseg DROP CONSTRAINT carrera;
       public          postgres    false    333    4465    323            �           2606    28323    enrr_isem carrera    FK CONSTRAINT        ALTER TABLE ONLY public.enrr_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 ;   ALTER TABLE ONLY public.enrr_isem DROP CONSTRAINT carrera;
       public          postgres    false    335    4465    323            �           2606    28337    enrr_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.enrr_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4465    337    323            �           2606    28349    enrr_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 A   ALTER TABLE ONLY public.enrr_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    339    4465    323            �           2606    28392    enrr_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    345    4465    323            �           2606    28406    enrr_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    323    347    4465            �           2606    28420    enrr_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    349    323    4465            �           2606    28432    enrr_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    351    4465    323            �           2606    28446    enrr_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    4465    323    353            �           2606    28472    ensfa_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ensfa_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4497    357    355            �           2606    28486    ensfa_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ensfa_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    359    355    4497            �           2606    28500    ensfa_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    361    355    4497            �           2606    28514    ensfa_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 H   ALTER TABLE ONLY public.ensfa_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    355    363    4497            �           2606    28528    ensfa_iseg carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 <   ALTER TABLE ONLY public.ensfa_iseg DROP CONSTRAINT carrera;
       public          postgres    false    355    365    4497            �           2606    28542    ensfa_isem carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 <   ALTER TABLE ONLY public.ensfa_isem DROP CONSTRAINT carrera;
       public          postgres    false    367    355    4497            �           2606    28556    ensfa_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 E   ALTER TABLE ONLY public.ensfa_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    369    4497    355            �           2606    28568    ensfa_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 B   ALTER TABLE ONLY public.ensfa_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    355    4497    371            �           2606    28611    ensfa_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    355    377    4497            �           2606    28625    ensfa_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 H   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    379    4497    355            �           2606    28639    ensfa_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    355    381    4497            �           2606    28651    ensfa_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    355    383    4497            �           2606    28665    ensfa_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    355    385    4497            �           2606    28691    upa_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 D   ALTER TABLE ONLY public.upa_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4529    389    387            �           2606    28705    upa_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 D   ALTER TABLE ONLY public.upa_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    387    4529    391            �           2606    28719    upa_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    4529    393    387            �           2606    28733    upa_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.upa_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4529    395    387            �           2606    28747    upa_iseg carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.upa_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 :   ALTER TABLE ONLY public.upa_iseg DROP CONSTRAINT carrera;
       public          postgres    false    397    387    4529            �           2606    28761    upa_isem carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.upa_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 :   ALTER TABLE ONLY public.upa_isem DROP CONSTRAINT carrera;
       public          postgres    false    4529    387    399            �           2606    28775    upa_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 C   ALTER TABLE ONLY public.upa_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    387    4529    401            �           2606    28787    upa_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 @   ALTER TABLE ONLY public.upa_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    387    403    4529            �           2606    28830    upa_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    4529    409    387            �           2606    28844    upa_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.upa_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    387    4529    411            �           2606    28858    upa_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    387    413    4529            �           2606    28870    upa_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    387    4529    415            �           2606    28884    upa_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 E   ALTER TABLE ONLY public.upa_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    387    417    4529            �           2606    28911    uta_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 D   ALTER TABLE ONLY public.uta_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    421    419    4561            �           2606    28925    uta_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 D   ALTER TABLE ONLY public.uta_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    4561    419    423            �           2606    28939    uta_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 I   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    425    4561    419            �           2606    28953    uta_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    4561    419    427                        2606    28967    uta_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 H   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    4561    429    419                       2606    28981    uta_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 F   ALTER TABLE ONLY public.uta_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    419    431    4561                       2606    28995    uta_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 F   ALTER TABLE ONLY public.uta_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4561    433    419                       2606    29009    uta_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 >   ALTER TABLE ONLY public.uta_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    435    419    4561                       2606    29023    uta_iseg_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.uta_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 <   ALTER TABLE ONLY public.uta_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    419    437    4561                       2606    29037    uta_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 >   ALTER TABLE ONLY public.uta_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    4561    439    419                       2606    29051    uta_isem_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.uta_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 <   ALTER TABLE ONLY public.uta_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    4561    419    441                       2606    29065    uta_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 C   ALTER TABLE ONLY public.uta_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4561    419    443                       2606    29077    uta_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 @   ALTER TABLE ONLY public.uta_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    419    4561    445                       2606    29120    uta_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    451    419    4561                       2606    29134    uta_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 F   ALTER TABLE ONLY public.uta_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    453    4561    419                       2606    29148    uta_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    419    4561    455                       2606    29160    uta_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    419    457    4561                       2606    29186    utc_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utc_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    461    4601    459                       2606    29200    utc_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utc_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    463    4601    459                       2606    29214    utc_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    465    4601    459                       2606    29228    utc_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    459    4601    467                       2606    29242    utc_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    459    469    4601                       2606    29256    utc_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utc_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    459    4601    471                       2606    29270    utc_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utc_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    473    459    4601                       2606    29284    utc_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utc_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    475    4601    459                       2606    29298    utc_iseg_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utc_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utc_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    459    4601    477                       2606    29312    utc_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utc_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    4601    459    479                       2606    29326    utc_isem_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utc_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utc_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    459    481    4601                       2606    29340    utc_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 C   ALTER TABLE ONLY public.utc_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    483    4601    459                       2606    29352    utc_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 @   ALTER TABLE ONLY public.utc_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    459    4601    485            !           2606    29395    utc_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    491    4601    459            "           2606    29409    utc_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utc_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    493    4601    459            #           2606    29423    utc_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    495    4601    459            $           2606    29435    utc_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    497    4601    459            &           2606    29461    utma_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utma_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    501    4641    499            '           2606    29475    utma_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utma_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    503    4641    499            (           2606    29489     utma_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    505    4641    499            )           2606    29503    utma_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    507    4641    499            *           2606    29517    utma_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utma_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    509    4641    499            +           2606    29531    utma_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    511    4641    499            ,           2606    29545    utma_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utma_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    513    4641    499            -           2606    29559    utma_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utma_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    515    4641    499            .           2606    29573    utma_iseg_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utma_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    517    4641    499            /           2606    29587    utma_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utma_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    519    4641    499            0           2606    29601    utma_isem_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utma_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    521    4641    499            1           2606    29615    utma_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utma_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    523    4641    499            2           2606    29627    utma_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 A   ALTER TABLE ONLY public.utma_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    525    4641    499            6           2606    29670    utma_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    499    531    4641            7           2606    29684    utma_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utma_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4641    499    533            8           2606    29698    utma_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    535    499    4641            9           2606    29710    utma_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    499    4641    537            ;           2606    29736    utr_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utr_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    539    4681    541            <           2606    29750    utr_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utr_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    539    543    4681            =           2606    29764    utr_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    4681    545    539            >           2606    29778    utr_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    539    4681    547            ?           2606    29792    utr_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    4681    539    549            @           2606    29806    utr_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utr_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    4681    551    539            A           2606    29820    utr_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utr_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    539    4681    553            B           2606    29834    utr_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utr_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    555    4681    539            C           2606    29848    utr_iseg_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utr_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utr_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    557    539    4681            D           2606    29862    utr_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utr_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    559    4681    539            E           2606    29876    utr_isem_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utr_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utr_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    539    561    4681            F           2606    29890    utr_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 C   ALTER TABLE ONLY public.utr_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4681    563    539            G           2606    29902    utr_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 @   ALTER TABLE ONLY public.utr_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    4681    539    565            K           2606    29945    utr_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    4681    571    539            L           2606    29959    utr_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utr_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4681    539    573            M           2606    29973    utr_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    575    539    4681            N           2606    29985    utr_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4681    577    539            P           2606    30012    ena_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 D   ALTER TABLE ONLY public.ena_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    581    579    4721            Q           2606    30026    ena_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 D   ALTER TABLE ONLY public.ena_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    583    579    4721            R           2606    30040    ena_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    585    4721    579            S           2606    30054    ena_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 E   ALTER TABLE ONLY public.ena_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    4721    579    587            T           2606    30068    ena_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ena_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    589    4721    579            U           2606    30082    ena_iseg carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.ena_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 :   ALTER TABLE ONLY public.ena_iseg DROP CONSTRAINT carrera;
       public          postgres    false    591    579    4721            V           2606    30096    ena_isem carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.ena_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 :   ALTER TABLE ONLY public.ena_isem DROP CONSTRAINT carrera;
       public          postgres    false    4721    579    593            W           2606    30110    ena_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 C   ALTER TABLE ONLY public.ena_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    579    4721    595            X           2606    30122    ena_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 @   ALTER TABLE ONLY public.ena_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    579    4721    597            \           2606    30165    ena_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    4721    603    579            ]           2606    30179    ena_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ena_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    579    4721    605            ^           2606    30193    ena_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    579    4721    607            _           2606    30205    ena_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    579    4721    609            �           2606    27548    utna_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utna_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    246    4361    218            �           2606    27553    utna_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    248    4361    218            �           2606    27722    crena_tasa_pe_asat pe    FK CONSTRAINT        ALTER TABLE ONLY public.crena_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.crena_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.crena_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    4401    279    259            �           2606    27734    crena_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.crena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    4401    259    281            �           2606    28147    enrjsm_tasa_pe_asat pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrjsm_carreras(idcarrera);
 @   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    4433    291    309            �           2606    28159    enrjsm_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrjsm_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    291    4433    311            �           2606    28366    enrr_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.enrr_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrr_carreras(idcarrera);
 >   ALTER TABLE ONLY public.enrr_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    341    323    4465            �           2606    28378    enrr_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrr_carreras(idcarrera);
 E   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    323    343    4465            �           2606    28585    ensfa_tasa_pe_asat pe    FK CONSTRAINT        ALTER TABLE ONLY public.ensfa_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ensfa_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.ensfa_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    373    4497    355            �           2606    28597    ensfa_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ensfa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    355    4497    375            �           2606    28804    upa_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.upa_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.upa_carreras(idcarrera);
 =   ALTER TABLE ONLY public.upa_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    405    4529    387            �           2606    28816    upa_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.upa_carreras(idcarrera);
 D   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    407    4529    387            
           2606    29094    uta_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.uta_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.uta_carreras(idcarrera);
 =   ALTER TABLE ONLY public.uta_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    4561    419    447                       2606    29106    uta_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.uta_carreras(idcarrera);
 D   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    4561    449    419                       2606    29369    utc_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.utc_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utc_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utc_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    459    487    4601                        2606    29381    utc_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utc_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    4601    489    459            4           2606    29644    utma_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.utma_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utma_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utma_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    527    4641    499            5           2606    29656    utma_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utma_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    4641    529    499            I           2606    29919    utr_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.utr_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utr_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utr_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    4681    567    539            J           2606    29931    utr_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    4681    539    569            Z           2606    30139    ena_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.ena_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ena_carreras(idcarrera);
 =   ALTER TABLE ONLY public.ena_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    599    579    4721            [           2606    30151    ena_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ena_carreras(idcarrera);
 D   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    601    4721    579            �           2606    27558     utna_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utna_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    224    218    4361            �           2606    27710 !   crena_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.crena_carreras(idcarrera);
 K   ALTER TABLE ONLY public.crena_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    259    4401    277            �           2606    28135 "   enrjsm_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.enrjsm_carreras(idcarrera);
 L   ALTER TABLE ONLY public.enrjsm_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    307    291    4433            �           2606    28354     enrr_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.enrr_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrr_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    339    323    4465            �           2606    28573 !   ensfa_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.ensfa_carreras(idcarrera);
 K   ALTER TABLE ONLY public.ensfa_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    371    355    4497            �           2606    28792    upa_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.upa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.upa_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    403    387    4529            	           2606    29082    uta_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.uta_carreras(idcarrera);
 I   ALTER TABLE ONLY public.uta_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    445    4561    419                       2606    29357    utc_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utc_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utc_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    459    485    4601            3           2606    29632     utma_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utma_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utma_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    525    4641    499            H           2606    29907    utr_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utr_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utr_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    565    4681    539            Y           2606    30127    ena_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.ena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ena_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    597    4721    579            �           2606    27563    usuarios universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT universidad;
       public          postgres    false    4357    216    214            �           2606    27568    utna_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 C   ALTER TABLE ONLY public.utna_carreras DROP CONSTRAINT universidad;
       public          postgres    false    214    218    4357            �           2606    27581    crena_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 D   ALTER TABLE ONLY public.crena_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4357    214    259            �           2606    28020    enrjsm_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 E   ALTER TABLE ONLY public.enrjsm_carreras DROP CONSTRAINT universidad;
       public          postgres    false    291    4357    214            �           2606    28239    enrr_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 C   ALTER TABLE ONLY public.enrr_carreras DROP CONSTRAINT universidad;
       public          postgres    false    323    214    4357            �           2606    28458    ensfa_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 D   ALTER TABLE ONLY public.ensfa_carreras DROP CONSTRAINT universidad;
       public          postgres    false    355    4357    214            �           2606    28677    upa_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 B   ALTER TABLE ONLY public.upa_carreras DROP CONSTRAINT universidad;
       public          postgres    false    214    387    4357            �           2606    28897    uta_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 B   ALTER TABLE ONLY public.uta_carreras DROP CONSTRAINT universidad;
       public          postgres    false    214    4357    419                       2606    29172    utc_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 B   ALTER TABLE ONLY public.utc_carreras DROP CONSTRAINT universidad;
       public          postgres    false    214    459    4357            %           2606    29447    utma_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 C   ALTER TABLE ONLY public.utma_carreras DROP CONSTRAINT universidad;
       public          postgres    false    499    4357    214            :           2606    29722    utr_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 B   ALTER TABLE ONLY public.utr_carreras DROP CONSTRAINT universidad;
       public          postgres    false    214    539    4357            O           2606    29998    ena_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 B   ALTER TABLE ONLY public.ena_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4357    579    214               V   x�3�4�tM)MNL�<�9O��� 5931�ӵ89?'�(�*1%��'395(\RZ��i�e��'�(5��.ct]��@��x���qqq ��8�            x������ � �      3      x������ � �      -      x������ � �      %      x������ � �      '      x������ � �      )      x������ � �      9      x������ � �            x������ � �      +      x������ � �      5      x������ � �      7      x������ � �      /      x������ � �      1      x������ � �      !      x������ � �      #      x������ � �      [   U   x�3��tM)MNL�<�9O�3/3931�ӵ89?'�(�*1%��'395(\RZ��i�e��%�(5��.ct]��@��x���qqq E�8d      _      x������ � �      s      x������ � �      m      x������ � �      e      x������ � �      g      x������ � �      i      x������ � �      y      x������ � �      ]      x������ � �      k      x������ � �      u      x������ � �      w      x������ � �      o      x������ � �      q      x������ � �      a      x������ � �      c      x������ � �      ;   @   x�3��tM)MNL�<�9O!�(37�(3�ӵ89?ȪJL����LN�K�L,)-J������� H9      ?      x������ � �      Q      x������ � �      K      x������ � �      C      x������ � �      E      x������ � �      G      x������ � �      W      x������ � �      =      x������ � �      I      x������ � �      S      x������ � �      U      x������ � �      M      x������ � �      O      x������ � �      A      x������ � �      Y      x������ � �      [   M   x�3�44�tM)MNL�<�9O�������DN�����Ģ̪Ĕ|N���Լ��ĒҢDN.#4=E��@��5��qqq � &      _      x������ � �      q      x������ � �      k      x������ � �      c      x������ � �      e      x������ � �      g      x������ � �      w      x������ � �      ]      x������ � �      i      x������ � �      s      x������ � �      u      x������ � �      m      x������ � �      o      x������ � �      a      x������ � �      y      x������ � �      {   �   x���=N�0��9Ŝ ����U��@lI3��hV�xe�����Xq_l��X�z���Ԫ�U#��	e@8����pO`,�#;��4"�@c�F��W��t��T���8�q�5�f�G���M8`:9[�2Jl�X�V�����b�w?[G�p4hPJݛ��\���>��3���Ie����Hk)Ư�xÞ��3_�Թ���{LcW�i�����iQ�i�UU�1$i�            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      }      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ?  x���Mn�0���)|T��%J��誛�3 K���Q]T����Mi`�����=�֫I��z��t�X��d�a���dۂS`4Z�.+Z�t����/��^C=�&���9z�����qm��F,�=�5�E��_T!�S���������|蔽��B�qA�b�V����n(6Mh��d����)�j��%�S䬚���S1k�'Qid�o:[��<�J�<�'�U�r����x摐���S��S�Zi,^�A>���h���T�Y�)�ȧ��%�&��ȅNT`}LS�Ή���Q��_���      �   �   x���=N�0Fk�>�j�� e�RDZhhiF��� ��m��؊#�bL�Y!0�����y�ٛ�p9�DL������'d�P�`�us�p?�K���_�f�ô�k�V�G�	=D{'�%'p$3ƪ������6��hG�?K����uf�1� �\E��GWN����I��u�J7_��ڭ�8��zB����8�Cv)�O�]_���=1-U~H�]~Z5M�Z���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�U��n�0����w�X9(%��ؙ4� KE
��vhRD	ZY!���z]��Jۍ�N�XN���(��O�h1�O�t��E/P���l������j�݊���Nw�d1�/��e&�&��	zb
�_}DY�-F������$���F��F�����t��=?����v�h:��"��Ǧ%�e�aΠ�w3�d�_I�������?���O�T�A<SEv.)F���F�H�����֝�?�?�c2�x�?�!�º�U�
�%�l0��2.�`�o��[bLš}���v���
���O��IN)��#�SM�5P��8-,a��p�(f7p��Y��'Jt�ɾ�٥b���%�T�TQ8إV� Q\iIL�O�GP+;z�Kw׎�j��gBφ��N~�z��L&3�!%��]�z{�(�qV���Hӡ��A��W�����4�_37���x�t5��9o�9$�B�?�      �   j  x���͎�0���S�	����$۵�TQSn\f��ʒc��Pn<�#�����D���7�{b��i���� �����?,B�t���mX���,�Q`�wh[ן�|2�'��ضW��]�oA����ʚ
g:"?�U�@��hMo�?���P��ʰk�Rƣ��1B��TG�VP�C�%�l��!̌0�F��L]�Bm���9��j/d�*��fN��Pd礀�(��K��Ӥ��"I����(A;Բ���9Q�nzRJP�LxH��+Q��4�k��w�G���r�$!�cX^S���P�~���zK���y^]>���{BV`��F
ê����GY#��K��y�MVV����ވk�c����\��J>�3�[j�꾂��z��[�$�ù�;Y@�?�W�Pg���煝ϳ��<o���/�\8��b`$�7�<���$���/񒏊�W�`=*��=��)������.J��7��4��x:
�v�������^��Q��`q�<������f��wi&;�������Aӫ��b��|�����+�j3�Ǩ�F.Í<$x�r�7��r��,�iތ�gj���Tn�򋾥Uy��.�4�~y7�L� /+F�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   r  x�}�An�0E��)r���BۥE*�DP���nF΀,9d;Tt���r�NҨ�������?S!�Z[���o�_!^�^0����r��^��?�"QobM� ��F���kL���=8G�P\a��)M~���S,���ld6�yd�xY���~�)g������hsR[5l�`D&�1眝�#������ߦ`�-��8y:��3J�B�v����n��\}q�ˣ��0���@��!�T&���nT㴯i�Q�F�"M@g!�yQ�$�c��\	�y���;�"�ԧv��E׽�,��wo�>��*4�5Z/�k��
��П�	�s��<lO�Cu�����z�ZK����e;^m�n�����(�~ ���      �      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      	      x������ � �      �      x������ � �      �      x������ � �            x������ � �            x������ � �      �      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �         i  x���AN�0EדS��RJa���ԤUvl�dZYr��v�`ǁX��vhE�D�8���x<�1d���Ri���7������,dE�³-�D#>��P�/0��8����J�g�Z��G�א�zH8����B+�,�;2eS���h���e\y�9�xY&qƇ����2�$ۨ��u�M̅u�C�*bs�Nx��["KP�
+X�8�'C���-�'!Wmv�\`��	~�ؒ�qXl�؈
�x��o�,����L�7��� ��Kt�(B�Y>x_S_������>��]5W>� ���$z���Fj0���/wAO}�"�����^<�����Y���W�����Y Ϯ#����y�����&��c�H�            x������ � �      +      x������ � �      %      x������ � �            x������ � �            x������ � �            x������ � �      !      x������ � �            x������ � �      1      x������ � �            x������ � �      #      x������ � �      -      x������ � �      /      x������ � �      '      x������ � �      )      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      �   �  x����r�0���)������@<cS&&�r�ʂь�Y�%�>J �N���q��У=�~��~��I���4�[}x2�:#�*��B��"{&��=���0(?����f�`����n@*�}�·���+�_�`�a���s���U�p2���]G^kN�0VC���0��`�C�ak�	3��w������&��]��}�F� ����1ckE�**N�4��QɁD��G %Q��[a8��s�L�Cf�zNE�Q����~��cS�b�2�.5A��'|@!�NY�7>�f��Z�6
���y���Ox/�Z��<���n��3z�%O��J�����*0=������H��^@����
�����~p��t�%:�.p�J�q�#���
������|���o|+�@� �8��oֻ���%Ngɵ��h�'�F|�֚Xk��E�b��H��m�V�������~$6�+����S&)��h�V�Y{�p���96��eM2�ͯb���F�ɴ�M��v,�ڝ��v�S>I�L�&Ι>�;�V(����8�S�`w��)������E��r��d�4Խ�nm�q3}b����a��R�_�O�I�~��n���b�U͠��(X\�C��Տ�K�h�]�8G޺��U<��|i�Z�.��      �      x������ � �      �   �  x�]�]�!��e19�������jjN&}[���<t��;�3DH�����&��Rj��-��!P���|�`�^�ᥰ#��H�`����z�mN_U:��kB��D������Ƅ�E+3������Ϩ�� K�)�8�O���c�F(Qz�Ei�:	zѵ�һHp�>+�b�U��ܟ	b�'#B����?B������tv��+EQ2NM��:h��Jَ�ODT!��>q礫��Qg
�:X�g��`��{Z?3�i��r�"Գ:@C3H����Vm�5�����R�̀I>������?�n�����	�c���q����m���a�������l�=PGh�+�I��xm a5 ���G��N�m�+p�7	if�/mO �<9n��D ҩ9�D����$���
��*��b�U�2�����XVT`�%�j��� �"���;ZB�=F�y�r�ئ3GG?y'0��b��"B԰�B��ł���Y�B4�c����4�E�df�44
g:��Q+G/���I��v��ŝ7H2��Z�j]�\D<�])"^A��WXE�+�"��ܘ͋����"\{.���������Lz�z�1�c@��⁣�;�vn8���po\�hy6���@pri�h�* b>�����
3����7��"�͗����@
MG3ݛ�e����D$�H7�*��X��T�〶�S|܁�幚~p4�w����C����D�<x_x�F#[�"��f#M��+�����1d �?%���C�$����"G�;{?��(k�GX��+���� y�ӈ��-B^��G����\M�(Rh��6���/a�`�W��L��m"^ś�Gwһ0\� qVn�3�Fb0ȓ�	�w�BԆ!# �!���J��#�c8t�ش�A��A"u<E!��A�V�xqXo� 1�1��Y�&H���l$�F_q9��!�_'��      �   
  x��Y�n��]+_���K�#�Nc+~�(1,%� �i�-��f7��T"���3�]x��w��̗̩f�vl�2�3	`$�d�S]u���nuZ��N�u*�"��PX]��X,��X+\��r���B0�'����8sE&�L΄�$g��5�D�a9>Lx*���,O��:.\n%W��ǝa�e�'��V_�̚H8����u���'3:��:7����Yy���+3cs���Jǭ5JfE"�Ƶ9-�D.s93�*����.�,	�1(�?��`i�o+8�ܚ�(�s���Sq�S�������2�X�&��V�"{l\yNo8��ݱAyf��{]h~��߂;x
8���ůQ�,4&�"/"��˔8-��4���̸<23lVw5�����`�4�*ϕ���MZ^���//3�h��t�+<��&�C�r��mc��"`T�[;���i����p���&�'� v̉T�_2�x�ё*ʋ���k�ϸ*j��Wp�(�Ц����yl�E��*/��3��1<���tl,K7�����f���k]�[�����T����?.+����D"rNp6�gq� NJC���T�e��z��ɨH׺(�'l,�D����'��tp�H��-a�s��<Ͻ[@����[�AAy��V8������@��hʗ�X�ګ1=o�T��J(�	�
z�ul؁ы�L��Kd龄#* �0��\��:�����}iE`4��,��0�U�RG!,��=e'|,�
�zP4������H�[\�gx�t�K�����zQQ��O�5�M��D.w�Q#�����)g�&\�T���j��IH��1:��Q��\�H/R_�s wk�ڛ�݊����<'?���1���p5C�i�MA6���JWxQy1AH�d�p&]�WmU_�٩��5k`t5���p^s&S�Y�U"�֔H���Tc��bG�K}N�Ĵ��H&�F��A����6������%MV͠_Y
�33a9.����p��l	�i��"��O�[�/3���#�PM��P^�-���R�G��e���ɸ�ӫ�n�ڡ��4�Hǐ+���J8�x!�ElX�G^��X&ޛc�J/�x�dau,-ω�#��o�Ə�#p�%�?��Q�:5����`y���-�LIH�ڼ�X�7"�"��4S�6���.nY*�ѵ$sH,�H��J����|`4|ǎj1e'�]��0牨�����ꝇ�o��l�먓{_�-|�sP@.ϱA�VZ2���Z ��G�
Ų)���+Jp�	��./����N�<��!�#M��*�jN�� �j6Ͽ76�M��I�M�Pn?�K���H�X��?fM�;��vh���c�I�Y�&�{2��S�|d�)�9:WM=�B%��+���~����'�ё���۵}/�Ԏ�̷%=t.1�ݭT	4x��`'s�l��(j�e�P�Bʩ���0�T�%���¡	�%����V�F/�����s�%�3h(�X��eb��H��i�;*T��~�( $l�w�Q3�\�T�Gz��K%���·���{o��o�_�O2�2L �ȇpf�BU_S	J�@���]�K�'�����*"����Z��4*-I�r2)��[�ܜ4�"_�K�qZ�~z�گ���-�h&�u�!D߹o��H������
ME�_c x|��=i��]��#t�9J�zD�9:���`�	�%i�<������_�(8�>Z?&x$���X�
�U(�K~�6��FZ�?~�g�8�q��[��G)����^[��W�kaZ8L�4�A�(eQ�5Y�4���j�C�Փ)���q��	��2��)��K���� �(�����$H>Vw���=;r�(�%����|�Aፇ��Z�:BnnIզ����.��������h�:~��l�߳?�ZhSs�W�Zݬ�#�h�4�^�5(Ph͋��O|J|��\b�}���i�����h��+�;�C����(Rlj�t���l�v$_�@�"r�܉7�_Yi<�p��b;����������/%�+���\������Fh��	Tjf���0;6��U�6Ch�� ��B�R�2{(����t��P�Z�/��|�^�r�جS��QA
xL/?ڇ�߭��0�М��2��#D������1<����R^����\�S����C����UO���(z@G�F�t�hc���ҙdZ�#d��M��bL�N�������2��6q�Z�8ຠi����B��Q3�O����z�0�s���i���5�S��v�=f��ks-}ل���}��6Ec�c�Ƅ�]_���̼Z����=\t�6C�|���?�4R�֔ODla�4ڝ!W��R�M��M�P-:�hj��fN�\п�#�Ng��lm��;	~Ӂ��s^�i8���Y������N���ԍ (Ŗ��r�
�mA�ى�Ҁ0!�i�7Yj|�}���i$�u~d]���YYPb1��䟩2�? Q���0�c����ꜞ��ۊ�5�"����������w�D��<��b����ܶA��Տf� h���������Kr;��6���E��W�_�=z��Oł�i      �      x������ � �      �   �   x�m�[��0D�a1���^��ut���^E�X�hf��]dbF�̪$x;�2�;��9�:	i߄�(
b�I]q��Q��M��9}�����b,W�:'� ,\m���t��g�J֟ɧ���vt|u�.��t52�r�+�w	C��������Z��#��԰ zPS1KW&8`Ŧ�g�{YJ�ѳ�����w؎�z2�(np-X�{�U��͙Y�      �     x�URI�![�a|��w�������/(�4!*T��lإ�5�:��.-BO�OG��_D}n�-K+C�5�IY�zNء'��0�ia]���#�9,[ˤ��؞p'�S��41� �����	θ4��N�
�JYa9G��K��S���N���6:_��YT 2�"��L��J�%���\o�tg��gVD�]��}[�{�	i��u�������
�X'��������v� ��=��k������r����$���mK!x|�$���%�X7�N�+��A�/          a   x�����0��&
nh�.��������$x��D��˥ҭr�kg���Da�6�F,�(�MR�m��$鞯<Mr��$9\�`�F���=#"^�~dT         q   x����@!��0�"��������Q#�$$'��ӷB�(U:�|U�[������'��'�����r�����9���9@˔��r����'��� A�/%��?,�r�Z���Z�	+�            x������ � �            x������ � �            x������ � �      
     x�u�Kn]7���*�������ag�ur���4.�f�ee�XI�j��\��ҡ��(�R�ę��)�_~���S1��
rI��Ě����%r����2E#�UL�s%�^��t�H��l�EK�}��f���}N�PŲ-8Y���л��i���#�p��j:F n��S���#Kz�ID��?�J<W�w��v�gaB��/߾}��}������7�&���N,�Yb��Z�#�V�^o�i5+Z��]�
�+�HX)�J3�Gp#�R�z3|Eg�ލߕVLw�8�1�e:�j�]N��f'xa�T2�%,hIv�5`�8���	&y���js����,������:�����r�Q�h��9bJ�x��Vk��4bJ�in���5�[u�/~4Gx�_л3���p��N�O�����6��9=o�E�1�N�b�����<���l��x+uS�:��m�E����=Mf}���3�bYXp�/�X���?o�E��s�A��D$�:�ưF1�������C|��
�qϟn�^A�����4����e���lo���vvOG<`�1�0���,ư�!f�.]�F�:/u�,6�Y���z�����x��@�x��AJ�2�)�X���g�KG��j�@,6��x���K�mU�R�A�f<��	�t�Y�T0?gJ#b���L�4i��A�t���?�Ɂ� `<��H_��F'fx�� ��a��ͩ&�S4g�	i��p�)��N�:N��n<�����Q�ۻ�cN��j�����Er߄֣�̴W�'�y�)-���}}��c�h��P�Մ�	���|{y����/��F>kOF}��w�6����o_�X���rs�z�J"J��5@/��}JR�i:ㄫ��9��'��@Vr��	o/	W��^-o�kV��9@$����-y��C�~�+�[�/'�ħ(�E�V`��H<�H�
|�1"C��H�y�W�q��v�����x�˻��O�f�Wv���N{�5��:�r>�A6e�b/?\������/�SY            x������ � �            x�}Rٍ1��^��!g[�뿎�7�\#�F( !����s��ayB��g�����a�5�L9Q�պ�:�L��[@�r���5�!W��ܸQ������	�xZ�2"AN��@#[9�5A��
HS���j��[:���ߑ�2���K�>���(�����>F%L� s%(c%��{*���h;���x��{��b�֣�2���l��ZTv��f��8�2�����wM���������3�w���         �   x�mR�m1{K�(廉T�� �#� �j��a��Hِ��(��ͼ���a��C��ĝ�Ţh���بOm���4L���谀ɡ��tʼ�r��J.�/��V��+�-/�$��+����üYTE�v������G�!-�j�x�3�L�`�����{-�����{H��~3n�|���� N�)���+�a��/P��YOx�/U��fl�         �   x�U��� C�M1+�ܽ��:�!$B ĳ���FD��V �7�0t�M �8�]V'�`��w+��},�'Q`���+s�4�>�������`����Iؒ n�ʦ�m#��)�Q��#혚�r�����m1)�         �   x�UP�1��a�@޻t�9j �C�t�1����&UJ^B=ہ����4�3՛�T.�/8>�WLo���p�Q;|�*N�N���V����QЛޘ$r:4q�,�?Ѡ@����x�M')�N�a]:��\Cu� |}��d�m󱖗N��]���x��a��8            x������ � �            x������ � �      3   �  x�}�MN�0���)rD���R,%ݤ���4ɱ�c��@,G�Ř4��*�Β�}3��M�T�UK������囏���Dl~�Zp^HY܉Yg��@��bYߋ���3�
s�w��"Zj�?"��_VJj9�:g��B�������'V�G4�@����0=�:�|�\Q��b�KG���PJ��0eq��I����iD��
/��B10���Hѷ�r�S���W�|l��w���5���_��"��1�5�l����| ۯ���ݻ���_��-�HO"lb�U=�������9vq���	������DGx:1�&�]-�
&,�ieZ�Z��f�w�'����GL.ǌ�*�(��O�B ��L=+�C��j���ɻ�};l��Q��I�e?rc=�      7      x������ � �      S      x������ � �      M      x������ � �      A      x������ � �      E      x������ � �      C      x������ � �      I      x������ � �      G      x������ � �      Y      x������ � �      5      x������ � �      K      x������ � �      U      x������ � �      W      x������ � �      O      x������ � �      Q      x������ � �      ;      x������ � �      9      x������ � �      ?      x������ � �      =      x������ � �     