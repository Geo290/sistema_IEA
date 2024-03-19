PGDMP     /    5                {            plan_estrategico    15.3    15.3 >   |           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            }           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ~           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    plan_estrategico    DATABASE     �   CREATE DATABASE plan_estrategico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
     DROP DATABASE plan_estrategico;
                postgres    false            �            1259    16401    crena_carreras    TABLE     �   CREATE TABLE public.crena_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 "   DROP TABLE public.crena_carreras;
       public         heap    postgres    false            �            1259    16404    crena_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.crena_carreras_idcarrera_seq;
       public          postgres    false    214            �           0    0    crena_carreras_idcarrera_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.crena_carreras_idcarrera_seq OWNED BY public.crena_carreras.idcarrera;
          public          postgres    false    215            �            1259    16405    crena_eficiencia_ire    TABLE        CREATE TABLE public.crena_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 (   DROP TABLE public.crena_eficiencia_ire;
       public         heap    postgres    false            �            1259    16410    crena_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.crena_eficiencia_ire_ideire_seq;
       public          postgres    false    216            �           0    0    crena_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.crena_eficiencia_ire_ideire_seq OWNED BY public.crena_eficiencia_ire.ideire;
          public          postgres    false    217            �            1259    16411    crena_indice_colocacion    TABLE     �   CREATE TABLE public.crena_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 +   DROP TABLE public.crena_indice_colocacion;
       public         heap    postgres    false            �            1259    16416     crena_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_indice_colocacion_idic_seq;
       public          postgres    false    218            �           0    0     crena_indice_colocacion_idic_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_indice_colocacion_idic_seq OWNED BY public.crena_indice_colocacion.idic;
          public          postgres    false    219            �            1259    16417    crena_indice_ptc    TABLE     �  CREATE TABLE public.crena_indice_ptc (
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
       public         heap    postgres    false            �            1259    16420    crena_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.crena_indice_ptc_idiptc_seq;
       public          postgres    false    220            �           0    0    crena_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.crena_indice_ptc_idiptc_seq OWNED BY public.crena_indice_ptc.idiptc;
          public          postgres    false    221            �            1259    16421    crena_indice_servicios    TABLE     �  CREATE TABLE public.crena_indice_servicios (
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
       public         heap    postgres    false            �            1259    16426    crena_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.crena_indice_servicios_idis_seq;
       public          postgres    false    222            �           0    0    crena_indice_servicios_idis_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.crena_indice_servicios_idis_seq OWNED BY public.crena_indice_servicios.idis;
          public          postgres    false    223            �            1259    16427 
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
       public         heap    postgres    false            �            1259    16432    crena_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.crena_iseg_idiseg_seq;
       public          postgres    false    224            �           0    0    crena_iseg_idiseg_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.crena_iseg_idiseg_seq OWNED BY public.crena_iseg.idiseg;
          public          postgres    false    225            �            1259    16433 
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
       public         heap    postgres    false            �            1259    16438    crena_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.crena_isem_idisem_seq;
       public          postgres    false    226            �           0    0    crena_isem_idisem_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.crena_isem_idisem_seq OWNED BY public.crena_isem.idisem;
          public          postgres    false    227            �            1259    16439    crena_tasa_acreditacion    TABLE       CREATE TABLE public.crena_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 +   DROP TABLE public.crena_tasa_acreditacion;
       public         heap    postgres    false            �            1259    16442     crena_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_acreditacion_idta_seq;
       public          postgres    false    228            �           0    0     crena_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_acreditacion_idta_seq OWNED BY public.crena_tasa_acreditacion.idta;
          public          postgres    false    229            �            1259    16443    crena_tasa_cobertura    TABLE     �   CREATE TABLE public.crena_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 (   DROP TABLE public.crena_tasa_cobertura;
       public         heap    postgres    false            �            1259    16448    crena_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.crena_tasa_cobertura_idtc_seq;
       public          postgres    false    230            �           0    0    crena_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.crena_tasa_cobertura_idtc_seq OWNED BY public.crena_tasa_cobertura.idtc;
          public          postgres    false    231            �            1259    16449    crena_tasa_docentes    TABLE     �   CREATE TABLE public.crena_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 '   DROP TABLE public.crena_tasa_docentes;
       public         heap    postgres    false            �            1259    16454    crena_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.crena_tasa_docentes_idtd_seq;
       public          postgres    false    232            �           0    0    crena_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.crena_tasa_docentes_idtd_seq OWNED BY public.crena_tasa_docentes.idtd;
          public          postgres    false    233            �            1259    16455    crena_tasa_mov_alumnos    TABLE       CREATE TABLE public.crena_tasa_mov_alumnos (
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
       public         heap    postgres    false            �            1259    16460     crena_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    234            �           0    0     crena_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_mov_alumnos_idtma_seq OWNED BY public.crena_tasa_mov_alumnos.idtma;
          public          postgres    false    235            �            1259    16461    crena_tasa_mov_docentes    TABLE       CREATE TABLE public.crena_tasa_mov_docentes (
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
       public         heap    postgres    false            �            1259    16466 !   crena_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.crena_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    236            �           0    0 !   crena_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.crena_tasa_mov_docentes_idtmd_seq OWNED BY public.crena_tasa_mov_docentes.idtmd;
          public          postgres    false    237            �            1259    16467    crena_tasa_pe_asat    TABLE     �   CREATE TABLE public.crena_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 &   DROP TABLE public.crena_tasa_pe_asat;
       public         heap    postgres    false            �            1259    16470     crena_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    238            �           0    0     crena_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_pe_asat_idtpeasat_seq OWNED BY public.crena_tasa_pe_asat.idtpeasat;
          public          postgres    false    239            �            1259    16471    crena_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.crena_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 -   DROP TABLE public.crena_tasa_pe_pertinencia;
       public         heap    postgres    false            �            1259    16474 $   crena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.crena_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    240            �           0    0 $   crena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.crena_tasa_pe_pertinencia_idtpep_seq OWNED BY public.crena_tasa_pe_pertinencia.idtpep;
          public          postgres    false    241            �            1259    16475    crena_tasa_puntaje_egel    TABLE     @  CREATE TABLE public.crena_tasa_puntaje_egel (
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
       public         heap    postgres    false            �            1259    16480 $   crena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.crena_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    242            �           0    0 $   crena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.crena_tasa_puntaje_egel_idtpegel_seq OWNED BY public.crena_tasa_puntaje_egel.idtpegel;
          public          postgres    false    243            �            1259    16481    crena_tasa_puntaje_ex    TABLE     <  CREATE TABLE public.crena_tasa_puntaje_ex (
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
       public         heap    postgres    false            �            1259    16486     crena_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    244            �           0    0     crena_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_puntaje_ex_idtpex_seq OWNED BY public.crena_tasa_puntaje_ex.idtpex;
          public          postgres    false    245            �            1259    16487    ena_carreras    TABLE     �   CREATE TABLE public.ena_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.ena_carreras;
       public         heap    postgres    false            �            1259    16490    ena_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ena_carreras_idcarrera_seq;
       public          postgres    false    246            �           0    0    ena_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ena_carreras_idcarrera_seq OWNED BY public.ena_carreras.idcarrera;
          public          postgres    false    247            �            1259    16491    ena_eficiencia_ire    TABLE     �   CREATE TABLE public.ena_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.ena_eficiencia_ire;
       public         heap    postgres    false            �            1259    16496    ena_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ena_eficiencia_ire_ideire_seq;
       public          postgres    false    248            �           0    0    ena_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ena_eficiencia_ire_ideire_seq OWNED BY public.ena_eficiencia_ire.ideire;
          public          postgres    false    249            �            1259    16497    ena_indice_colocacion    TABLE     �   CREATE TABLE public.ena_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.ena_indice_colocacion;
       public         heap    postgres    false            �            1259    16502    ena_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_indice_colocacion_idic_seq;
       public          postgres    false    250            �           0    0    ena_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_indice_colocacion_idic_seq OWNED BY public.ena_indice_colocacion.idic;
          public          postgres    false    251            �            1259    16503    ena_indice_ptc    TABLE     �  CREATE TABLE public.ena_indice_ptc (
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
       public         heap    postgres    false            �            1259    16506    ena_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ena_indice_ptc_idiptc_seq;
       public          postgres    false    252            �           0    0    ena_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ena_indice_ptc_idiptc_seq OWNED BY public.ena_indice_ptc.idiptc;
          public          postgres    false    253            �            1259    16507    ena_indice_servicios    TABLE     �  CREATE TABLE public.ena_indice_servicios (
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
       public         heap    postgres    false            �            1259    16512    ena_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ena_indice_servicios_idis_seq;
       public          postgres    false    254            �           0    0    ena_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ena_indice_servicios_idis_seq OWNED BY public.ena_indice_servicios.idis;
          public          postgres    false    255                        1259    16513    ena_iseg    TABLE     �  CREATE TABLE public.ena_iseg (
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
       public         heap    postgres    false                       1259    16518    ena_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ena_iseg_idiseg_seq;
       public          postgres    false    256            �           0    0    ena_iseg_idiseg_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ena_iseg_idiseg_seq OWNED BY public.ena_iseg.idiseg;
          public          postgres    false    257                       1259    16519    ena_isem    TABLE     _  CREATE TABLE public.ena_isem (
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
       public         heap    postgres    false                       1259    16524    ena_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ena_isem_idisem_seq;
       public          postgres    false    258            �           0    0    ena_isem_idisem_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ena_isem_idisem_seq OWNED BY public.ena_isem.idisem;
          public          postgres    false    259                       1259    16525    ena_tasa_acreditacion    TABLE     �   CREATE TABLE public.ena_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.ena_tasa_acreditacion;
       public         heap    postgres    false                       1259    16528    ena_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_acreditacion_idta_seq;
       public          postgres    false    260            �           0    0    ena_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_acreditacion_idta_seq OWNED BY public.ena_tasa_acreditacion.idta;
          public          postgres    false    261                       1259    16529    ena_tasa_cobertura    TABLE     �   CREATE TABLE public.ena_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.ena_tasa_cobertura;
       public         heap    postgres    false                       1259    16534    ena_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ena_tasa_cobertura_idtc_seq;
       public          postgres    false    262            �           0    0    ena_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ena_tasa_cobertura_idtc_seq OWNED BY public.ena_tasa_cobertura.idtc;
          public          postgres    false    263                       1259    16535    ena_tasa_docentes    TABLE     �   CREATE TABLE public.ena_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.ena_tasa_docentes;
       public         heap    postgres    false            	           1259    16540    ena_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ena_tasa_docentes_idtd_seq;
       public          postgres    false    264            �           0    0    ena_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ena_tasa_docentes_idtd_seq OWNED BY public.ena_tasa_docentes.idtd;
          public          postgres    false    265            
           1259    16541    ena_tasa_mov_alumnos    TABLE       CREATE TABLE public.ena_tasa_mov_alumnos (
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
       public         heap    postgres    false                       1259    16546    ena_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    266            �           0    0    ena_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_mov_alumnos_idtma_seq OWNED BY public.ena_tasa_mov_alumnos.idtma;
          public          postgres    false    267                       1259    16547    ena_tasa_mov_docentes    TABLE       CREATE TABLE public.ena_tasa_mov_docentes (
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
       public         heap    postgres    false                       1259    16552    ena_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ena_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    268            �           0    0    ena_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ena_tasa_mov_docentes_idtmd_seq OWNED BY public.ena_tasa_mov_docentes.idtmd;
          public          postgres    false    269                       1259    16553    ena_tasa_pe_asat    TABLE     �   CREATE TABLE public.ena_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.ena_tasa_pe_asat;
       public         heap    postgres    false                       1259    16556    ena_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    270            �           0    0    ena_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_pe_asat_idtpeasat_seq OWNED BY public.ena_tasa_pe_asat.idtpeasat;
          public          postgres    false    271                       1259    16557    ena_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.ena_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.ena_tasa_pe_pertinencia;
       public         heap    postgres    false                       1259    16560 "   ena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ena_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    272            �           0    0 "   ena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ena_tasa_pe_pertinencia_idtpep_seq OWNED BY public.ena_tasa_pe_pertinencia.idtpep;
          public          postgres    false    273                       1259    16561    ena_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.ena_tasa_puntaje_egel (
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
       public         heap    postgres    false                       1259    16566 "   ena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ena_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    274            �           0    0 "   ena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ena_tasa_puntaje_egel_idtpegel_seq OWNED BY public.ena_tasa_puntaje_egel.idtpegel;
          public          postgres    false    275                       1259    16567    ena_tasa_puntaje_ex    TABLE     :  CREATE TABLE public.ena_tasa_puntaje_ex (
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
       public         heap    postgres    false                       1259    16572    ena_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    276            �           0    0    ena_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_puntaje_ex_idtpex_seq OWNED BY public.ena_tasa_puntaje_ex.idtpex;
          public          postgres    false    277                       1259    16573    enrjsm_carreras    TABLE     �   CREATE TABLE public.enrjsm_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 #   DROP TABLE public.enrjsm_carreras;
       public         heap    postgres    false                       1259    16576    enrjsm_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.enrjsm_carreras_idcarrera_seq;
       public          postgres    false    278            �           0    0    enrjsm_carreras_idcarrera_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.enrjsm_carreras_idcarrera_seq OWNED BY public.enrjsm_carreras.idcarrera;
          public          postgres    false    279                       1259    16577    enrjsm_eficiencia_ire    TABLE       CREATE TABLE public.enrjsm_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 )   DROP TABLE public.enrjsm_eficiencia_ire;
       public         heap    postgres    false                       1259    16582     enrjsm_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.enrjsm_eficiencia_ire_ideire_seq;
       public          postgres    false    280            �           0    0     enrjsm_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.enrjsm_eficiencia_ire_ideire_seq OWNED BY public.enrjsm_eficiencia_ire.ideire;
          public          postgres    false    281                       1259    16583    enrjsm_indice_colocacion    TABLE     �   CREATE TABLE public.enrjsm_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 ,   DROP TABLE public.enrjsm_indice_colocacion;
       public         heap    postgres    false                       1259    16588 !   enrjsm_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_indice_colocacion_idic_seq;
       public          postgres    false    282            �           0    0 !   enrjsm_indice_colocacion_idic_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_indice_colocacion_idic_seq OWNED BY public.enrjsm_indice_colocacion.idic;
          public          postgres    false    283                       1259    16589    enrjsm_indice_ptc    TABLE     �  CREATE TABLE public.enrjsm_indice_ptc (
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
       public         heap    postgres    false                       1259    16592    enrjsm_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.enrjsm_indice_ptc_idiptc_seq;
       public          postgres    false    284            �           0    0    enrjsm_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.enrjsm_indice_ptc_idiptc_seq OWNED BY public.enrjsm_indice_ptc.idiptc;
          public          postgres    false    285                       1259    16593    enrjsm_indice_servicios    TABLE     �  CREATE TABLE public.enrjsm_indice_servicios (
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
       public         heap    postgres    false                       1259    16598     enrjsm_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.enrjsm_indice_servicios_idis_seq;
       public          postgres    false    286            �           0    0     enrjsm_indice_servicios_idis_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.enrjsm_indice_servicios_idis_seq OWNED BY public.enrjsm_indice_servicios.idis;
          public          postgres    false    287                        1259    16599    enrjsm_iseg    TABLE     �  CREATE TABLE public.enrjsm_iseg (
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
       public         heap    postgres    false            !           1259    16604    enrjsm_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.enrjsm_iseg_idiseg_seq;
       public          postgres    false    288            �           0    0    enrjsm_iseg_idiseg_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.enrjsm_iseg_idiseg_seq OWNED BY public.enrjsm_iseg.idiseg;
          public          postgres    false    289            "           1259    16605    enrjsm_isem    TABLE     b  CREATE TABLE public.enrjsm_isem (
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
       public         heap    postgres    false            #           1259    16610    enrjsm_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.enrjsm_isem_idisem_seq;
       public          postgres    false    290            �           0    0    enrjsm_isem_idisem_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.enrjsm_isem_idisem_seq OWNED BY public.enrjsm_isem.idisem;
          public          postgres    false    291            $           1259    16611    enrjsm_tasa_acreditacion    TABLE       CREATE TABLE public.enrjsm_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 ,   DROP TABLE public.enrjsm_tasa_acreditacion;
       public         heap    postgres    false            %           1259    16614 !   enrjsm_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_acreditacion_idta_seq;
       public          postgres    false    292            �           0    0 !   enrjsm_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_acreditacion_idta_seq OWNED BY public.enrjsm_tasa_acreditacion.idta;
          public          postgres    false    293            &           1259    16615    enrjsm_tasa_cobertura    TABLE     �   CREATE TABLE public.enrjsm_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 )   DROP TABLE public.enrjsm_tasa_cobertura;
       public         heap    postgres    false            '           1259    16620    enrjsm_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.enrjsm_tasa_cobertura_idtc_seq;
       public          postgres    false    294            �           0    0    enrjsm_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.enrjsm_tasa_cobertura_idtc_seq OWNED BY public.enrjsm_tasa_cobertura.idtc;
          public          postgres    false    295            (           1259    16621    enrjsm_tasa_docentes    TABLE     �   CREATE TABLE public.enrjsm_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 (   DROP TABLE public.enrjsm_tasa_docentes;
       public         heap    postgres    false            )           1259    16626    enrjsm_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.enrjsm_tasa_docentes_idtd_seq;
       public          postgres    false    296            �           0    0    enrjsm_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.enrjsm_tasa_docentes_idtd_seq OWNED BY public.enrjsm_tasa_docentes.idtd;
          public          postgres    false    297            *           1259    16627    enrjsm_tasa_mov_alumnos    TABLE       CREATE TABLE public.enrjsm_tasa_mov_alumnos (
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
       public         heap    postgres    false            +           1259    16632 !   enrjsm_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    298            �           0    0 !   enrjsm_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_mov_alumnos_idtma_seq OWNED BY public.enrjsm_tasa_mov_alumnos.idtma;
          public          postgres    false    299            ,           1259    16633    enrjsm_tasa_mov_docentes    TABLE       CREATE TABLE public.enrjsm_tasa_mov_docentes (
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
       public         heap    postgres    false            -           1259    16638 "   enrjsm_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.enrjsm_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    300            �           0    0 "   enrjsm_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.enrjsm_tasa_mov_docentes_idtmd_seq OWNED BY public.enrjsm_tasa_mov_docentes.idtmd;
          public          postgres    false    301            .           1259    16639    enrjsm_tasa_pe_asat    TABLE     �   CREATE TABLE public.enrjsm_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 '   DROP TABLE public.enrjsm_tasa_pe_asat;
       public         heap    postgres    false            /           1259    16642 !   enrjsm_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    302            �           0    0 !   enrjsm_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_pe_asat_idtpeasat_seq OWNED BY public.enrjsm_tasa_pe_asat.idtpeasat;
          public          postgres    false    303            0           1259    16643    enrjsm_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.enrjsm_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 .   DROP TABLE public.enrjsm_tasa_pe_pertinencia;
       public         heap    postgres    false            1           1259    16646 %   enrjsm_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.enrjsm_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    304            �           0    0 %   enrjsm_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.enrjsm_tasa_pe_pertinencia_idtpep_seq OWNED BY public.enrjsm_tasa_pe_pertinencia.idtpep;
          public          postgres    false    305            2           1259    16647    enrjsm_tasa_puntaje_egel    TABLE     A  CREATE TABLE public.enrjsm_tasa_puntaje_egel (
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
       public         heap    postgres    false            3           1259    16652 %   enrjsm_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.enrjsm_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    306            �           0    0 %   enrjsm_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.enrjsm_tasa_puntaje_egel_idtpegel_seq OWNED BY public.enrjsm_tasa_puntaje_egel.idtpegel;
          public          postgres    false    307            4           1259    16653    enrjsm_tasa_puntaje_ex    TABLE     =  CREATE TABLE public.enrjsm_tasa_puntaje_ex (
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
       public         heap    postgres    false            5           1259    16658 !   enrjsm_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    308            �           0    0 !   enrjsm_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_puntaje_ex_idtpex_seq OWNED BY public.enrjsm_tasa_puntaje_ex.idtpex;
          public          postgres    false    309            6           1259    16659    enrr_carreras    TABLE     �   CREATE TABLE public.enrr_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 !   DROP TABLE public.enrr_carreras;
       public         heap    postgres    false            7           1259    16662    enrr_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.enrr_carreras_idcarrera_seq;
       public          postgres    false    310            �           0    0    enrr_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.enrr_carreras_idcarrera_seq OWNED BY public.enrr_carreras.idcarrera;
          public          postgres    false    311            8           1259    16663    enrr_eficiencia_ire    TABLE     �   CREATE TABLE public.enrr_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.enrr_eficiencia_ire;
       public         heap    postgres    false            9           1259    16668    enrr_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.enrr_eficiencia_ire_ideire_seq;
       public          postgres    false    312            �           0    0    enrr_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.enrr_eficiencia_ire_ideire_seq OWNED BY public.enrr_eficiencia_ire.ideire;
          public          postgres    false    313            :           1259    16669    enrr_indice_colocacion    TABLE     �   CREATE TABLE public.enrr_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.enrr_indice_colocacion;
       public         heap    postgres    false            ;           1259    16674    enrr_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_indice_colocacion_idic_seq;
       public          postgres    false    314            �           0    0    enrr_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_indice_colocacion_idic_seq OWNED BY public.enrr_indice_colocacion.idic;
          public          postgres    false    315            <           1259    16675    enrr_indice_ptc    TABLE     �  CREATE TABLE public.enrr_indice_ptc (
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
       public         heap    postgres    false            =           1259    16678    enrr_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.enrr_indice_ptc_idiptc_seq;
       public          postgres    false    316            �           0    0    enrr_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.enrr_indice_ptc_idiptc_seq OWNED BY public.enrr_indice_ptc.idiptc;
          public          postgres    false    317            >           1259    16679    enrr_indice_servicios    TABLE     �  CREATE TABLE public.enrr_indice_servicios (
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
       public         heap    postgres    false            ?           1259    16684    enrr_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.enrr_indice_servicios_idis_seq;
       public          postgres    false    318            �           0    0    enrr_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.enrr_indice_servicios_idis_seq OWNED BY public.enrr_indice_servicios.idis;
          public          postgres    false    319            @           1259    16685 	   enrr_iseg    TABLE     �  CREATE TABLE public.enrr_iseg (
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
       public         heap    postgres    false            A           1259    16690    enrr_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.enrr_iseg_idiseg_seq;
       public          postgres    false    320            �           0    0    enrr_iseg_idiseg_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.enrr_iseg_idiseg_seq OWNED BY public.enrr_iseg.idiseg;
          public          postgres    false    321            B           1259    16691 	   enrr_isem    TABLE     `  CREATE TABLE public.enrr_isem (
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
       public         heap    postgres    false            C           1259    16696    enrr_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.enrr_isem_idisem_seq;
       public          postgres    false    322            �           0    0    enrr_isem_idisem_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.enrr_isem_idisem_seq OWNED BY public.enrr_isem.idisem;
          public          postgres    false    323            D           1259    16697    enrr_tasa_acreditacion    TABLE        CREATE TABLE public.enrr_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.enrr_tasa_acreditacion;
       public         heap    postgres    false            E           1259    16700    enrr_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_acreditacion_idta_seq;
       public          postgres    false    324            �           0    0    enrr_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_acreditacion_idta_seq OWNED BY public.enrr_tasa_acreditacion.idta;
          public          postgres    false    325            F           1259    16701    enrr_tasa_cobertura    TABLE     �   CREATE TABLE public.enrr_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.enrr_tasa_cobertura;
       public         heap    postgres    false            G           1259    16706    enrr_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.enrr_tasa_cobertura_idtc_seq;
       public          postgres    false    326            �           0    0    enrr_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.enrr_tasa_cobertura_idtc_seq OWNED BY public.enrr_tasa_cobertura.idtc;
          public          postgres    false    327            H           1259    16707    enrr_tasa_docentes    TABLE     �   CREATE TABLE public.enrr_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.enrr_tasa_docentes;
       public         heap    postgres    false            I           1259    16712    enrr_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.enrr_tasa_docentes_idtd_seq;
       public          postgres    false    328            �           0    0    enrr_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.enrr_tasa_docentes_idtd_seq OWNED BY public.enrr_tasa_docentes.idtd;
          public          postgres    false    329            J           1259    16713    enrr_tasa_mov_alumnos    TABLE       CREATE TABLE public.enrr_tasa_mov_alumnos (
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
       public         heap    postgres    false            K           1259    16718    enrr_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    330            �           0    0    enrr_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_mov_alumnos_idtma_seq OWNED BY public.enrr_tasa_mov_alumnos.idtma;
          public          postgres    false    331            L           1259    16719    enrr_tasa_mov_docentes    TABLE       CREATE TABLE public.enrr_tasa_mov_docentes (
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
       public         heap    postgres    false            M           1259    16724     enrr_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.enrr_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    332            �           0    0     enrr_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.enrr_tasa_mov_docentes_idtmd_seq OWNED BY public.enrr_tasa_mov_docentes.idtmd;
          public          postgres    false    333            N           1259    16725    enrr_tasa_pe_asat    TABLE     �   CREATE TABLE public.enrr_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.enrr_tasa_pe_asat;
       public         heap    postgres    false            O           1259    16728    enrr_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    334            �           0    0    enrr_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_pe_asat_idtpeasat_seq OWNED BY public.enrr_tasa_pe_asat.idtpeasat;
          public          postgres    false    335            P           1259    16729    enrr_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.enrr_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.enrr_tasa_pe_pertinencia;
       public         heap    postgres    false            Q           1259    16732 #   enrr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.enrr_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    336            �           0    0 #   enrr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.enrr_tasa_pe_pertinencia_idtpep_seq OWNED BY public.enrr_tasa_pe_pertinencia.idtpep;
          public          postgres    false    337            R           1259    16733    enrr_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.enrr_tasa_puntaje_egel (
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
       public         heap    postgres    false            S           1259    16738 #   enrr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.enrr_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    338            �           0    0 #   enrr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.enrr_tasa_puntaje_egel_idtpegel_seq OWNED BY public.enrr_tasa_puntaje_egel.idtpegel;
          public          postgres    false    339            T           1259    16739    enrr_tasa_puntaje_ex    TABLE     ;  CREATE TABLE public.enrr_tasa_puntaje_ex (
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
       public         heap    postgres    false            U           1259    16744    enrr_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    340            �           0    0    enrr_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_puntaje_ex_idtpex_seq OWNED BY public.enrr_tasa_puntaje_ex.idtpex;
          public          postgres    false    341            V           1259    16745    ensfa_carreras    TABLE     �   CREATE TABLE public.ensfa_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 "   DROP TABLE public.ensfa_carreras;
       public         heap    postgres    false            W           1259    16748    ensfa_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ensfa_carreras_idcarrera_seq;
       public          postgres    false    342            �           0    0    ensfa_carreras_idcarrera_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ensfa_carreras_idcarrera_seq OWNED BY public.ensfa_carreras.idcarrera;
          public          postgres    false    343            X           1259    16749    ensfa_eficiencia_ire    TABLE        CREATE TABLE public.ensfa_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 (   DROP TABLE public.ensfa_eficiencia_ire;
       public         heap    postgres    false            Y           1259    16754    ensfa_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ensfa_eficiencia_ire_ideire_seq;
       public          postgres    false    344            �           0    0    ensfa_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ensfa_eficiencia_ire_ideire_seq OWNED BY public.ensfa_eficiencia_ire.ideire;
          public          postgres    false    345            Z           1259    16755    ensfa_indice_colocacion    TABLE     �   CREATE TABLE public.ensfa_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 +   DROP TABLE public.ensfa_indice_colocacion;
       public         heap    postgres    false            [           1259    16760     ensfa_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_indice_colocacion_idic_seq;
       public          postgres    false    346            �           0    0     ensfa_indice_colocacion_idic_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_indice_colocacion_idic_seq OWNED BY public.ensfa_indice_colocacion.idic;
          public          postgres    false    347            \           1259    16761    ensfa_indice_ptc    TABLE     �  CREATE TABLE public.ensfa_indice_ptc (
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
       public         heap    postgres    false            ]           1259    16764    ensfa_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ensfa_indice_ptc_idiptc_seq;
       public          postgres    false    348            �           0    0    ensfa_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ensfa_indice_ptc_idiptc_seq OWNED BY public.ensfa_indice_ptc.idiptc;
          public          postgres    false    349            ^           1259    16765    ensfa_indice_servicios    TABLE     �  CREATE TABLE public.ensfa_indice_servicios (
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
       public         heap    postgres    false            _           1259    16770    ensfa_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ensfa_indice_servicios_idis_seq;
       public          postgres    false    350            �           0    0    ensfa_indice_servicios_idis_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ensfa_indice_servicios_idis_seq OWNED BY public.ensfa_indice_servicios.idis;
          public          postgres    false    351            `           1259    16771 
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
       public         heap    postgres    false            a           1259    16776    ensfa_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ensfa_iseg_idiseg_seq;
       public          postgres    false    352            �           0    0    ensfa_iseg_idiseg_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ensfa_iseg_idiseg_seq OWNED BY public.ensfa_iseg.idiseg;
          public          postgres    false    353            b           1259    16777 
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
       public         heap    postgres    false            c           1259    16782    ensfa_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ensfa_isem_idisem_seq;
       public          postgres    false    354            �           0    0    ensfa_isem_idisem_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ensfa_isem_idisem_seq OWNED BY public.ensfa_isem.idisem;
          public          postgres    false    355            d           1259    16783    ensfa_tasa_acreditacion    TABLE       CREATE TABLE public.ensfa_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 +   DROP TABLE public.ensfa_tasa_acreditacion;
       public         heap    postgres    false            e           1259    16786     ensfa_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_acreditacion_idta_seq;
       public          postgres    false    356            �           0    0     ensfa_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_acreditacion_idta_seq OWNED BY public.ensfa_tasa_acreditacion.idta;
          public          postgres    false    357            f           1259    16787    ensfa_tasa_cobertura    TABLE     �   CREATE TABLE public.ensfa_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 (   DROP TABLE public.ensfa_tasa_cobertura;
       public         heap    postgres    false            g           1259    16792    ensfa_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ensfa_tasa_cobertura_idtc_seq;
       public          postgres    false    358            �           0    0    ensfa_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ensfa_tasa_cobertura_idtc_seq OWNED BY public.ensfa_tasa_cobertura.idtc;
          public          postgres    false    359            h           1259    16793    ensfa_tasa_docentes    TABLE     �   CREATE TABLE public.ensfa_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 '   DROP TABLE public.ensfa_tasa_docentes;
       public         heap    postgres    false            i           1259    16798    ensfa_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ensfa_tasa_docentes_idtd_seq;
       public          postgres    false    360            �           0    0    ensfa_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ensfa_tasa_docentes_idtd_seq OWNED BY public.ensfa_tasa_docentes.idtd;
          public          postgres    false    361            j           1259    16799    ensfa_tasa_mov_alumnos    TABLE       CREATE TABLE public.ensfa_tasa_mov_alumnos (
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
       public         heap    postgres    false            k           1259    16804     ensfa_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    362            �           0    0     ensfa_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_mov_alumnos_idtma_seq OWNED BY public.ensfa_tasa_mov_alumnos.idtma;
          public          postgres    false    363            l           1259    16805    ensfa_tasa_mov_docentes    TABLE       CREATE TABLE public.ensfa_tasa_mov_docentes (
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
       public         heap    postgres    false            m           1259    16810 !   ensfa_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.ensfa_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    364            �           0    0 !   ensfa_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.ensfa_tasa_mov_docentes_idtmd_seq OWNED BY public.ensfa_tasa_mov_docentes.idtmd;
          public          postgres    false    365            n           1259    16811    ensfa_tasa_pe_asat    TABLE     �   CREATE TABLE public.ensfa_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 &   DROP TABLE public.ensfa_tasa_pe_asat;
       public         heap    postgres    false            o           1259    16814     ensfa_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    366            �           0    0     ensfa_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_pe_asat_idtpeasat_seq OWNED BY public.ensfa_tasa_pe_asat.idtpeasat;
          public          postgres    false    367            p           1259    16815    ensfa_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.ensfa_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 -   DROP TABLE public.ensfa_tasa_pe_pertinencia;
       public         heap    postgres    false            q           1259    16818 $   ensfa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.ensfa_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    368            �           0    0 $   ensfa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.ensfa_tasa_pe_pertinencia_idtpep_seq OWNED BY public.ensfa_tasa_pe_pertinencia.idtpep;
          public          postgres    false    369            r           1259    16819    ensfa_tasa_puntaje_egel    TABLE     @  CREATE TABLE public.ensfa_tasa_puntaje_egel (
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
       public         heap    postgres    false            s           1259    16824 $   ensfa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.ensfa_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    370            �           0    0 $   ensfa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.ensfa_tasa_puntaje_egel_idtpegel_seq OWNED BY public.ensfa_tasa_puntaje_egel.idtpegel;
          public          postgres    false    371            t           1259    16825    ensfa_tasa_puntaje_ex    TABLE     <  CREATE TABLE public.ensfa_tasa_puntaje_ex (
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
       public         heap    postgres    false            u           1259    16830     ensfa_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    372            �           0    0     ensfa_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_puntaje_ex_idtpex_seq OWNED BY public.ensfa_tasa_puntaje_ex.idtpex;
          public          postgres    false    373            v           1259    16831    universidades    TABLE     �   CREATE TABLE public.universidades (
    iduniversidad integer NOT NULL,
    abreviacion character varying(10),
    nombre character varying(100),
    plan_estudios character varying(15)
);
 !   DROP TABLE public.universidades;
       public         heap    postgres    false            w           1259    16834    universidades_iduniversidad_seq    SEQUENCE     �   CREATE SEQUENCE public.universidades_iduniversidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.universidades_iduniversidad_seq;
       public          postgres    false    374            �           0    0    universidades_iduniversidad_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.universidades_iduniversidad_seq OWNED BY public.universidades.iduniversidad;
          public          postgres    false    375            x           1259    16835    upa_carreras    TABLE     �   CREATE TABLE public.upa_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.upa_carreras;
       public         heap    postgres    false            y           1259    16838    upa_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.upa_carreras_idcarrera_seq;
       public          postgres    false    376            �           0    0    upa_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.upa_carreras_idcarrera_seq OWNED BY public.upa_carreras.idcarrera;
          public          postgres    false    377            z           1259    16839    upa_eficiencia_ire    TABLE     �   CREATE TABLE public.upa_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.upa_eficiencia_ire;
       public         heap    postgres    false            {           1259    16844    upa_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.upa_eficiencia_ire_ideire_seq;
       public          postgres    false    378            �           0    0    upa_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.upa_eficiencia_ire_ideire_seq OWNED BY public.upa_eficiencia_ire.ideire;
          public          postgres    false    379            |           1259    16845    upa_indice_colocacion    TABLE     �   CREATE TABLE public.upa_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.upa_indice_colocacion;
       public         heap    postgres    false            }           1259    16850    upa_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_indice_colocacion_idic_seq;
       public          postgres    false    380            �           0    0    upa_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_indice_colocacion_idic_seq OWNED BY public.upa_indice_colocacion.idic;
          public          postgres    false    381            ~           1259    16851    upa_indice_ptc    TABLE     �  CREATE TABLE public.upa_indice_ptc (
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
       public         heap    postgres    false                       1259    16854    upa_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.upa_indice_ptc_idiptc_seq;
       public          postgres    false    382            �           0    0    upa_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.upa_indice_ptc_idiptc_seq OWNED BY public.upa_indice_ptc.idiptc;
          public          postgres    false    383            �           1259    16855    upa_indice_servicios    TABLE     �  CREATE TABLE public.upa_indice_servicios (
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
       public         heap    postgres    false            �           1259    16860    upa_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.upa_indice_servicios_idis_seq;
       public          postgres    false    384            �           0    0    upa_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.upa_indice_servicios_idis_seq OWNED BY public.upa_indice_servicios.idis;
          public          postgres    false    385            �           1259    16861    upa_iseg    TABLE     �  CREATE TABLE public.upa_iseg (
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
       public         heap    postgres    false            �           1259    16866    upa_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.upa_iseg_idiseg_seq;
       public          postgres    false    386            �           0    0    upa_iseg_idiseg_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.upa_iseg_idiseg_seq OWNED BY public.upa_iseg.idiseg;
          public          postgres    false    387            �           1259    16867    upa_isem    TABLE     _  CREATE TABLE public.upa_isem (
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
       public         heap    postgres    false            �           1259    16872    upa_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.upa_isem_idisem_seq;
       public          postgres    false    388            �           0    0    upa_isem_idisem_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.upa_isem_idisem_seq OWNED BY public.upa_isem.idisem;
          public          postgres    false    389            �           1259    16873    upa_tasa_acreditacion    TABLE     �   CREATE TABLE public.upa_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.upa_tasa_acreditacion;
       public         heap    postgres    false            �           1259    16876    upa_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_acreditacion_idta_seq;
       public          postgres    false    390            �           0    0    upa_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_acreditacion_idta_seq OWNED BY public.upa_tasa_acreditacion.idta;
          public          postgres    false    391            �           1259    16877    upa_tasa_cobertura    TABLE     �   CREATE TABLE public.upa_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.upa_tasa_cobertura;
       public         heap    postgres    false            �           1259    16882    upa_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.upa_tasa_cobertura_idtc_seq;
       public          postgres    false    392            �           0    0    upa_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.upa_tasa_cobertura_idtc_seq OWNED BY public.upa_tasa_cobertura.idtc;
          public          postgres    false    393            �           1259    16883    upa_tasa_docentes    TABLE     �   CREATE TABLE public.upa_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.upa_tasa_docentes;
       public         heap    postgres    false            �           1259    16888    upa_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.upa_tasa_docentes_idtd_seq;
       public          postgres    false    394            �           0    0    upa_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.upa_tasa_docentes_idtd_seq OWNED BY public.upa_tasa_docentes.idtd;
          public          postgres    false    395            ]           1259    19848    upa_tasa_mov_alumnos    TABLE       CREATE TABLE public.upa_tasa_mov_alumnos (
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
       public         heap    postgres    false            \           1259    19847    upa_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    605            �           0    0    upa_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_mov_alumnos_idtma_seq OWNED BY public.upa_tasa_mov_alumnos.idtma;
          public          postgres    false    604            �           1259    16895    upa_tasa_mov_docentes    TABLE       CREATE TABLE public.upa_tasa_mov_docentes (
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
       public         heap    postgres    false            �           1259    16900    upa_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.upa_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    396            �           0    0    upa_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.upa_tasa_mov_docentes_idtmd_seq OWNED BY public.upa_tasa_mov_docentes.idtmd;
          public          postgres    false    397            �           1259    16901    upa_tasa_pe_asat    TABLE     �   CREATE TABLE public.upa_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.upa_tasa_pe_asat;
       public         heap    postgres    false            �           1259    16904    upa_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    398            �           0    0    upa_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_pe_asat_idtpeasat_seq OWNED BY public.upa_tasa_pe_asat.idtpeasat;
          public          postgres    false    399            �           1259    16905    upa_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.upa_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.upa_tasa_pe_pertinencia;
       public         heap    postgres    false            �           1259    16908 "   upa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upa_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    400            �           0    0 "   upa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upa_tasa_pe_pertinencia_idtpep_seq OWNED BY public.upa_tasa_pe_pertinencia.idtpep;
          public          postgres    false    401            �           1259    16909    upa_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.upa_tasa_puntaje_egel (
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
       public         heap    postgres    false            �           1259    16914 "   upa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upa_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    402            �           0    0 "   upa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upa_tasa_puntaje_egel_idtpegel_seq OWNED BY public.upa_tasa_puntaje_egel.idtpegel;
          public          postgres    false    403            �           1259    16915    upa_tasa_puntaje_ex    TABLE     :  CREATE TABLE public.upa_tasa_puntaje_ex (
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
       public         heap    postgres    false            �           1259    16920    upa_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    404            �           0    0    upa_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_puntaje_ex_idtpex_seq OWNED BY public.upa_tasa_puntaje_ex.idtpex;
          public          postgres    false    405            �           1259    16921    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    idusuario integer NOT NULL,
    nombre_usuario character varying(20) NOT NULL,
    "contraseña" character varying(8),
    cargo character varying(10),
    universidad integer NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �           1259    16924    usuarios_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuarios_idusuario_seq;
       public          postgres    false    406            �           0    0    usuarios_idusuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuarios_idusuario_seq OWNED BY public.usuarios.idusuario;
          public          postgres    false    407            �           1259    16925    uta_carreras    TABLE       CREATE TABLE public.uta_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.uta_carreras;
       public         heap    postgres    false            �           1259    16928    uta_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_carreras_idcarrera_seq;
       public          postgres    false    408            �           0    0    uta_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_carreras_idcarrera_seq OWNED BY public.uta_carreras.idcarrera;
          public          postgres    false    409            �           1259    16929    uta_eficiencia_ire    TABLE     �   CREATE TABLE public.uta_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.uta_eficiencia_ire;
       public         heap    postgres    false            �           1259    16934    uta_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.uta_eficiencia_ire_ideire_seq;
       public          postgres    false    410            �           0    0    uta_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.uta_eficiencia_ire_ideire_seq OWNED BY public.uta_eficiencia_ire.ideire;
          public          postgres    false    411            �           1259    16935    uta_indice_colocacion    TABLE     �   CREATE TABLE public.uta_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.uta_indice_colocacion;
       public         heap    postgres    false            �           1259    16940    uta_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_indice_colocacion_idic_seq;
       public          postgres    false    412            �           0    0    uta_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_indice_colocacion_idic_seq OWNED BY public.uta_indice_colocacion.idic;
          public          postgres    false    413            �           1259    16941    uta_indice_ptc    TABLE     �  CREATE TABLE public.uta_indice_ptc (
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
       public         heap    postgres    false            �           1259    16944    uta_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.uta_indice_ptc_idiptc_seq;
       public          postgres    false    414            �           0    0    uta_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.uta_indice_ptc_idiptc_seq OWNED BY public.uta_indice_ptc.idiptc;
          public          postgres    false    415            �           1259    16945    uta_indice_servicios    TABLE     �  CREATE TABLE public.uta_indice_servicios (
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
       public         heap    postgres    false            �           1259    16950    uta_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.uta_indice_servicios_idis_seq;
       public          postgres    false    416            �           0    0    uta_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.uta_indice_servicios_idis_seq OWNED BY public.uta_indice_servicios.idis;
          public          postgres    false    417            �           1259    16951 
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
       public         heap    postgres    false            �           1259    16956    uta_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.uta_iseg_l_idisegl_seq;
       public          postgres    false    418            �           0    0    uta_iseg_l_idisegl_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.uta_iseg_l_idisegl_seq OWNED BY public.uta_iseg_l.idisegl;
          public          postgres    false    419            �           1259    16957    uta_iseg_tsu    TABLE     �  CREATE TABLE public.uta_iseg_tsu (
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
       public         heap    postgres    false            �           1259    16962    uta_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_iseg_tsu_idisegtsu_seq;
       public          postgres    false    420            �           0    0    uta_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_iseg_tsu_idisegtsu_seq OWNED BY public.uta_iseg_tsu.idisegtsu;
          public          postgres    false    421            �           1259    16963 
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
       public         heap    postgres    false            �           1259    16968    uta_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.uta_isem_l_idiseml_seq;
       public          postgres    false    422            �           0    0    uta_isem_l_idiseml_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.uta_isem_l_idiseml_seq OWNED BY public.uta_isem_l.idiseml;
          public          postgres    false    423            �           1259    16969    uta_isem_tsu    TABLE     f  CREATE TABLE public.uta_isem_tsu (
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
       public         heap    postgres    false            �           1259    16974    uta_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_isem_tsu_idisemtsu_seq;
       public          postgres    false    424            �           0    0    uta_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_isem_tsu_idisemtsu_seq OWNED BY public.uta_isem_tsu.idisemtsu;
          public          postgres    false    425            �           1259    16975    uta_tasa_acreditacion    TABLE     �   CREATE TABLE public.uta_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.uta_tasa_acreditacion;
       public         heap    postgres    false            �           1259    16978    uta_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_tasa_acreditacion_idta_seq;
       public          postgres    false    426            �           0    0    uta_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_tasa_acreditacion_idta_seq OWNED BY public.uta_tasa_acreditacion.idta;
          public          postgres    false    427            �           1259    16979    uta_tasa_cobertura    TABLE     �   CREATE TABLE public.uta_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.uta_tasa_cobertura;
       public         heap    postgres    false            �           1259    16984    uta_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.uta_tasa_cobertura_idtc_seq;
       public          postgres    false    428            �           0    0    uta_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.uta_tasa_cobertura_idtc_seq OWNED BY public.uta_tasa_cobertura.idtc;
          public          postgres    false    429            �           1259    16985    uta_tasa_docentes    TABLE     �   CREATE TABLE public.uta_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.uta_tasa_docentes;
       public         heap    postgres    false            �           1259    16990    uta_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_tasa_docentes_idtd_seq;
       public          postgres    false    430            �           0    0    uta_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_tasa_docentes_idtd_seq OWNED BY public.uta_tasa_docentes.idtd;
          public          postgres    false    431            �           1259    16991    uta_tasa_mov_alumnos    TABLE       CREATE TABLE public.uta_tasa_mov_alumnos (
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
       public         heap    postgres    false            �           1259    16996    uta_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    432            �           0    0    uta_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_tasa_mov_alumnos_idtma_seq OWNED BY public.uta_tasa_mov_alumnos.idtma;
          public          postgres    false    433            �           1259    16997    uta_tasa_mov_docentes    TABLE       CREATE TABLE public.uta_tasa_mov_docentes (
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
       public         heap    postgres    false            �           1259    17002    uta_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.uta_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    434            �           0    0    uta_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.uta_tasa_mov_docentes_idtmd_seq OWNED BY public.uta_tasa_mov_docentes.idtmd;
          public          postgres    false    435            �           1259    17003    uta_tasa_pe_asat    TABLE     �   CREATE TABLE public.uta_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.uta_tasa_pe_asat;
       public         heap    postgres    false            �           1259    17006    uta_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    436            �           0    0    uta_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_tasa_pe_asat_idtpeasat_seq OWNED BY public.uta_tasa_pe_asat.idtpeasat;
          public          postgres    false    437            �           1259    17007    uta_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.uta_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.uta_tasa_pe_pertinencia;
       public         heap    postgres    false            �           1259    17010 "   uta_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.uta_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    438            �           0    0 "   uta_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.uta_tasa_pe_pertinencia_idtpep_seq OWNED BY public.uta_tasa_pe_pertinencia.idtpep;
          public          postgres    false    439            �           1259    17011    uta_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.uta_tasa_puntaje_egel (
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
       public         heap    postgres    false            �           1259    17016 "   uta_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.uta_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    440            �           0    0 "   uta_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.uta_tasa_puntaje_egel_idtpegel_seq OWNED BY public.uta_tasa_puntaje_egel.idtpegel;
          public          postgres    false    441            �           1259    17017    uta_tasa_puntaje_egetsu    TABLE     B  CREATE TABLE public.uta_tasa_puntaje_egetsu (
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
       public         heap    postgres    false            �           1259    17022 &   uta_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.uta_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    442            �           0    0 &   uta_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.uta_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.uta_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    443            �           1259    17023    uta_tasa_puntaje_exl    TABLE     <  CREATE TABLE public.uta_tasa_puntaje_exl (
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
       public         heap    postgres    false            �           1259    17028     uta_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.uta_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    444            �           0    0     uta_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.uta_tasa_puntaje_exl_idtpexl_seq OWNED BY public.uta_tasa_puntaje_exl.idtpexl;
          public          postgres    false    445            a           1259    19876    uta_tasa_puntaje_extsu    TABLE     @  CREATE TABLE public.uta_tasa_puntaje_extsu (
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
       public         heap    postgres    false            `           1259    19875 $   uta_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.uta_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    609            �           0    0 $   uta_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.uta_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.uta_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    608            �           1259    17035    utc_carreras    TABLE       CREATE TABLE public.utc_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.utc_carreras;
       public         heap    postgres    false            �           1259    17038    utc_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_carreras_idcarrera_seq;
       public          postgres    false    446            �           0    0    utc_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_carreras_idcarrera_seq OWNED BY public.utc_carreras.idcarrera;
          public          postgres    false    447            �           1259    17039    utc_eficiencia_ire    TABLE     �   CREATE TABLE public.utc_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.utc_eficiencia_ire;
       public         heap    postgres    false            �           1259    17044    utc_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utc_eficiencia_ire_ideire_seq;
       public          postgres    false    448            �           0    0    utc_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utc_eficiencia_ire_ideire_seq OWNED BY public.utc_eficiencia_ire.ideire;
          public          postgres    false    449            �           1259    17045    utc_indice_colocacion    TABLE     �   CREATE TABLE public.utc_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.utc_indice_colocacion;
       public         heap    postgres    false            �           1259    17050    utc_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_indice_colocacion_idic_seq;
       public          postgres    false    450            �           0    0    utc_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_indice_colocacion_idic_seq OWNED BY public.utc_indice_colocacion.idic;
          public          postgres    false    451            �           1259    17051    utc_indice_ptc    TABLE     �  CREATE TABLE public.utc_indice_ptc (
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
       public         heap    postgres    false            �           1259    17054    utc_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.utc_indice_ptc_idiptc_seq;
       public          postgres    false    452            �           0    0    utc_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.utc_indice_ptc_idiptc_seq OWNED BY public.utc_indice_ptc.idiptc;
          public          postgres    false    453            �           1259    17055    utc_indice_servicios    TABLE     �  CREATE TABLE public.utc_indice_servicios (
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
       public         heap    postgres    false            �           1259    17060    utc_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utc_indice_servicios_idis_seq;
       public          postgres    false    454            �           0    0    utc_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utc_indice_servicios_idis_seq OWNED BY public.utc_indice_servicios.idis;
          public          postgres    false    455            �           1259    17061 
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
       public         heap    postgres    false            �           1259    17066    utc_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utc_iseg_l_idisegl_seq;
       public          postgres    false    456            �           0    0    utc_iseg_l_idisegl_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utc_iseg_l_idisegl_seq OWNED BY public.utc_iseg_l.idisegl;
          public          postgres    false    457            �           1259    17067    utc_iseg_tsu    TABLE     �  CREATE TABLE public.utc_iseg_tsu (
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
       public         heap    postgres    false            �           1259    17072    utc_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_iseg_tsu_idisegtsu_seq;
       public          postgres    false    458            �           0    0    utc_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_iseg_tsu_idisegtsu_seq OWNED BY public.utc_iseg_tsu.idisegtsu;
          public          postgres    false    459            �           1259    17073 
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
       public         heap    postgres    false            �           1259    17078    utc_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utc_isem_l_idiseml_seq;
       public          postgres    false    460            �           0    0    utc_isem_l_idiseml_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utc_isem_l_idiseml_seq OWNED BY public.utc_isem_l.idiseml;
          public          postgres    false    461            �           1259    17079    utc_isem_tsu    TABLE     f  CREATE TABLE public.utc_isem_tsu (
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
       public         heap    postgres    false            �           1259    17084    utc_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_isem_tsu_idisemtsu_seq;
       public          postgres    false    462            �           0    0    utc_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_isem_tsu_idisemtsu_seq OWNED BY public.utc_isem_tsu.idisemtsu;
          public          postgres    false    463            �           1259    17085    utc_tasa_acreditacion    TABLE     �   CREATE TABLE public.utc_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.utc_tasa_acreditacion;
       public         heap    postgres    false            �           1259    17088    utc_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_tasa_acreditacion_idta_seq;
       public          postgres    false    464            �           0    0    utc_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_tasa_acreditacion_idta_seq OWNED BY public.utc_tasa_acreditacion.idta;
          public          postgres    false    465            �           1259    17089    utc_tasa_cobertura    TABLE     �   CREATE TABLE public.utc_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.utc_tasa_cobertura;
       public         heap    postgres    false            �           1259    17094    utc_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utc_tasa_cobertura_idtc_seq;
       public          postgres    false    466                        0    0    utc_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utc_tasa_cobertura_idtc_seq OWNED BY public.utc_tasa_cobertura.idtc;
          public          postgres    false    467            �           1259    17095    utc_tasa_docentes    TABLE     �   CREATE TABLE public.utc_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.utc_tasa_docentes;
       public         heap    postgres    false            �           1259    17100    utc_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_tasa_docentes_idtd_seq;
       public          postgres    false    468                       0    0    utc_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_tasa_docentes_idtd_seq OWNED BY public.utc_tasa_docentes.idtd;
          public          postgres    false    469            �           1259    17101    utc_tasa_mov_alumnos    TABLE       CREATE TABLE public.utc_tasa_mov_alumnos (
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
       public         heap    postgres    false            �           1259    17106    utc_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    470                       0    0    utc_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_tasa_mov_alumnos_idtma_seq OWNED BY public.utc_tasa_mov_alumnos.idtma;
          public          postgres    false    471            �           1259    17107    utc_tasa_mov_docentes    TABLE       CREATE TABLE public.utc_tasa_mov_docentes (
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
       public         heap    postgres    false            �           1259    17112    utc_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utc_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    472                       0    0    utc_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utc_tasa_mov_docentes_idtmd_seq OWNED BY public.utc_tasa_mov_docentes.idtmd;
          public          postgres    false    473            �           1259    17113    utc_tasa_pe_asat    TABLE     �   CREATE TABLE public.utc_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.utc_tasa_pe_asat;
       public         heap    postgres    false            �           1259    17116    utc_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    474                       0    0    utc_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_tasa_pe_asat_idtpeasat_seq OWNED BY public.utc_tasa_pe_asat.idtpeasat;
          public          postgres    false    475            �           1259    17117    utc_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utc_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.utc_tasa_pe_pertinencia;
       public         heap    postgres    false            �           1259    17120 "   utc_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utc_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    476                       0    0 "   utc_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utc_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utc_tasa_pe_pertinencia.idtpep;
          public          postgres    false    477            �           1259    17121    utc_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.utc_tasa_puntaje_egel (
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
       public         heap    postgres    false            �           1259    17126 "   utc_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utc_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    478                       0    0 "   utc_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utc_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utc_tasa_puntaje_egel.idtpegel;
          public          postgres    false    479            �           1259    17127    utc_tasa_puntaje_egetsu    TABLE     B  CREATE TABLE public.utc_tasa_puntaje_egetsu (
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
       public         heap    postgres    false            �           1259    17132 &   utc_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.utc_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    480                       0    0 &   utc_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.utc_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.utc_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    481            �           1259    17133    utc_tasa_puntaje_exl    TABLE     <  CREATE TABLE public.utc_tasa_puntaje_exl (
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
       public         heap    postgres    false            �           1259    17138     utc_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utc_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    482                       0    0     utc_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utc_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utc_tasa_puntaje_exl.idtpexl;
          public          postgres    false    483            �           1259    17139    utc_tasa_puntaje_extsu    TABLE     @  CREATE TABLE public.utc_tasa_puntaje_extsu (
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
       public         heap    postgres    false            �           1259    17144 $   utc_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.utc_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    484            	           0    0 $   utc_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.utc_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utc_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    485            �           1259    17145    utma_carreras    TABLE       CREATE TABLE public.utma_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 !   DROP TABLE public.utma_carreras;
       public         heap    postgres    false            �           1259    17148    utma_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_carreras_idcarrera_seq;
       public          postgres    false    486            
           0    0    utma_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_carreras_idcarrera_seq OWNED BY public.utma_carreras.idcarrera;
          public          postgres    false    487            �           1259    17149    utma_eficiencia_ire    TABLE     �   CREATE TABLE public.utma_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.utma_eficiencia_ire;
       public         heap    postgres    false            �           1259    17154    utma_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utma_eficiencia_ire_ideire_seq;
       public          postgres    false    488                       0    0    utma_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utma_eficiencia_ire_ideire_seq OWNED BY public.utma_eficiencia_ire.ideire;
          public          postgres    false    489            �           1259    17155    utma_indice_colocacion    TABLE     �   CREATE TABLE public.utma_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.utma_indice_colocacion;
       public         heap    postgres    false            �           1259    17160    utma_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_indice_colocacion_idic_seq;
       public          postgres    false    490                       0    0    utma_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_indice_colocacion_idic_seq OWNED BY public.utma_indice_colocacion.idic;
          public          postgres    false    491            �           1259    17161    utma_indice_ptc    TABLE     �  CREATE TABLE public.utma_indice_ptc (
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
       public         heap    postgres    false            �           1259    17164    utma_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utma_indice_ptc_idiptc_seq;
       public          postgres    false    492                       0    0    utma_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utma_indice_ptc_idiptc_seq OWNED BY public.utma_indice_ptc.idiptc;
          public          postgres    false    493            �           1259    17165    utma_indice_servicios    TABLE     �  CREATE TABLE public.utma_indice_servicios (
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
       public         heap    postgres    false            �           1259    17170    utma_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utma_indice_servicios_idis_seq;
       public          postgres    false    494                       0    0    utma_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utma_indice_servicios_idis_seq OWNED BY public.utma_indice_servicios.idis;
          public          postgres    false    495            �           1259    17171    utma_iseg_l    TABLE     �  CREATE TABLE public.utma_iseg_l (
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
       public         heap    postgres    false            �           1259    17176    utma_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utma_iseg_l_idisegl_seq;
       public          postgres    false    496                       0    0    utma_iseg_l_idisegl_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utma_iseg_l_idisegl_seq OWNED BY public.utma_iseg_l.idisegl;
          public          postgres    false    497            _           1259    19862    utma_iseg_tsu    TABLE     �  CREATE TABLE public.utma_iseg_tsu (
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
       public         heap    postgres    false            ^           1259    19861    utma_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_iseg_tsu_idisegtsu_seq;
       public          postgres    false    607                       0    0    utma_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_iseg_tsu_idisegtsu_seq OWNED BY public.utma_iseg_tsu.idisegtsu;
          public          postgres    false    606            �           1259    17183    utma_isem_l    TABLE     c  CREATE TABLE public.utma_isem_l (
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
       public         heap    postgres    false            �           1259    17188    utma_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utma_isem_l_idiseml_seq;
       public          postgres    false    498                       0    0    utma_isem_l_idiseml_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utma_isem_l_idiseml_seq OWNED BY public.utma_isem_l.idiseml;
          public          postgres    false    499            �           1259    17189    utma_isem_tsu    TABLE     g  CREATE TABLE public.utma_isem_tsu (
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
       public         heap    postgres    false            �           1259    17194    utma_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_isem_tsu_idisemtsu_seq;
       public          postgres    false    500                       0    0    utma_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_isem_tsu_idisemtsu_seq OWNED BY public.utma_isem_tsu.idisemtsu;
          public          postgres    false    501            �           1259    17195    utma_tasa_acreditacion    TABLE        CREATE TABLE public.utma_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.utma_tasa_acreditacion;
       public         heap    postgres    false            �           1259    17198    utma_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_tasa_acreditacion_idta_seq;
       public          postgres    false    502                       0    0    utma_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_tasa_acreditacion_idta_seq OWNED BY public.utma_tasa_acreditacion.idta;
          public          postgres    false    503            �           1259    17199    utma_tasa_cobertura    TABLE     �   CREATE TABLE public.utma_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.utma_tasa_cobertura;
       public         heap    postgres    false            �           1259    17204    utma_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.utma_tasa_cobertura_idtc_seq;
       public          postgres    false    504                       0    0    utma_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.utma_tasa_cobertura_idtc_seq OWNED BY public.utma_tasa_cobertura.idtc;
          public          postgres    false    505            �           1259    17205    utma_tasa_docentes    TABLE     �   CREATE TABLE public.utma_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.utma_tasa_docentes;
       public         heap    postgres    false            �           1259    17210    utma_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_tasa_docentes_idtd_seq;
       public          postgres    false    506                       0    0    utma_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_tasa_docentes_idtd_seq OWNED BY public.utma_tasa_docentes.idtd;
          public          postgres    false    507            �           1259    17211    utma_tasa_mov_alumnos    TABLE       CREATE TABLE public.utma_tasa_mov_alumnos (
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
       public         heap    postgres    false            �           1259    17216    utma_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    508                       0    0    utma_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_tasa_mov_alumnos_idtma_seq OWNED BY public.utma_tasa_mov_alumnos.idtma;
          public          postgres    false    509            �           1259    17217    utma_tasa_mov_docentes    TABLE       CREATE TABLE public.utma_tasa_mov_docentes (
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
       public         heap    postgres    false            �           1259    17222     utma_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utma_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    510                       0    0     utma_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utma_tasa_mov_docentes_idtmd_seq OWNED BY public.utma_tasa_mov_docentes.idtmd;
          public          postgres    false    511                        1259    17223    utma_tasa_pe_asat    TABLE     �   CREATE TABLE public.utma_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.utma_tasa_pe_asat;
       public         heap    postgres    false                       1259    17226    utma_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    512                       0    0    utma_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_tasa_pe_asat_idtpeasat_seq OWNED BY public.utma_tasa_pe_asat.idtpeasat;
          public          postgres    false    513                       1259    17227    utma_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utma_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.utma_tasa_pe_pertinencia;
       public         heap    postgres    false                       1259    17230 #   utma_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utma_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    514                       0    0 #   utma_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utma_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utma_tasa_pe_pertinencia.idtpep;
          public          postgres    false    515                       1259    17231    utma_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.utma_tasa_puntaje_egel (
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
       public         heap    postgres    false                       1259    17236 #   utma_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utma_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    516                       0    0 #   utma_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utma_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utma_tasa_puntaje_egel.idtpegel;
          public          postgres    false    517                       1259    17237    utma_tasa_puntaje_egetsu    TABLE     C  CREATE TABLE public.utma_tasa_puntaje_egetsu (
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
       public         heap    postgres    false                       1259    17242 '   utma_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.utma_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    518                       0    0 '   utma_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.utma_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.utma_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    519                       1259    17243    utma_tasa_puntaje_exl    TABLE     =  CREATE TABLE public.utma_tasa_puntaje_exl (
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
       public         heap    postgres    false            	           1259    17248 !   utma_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.utma_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    520                       0    0 !   utma_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.utma_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utma_tasa_puntaje_exl.idtpexl;
          public          postgres    false    521            
           1259    17249    utma_tasa_puntaje_extsu    TABLE     A  CREATE TABLE public.utma_tasa_puntaje_extsu (
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
       public         heap    postgres    false                       1259    17254 %   utma_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.utma_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    522                       0    0 %   utma_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.utma_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utma_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    523                       1259    17255    utna_carreras    TABLE       CREATE TABLE public.utna_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 !   DROP TABLE public.utna_carreras;
       public         heap    postgres    false                       1259    17258    utna_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_carreras_idcarrera_seq;
       public          postgres    false    524                       0    0    utna_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_carreras_idcarrera_seq OWNED BY public.utna_carreras.idcarrera;
          public          postgres    false    525                       1259    17259    utna_eficiencia_ire    TABLE     �   CREATE TABLE public.utna_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.utna_eficiencia_ire;
       public         heap    postgres    false                       1259    17264    utna_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_eficiencia_ire_ideire_seq;
       public          postgres    false    526                       0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_eficiencia_ire_ideire_seq OWNED BY public.utna_eficiencia_ire.ideire;
          public          postgres    false    527                       1259    17265    utna_indice_colocacion    TABLE     �   CREATE TABLE public.utna_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.utna_indice_colocacion;
       public         heap    postgres    false                       1259    17270    utna_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_indice_colocacion_idic_seq;
       public          postgres    false    528                        0    0    utna_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_indice_colocacion_idic_seq OWNED BY public.utna_indice_colocacion.idic;
          public          postgres    false    529                       1259    17271    utna_indice_ptc    TABLE     �  CREATE TABLE public.utna_indice_ptc (
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
       public         heap    postgres    false                       1259    17274    utna_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utna_indice_ptc_idiptc_seq;
       public          postgres    false    530            !           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utna_indice_ptc_idiptc_seq OWNED BY public.utna_indice_ptc.idiptc;
          public          postgres    false    531                       1259    17275    utna_indice_servicios    TABLE     �  CREATE TABLE public.utna_indice_servicios (
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
       public         heap    postgres    false                       1259    17280    utna_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_indice_servicios_idis_seq;
       public          postgres    false    532            "           0    0    utna_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_indice_servicios_idis_seq OWNED BY public.utna_indice_servicios.idis;
          public          postgres    false    533                       1259    17281    utna_iseg_l    TABLE     �  CREATE TABLE public.utna_iseg_l (
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
       public         heap    postgres    false                       1259    17286    utna_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_iseg_l_idisegl_seq;
       public          postgres    false    534            #           0    0    utna_iseg_l_idisegl_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_iseg_l_idisegl_seq OWNED BY public.utna_iseg_l.idisegl;
          public          postgres    false    535                       1259    17287    utna_iseg_tsu    TABLE     �  CREATE TABLE public.utna_iseg_tsu (
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
       public         heap    postgres    false                       1259    17292    utna_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_iseg_tsu_idisegtsu_seq;
       public          postgres    false    536            $           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_iseg_tsu_idisegtsu_seq OWNED BY public.utna_iseg_tsu.idisegtsu;
          public          postgres    false    537                       1259    17293    utna_isem_l    TABLE     c  CREATE TABLE public.utna_isem_l (
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
       public         heap    postgres    false                       1259    17298    utna_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_isem_l_idiseml_seq;
       public          postgres    false    538            %           0    0    utna_isem_l_idiseml_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_isem_l_idiseml_seq OWNED BY public.utna_isem_l.idiseml;
          public          postgres    false    539                       1259    17299    utna_isem_tsu    TABLE     g  CREATE TABLE public.utna_isem_tsu (
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
       public         heap    postgres    false                       1259    17304    utna_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_isem_tsu_idisemtsu_seq;
       public          postgres    false    540            &           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_isem_tsu_idisemtsu_seq OWNED BY public.utna_isem_tsu.idisemtsu;
          public          postgres    false    541                       1259    17305    utna_tasa_acreditacion    TABLE        CREATE TABLE public.utna_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.utna_tasa_acreditacion;
       public         heap    postgres    false                       1259    17308    utna_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_acreditacion_idta_seq;
       public          postgres    false    542            '           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_acreditacion_idta_seq OWNED BY public.utna_tasa_acreditacion.idta;
          public          postgres    false    543                        1259    17309    utna_tasa_cobertura    TABLE     �   CREATE TABLE public.utna_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.utna_tasa_cobertura;
       public         heap    postgres    false            !           1259    17314    utna_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.utna_tasa_cobertura_idtc_seq;
       public          postgres    false    544            (           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.utna_tasa_cobertura_idtc_seq OWNED BY public.utna_tasa_cobertura.idtc;
          public          postgres    false    545            "           1259    17315    utna_tasa_docentes    TABLE     �   CREATE TABLE public.utna_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.utna_tasa_docentes;
       public         heap    postgres    false            #           1259    17320    utna_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_tasa_docentes_idtd_seq;
       public          postgres    false    546            )           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_tasa_docentes_idtd_seq OWNED BY public.utna_tasa_docentes.idtd;
          public          postgres    false    547            $           1259    17321    utna_tasa_mov_alumnos    TABLE       CREATE TABLE public.utna_tasa_mov_alumnos (
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
       public         heap    postgres    false            %           1259    17326    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    548            *           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq OWNED BY public.utna_tasa_mov_alumnos.idtma;
          public          postgres    false    549            &           1259    17327    utna_tasa_mov_docentes    TABLE       CREATE TABLE public.utna_tasa_mov_docentes (
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
       public         heap    postgres    false            '           1259    17332     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    550            +           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq OWNED BY public.utna_tasa_mov_docentes.idtmd;
          public          postgres    false    551            (           1259    17333    utna_tasa_pe_asat    TABLE     �   CREATE TABLE public.utna_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.utna_tasa_pe_asat;
       public         heap    postgres    false            )           1259    17336    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    552            ,           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq OWNED BY public.utna_tasa_pe_asat.idtpeasat;
          public          postgres    false    553            *           1259    17337    utna_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utna_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.utna_tasa_pe_pertinencia;
       public         heap    postgres    false            +           1259    17340 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    554            -           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utna_tasa_pe_pertinencia.idtpep;
          public          postgres    false    555            ,           1259    17341    utna_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.utna_tasa_puntaje_egel (
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
       public         heap    postgres    false            -           1259    17346 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    556            .           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utna_tasa_puntaje_egel.idtpegel;
          public          postgres    false    557            .           1259    17347    utna_tasa_puntaje_egetsu    TABLE     C  CREATE TABLE public.utna_tasa_puntaje_egetsu (
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
       public         heap    postgres    false            /           1259    17352 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq;
       public          postgres    false    558            /           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq OWNED BY public.utna_tasa_puntaje_egetsu.idtpegestu;
          public          postgres    false    559            0           1259    17353    utna_tasa_puntaje_exl    TABLE     =  CREATE TABLE public.utna_tasa_puntaje_exl (
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
       public         heap    postgres    false            1           1259    17358 !   utna_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.utna_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    560            0           0    0 !   utna_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.utna_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utna_tasa_puntaje_exl.idtpexl;
          public          postgres    false    561            2           1259    17359    utna_tasa_puntaje_extsu    TABLE     A  CREATE TABLE public.utna_tasa_puntaje_extsu (
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
       public         heap    postgres    false            3           1259    17364 %   utna_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.utna_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    562            1           0    0 %   utna_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.utna_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utna_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    563            4           1259    17365    utr_carreras    TABLE       CREATE TABLE public.utr_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.utr_carreras;
       public         heap    postgres    false            5           1259    17368    utr_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_carreras_idcarrera_seq;
       public          postgres    false    564            2           0    0    utr_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_carreras_idcarrera_seq OWNED BY public.utr_carreras.idcarrera;
          public          postgres    false    565            6           1259    17369    utr_eficiencia_ire    TABLE     �   CREATE TABLE public.utr_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.utr_eficiencia_ire;
       public         heap    postgres    false            7           1259    17374    utr_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utr_eficiencia_ire_ideire_seq;
       public          postgres    false    566            3           0    0    utr_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utr_eficiencia_ire_ideire_seq OWNED BY public.utr_eficiencia_ire.ideire;
          public          postgres    false    567            8           1259    17375    utr_indice_colocacion    TABLE     �   CREATE TABLE public.utr_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.utr_indice_colocacion;
       public         heap    postgres    false            9           1259    17380    utr_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_indice_colocacion_idic_seq;
       public          postgres    false    568            4           0    0    utr_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_indice_colocacion_idic_seq OWNED BY public.utr_indice_colocacion.idic;
          public          postgres    false    569            :           1259    17381    utr_indice_ptc    TABLE     �  CREATE TABLE public.utr_indice_ptc (
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
       public         heap    postgres    false            ;           1259    17384    utr_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.utr_indice_ptc_idiptc_seq;
       public          postgres    false    570            5           0    0    utr_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.utr_indice_ptc_idiptc_seq OWNED BY public.utr_indice_ptc.idiptc;
          public          postgres    false    571            <           1259    17385    utr_indice_servicios    TABLE     �  CREATE TABLE public.utr_indice_servicios (
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
       public         heap    postgres    false            =           1259    17390    utr_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utr_indice_servicios_idis_seq;
       public          postgres    false    572            6           0    0    utr_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utr_indice_servicios_idis_seq OWNED BY public.utr_indice_servicios.idis;
          public          postgres    false    573            >           1259    17391 
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
       public         heap    postgres    false            ?           1259    17396    utr_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utr_iseg_l_idisegl_seq;
       public          postgres    false    574            7           0    0    utr_iseg_l_idisegl_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utr_iseg_l_idisegl_seq OWNED BY public.utr_iseg_l.idisegl;
          public          postgres    false    575            @           1259    17397    utr_iseg_tsu    TABLE     �  CREATE TABLE public.utr_iseg_tsu (
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
       public         heap    postgres    false            A           1259    17402    utr_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_iseg_tsu_idisegtsu_seq;
       public          postgres    false    576            8           0    0    utr_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_iseg_tsu_idisegtsu_seq OWNED BY public.utr_iseg_tsu.idisegtsu;
          public          postgres    false    577            B           1259    17403 
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
       public         heap    postgres    false            C           1259    17408    utr_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utr_isem_l_idiseml_seq;
       public          postgres    false    578            9           0    0    utr_isem_l_idiseml_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utr_isem_l_idiseml_seq OWNED BY public.utr_isem_l.idiseml;
          public          postgres    false    579            D           1259    17409    utr_isem_tsu    TABLE     f  CREATE TABLE public.utr_isem_tsu (
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
       public         heap    postgres    false            E           1259    17414    utr_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_isem_tsu_idisemtsu_seq;
       public          postgres    false    580            :           0    0    utr_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_isem_tsu_idisemtsu_seq OWNED BY public.utr_isem_tsu.idisemtsu;
          public          postgres    false    581            F           1259    17415    utr_tasa_acreditacion    TABLE     �   CREATE TABLE public.utr_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.utr_tasa_acreditacion;
       public         heap    postgres    false            G           1259    17418    utr_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_tasa_acreditacion_idta_seq;
       public          postgres    false    582            ;           0    0    utr_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_tasa_acreditacion_idta_seq OWNED BY public.utr_tasa_acreditacion.idta;
          public          postgres    false    583            H           1259    17419    utr_tasa_cobertura    TABLE     �   CREATE TABLE public.utr_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.utr_tasa_cobertura;
       public         heap    postgres    false            I           1259    17424    utr_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utr_tasa_cobertura_idtc_seq;
       public          postgres    false    584            <           0    0    utr_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utr_tasa_cobertura_idtc_seq OWNED BY public.utr_tasa_cobertura.idtc;
          public          postgres    false    585            J           1259    17425    utr_tasa_docentes    TABLE     �   CREATE TABLE public.utr_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.utr_tasa_docentes;
       public         heap    postgres    false            K           1259    17430    utr_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_tasa_docentes_idtd_seq;
       public          postgres    false    586            =           0    0    utr_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_tasa_docentes_idtd_seq OWNED BY public.utr_tasa_docentes.idtd;
          public          postgres    false    587            L           1259    17431    utr_tasa_mov_alumnos    TABLE       CREATE TABLE public.utr_tasa_mov_alumnos (
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
       public         heap    postgres    false            M           1259    17436    utr_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    588            >           0    0    utr_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_tasa_mov_alumnos_idtma_seq OWNED BY public.utr_tasa_mov_alumnos.idtma;
          public          postgres    false    589            N           1259    17437    utr_tasa_mov_docentes    TABLE       CREATE TABLE public.utr_tasa_mov_docentes (
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
       public         heap    postgres    false            O           1259    17442    utr_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utr_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    590            ?           0    0    utr_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utr_tasa_mov_docentes_idtmd_seq OWNED BY public.utr_tasa_mov_docentes.idtmd;
          public          postgres    false    591            P           1259    17443    utr_tasa_pe_asat    TABLE     �   CREATE TABLE public.utr_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.utr_tasa_pe_asat;
       public         heap    postgres    false            Q           1259    17446    utr_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    592            @           0    0    utr_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_tasa_pe_asat_idtpeasat_seq OWNED BY public.utr_tasa_pe_asat.idtpeasat;
          public          postgres    false    593            R           1259    17447    utr_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utr_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.utr_tasa_pe_pertinencia;
       public         heap    postgres    false            S           1259    17450 "   utr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utr_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    594            A           0    0 "   utr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utr_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utr_tasa_pe_pertinencia.idtpep;
          public          postgres    false    595            T           1259    17451    utr_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.utr_tasa_puntaje_egel (
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
       public         heap    postgres    false            U           1259    17456 "   utr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utr_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    596            B           0    0 "   utr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utr_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utr_tasa_puntaje_egel.idtpegel;
          public          postgres    false    597            V           1259    17457    utr_tasa_puntaje_egetsu    TABLE     B  CREATE TABLE public.utr_tasa_puntaje_egetsu (
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
       public         heap    postgres    false            W           1259    17462 &   utr_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.utr_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    598            C           0    0 &   utr_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.utr_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.utr_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    599            X           1259    17463    utr_tasa_puntaje_exl    TABLE     <  CREATE TABLE public.utr_tasa_puntaje_exl (
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
       public         heap    postgres    false            Y           1259    17468     utr_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utr_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    600            D           0    0     utr_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utr_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utr_tasa_puntaje_exl.idtpexl;
          public          postgres    false    601            Z           1259    17469    utr_tasa_puntaje_extsu    TABLE     @  CREATE TABLE public.utr_tasa_puntaje_extsu (
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
       public         heap    postgres    false            [           1259    17474 $   utr_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.utr_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    602            E           0    0 $   utr_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.utr_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utr_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    603            >           2604    17475    crena_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.crena_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.crena_carreras_idcarrera_seq'::regclass);
 G   ALTER TABLE public.crena_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    215    214            ?           2604    17476    crena_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.crena_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.crena_eficiencia_ire_ideire_seq'::regclass);
 J   ALTER TABLE public.crena_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    217    216            @           2604    17477    crena_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.crena_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.crena_indice_colocacion_idic_seq'::regclass);
 K   ALTER TABLE public.crena_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    219    218            A           2604    17478    crena_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.crena_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.crena_indice_ptc_idiptc_seq'::regclass);
 F   ALTER TABLE public.crena_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    221    220            B           2604    17479    crena_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.crena_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.crena_indice_servicios_idis_seq'::regclass);
 J   ALTER TABLE public.crena_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    223    222            C           2604    17480    crena_iseg idiseg    DEFAULT     v   ALTER TABLE ONLY public.crena_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.crena_iseg_idiseg_seq'::regclass);
 @   ALTER TABLE public.crena_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    225    224            D           2604    17481    crena_isem idisem    DEFAULT     v   ALTER TABLE ONLY public.crena_isem ALTER COLUMN idisem SET DEFAULT nextval('public.crena_isem_idisem_seq'::regclass);
 @   ALTER TABLE public.crena_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    227    226            E           2604    17482    crena_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.crena_tasa_acreditacion_idta_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    229    228            F           2604    17483    crena_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.crena_tasa_cobertura_idtc_seq'::regclass);
 H   ALTER TABLE public.crena_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    231    230            G           2604    17484    crena_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.crena_tasa_docentes_idtd_seq'::regclass);
 G   ALTER TABLE public.crena_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    233    232            H           2604    17485    crena_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.crena_tasa_mov_alumnos_idtma_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    235    234            I           2604    17486    crena_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.crena_tasa_mov_docentes_idtmd_seq'::regclass);
 L   ALTER TABLE public.crena_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    237    236            J           2604    17487    crena_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.crena_tasa_pe_asat_idtpeasat_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    239    238            K           2604    17488     crena_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.crena_tasa_pe_pertinencia_idtpep_seq'::regclass);
 O   ALTER TABLE public.crena_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    241    240            L           2604    17489     crena_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.crena_tasa_puntaje_egel_idtpegel_seq'::regclass);
 O   ALTER TABLE public.crena_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    243    242            M           2604    17490    crena_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.crena_tasa_puntaje_ex_idtpex_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    245    244            N           2604    17491    ena_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.ena_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.ena_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.ena_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    247    246            O           2604    17492    ena_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.ena_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.ena_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.ena_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    249    248            P           2604    17493    ena_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.ena_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.ena_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.ena_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    251    250            Q           2604    17494    ena_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.ena_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.ena_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.ena_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    253    252            R           2604    17495    ena_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.ena_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.ena_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.ena_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    255    254            S           2604    17496    ena_iseg idiseg    DEFAULT     r   ALTER TABLE ONLY public.ena_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.ena_iseg_idiseg_seq'::regclass);
 >   ALTER TABLE public.ena_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    257    256            T           2604    17497    ena_isem idisem    DEFAULT     r   ALTER TABLE ONLY public.ena_isem ALTER COLUMN idisem SET DEFAULT nextval('public.ena_isem_idisem_seq'::regclass);
 >   ALTER TABLE public.ena_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    259    258            U           2604    17498    ena_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.ena_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    261    260            V           2604    17499    ena_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.ena_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.ena_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    263    262            W           2604    17500    ena_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.ena_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.ena_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    265    264            X           2604    17501    ena_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.ena_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    267    266            Y           2604    17502    ena_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.ena_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.ena_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    269    268            Z           2604    17503    ena_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.ena_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    271    270            [           2604    17504    ena_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.ena_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.ena_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    273    272            \           2604    17505    ena_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.ena_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.ena_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    275    274            ]           2604    17506    ena_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.ena_tasa_puntaje_ex_idtpex_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    277    276            ^           2604    17507    enrjsm_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.enrjsm_carreras_idcarrera_seq'::regclass);
 H   ALTER TABLE public.enrjsm_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    279    278            _           2604    17508    enrjsm_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.enrjsm_eficiencia_ire_ideire_seq'::regclass);
 K   ALTER TABLE public.enrjsm_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    281    280            `           2604    17509    enrjsm_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.enrjsm_indice_colocacion_idic_seq'::regclass);
 L   ALTER TABLE public.enrjsm_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    283    282            a           2604    17510    enrjsm_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.enrjsm_indice_ptc_idiptc_seq'::regclass);
 G   ALTER TABLE public.enrjsm_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    285    284            b           2604    17511    enrjsm_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.enrjsm_indice_servicios_idis_seq'::regclass);
 K   ALTER TABLE public.enrjsm_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    287    286            c           2604    17512    enrjsm_iseg idiseg    DEFAULT     x   ALTER TABLE ONLY public.enrjsm_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.enrjsm_iseg_idiseg_seq'::regclass);
 A   ALTER TABLE public.enrjsm_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    289    288            d           2604    17513    enrjsm_isem idisem    DEFAULT     x   ALTER TABLE ONLY public.enrjsm_isem ALTER COLUMN idisem SET DEFAULT nextval('public.enrjsm_isem_idisem_seq'::regclass);
 A   ALTER TABLE public.enrjsm_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    291    290            e           2604    17514    enrjsm_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.enrjsm_tasa_acreditacion_idta_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    293    292            f           2604    17515    enrjsm_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.enrjsm_tasa_cobertura_idtc_seq'::regclass);
 I   ALTER TABLE public.enrjsm_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    295    294            g           2604    17516    enrjsm_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.enrjsm_tasa_docentes_idtd_seq'::regclass);
 H   ALTER TABLE public.enrjsm_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    297    296            h           2604    17517    enrjsm_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.enrjsm_tasa_mov_alumnos_idtma_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    299    298            i           2604    17518    enrjsm_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.enrjsm_tasa_mov_docentes_idtmd_seq'::regclass);
 M   ALTER TABLE public.enrjsm_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    301    300            j           2604    17519    enrjsm_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.enrjsm_tasa_pe_asat_idtpeasat_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    303    302            k           2604    17520 !   enrjsm_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.enrjsm_tasa_pe_pertinencia_idtpep_seq'::regclass);
 P   ALTER TABLE public.enrjsm_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    305    304            l           2604    17521 !   enrjsm_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.enrjsm_tasa_puntaje_egel_idtpegel_seq'::regclass);
 P   ALTER TABLE public.enrjsm_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    307    306            m           2604    17522    enrjsm_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.enrjsm_tasa_puntaje_ex_idtpex_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    309    308            n           2604    17523    enrr_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.enrr_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.enrr_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.enrr_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    311    310            o           2604    17524    enrr_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.enrr_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.enrr_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.enrr_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    313    312            p           2604    17525    enrr_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.enrr_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.enrr_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.enrr_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    315    314            q           2604    17526    enrr_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.enrr_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.enrr_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.enrr_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    317    316            r           2604    17527    enrr_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.enrr_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.enrr_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.enrr_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    319    318            s           2604    17528    enrr_iseg idiseg    DEFAULT     t   ALTER TABLE ONLY public.enrr_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.enrr_iseg_idiseg_seq'::regclass);
 ?   ALTER TABLE public.enrr_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    321    320            t           2604    17529    enrr_isem idisem    DEFAULT     t   ALTER TABLE ONLY public.enrr_isem ALTER COLUMN idisem SET DEFAULT nextval('public.enrr_isem_idisem_seq'::regclass);
 ?   ALTER TABLE public.enrr_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    323    322            u           2604    17530    enrr_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.enrr_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    325    324            v           2604    17531    enrr_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.enrr_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.enrr_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    327    326            w           2604    17532    enrr_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.enrr_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.enrr_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    329    328            x           2604    17533    enrr_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.enrr_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    331    330            y           2604    17534    enrr_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.enrr_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.enrr_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    333    332            z           2604    17535    enrr_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.enrr_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    335    334            {           2604    17536    enrr_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.enrr_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.enrr_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    337    336            |           2604    17537    enrr_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.enrr_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.enrr_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    339    338            }           2604    17538    enrr_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.enrr_tasa_puntaje_ex_idtpex_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    341    340            ~           2604    17539    ensfa_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.ensfa_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.ensfa_carreras_idcarrera_seq'::regclass);
 G   ALTER TABLE public.ensfa_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    343    342                       2604    17540    ensfa_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.ensfa_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.ensfa_eficiencia_ire_ideire_seq'::regclass);
 J   ALTER TABLE public.ensfa_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    345    344            �           2604    17541    ensfa_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.ensfa_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.ensfa_indice_colocacion_idic_seq'::regclass);
 K   ALTER TABLE public.ensfa_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    347    346            �           2604    17542    ensfa_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.ensfa_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.ensfa_indice_ptc_idiptc_seq'::regclass);
 F   ALTER TABLE public.ensfa_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    349    348            �           2604    17543    ensfa_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.ensfa_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.ensfa_indice_servicios_idis_seq'::regclass);
 J   ALTER TABLE public.ensfa_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    351    350            �           2604    17544    ensfa_iseg idiseg    DEFAULT     v   ALTER TABLE ONLY public.ensfa_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.ensfa_iseg_idiseg_seq'::regclass);
 @   ALTER TABLE public.ensfa_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    353    352            �           2604    17545    ensfa_isem idisem    DEFAULT     v   ALTER TABLE ONLY public.ensfa_isem ALTER COLUMN idisem SET DEFAULT nextval('public.ensfa_isem_idisem_seq'::regclass);
 @   ALTER TABLE public.ensfa_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    355    354            �           2604    17546    ensfa_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.ensfa_tasa_acreditacion_idta_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    357    356            �           2604    17547    ensfa_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.ensfa_tasa_cobertura_idtc_seq'::regclass);
 H   ALTER TABLE public.ensfa_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    359    358            �           2604    17548    ensfa_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.ensfa_tasa_docentes_idtd_seq'::regclass);
 G   ALTER TABLE public.ensfa_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    361    360            �           2604    17549    ensfa_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.ensfa_tasa_mov_alumnos_idtma_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    363    362            �           2604    17550    ensfa_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.ensfa_tasa_mov_docentes_idtmd_seq'::regclass);
 L   ALTER TABLE public.ensfa_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    365    364            �           2604    17551    ensfa_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.ensfa_tasa_pe_asat_idtpeasat_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    367    366            �           2604    17552     ensfa_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.ensfa_tasa_pe_pertinencia_idtpep_seq'::regclass);
 O   ALTER TABLE public.ensfa_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    369    368            �           2604    17553     ensfa_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.ensfa_tasa_puntaje_egel_idtpegel_seq'::regclass);
 O   ALTER TABLE public.ensfa_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    371    370            �           2604    17554    ensfa_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.ensfa_tasa_puntaje_ex_idtpex_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    373    372            �           2604    17555    universidades iduniversidad    DEFAULT     �   ALTER TABLE ONLY public.universidades ALTER COLUMN iduniversidad SET DEFAULT nextval('public.universidades_iduniversidad_seq'::regclass);
 J   ALTER TABLE public.universidades ALTER COLUMN iduniversidad DROP DEFAULT;
       public          postgres    false    375    374            �           2604    17556    upa_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.upa_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.upa_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.upa_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    377    376            �           2604    17557    upa_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.upa_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.upa_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.upa_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    379    378            �           2604    17558    upa_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.upa_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.upa_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.upa_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    381    380            �           2604    17559    upa_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.upa_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.upa_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.upa_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    383    382            �           2604    17560    upa_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.upa_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.upa_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.upa_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    385    384            �           2604    17561    upa_iseg idiseg    DEFAULT     r   ALTER TABLE ONLY public.upa_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.upa_iseg_idiseg_seq'::regclass);
 >   ALTER TABLE public.upa_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    387    386            �           2604    17562    upa_isem idisem    DEFAULT     r   ALTER TABLE ONLY public.upa_isem ALTER COLUMN idisem SET DEFAULT nextval('public.upa_isem_idisem_seq'::regclass);
 >   ALTER TABLE public.upa_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    389    388            �           2604    17563    upa_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.upa_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    391    390            �           2604    17564    upa_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.upa_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.upa_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    393    392            �           2604    17565    upa_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.upa_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.upa_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    395    394                       2604    19851    upa_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.upa_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    605    604    605            �           2604    17567    upa_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.upa_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.upa_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    397    396            �           2604    17568    upa_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.upa_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    399    398            �           2604    17569    upa_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.upa_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.upa_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    401    400            �           2604    17570    upa_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.upa_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.upa_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    403    402            �           2604    17571    upa_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.upa_tasa_puntaje_ex_idtpex_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    405    404            �           2604    17572    usuarios idusuario    DEFAULT     x   ALTER TABLE ONLY public.usuarios ALTER COLUMN idusuario SET DEFAULT nextval('public.usuarios_idusuario_seq'::regclass);
 A   ALTER TABLE public.usuarios ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    407    406            �           2604    17573    uta_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.uta_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.uta_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.uta_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    409    408            �           2604    17574    uta_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.uta_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.uta_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.uta_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    411    410            �           2604    17575    uta_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.uta_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.uta_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.uta_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    413    412            �           2604    17576    uta_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.uta_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.uta_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.uta_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    415    414            �           2604    17577    uta_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.uta_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.uta_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.uta_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    417    416            �           2604    17578    uta_iseg_l idisegl    DEFAULT     x   ALTER TABLE ONLY public.uta_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.uta_iseg_l_idisegl_seq'::regclass);
 A   ALTER TABLE public.uta_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    419    418            �           2604    17579    uta_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.uta_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.uta_iseg_tsu_idisegtsu_seq'::regclass);
 E   ALTER TABLE public.uta_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    421    420            �           2604    17580    uta_isem_l idiseml    DEFAULT     x   ALTER TABLE ONLY public.uta_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.uta_isem_l_idiseml_seq'::regclass);
 A   ALTER TABLE public.uta_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    423    422            �           2604    17581    uta_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.uta_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.uta_isem_tsu_idisemtsu_seq'::regclass);
 E   ALTER TABLE public.uta_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    425    424            �           2604    17582    uta_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.uta_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.uta_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    427    426            �           2604    17583    uta_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.uta_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.uta_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    429    428            �           2604    17584    uta_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.uta_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.uta_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    431    430            �           2604    17585    uta_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.uta_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.uta_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    433    432            �           2604    17586    uta_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.uta_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.uta_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    435    434            �           2604    17587    uta_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.uta_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.uta_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    437    436            �           2604    17588    uta_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.uta_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.uta_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    439    438            �           2604    17589    uta_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.uta_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.uta_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    441    440            �           2604    17590 "   uta_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.uta_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 Q   ALTER TABLE public.uta_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    443    442            �           2604    17591    uta_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.uta_tasa_puntaje_exl_idtpexl_seq'::regclass);
 K   ALTER TABLE public.uta_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    445    444                       2604    19879     uta_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.uta_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 O   ALTER TABLE public.uta_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    608    609    609            �           2604    17593    utc_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utc_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utc_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.utc_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    447    446            �           2604    17594    utc_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utc_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utc_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.utc_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    449    448            �           2604    17595    utc_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utc_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utc_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.utc_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    451    450            �           2604    17596    utc_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.utc_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utc_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.utc_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    453    452            �           2604    17597    utc_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utc_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utc_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.utc_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    455    454            �           2604    17598    utc_iseg_l idisegl    DEFAULT     x   ALTER TABLE ONLY public.utc_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utc_iseg_l_idisegl_seq'::regclass);
 A   ALTER TABLE public.utc_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    457    456            �           2604    17599    utc_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utc_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utc_iseg_tsu_idisegtsu_seq'::regclass);
 E   ALTER TABLE public.utc_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    459    458            �           2604    17600    utc_isem_l idiseml    DEFAULT     x   ALTER TABLE ONLY public.utc_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utc_isem_l_idiseml_seq'::regclass);
 A   ALTER TABLE public.utc_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    461    460            �           2604    17601    utc_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utc_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utc_isem_tsu_idisemtsu_seq'::regclass);
 E   ALTER TABLE public.utc_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    463    462            �           2604    17602    utc_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utc_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.utc_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    465    464            �           2604    17603    utc_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utc_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.utc_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    467    466            �           2604    17604    utc_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utc_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.utc_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    469    468            �           2604    17605    utc_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utc_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.utc_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    471    470            �           2604    17606    utc_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utc_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.utc_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    473    472            �           2604    17607    utc_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utc_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.utc_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    475    474            �           2604    17608    utc_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utc_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.utc_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    477    476            �           2604    17609    utc_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utc_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.utc_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    479    478            �           2604    17610 "   utc_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.utc_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 Q   ALTER TABLE public.utc_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    481    480            �           2604    17611    utc_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utc_tasa_puntaje_exl_idtpexl_seq'::regclass);
 K   ALTER TABLE public.utc_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    483    482            �           2604    17612     utc_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utc_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 O   ALTER TABLE public.utc_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    485    484            �           2604    17613    utma_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utma_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utma_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.utma_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    487    486            �           2604    17614    utma_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utma_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utma_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.utma_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    489    488            �           2604    17615    utma_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utma_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utma_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.utma_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    491    490            �           2604    17616    utma_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.utma_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utma_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.utma_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    493    492            �           2604    17617    utma_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utma_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utma_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.utma_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    495    494            �           2604    17618    utma_iseg_l idisegl    DEFAULT     z   ALTER TABLE ONLY public.utma_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utma_iseg_l_idisegl_seq'::regclass);
 B   ALTER TABLE public.utma_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    497    496                       2604    19865    utma_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utma_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utma_iseg_tsu_idisegtsu_seq'::regclass);
 F   ALTER TABLE public.utma_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    607    606    607            �           2604    17620    utma_isem_l idiseml    DEFAULT     z   ALTER TABLE ONLY public.utma_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utma_isem_l_idiseml_seq'::regclass);
 B   ALTER TABLE public.utma_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    499    498            �           2604    17621    utma_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utma_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utma_isem_tsu_idisemtsu_seq'::regclass);
 F   ALTER TABLE public.utma_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    501    500            �           2604    17622    utma_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utma_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.utma_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    503    502            �           2604    17623    utma_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utma_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.utma_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    505    504            �           2604    17624    utma_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utma_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.utma_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    507    506            �           2604    17625    utma_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utma_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.utma_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    509    508            �           2604    17626    utma_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utma_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.utma_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    511    510            �           2604    17627    utma_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utma_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.utma_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    513    512            �           2604    17628    utma_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utma_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.utma_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    515    514            �           2604    17629    utma_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utma_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.utma_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    517    516            �           2604    17630 #   utma_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.utma_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 R   ALTER TABLE public.utma_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    519    518            �           2604    17631    utma_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utma_tasa_puntaje_exl_idtpexl_seq'::regclass);
 L   ALTER TABLE public.utma_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    521    520            �           2604    17632 !   utma_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utma_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 P   ALTER TABLE public.utma_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    523    522            �           2604    17633    utna_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utna_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utna_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.utna_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    525    524            �           2604    17634    utna_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utna_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utna_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.utna_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    527    526            �           2604    17635    utna_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utna_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.utna_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    529    528            �           2604    17636    utna_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utna_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.utna_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    531    530            �           2604    17637    utna_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utna_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.utna_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    533    532            �           2604    17638    utna_iseg_l idisegl    DEFAULT     z   ALTER TABLE ONLY public.utna_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utna_iseg_l_idisegl_seq'::regclass);
 B   ALTER TABLE public.utna_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    535    534            �           2604    17639    utna_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utna_iseg_tsu_idisegtsu_seq'::regclass);
 F   ALTER TABLE public.utna_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    537    536            �           2604    17640    utna_isem_l idiseml    DEFAULT     z   ALTER TABLE ONLY public.utna_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utna_isem_l_idiseml_seq'::regclass);
 B   ALTER TABLE public.utna_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    539    538            �           2604    17641    utna_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utna_isem_tsu_idisemtsu_seq'::regclass);
 F   ALTER TABLE public.utna_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    541    540            �           2604    17642    utna_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utna_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    543    542            �           2604    17643    utna_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utna_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.utna_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    545    544            �           2604    17644    utna_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utna_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.utna_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    547    546            �           2604    17645    utna_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utna_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    549    548            �           2604    17646    utna_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utna_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.utna_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    551    550            �           2604    17647    utna_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utna_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    553    552            �           2604    17648    utna_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utna_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    555    554            �           2604    17649    utna_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utna_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    557    556            �           2604    17650 #   utna_tasa_puntaje_egetsu idtpegestu    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu SET DEFAULT nextval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq'::regclass);
 R   ALTER TABLE public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu DROP DEFAULT;
       public          postgres    false    559    558            �           2604    17651    utna_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utna_tasa_puntaje_exl_idtpexl_seq'::regclass);
 L   ALTER TABLE public.utna_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    561    560            �           2604    17652 !   utna_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utna_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 P   ALTER TABLE public.utna_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    563    562            �           2604    17653    utr_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utr_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utr_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.utr_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    565    564            �           2604    17654    utr_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utr_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utr_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.utr_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    567    566            �           2604    17655    utr_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utr_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utr_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.utr_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    569    568            �           2604    17656    utr_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.utr_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utr_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.utr_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    571    570            �           2604    17657    utr_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utr_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utr_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.utr_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    573    572            �           2604    17658    utr_iseg_l idisegl    DEFAULT     x   ALTER TABLE ONLY public.utr_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utr_iseg_l_idisegl_seq'::regclass);
 A   ALTER TABLE public.utr_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    575    574            �           2604    17659    utr_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utr_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utr_iseg_tsu_idisegtsu_seq'::regclass);
 E   ALTER TABLE public.utr_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    577    576            �           2604    17660    utr_isem_l idiseml    DEFAULT     x   ALTER TABLE ONLY public.utr_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utr_isem_l_idiseml_seq'::regclass);
 A   ALTER TABLE public.utr_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    579    578            �           2604    17661    utr_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utr_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utr_isem_tsu_idisemtsu_seq'::regclass);
 E   ALTER TABLE public.utr_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    581    580            �           2604    17662    utr_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utr_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.utr_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    583    582            �           2604    17663    utr_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utr_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.utr_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    585    584            �           2604    17664    utr_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utr_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.utr_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    587    586            �           2604    17665    utr_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utr_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.utr_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    589    588            �           2604    17666    utr_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utr_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.utr_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    591    590            �           2604    17667    utr_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utr_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.utr_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    593    592            �           2604    17668    utr_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utr_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.utr_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    595    594            �           2604    17669    utr_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utr_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.utr_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    597    596            �           2604    17670 "   utr_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.utr_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 Q   ALTER TABLE public.utr_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    599    598            �           2604    17671    utr_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utr_tasa_puntaje_exl_idtpexl_seq'::regclass);
 K   ALTER TABLE public.utr_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    601    600                        2604    17672     utr_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utr_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 O   ALTER TABLE public.utr_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    603    602            �          0    16401    crena_carreras 
   TABLE DATA           g   COPY public.crena_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    214   D�      �          0    16405    crena_eficiencia_ire 
   TABLE DATA           �   COPY public.crena_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    216   ��      �          0    16411    crena_indice_colocacion 
   TABLE DATA           r   COPY public.crena_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    218   Ǆ      �          0    16417    crena_indice_ptc 
   TABLE DATA           �   COPY public.crena_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    220   �      �          0    16421    crena_indice_servicios 
   TABLE DATA           �  COPY public.crena_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    222   �      �          0    16427 
   crena_iseg 
   TABLE DATA           
  COPY public.crena_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    224   �      �          0    16433 
   crena_isem 
   TABLE DATA           �   COPY public.crena_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    226   ;�      �          0    16439    crena_tasa_acreditacion 
   TABLE DATA           �   COPY public.crena_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    228   X�      �          0    16443    crena_tasa_cobertura 
   TABLE DATA           \   COPY public.crena_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    230   u�                 0    16449    crena_tasa_docentes 
   TABLE DATA           �   COPY public.crena_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    232   ��                0    16455    crena_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.crena_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    234   ��                0    16461    crena_tasa_mov_docentes 
   TABLE DATA           �   COPY public.crena_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    236   ̅                0    16467    crena_tasa_pe_asat 
   TABLE DATA           ^   COPY public.crena_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    238   �                0    16471    crena_tasa_pe_pertinencia 
   TABLE DATA           e   COPY public.crena_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    240   �      
          0    16475    crena_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.crena_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    242   #�                0    16481    crena_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.crena_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    244   @�                0    16487    ena_carreras 
   TABLE DATA           e   COPY public.ena_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    246   ]�                0    16491    ena_eficiencia_ire 
   TABLE DATA           �   COPY public.ena_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    248                   0    16497    ena_indice_colocacion 
   TABLE DATA           p   COPY public.ena_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    250   ߆                0    16503    ena_indice_ptc 
   TABLE DATA           �   COPY public.ena_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    252   ��                0    16507    ena_indice_servicios 
   TABLE DATA           �  COPY public.ena_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    254   �                0    16513    ena_iseg 
   TABLE DATA             COPY public.ena_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    256   6�                0    16519    ena_isem 
   TABLE DATA           �   COPY public.ena_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    258   S�                0    16525    ena_tasa_acreditacion 
   TABLE DATA           �   COPY public.ena_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    260   p�                0    16529    ena_tasa_cobertura 
   TABLE DATA           Z   COPY public.ena_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    262   ��                 0    16535    ena_tasa_docentes 
   TABLE DATA           �   COPY public.ena_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    264   ��      "          0    16541    ena_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.ena_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    266   Ǉ      $          0    16547    ena_tasa_mov_docentes 
   TABLE DATA           �   COPY public.ena_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    268   �      &          0    16553    ena_tasa_pe_asat 
   TABLE DATA           \   COPY public.ena_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    270   �      (          0    16557    ena_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.ena_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    272   �      *          0    16561    ena_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.ena_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    274   ;�      ,          0    16567    ena_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.ena_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    276   X�      .          0    16573    enrjsm_carreras 
   TABLE DATA           h   COPY public.enrjsm_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    278   u�      0          0    16577    enrjsm_eficiencia_ire 
   TABLE DATA           �   COPY public.enrjsm_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    280   ň      2          0    16583    enrjsm_indice_colocacion 
   TABLE DATA           s   COPY public.enrjsm_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    282   �      4          0    16589    enrjsm_indice_ptc 
   TABLE DATA           �   COPY public.enrjsm_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    284   ��      6          0    16593    enrjsm_indice_servicios 
   TABLE DATA           �  COPY public.enrjsm_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    286   �      8          0    16599    enrjsm_iseg 
   TABLE DATA             COPY public.enrjsm_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    288   9�      :          0    16605    enrjsm_isem 
   TABLE DATA           �   COPY public.enrjsm_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    290   V�      <          0    16611    enrjsm_tasa_acreditacion 
   TABLE DATA           �   COPY public.enrjsm_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    292   s�      >          0    16615    enrjsm_tasa_cobertura 
   TABLE DATA           ]   COPY public.enrjsm_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    294   ��      @          0    16621    enrjsm_tasa_docentes 
   TABLE DATA           �   COPY public.enrjsm_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    296   ��      B          0    16627    enrjsm_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.enrjsm_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    298   ʉ      D          0    16633    enrjsm_tasa_mov_docentes 
   TABLE DATA           �   COPY public.enrjsm_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    300   �      F          0    16639    enrjsm_tasa_pe_asat 
   TABLE DATA           _   COPY public.enrjsm_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    302   �      H          0    16643    enrjsm_tasa_pe_pertinencia 
   TABLE DATA           f   COPY public.enrjsm_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    304   !�      J          0    16647    enrjsm_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.enrjsm_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    306   >�      L          0    16653    enrjsm_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.enrjsm_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    308   [�      N          0    16659    enrr_carreras 
   TABLE DATA           f   COPY public.enrr_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    310   x�      P          0    16663    enrr_eficiencia_ire 
   TABLE DATA           �   COPY public.enrr_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    312   Պ      R          0    16669    enrr_indice_colocacion 
   TABLE DATA           q   COPY public.enrr_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    314   �      T          0    16675    enrr_indice_ptc 
   TABLE DATA           �   COPY public.enrr_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    316   �      V          0    16679    enrr_indice_servicios 
   TABLE DATA           �  COPY public.enrr_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    318   ,�      X          0    16685 	   enrr_iseg 
   TABLE DATA           	  COPY public.enrr_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    320   I�      Z          0    16691 	   enrr_isem 
   TABLE DATA           �   COPY public.enrr_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    322   f�      \          0    16697    enrr_tasa_acreditacion 
   TABLE DATA           �   COPY public.enrr_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    324   ��      ^          0    16701    enrr_tasa_cobertura 
   TABLE DATA           [   COPY public.enrr_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    326   ��      `          0    16707    enrr_tasa_docentes 
   TABLE DATA           �   COPY public.enrr_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    328   ��      b          0    16713    enrr_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.enrr_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    330   ڋ      d          0    16719    enrr_tasa_mov_docentes 
   TABLE DATA           �   COPY public.enrr_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    332   ��      f          0    16725    enrr_tasa_pe_asat 
   TABLE DATA           ]   COPY public.enrr_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    334   �      h          0    16729    enrr_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.enrr_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    336   1�      j          0    16733    enrr_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.enrr_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    338   N�      l          0    16739    enrr_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.enrr_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    340   k�      n          0    16745    ensfa_carreras 
   TABLE DATA           g   COPY public.ensfa_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    342   ��      p          0    16749    ensfa_eficiencia_ire 
   TABLE DATA           �   COPY public.ensfa_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    344   ��      r          0    16755    ensfa_indice_colocacion 
   TABLE DATA           r   COPY public.ensfa_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    346   ��      t          0    16761    ensfa_indice_ptc 
   TABLE DATA           �   COPY public.ensfa_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    348   ��      v          0    16765    ensfa_indice_servicios 
   TABLE DATA           �  COPY public.ensfa_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    350   ؍      x          0    16771 
   ensfa_iseg 
   TABLE DATA           
  COPY public.ensfa_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    352   ��      z          0    16777 
   ensfa_isem 
   TABLE DATA           �   COPY public.ensfa_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    354   �      |          0    16783    ensfa_tasa_acreditacion 
   TABLE DATA           �   COPY public.ensfa_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    356   /�      ~          0    16787    ensfa_tasa_cobertura 
   TABLE DATA           \   COPY public.ensfa_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    358   L�      �          0    16793    ensfa_tasa_docentes 
   TABLE DATA           �   COPY public.ensfa_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    360   i�      �          0    16799    ensfa_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.ensfa_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    362   ��      �          0    16805    ensfa_tasa_mov_docentes 
   TABLE DATA           �   COPY public.ensfa_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    364   ��      �          0    16811    ensfa_tasa_pe_asat 
   TABLE DATA           ^   COPY public.ensfa_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    366   ��      �          0    16815    ensfa_tasa_pe_pertinencia 
   TABLE DATA           e   COPY public.ensfa_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    368   ݎ      �          0    16819    ensfa_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.ensfa_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    370   ��      �          0    16825    ensfa_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.ensfa_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    372   �      �          0    16831    universidades 
   TABLE DATA           Z   COPY public.universidades (iduniversidad, abreviacion, nombre, plan_estudios) FROM stdin;
    public          postgres    false    374   4�      �          0    16835    upa_carreras 
   TABLE DATA           e   COPY public.upa_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    376   ��      �          0    16839    upa_eficiencia_ire 
   TABLE DATA           �   COPY public.upa_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    378   q�      �          0    16845    upa_indice_colocacion 
   TABLE DATA           p   COPY public.upa_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    380   ��      �          0    16851    upa_indice_ptc 
   TABLE DATA           �   COPY public.upa_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    382   �      �          0    16855    upa_indice_servicios 
   TABLE DATA           �  COPY public.upa_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    384   8�      �          0    16861    upa_iseg 
   TABLE DATA             COPY public.upa_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    386   U�      �          0    16867    upa_isem 
   TABLE DATA           �   COPY public.upa_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    388   ړ      �          0    16873    upa_tasa_acreditacion 
   TABLE DATA           �   COPY public.upa_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    390   �      �          0    16877    upa_tasa_cobertura 
   TABLE DATA           Z   COPY public.upa_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    392   ��      �          0    16883    upa_tasa_docentes 
   TABLE DATA           �   COPY public.upa_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    394   ��      u          0    19848    upa_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.upa_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    605   ֔      �          0    16895    upa_tasa_mov_docentes 
   TABLE DATA           �   COPY public.upa_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    396   ��      �          0    16901    upa_tasa_pe_asat 
   TABLE DATA           \   COPY public.upa_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    398   ��      �          0    16905    upa_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.upa_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    400   Ö      �          0    16909    upa_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.upa_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    402   �      �          0    16915    upa_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.upa_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    404   1�      �          0    16921    usuarios 
   TABLE DATA           `   COPY public.usuarios (idusuario, nombre_usuario, "contraseña", cargo, universidad) FROM stdin;
    public          postgres    false    406   N�      �          0    16925    uta_carreras 
   TABLE DATA           r   COPY public.uta_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    408   3�      �          0    16929    uta_eficiencia_ire 
   TABLE DATA           �   COPY public.uta_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    410   ��      �          0    16935    uta_indice_colocacion 
   TABLE DATA           p   COPY public.uta_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    412   Ǜ      �          0    16941    uta_indice_ptc 
   TABLE DATA           �   COPY public.uta_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    414   ğ      �          0    16945    uta_indice_servicios 
   TABLE DATA           �  COPY public.uta_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    416   x�      �          0    16951 
   uta_iseg_l 
   TABLE DATA             COPY public.uta_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    418   ��      �          0    16957    uta_iseg_tsu 
   TABLE DATA             COPY public.uta_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    420   w�      �          0    16963 
   uta_isem_l 
   TABLE DATA           �   COPY public.uta_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    422   �      �          0    16969    uta_isem_tsu 
   TABLE DATA           �   COPY public.uta_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    424   ��      �          0    16975    uta_tasa_acreditacion 
   TABLE DATA           �   COPY public.uta_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    426   ;�      �          0    16979    uta_tasa_cobertura 
   TABLE DATA           Z   COPY public.uta_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    428   X�      �          0    16985    uta_tasa_docentes 
   TABLE DATA           �   COPY public.uta_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    430   u�      �          0    16991    uta_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.uta_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    432   ��      �          0    16997    uta_tasa_mov_docentes 
   TABLE DATA           �   COPY public.uta_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    434   ��      �          0    17003    uta_tasa_pe_asat 
   TABLE DATA           \   COPY public.uta_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    436   ��      �          0    17007    uta_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.uta_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    438   ǩ      �          0    17011    uta_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    440   M�      �          0    17017    uta_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    442   j�      �          0    17023    uta_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    444   ��      y          0    19876    uta_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    609   %�      �          0    17035    utc_carreras 
   TABLE DATA           r   COPY public.utc_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    446   ǫ      �          0    17039    utc_eficiencia_ire 
   TABLE DATA           �   COPY public.utc_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    448   I�      �          0    17045    utc_indice_colocacion 
   TABLE DATA           p   COPY public.utc_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    450   f�      �          0    17051    utc_indice_ptc 
   TABLE DATA           �   COPY public.utc_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    452   �      �          0    17055    utc_indice_servicios 
   TABLE DATA           �  COPY public.utc_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    454   ̯      �          0    17061 
   utc_iseg_l 
   TABLE DATA             COPY public.utc_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    456   �      �          0    17067    utc_iseg_tsu 
   TABLE DATA             COPY public.utc_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    458   �      �          0    17073 
   utc_isem_l 
   TABLE DATA           �   COPY public.utc_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    460   #�      �          0    17079    utc_isem_tsu 
   TABLE DATA           �   COPY public.utc_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    462   @�      �          0    17085    utc_tasa_acreditacion 
   TABLE DATA           �   COPY public.utc_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    464   ]�      �          0    17089    utc_tasa_cobertura 
   TABLE DATA           Z   COPY public.utc_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    466   z�      �          0    17095    utc_tasa_docentes 
   TABLE DATA           �   COPY public.utc_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    468   ��      �          0    17101    utc_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utc_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    470   ��      �          0    17107    utc_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utc_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    472   {�      �          0    17113    utc_tasa_pe_asat 
   TABLE DATA           \   COPY public.utc_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    474   ��      �          0    17117    utc_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.utc_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    476   ��      �          0    17121    utc_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    478   �      �          0    17127    utc_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    480   )�      �          0    17133    utc_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    482   F�      �          0    17139    utc_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    484   c�      �          0    17145    utma_carreras 
   TABLE DATA           s   COPY public.utma_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    486   ��                 0    17149    utma_eficiencia_ire 
   TABLE DATA           �   COPY public.utma_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    488   �                0    17155    utma_indice_colocacion 
   TABLE DATA           q   COPY public.utma_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    490   �                0    17161    utma_indice_ptc 
   TABLE DATA           �   COPY public.utma_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    492   ��                0    17165    utma_indice_servicios 
   TABLE DATA           �  COPY public.utma_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    494   k�                0    17171    utma_iseg_l 
   TABLE DATA             COPY public.utma_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    496   ��      w          0    19862    utma_iseg_tsu 
   TABLE DATA             COPY public.utma_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    607   ֶ      
          0    17183    utma_isem_l 
   TABLE DATA           �   COPY public.utma_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    498   R�                0    17189    utma_isem_tsu 
   TABLE DATA           �   COPY public.utma_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    500   ��                0    17195    utma_tasa_acreditacion 
   TABLE DATA           �   COPY public.utma_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    502   �                0    17199    utma_tasa_cobertura 
   TABLE DATA           [   COPY public.utma_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    504   �                0    17205    utma_tasa_docentes 
   TABLE DATA           �   COPY public.utma_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    506   +�                0    17211    utma_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utma_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    508   H�                0    17217    utma_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utma_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    510   7�                0    17223    utma_tasa_pe_asat 
   TABLE DATA           ]   COPY public.utma_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    512   T�                0    17227    utma_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.utma_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    514   q�                0    17231    utma_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    516   ��                0    17237    utma_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    518   ҹ                 0    17243    utma_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    520   �      "          0    17249    utma_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    522   �      $          0    17255    utna_carreras 
   TABLE DATA           s   COPY public.utna_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    524   )�      &          0    17259    utna_eficiencia_ire 
   TABLE DATA           �   COPY public.utna_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    526   ż      (          0    17265    utna_indice_colocacion 
   TABLE DATA           q   COPY public.utna_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    528   �      *          0    17271    utna_indice_ptc 
   TABLE DATA           �   COPY public.utna_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    530   ��      ,          0    17275    utna_indice_servicios 
   TABLE DATA           �  COPY public.utna_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    532   ��      .          0    17281    utna_iseg_l 
   TABLE DATA             COPY public.utna_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    534   
�      0          0    17287    utna_iseg_tsu 
   TABLE DATA             COPY public.utna_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    536   ��      2          0    17293    utna_isem_l 
   TABLE DATA           �   COPY public.utna_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    538   �      4          0    17299    utna_isem_tsu 
   TABLE DATA           �   COPY public.utna_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    540   ��      6          0    17305    utna_tasa_acreditacion 
   TABLE DATA           �   COPY public.utna_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    542   �      8          0    17309    utna_tasa_cobertura 
   TABLE DATA           [   COPY public.utna_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    544   ,�      :          0    17315    utna_tasa_docentes 
   TABLE DATA           �   COPY public.utna_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    546   I�      <          0    17321    utna_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utna_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    548   f�      >          0    17327    utna_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utna_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    550   ��      @          0    17333    utna_tasa_pe_asat 
   TABLE DATA           ]   COPY public.utna_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    552   ��      B          0    17337    utna_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.utna_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    554   ��      D          0    17341    utna_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    556   ��      F          0    17347    utna_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egetsu (idtpegestu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    558   .�      H          0    17353    utna_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    560   ��      J          0    17359    utna_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    562   ��      L          0    17365    utr_carreras 
   TABLE DATA           r   COPY public.utr_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    564   �      N          0    17369    utr_eficiencia_ire 
   TABLE DATA           �   COPY public.utr_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    566   ��      P          0    17375    utr_indice_colocacion 
   TABLE DATA           p   COPY public.utr_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    568   ��      R          0    17381    utr_indice_ptc 
   TABLE DATA           �   COPY public.utr_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    570   `�      T          0    17385    utr_indice_servicios 
   TABLE DATA           �  COPY public.utr_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    572   }�      V          0    17391 
   utr_iseg_l 
   TABLE DATA             COPY public.utr_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    574   ��      X          0    17397    utr_iseg_tsu 
   TABLE DATA             COPY public.utr_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    576   %�      Z          0    17403 
   utr_isem_l 
   TABLE DATA           �   COPY public.utr_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    578   ��      \          0    17409    utr_isem_tsu 
   TABLE DATA           �   COPY public.utr_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    580   *�      ^          0    17415    utr_tasa_acreditacion 
   TABLE DATA           �   COPY public.utr_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    582   {�      `          0    17419    utr_tasa_cobertura 
   TABLE DATA           Z   COPY public.utr_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    584   ��      b          0    17425    utr_tasa_docentes 
   TABLE DATA           �   COPY public.utr_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    586   ��      d          0    17431    utr_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utr_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    588   ��      f          0    17437    utr_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utr_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    590   �      h          0    17443    utr_tasa_pe_asat 
   TABLE DATA           \   COPY public.utr_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    592   �      j          0    17447    utr_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.utr_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    594   ;�      l          0    17451    utr_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    596   X�      n          0    17457    utr_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    598   u�      p          0    17463    utr_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    600   ��      r          0    17469    utr_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    602   ��      F           0    0    crena_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.crena_carreras_idcarrera_seq', 6, true);
          public          postgres    false    215            G           0    0    crena_eficiencia_ire_ideire_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.crena_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    217            H           0    0     crena_indice_colocacion_idic_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    219            I           0    0    crena_indice_ptc_idiptc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.crena_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    221            J           0    0    crena_indice_servicios_idis_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.crena_indice_servicios_idis_seq', 1, false);
          public          postgres    false    223            K           0    0    crena_iseg_idiseg_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.crena_iseg_idiseg_seq', 1, false);
          public          postgres    false    225            L           0    0    crena_isem_idisem_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.crena_isem_idisem_seq', 1, false);
          public          postgres    false    227            M           0    0     crena_tasa_acreditacion_idta_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    229            N           0    0    crena_tasa_cobertura_idtc_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.crena_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    231            O           0    0    crena_tasa_docentes_idtd_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.crena_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    233            P           0    0     crena_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    235            Q           0    0 !   crena_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.crena_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    237            R           0    0     crena_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    239            S           0    0 $   crena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.crena_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    241            T           0    0 $   crena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.crena_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    243            U           0    0     crena_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    245            V           0    0    ena_carreras_idcarrera_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ena_carreras_idcarrera_seq', 3, true);
          public          postgres    false    247            W           0    0    ena_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ena_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    249            X           0    0    ena_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    251            Y           0    0    ena_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ena_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    253            Z           0    0    ena_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ena_indice_servicios_idis_seq', 1, false);
          public          postgres    false    255            [           0    0    ena_iseg_idiseg_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ena_iseg_idiseg_seq', 1, false);
          public          postgres    false    257            \           0    0    ena_isem_idisem_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ena_isem_idisem_seq', 1, false);
          public          postgres    false    259            ]           0    0    ena_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    261            ^           0    0    ena_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ena_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    263            _           0    0    ena_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ena_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    265            `           0    0    ena_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    267            a           0    0    ena_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ena_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    269            b           0    0    ena_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    271            c           0    0 "   ena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ena_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    273            d           0    0 "   ena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ena_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    275            e           0    0    ena_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    277            f           0    0    enrjsm_carreras_idcarrera_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enrjsm_carreras_idcarrera_seq', 1, true);
          public          postgres    false    279            g           0    0     enrjsm_eficiencia_ire_ideire_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.enrjsm_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    281            h           0    0 !   enrjsm_indice_colocacion_idic_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    283            i           0    0    enrjsm_indice_ptc_idiptc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enrjsm_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    285            j           0    0     enrjsm_indice_servicios_idis_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.enrjsm_indice_servicios_idis_seq', 1, false);
          public          postgres    false    287            k           0    0    enrjsm_iseg_idiseg_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.enrjsm_iseg_idiseg_seq', 1, false);
          public          postgres    false    289            l           0    0    enrjsm_isem_idisem_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.enrjsm_isem_idisem_seq', 1, false);
          public          postgres    false    291            m           0    0 !   enrjsm_tasa_acreditacion_idta_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    293            n           0    0    enrjsm_tasa_cobertura_idtc_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.enrjsm_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    295            o           0    0    enrjsm_tasa_docentes_idtd_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.enrjsm_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    297            p           0    0 !   enrjsm_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    299            q           0    0 "   enrjsm_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.enrjsm_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    301            r           0    0 !   enrjsm_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    303            s           0    0 %   enrjsm_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.enrjsm_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    305            t           0    0 %   enrjsm_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.enrjsm_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    307            u           0    0 !   enrjsm_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    309            v           0    0    enrr_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.enrr_carreras_idcarrera_seq', 2, true);
          public          postgres    false    311            w           0    0    enrr_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.enrr_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    313            x           0    0    enrr_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    315            y           0    0    enrr_indice_ptc_idiptc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.enrr_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    317            z           0    0    enrr_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.enrr_indice_servicios_idis_seq', 1, false);
          public          postgres    false    319            {           0    0    enrr_iseg_idiseg_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.enrr_iseg_idiseg_seq', 1, false);
          public          postgres    false    321            |           0    0    enrr_isem_idisem_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.enrr_isem_idisem_seq', 1, false);
          public          postgres    false    323            }           0    0    enrr_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    325            ~           0    0    enrr_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enrr_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    327                       0    0    enrr_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.enrr_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    329            �           0    0    enrr_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    331            �           0    0     enrr_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.enrr_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    333            �           0    0    enrr_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    335            �           0    0 #   enrr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.enrr_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    337            �           0    0 #   enrr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.enrr_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    339            �           0    0    enrr_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    341            �           0    0    ensfa_carreras_idcarrera_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ensfa_carreras_idcarrera_seq', 10, true);
          public          postgres    false    343            �           0    0    ensfa_eficiencia_ire_ideire_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ensfa_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    345            �           0    0     ensfa_indice_colocacion_idic_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    347            �           0    0    ensfa_indice_ptc_idiptc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ensfa_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    349            �           0    0    ensfa_indice_servicios_idis_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ensfa_indice_servicios_idis_seq', 1, false);
          public          postgres    false    351            �           0    0    ensfa_iseg_idiseg_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ensfa_iseg_idiseg_seq', 1, false);
          public          postgres    false    353            �           0    0    ensfa_isem_idisem_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ensfa_isem_idisem_seq', 1, false);
          public          postgres    false    355            �           0    0     ensfa_tasa_acreditacion_idta_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    357            �           0    0    ensfa_tasa_cobertura_idtc_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ensfa_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    359            �           0    0    ensfa_tasa_docentes_idtd_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ensfa_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    361            �           0    0     ensfa_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    363            �           0    0 !   ensfa_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.ensfa_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    365            �           0    0     ensfa_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    367            �           0    0 $   ensfa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.ensfa_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    369            �           0    0 $   ensfa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.ensfa_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    371            �           0    0     ensfa_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    373            �           0    0    universidades_iduniversidad_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.universidades_iduniversidad_seq', 11, true);
          public          postgres    false    375            �           0    0    upa_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.upa_carreras_idcarrera_seq', 10, true);
          public          postgres    false    377            �           0    0    upa_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.upa_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    379            �           0    0    upa_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_indice_colocacion_idic_seq', 80, true);
          public          postgres    false    381            �           0    0    upa_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.upa_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    383            �           0    0    upa_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.upa_indice_servicios_idis_seq', 1, false);
          public          postgres    false    385            �           0    0    upa_iseg_idiseg_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.upa_iseg_idiseg_seq', 10, true);
          public          postgres    false    387            �           0    0    upa_isem_idisem_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.upa_isem_idisem_seq', 10, true);
          public          postgres    false    389            �           0    0    upa_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    391            �           0    0    upa_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.upa_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    393            �           0    0    upa_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.upa_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    395            �           0    0    upa_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_mov_alumnos_idtma_seq', 30, true);
          public          postgres    false    604            �           0    0    upa_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.upa_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    397            �           0    0    upa_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    399            �           0    0 "   upa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upa_tasa_pe_pertinencia_idtpep_seq', 10, true);
          public          postgres    false    401            �           0    0 "   upa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upa_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    403            �           0    0    upa_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    405            �           0    0    usuarios_idusuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_idusuario_seq', 22, true);
          public          postgres    false    407            �           0    0    uta_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_carreras_idcarrera_seq', 24, true);
          public          postgres    false    409            �           0    0    uta_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.uta_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    411            �           0    0    uta_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.uta_indice_colocacion_idic_seq', 120, true);
          public          postgres    false    413            �           0    0    uta_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.uta_indice_ptc_idiptc_seq', 10, true);
          public          postgres    false    415            �           0    0    uta_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.uta_indice_servicios_idis_seq', 1, false);
          public          postgres    false    417            �           0    0    uta_iseg_l_idisegl_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.uta_iseg_l_idisegl_seq', 11, true);
          public          postgres    false    419            �           0    0    uta_iseg_tsu_idisegtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_iseg_tsu_idisegtsu_seq', 13, true);
          public          postgres    false    421            �           0    0    uta_isem_l_idiseml_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.uta_isem_l_idiseml_seq', 11, true);
          public          postgres    false    423            �           0    0    uta_isem_tsu_idisemtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_isem_tsu_idisemtsu_seq', 13, true);
          public          postgres    false    425            �           0    0    uta_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.uta_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    427            �           0    0    uta_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.uta_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    429            �           0    0    uta_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    431            �           0    0    uta_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.uta_tasa_mov_alumnos_idtma_seq', 120, true);
          public          postgres    false    433            �           0    0    uta_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.uta_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    435            �           0    0    uta_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.uta_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    437            �           0    0 "   uta_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.uta_tasa_pe_pertinencia_idtpep_seq', 24, true);
          public          postgres    false    439            �           0    0 "   uta_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.uta_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    441            �           0    0 &   uta_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.uta_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    443            �           0    0     uta_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.uta_tasa_puntaje_exl_idtpexl_seq', 11, true);
          public          postgres    false    445            �           0    0 $   uta_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.uta_tasa_puntaje_extsu_idtpextsu_seq', 13, true);
          public          postgres    false    608            �           0    0    utc_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_carreras_idcarrera_seq', 12, true);
          public          postgres    false    447            �           0    0    utc_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utc_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    449            �           0    0    utc_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_indice_colocacion_idic_seq', 60, true);
          public          postgres    false    451            �           0    0    utc_indice_ptc_idiptc_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.utc_indice_ptc_idiptc_seq', 3, true);
          public          postgres    false    453            �           0    0    utc_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utc_indice_servicios_idis_seq', 1, false);
          public          postgres    false    455            �           0    0    utc_iseg_l_idisegl_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utc_iseg_l_idisegl_seq', 1, false);
          public          postgres    false    457            �           0    0    utc_iseg_tsu_idisegtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_iseg_tsu_idisegtsu_seq', 1, false);
          public          postgres    false    459            �           0    0    utc_isem_l_idiseml_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utc_isem_l_idiseml_seq', 1, false);
          public          postgres    false    461            �           0    0    utc_isem_tsu_idisemtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_isem_tsu_idisemtsu_seq', 1, false);
          public          postgres    false    463            �           0    0    utc_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    465            �           0    0    utc_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utc_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    467            �           0    0    utc_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    469            �           0    0    utc_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_tasa_mov_alumnos_idtma_seq', 60, true);
          public          postgres    false    471            �           0    0    utc_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utc_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    473            �           0    0    utc_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    475            �           0    0 "   utc_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utc_tasa_pe_pertinencia_idtpep_seq', 12, true);
          public          postgres    false    477            �           0    0 "   utc_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utc_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    479            �           0    0 &   utc_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.utc_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    481            �           0    0     utc_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utc_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    483            �           0    0 $   utc_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.utc_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    485            �           0    0    utma_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utma_carreras_idcarrera_seq', 12, true);
          public          postgres    false    487            �           0    0    utma_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utma_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    489            �           0    0    utma_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_indice_colocacion_idic_seq', 24, true);
          public          postgres    false    491            �           0    0    utma_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.utma_indice_ptc_idiptc_seq', 1, true);
          public          postgres    false    493            �           0    0    utma_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utma_indice_servicios_idis_seq', 1, false);
          public          postgres    false    495            �           0    0    utma_iseg_l_idisegl_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utma_iseg_l_idisegl_seq', 2, true);
          public          postgres    false    497            �           0    0    utma_iseg_tsu_idisegtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utma_iseg_tsu_idisegtsu_seq', 4, true);
          public          postgres    false    606            �           0    0    utma_isem_l_idiseml_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utma_isem_l_idiseml_seq', 2, true);
          public          postgres    false    499            �           0    0    utma_isem_tsu_idisemtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utma_isem_tsu_idisemtsu_seq', 4, true);
          public          postgres    false    501            �           0    0    utma_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    503            �           0    0    utma_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.utma_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    505            �           0    0    utma_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utma_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    507            �           0    0    utma_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_tasa_mov_alumnos_idtma_seq', 30, true);
          public          postgres    false    509            �           0    0     utma_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utma_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    511            �           0    0    utma_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    513            �           0    0 #   utma_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utma_tasa_pe_pertinencia_idtpep_seq', 6, true);
          public          postgres    false    515            �           0    0 #   utma_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utma_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    517            �           0    0 '   utma_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.utma_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    519            �           0    0 !   utma_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.utma_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    521            �           0    0 %   utma_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.utma_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    523            �           0    0    utna_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_carreras_idcarrera_seq', 29, true);
          public          postgres    false    525            �           0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    527            �           0    0    utna_indice_colocacion_idic_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_indice_colocacion_idic_seq', 140, true);
          public          postgres    false    529            �           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utna_indice_ptc_idiptc_seq', 51, true);
          public          postgres    false    531            �           0    0    utna_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_indice_servicios_idis_seq', 1, false);
          public          postgres    false    533            �           0    0    utna_iseg_l_idisegl_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_iseg_l_idisegl_seq', 12, true);
          public          postgres    false    535            �           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_iseg_tsu_idisegtsu_seq', 17, true);
          public          postgres    false    537            �           0    0    utna_isem_l_idiseml_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_isem_l_idiseml_seq', 12, true);
          public          postgres    false    539            �           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_isem_tsu_idisemtsu_seq', 17, true);
          public          postgres    false    541            �           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    543            �           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.utna_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    545            �           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    547            �           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_tasa_mov_alumnos_idtma_seq', 145, true);
          public          postgres    false    549            �           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    551            �           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_pe_asat_idtpeasat_seq', 29, true);
          public          postgres    false    553            �           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_pe_pertinencia_idtpep_seq', 29, true);
          public          postgres    false    555            �           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egel_idtpegel_seq', 12, true);
          public          postgres    false    557            �           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq', 17, true);
          public          postgres    false    559            �           0    0 !   utna_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.utna_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    561            �           0    0 %   utna_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.utna_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    563            �           0    0    utr_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utr_carreras_idcarrera_seq', 13, true);
          public          postgres    false    565            �           0    0    utr_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utr_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    567            �           0    0    utr_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_indice_colocacion_idic_seq', 60, true);
          public          postgres    false    569            �           0    0    utr_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.utr_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    571            �           0    0    utr_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utr_indice_servicios_idis_seq', 1, false);
          public          postgres    false    573            �           0    0    utr_iseg_l_idisegl_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.utr_iseg_l_idisegl_seq', 5, true);
          public          postgres    false    575            �           0    0    utr_iseg_tsu_idisegtsu_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.utr_iseg_tsu_idisegtsu_seq', 7, true);
          public          postgres    false    577            �           0    0    utr_isem_l_idiseml_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.utr_isem_l_idiseml_seq', 5, true);
          public          postgres    false    579                        0    0    utr_isem_tsu_idisemtsu_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.utr_isem_tsu_idisemtsu_seq', 7, true);
          public          postgres    false    581                       0    0    utr_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    583                       0    0    utr_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utr_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    585                       0    0    utr_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utr_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    587                       0    0    utr_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_tasa_mov_alumnos_idtma_seq', 60, true);
          public          postgres    false    589                       0    0    utr_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utr_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    591                       0    0    utr_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    593                       0    0 "   utr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utr_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    595                       0    0 "   utr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utr_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    597            	           0    0 &   utr_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.utr_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    599            
           0    0     utr_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utr_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    601                       0    0 $   utr_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.utr_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    603                       2606    17674 "   crena_carreras crena_carreras_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.crena_carreras
    ADD CONSTRAINT crena_carreras_pkey PRIMARY KEY (idcarrera);
 L   ALTER TABLE ONLY public.crena_carreras DROP CONSTRAINT crena_carreras_pkey;
       public            postgres    false    214                       2606    17676 .   crena_eficiencia_ire crena_eficiencia_ire_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.crena_eficiencia_ire
    ADD CONSTRAINT crena_eficiencia_ire_pkey PRIMARY KEY (ideire);
 X   ALTER TABLE ONLY public.crena_eficiencia_ire DROP CONSTRAINT crena_eficiencia_ire_pkey;
       public            postgres    false    216            	           2606    17678 4   crena_indice_colocacion crena_indice_colocacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.crena_indice_colocacion
    ADD CONSTRAINT crena_indice_colocacion_pkey PRIMARY KEY (idic);
 ^   ALTER TABLE ONLY public.crena_indice_colocacion DROP CONSTRAINT crena_indice_colocacion_pkey;
       public            postgres    false    218                       2606    17680 &   crena_indice_ptc crena_indice_ptc_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.crena_indice_ptc
    ADD CONSTRAINT crena_indice_ptc_pkey PRIMARY KEY (idiptc);
 P   ALTER TABLE ONLY public.crena_indice_ptc DROP CONSTRAINT crena_indice_ptc_pkey;
       public            postgres    false    220                       2606    17682 2   crena_indice_servicios crena_indice_servicios_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.crena_indice_servicios
    ADD CONSTRAINT crena_indice_servicios_pkey PRIMARY KEY (idis);
 \   ALTER TABLE ONLY public.crena_indice_servicios DROP CONSTRAINT crena_indice_servicios_pkey;
       public            postgres    false    222                       2606    17684    crena_iseg crena_iseg_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.crena_iseg
    ADD CONSTRAINT crena_iseg_pkey PRIMARY KEY (idiseg);
 D   ALTER TABLE ONLY public.crena_iseg DROP CONSTRAINT crena_iseg_pkey;
       public            postgres    false    224                       2606    17686    crena_isem crena_isem_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.crena_isem
    ADD CONSTRAINT crena_isem_pkey PRIMARY KEY (idisem);
 D   ALTER TABLE ONLY public.crena_isem DROP CONSTRAINT crena_isem_pkey;
       public            postgres    false    226                       2606    17688 4   crena_tasa_acreditacion crena_tasa_acreditacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.crena_tasa_acreditacion
    ADD CONSTRAINT crena_tasa_acreditacion_pkey PRIMARY KEY (idta);
 ^   ALTER TABLE ONLY public.crena_tasa_acreditacion DROP CONSTRAINT crena_tasa_acreditacion_pkey;
       public            postgres    false    228                       2606    17690 .   crena_tasa_cobertura crena_tasa_cobertura_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.crena_tasa_cobertura
    ADD CONSTRAINT crena_tasa_cobertura_pkey PRIMARY KEY (idtc);
 X   ALTER TABLE ONLY public.crena_tasa_cobertura DROP CONSTRAINT crena_tasa_cobertura_pkey;
       public            postgres    false    230                       2606    17692 ,   crena_tasa_docentes crena_tasa_docentes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.crena_tasa_docentes
    ADD CONSTRAINT crena_tasa_docentes_pkey PRIMARY KEY (idtd);
 V   ALTER TABLE ONLY public.crena_tasa_docentes DROP CONSTRAINT crena_tasa_docentes_pkey;
       public            postgres    false    232                       2606    17694 2   crena_tasa_mov_alumnos crena_tasa_mov_alumnos_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.crena_tasa_mov_alumnos
    ADD CONSTRAINT crena_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 \   ALTER TABLE ONLY public.crena_tasa_mov_alumnos DROP CONSTRAINT crena_tasa_mov_alumnos_pkey;
       public            postgres    false    234                       2606    17696 4   crena_tasa_mov_docentes crena_tasa_mov_docentes_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.crena_tasa_mov_docentes
    ADD CONSTRAINT crena_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 ^   ALTER TABLE ONLY public.crena_tasa_mov_docentes DROP CONSTRAINT crena_tasa_mov_docentes_pkey;
       public            postgres    false    236                       2606    17698 *   crena_tasa_pe_asat crena_tasa_pe_asat_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.crena_tasa_pe_asat
    ADD CONSTRAINT crena_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 T   ALTER TABLE ONLY public.crena_tasa_pe_asat DROP CONSTRAINT crena_tasa_pe_asat_pkey;
       public            postgres    false    238                       2606    17700 8   crena_tasa_pe_pertinencia crena_tasa_pe_pertinencia_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia
    ADD CONSTRAINT crena_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 b   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia DROP CONSTRAINT crena_tasa_pe_pertinencia_pkey;
       public            postgres    false    240            !           2606    17702 4   crena_tasa_puntaje_egel crena_tasa_puntaje_egel_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.crena_tasa_puntaje_egel
    ADD CONSTRAINT crena_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 ^   ALTER TABLE ONLY public.crena_tasa_puntaje_egel DROP CONSTRAINT crena_tasa_puntaje_egel_pkey;
       public            postgres    false    242            #           2606    17704 0   crena_tasa_puntaje_ex crena_tasa_puntaje_ex_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.crena_tasa_puntaje_ex
    ADD CONSTRAINT crena_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 Z   ALTER TABLE ONLY public.crena_tasa_puntaje_ex DROP CONSTRAINT crena_tasa_puntaje_ex_pkey;
       public            postgres    false    244            %           2606    17706    ena_carreras ena_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.ena_carreras
    ADD CONSTRAINT ena_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.ena_carreras DROP CONSTRAINT ena_carreras_pkey;
       public            postgres    false    246            '           2606    17708 *   ena_eficiencia_ire ena_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ena_eficiencia_ire
    ADD CONSTRAINT ena_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.ena_eficiencia_ire DROP CONSTRAINT ena_eficiencia_ire_pkey;
       public            postgres    false    248            )           2606    17710 0   ena_indice_colocacion ena_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ena_indice_colocacion
    ADD CONSTRAINT ena_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.ena_indice_colocacion DROP CONSTRAINT ena_indice_colocacion_pkey;
       public            postgres    false    250            +           2606    17712 "   ena_indice_ptc ena_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ena_indice_ptc
    ADD CONSTRAINT ena_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.ena_indice_ptc DROP CONSTRAINT ena_indice_ptc_pkey;
       public            postgres    false    252            -           2606    17714 .   ena_indice_servicios ena_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.ena_indice_servicios
    ADD CONSTRAINT ena_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.ena_indice_servicios DROP CONSTRAINT ena_indice_servicios_pkey;
       public            postgres    false    254            /           2606    17716    ena_iseg ena_iseg_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ena_iseg
    ADD CONSTRAINT ena_iseg_pkey PRIMARY KEY (idiseg);
 @   ALTER TABLE ONLY public.ena_iseg DROP CONSTRAINT ena_iseg_pkey;
       public            postgres    false    256            1           2606    17718    ena_isem ena_isem_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ena_isem
    ADD CONSTRAINT ena_isem_pkey PRIMARY KEY (idisem);
 @   ALTER TABLE ONLY public.ena_isem DROP CONSTRAINT ena_isem_pkey;
       public            postgres    false    258            3           2606    17720 0   ena_tasa_acreditacion ena_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ena_tasa_acreditacion
    ADD CONSTRAINT ena_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.ena_tasa_acreditacion DROP CONSTRAINT ena_tasa_acreditacion_pkey;
       public            postgres    false    260            5           2606    17722 *   ena_tasa_cobertura ena_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ena_tasa_cobertura
    ADD CONSTRAINT ena_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.ena_tasa_cobertura DROP CONSTRAINT ena_tasa_cobertura_pkey;
       public            postgres    false    262            7           2606    17724 (   ena_tasa_docentes ena_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ena_tasa_docentes
    ADD CONSTRAINT ena_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.ena_tasa_docentes DROP CONSTRAINT ena_tasa_docentes_pkey;
       public            postgres    false    264            9           2606    17726 .   ena_tasa_mov_alumnos ena_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.ena_tasa_mov_alumnos
    ADD CONSTRAINT ena_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.ena_tasa_mov_alumnos DROP CONSTRAINT ena_tasa_mov_alumnos_pkey;
       public            postgres    false    266            ;           2606    17728 0   ena_tasa_mov_docentes ena_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.ena_tasa_mov_docentes
    ADD CONSTRAINT ena_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.ena_tasa_mov_docentes DROP CONSTRAINT ena_tasa_mov_docentes_pkey;
       public            postgres    false    268            =           2606    17730 &   ena_tasa_pe_asat ena_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.ena_tasa_pe_asat
    ADD CONSTRAINT ena_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.ena_tasa_pe_asat DROP CONSTRAINT ena_tasa_pe_asat_pkey;
       public            postgres    false    270            ?           2606    17732 4   ena_tasa_pe_pertinencia ena_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia
    ADD CONSTRAINT ena_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia DROP CONSTRAINT ena_tasa_pe_pertinencia_pkey;
       public            postgres    false    272            A           2606    17734 0   ena_tasa_puntaje_egel ena_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ena_tasa_puntaje_egel
    ADD CONSTRAINT ena_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.ena_tasa_puntaje_egel DROP CONSTRAINT ena_tasa_puntaje_egel_pkey;
       public            postgres    false    274            C           2606    17736 ,   ena_tasa_puntaje_ex ena_tasa_puntaje_ex_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.ena_tasa_puntaje_ex
    ADD CONSTRAINT ena_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 V   ALTER TABLE ONLY public.ena_tasa_puntaje_ex DROP CONSTRAINT ena_tasa_puntaje_ex_pkey;
       public            postgres    false    276            E           2606    17738 $   enrjsm_carreras enrjsm_carreras_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.enrjsm_carreras
    ADD CONSTRAINT enrjsm_carreras_pkey PRIMARY KEY (idcarrera);
 N   ALTER TABLE ONLY public.enrjsm_carreras DROP CONSTRAINT enrjsm_carreras_pkey;
       public            postgres    false    278            G           2606    17740 0   enrjsm_eficiencia_ire enrjsm_eficiencia_ire_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.enrjsm_eficiencia_ire
    ADD CONSTRAINT enrjsm_eficiencia_ire_pkey PRIMARY KEY (ideire);
 Z   ALTER TABLE ONLY public.enrjsm_eficiencia_ire DROP CONSTRAINT enrjsm_eficiencia_ire_pkey;
       public            postgres    false    280            I           2606    17742 6   enrjsm_indice_colocacion enrjsm_indice_colocacion_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.enrjsm_indice_colocacion
    ADD CONSTRAINT enrjsm_indice_colocacion_pkey PRIMARY KEY (idic);
 `   ALTER TABLE ONLY public.enrjsm_indice_colocacion DROP CONSTRAINT enrjsm_indice_colocacion_pkey;
       public            postgres    false    282            K           2606    17744 (   enrjsm_indice_ptc enrjsm_indice_ptc_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.enrjsm_indice_ptc
    ADD CONSTRAINT enrjsm_indice_ptc_pkey PRIMARY KEY (idiptc);
 R   ALTER TABLE ONLY public.enrjsm_indice_ptc DROP CONSTRAINT enrjsm_indice_ptc_pkey;
       public            postgres    false    284            M           2606    17746 4   enrjsm_indice_servicios enrjsm_indice_servicios_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.enrjsm_indice_servicios
    ADD CONSTRAINT enrjsm_indice_servicios_pkey PRIMARY KEY (idis);
 ^   ALTER TABLE ONLY public.enrjsm_indice_servicios DROP CONSTRAINT enrjsm_indice_servicios_pkey;
       public            postgres    false    286            O           2606    17748    enrjsm_iseg enrjsm_iseg_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.enrjsm_iseg
    ADD CONSTRAINT enrjsm_iseg_pkey PRIMARY KEY (idiseg);
 F   ALTER TABLE ONLY public.enrjsm_iseg DROP CONSTRAINT enrjsm_iseg_pkey;
       public            postgres    false    288            Q           2606    17750    enrjsm_isem enrjsm_isem_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.enrjsm_isem
    ADD CONSTRAINT enrjsm_isem_pkey PRIMARY KEY (idisem);
 F   ALTER TABLE ONLY public.enrjsm_isem DROP CONSTRAINT enrjsm_isem_pkey;
       public            postgres    false    290            S           2606    17752 6   enrjsm_tasa_acreditacion enrjsm_tasa_acreditacion_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion
    ADD CONSTRAINT enrjsm_tasa_acreditacion_pkey PRIMARY KEY (idta);
 `   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion DROP CONSTRAINT enrjsm_tasa_acreditacion_pkey;
       public            postgres    false    292            U           2606    17754 0   enrjsm_tasa_cobertura enrjsm_tasa_cobertura_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.enrjsm_tasa_cobertura
    ADD CONSTRAINT enrjsm_tasa_cobertura_pkey PRIMARY KEY (idtc);
 Z   ALTER TABLE ONLY public.enrjsm_tasa_cobertura DROP CONSTRAINT enrjsm_tasa_cobertura_pkey;
       public            postgres    false    294            W           2606    17756 .   enrjsm_tasa_docentes enrjsm_tasa_docentes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.enrjsm_tasa_docentes
    ADD CONSTRAINT enrjsm_tasa_docentes_pkey PRIMARY KEY (idtd);
 X   ALTER TABLE ONLY public.enrjsm_tasa_docentes DROP CONSTRAINT enrjsm_tasa_docentes_pkey;
       public            postgres    false    296            Y           2606    17758 4   enrjsm_tasa_mov_alumnos enrjsm_tasa_mov_alumnos_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos
    ADD CONSTRAINT enrjsm_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 ^   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos DROP CONSTRAINT enrjsm_tasa_mov_alumnos_pkey;
       public            postgres    false    298            [           2606    17760 6   enrjsm_tasa_mov_docentes enrjsm_tasa_mov_docentes_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes
    ADD CONSTRAINT enrjsm_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 `   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes DROP CONSTRAINT enrjsm_tasa_mov_docentes_pkey;
       public            postgres    false    300            ]           2606    17762 ,   enrjsm_tasa_pe_asat enrjsm_tasa_pe_asat_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat
    ADD CONSTRAINT enrjsm_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 V   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat DROP CONSTRAINT enrjsm_tasa_pe_asat_pkey;
       public            postgres    false    302            _           2606    17764 :   enrjsm_tasa_pe_pertinencia enrjsm_tasa_pe_pertinencia_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia
    ADD CONSTRAINT enrjsm_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 d   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia DROP CONSTRAINT enrjsm_tasa_pe_pertinencia_pkey;
       public            postgres    false    304            a           2606    17766 6   enrjsm_tasa_puntaje_egel enrjsm_tasa_puntaje_egel_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel
    ADD CONSTRAINT enrjsm_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 `   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel DROP CONSTRAINT enrjsm_tasa_puntaje_egel_pkey;
       public            postgres    false    306            c           2606    17768 2   enrjsm_tasa_puntaje_ex enrjsm_tasa_puntaje_ex_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex
    ADD CONSTRAINT enrjsm_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 \   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex DROP CONSTRAINT enrjsm_tasa_puntaje_ex_pkey;
       public            postgres    false    308            e           2606    17770     enrr_carreras enrr_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.enrr_carreras
    ADD CONSTRAINT enrr_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.enrr_carreras DROP CONSTRAINT enrr_carreras_pkey;
       public            postgres    false    310            g           2606    17772 ,   enrr_eficiencia_ire enrr_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.enrr_eficiencia_ire
    ADD CONSTRAINT enrr_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.enrr_eficiencia_ire DROP CONSTRAINT enrr_eficiencia_ire_pkey;
       public            postgres    false    312            i           2606    17774 2   enrr_indice_colocacion enrr_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.enrr_indice_colocacion
    ADD CONSTRAINT enrr_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.enrr_indice_colocacion DROP CONSTRAINT enrr_indice_colocacion_pkey;
       public            postgres    false    314            k           2606    17776 $   enrr_indice_ptc enrr_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.enrr_indice_ptc
    ADD CONSTRAINT enrr_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.enrr_indice_ptc DROP CONSTRAINT enrr_indice_ptc_pkey;
       public            postgres    false    316            m           2606    17778 0   enrr_indice_servicios enrr_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.enrr_indice_servicios
    ADD CONSTRAINT enrr_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.enrr_indice_servicios DROP CONSTRAINT enrr_indice_servicios_pkey;
       public            postgres    false    318            o           2606    17780    enrr_iseg enrr_iseg_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.enrr_iseg
    ADD CONSTRAINT enrr_iseg_pkey PRIMARY KEY (idiseg);
 B   ALTER TABLE ONLY public.enrr_iseg DROP CONSTRAINT enrr_iseg_pkey;
       public            postgres    false    320            q           2606    17782    enrr_isem enrr_isem_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.enrr_isem
    ADD CONSTRAINT enrr_isem_pkey PRIMARY KEY (idisem);
 B   ALTER TABLE ONLY public.enrr_isem DROP CONSTRAINT enrr_isem_pkey;
       public            postgres    false    322            s           2606    17784 2   enrr_tasa_acreditacion enrr_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.enrr_tasa_acreditacion
    ADD CONSTRAINT enrr_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.enrr_tasa_acreditacion DROP CONSTRAINT enrr_tasa_acreditacion_pkey;
       public            postgres    false    324            u           2606    17786 ,   enrr_tasa_cobertura enrr_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.enrr_tasa_cobertura
    ADD CONSTRAINT enrr_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.enrr_tasa_cobertura DROP CONSTRAINT enrr_tasa_cobertura_pkey;
       public            postgres    false    326            w           2606    17788 *   enrr_tasa_docentes enrr_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.enrr_tasa_docentes
    ADD CONSTRAINT enrr_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.enrr_tasa_docentes DROP CONSTRAINT enrr_tasa_docentes_pkey;
       public            postgres    false    328            y           2606    17790 0   enrr_tasa_mov_alumnos enrr_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos
    ADD CONSTRAINT enrr_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos DROP CONSTRAINT enrr_tasa_mov_alumnos_pkey;
       public            postgres    false    330            {           2606    17792 2   enrr_tasa_mov_docentes enrr_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.enrr_tasa_mov_docentes
    ADD CONSTRAINT enrr_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.enrr_tasa_mov_docentes DROP CONSTRAINT enrr_tasa_mov_docentes_pkey;
       public            postgres    false    332            }           2606    17794 (   enrr_tasa_pe_asat enrr_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.enrr_tasa_pe_asat
    ADD CONSTRAINT enrr_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.enrr_tasa_pe_asat DROP CONSTRAINT enrr_tasa_pe_asat_pkey;
       public            postgres    false    334                       2606    17796 6   enrr_tasa_pe_pertinencia enrr_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia
    ADD CONSTRAINT enrr_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia DROP CONSTRAINT enrr_tasa_pe_pertinencia_pkey;
       public            postgres    false    336            �           2606    17798 2   enrr_tasa_puntaje_egel enrr_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel
    ADD CONSTRAINT enrr_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel DROP CONSTRAINT enrr_tasa_puntaje_egel_pkey;
       public            postgres    false    338            �           2606    17800 .   enrr_tasa_puntaje_ex enrr_tasa_puntaje_ex_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex
    ADD CONSTRAINT enrr_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 X   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex DROP CONSTRAINT enrr_tasa_puntaje_ex_pkey;
       public            postgres    false    340            �           2606    17802 "   ensfa_carreras ensfa_carreras_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.ensfa_carreras
    ADD CONSTRAINT ensfa_carreras_pkey PRIMARY KEY (idcarrera);
 L   ALTER TABLE ONLY public.ensfa_carreras DROP CONSTRAINT ensfa_carreras_pkey;
       public            postgres    false    342            �           2606    17804 .   ensfa_eficiencia_ire ensfa_eficiencia_ire_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ensfa_eficiencia_ire
    ADD CONSTRAINT ensfa_eficiencia_ire_pkey PRIMARY KEY (ideire);
 X   ALTER TABLE ONLY public.ensfa_eficiencia_ire DROP CONSTRAINT ensfa_eficiencia_ire_pkey;
       public            postgres    false    344            �           2606    17806 4   ensfa_indice_colocacion ensfa_indice_colocacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ensfa_indice_colocacion
    ADD CONSTRAINT ensfa_indice_colocacion_pkey PRIMARY KEY (idic);
 ^   ALTER TABLE ONLY public.ensfa_indice_colocacion DROP CONSTRAINT ensfa_indice_colocacion_pkey;
       public            postgres    false    346            �           2606    17808 &   ensfa_indice_ptc ensfa_indice_ptc_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ensfa_indice_ptc
    ADD CONSTRAINT ensfa_indice_ptc_pkey PRIMARY KEY (idiptc);
 P   ALTER TABLE ONLY public.ensfa_indice_ptc DROP CONSTRAINT ensfa_indice_ptc_pkey;
       public            postgres    false    348            �           2606    17810 2   ensfa_indice_servicios ensfa_indice_servicios_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ensfa_indice_servicios
    ADD CONSTRAINT ensfa_indice_servicios_pkey PRIMARY KEY (idis);
 \   ALTER TABLE ONLY public.ensfa_indice_servicios DROP CONSTRAINT ensfa_indice_servicios_pkey;
       public            postgres    false    350            �           2606    17812    ensfa_iseg ensfa_iseg_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ensfa_iseg
    ADD CONSTRAINT ensfa_iseg_pkey PRIMARY KEY (idiseg);
 D   ALTER TABLE ONLY public.ensfa_iseg DROP CONSTRAINT ensfa_iseg_pkey;
       public            postgres    false    352            �           2606    17814    ensfa_isem ensfa_isem_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ensfa_isem
    ADD CONSTRAINT ensfa_isem_pkey PRIMARY KEY (idisem);
 D   ALTER TABLE ONLY public.ensfa_isem DROP CONSTRAINT ensfa_isem_pkey;
       public            postgres    false    354            �           2606    17816 4   ensfa_tasa_acreditacion ensfa_tasa_acreditacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ensfa_tasa_acreditacion
    ADD CONSTRAINT ensfa_tasa_acreditacion_pkey PRIMARY KEY (idta);
 ^   ALTER TABLE ONLY public.ensfa_tasa_acreditacion DROP CONSTRAINT ensfa_tasa_acreditacion_pkey;
       public            postgres    false    356            �           2606    17818 .   ensfa_tasa_cobertura ensfa_tasa_cobertura_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.ensfa_tasa_cobertura
    ADD CONSTRAINT ensfa_tasa_cobertura_pkey PRIMARY KEY (idtc);
 X   ALTER TABLE ONLY public.ensfa_tasa_cobertura DROP CONSTRAINT ensfa_tasa_cobertura_pkey;
       public            postgres    false    358            �           2606    17820 ,   ensfa_tasa_docentes ensfa_tasa_docentes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ensfa_tasa_docentes
    ADD CONSTRAINT ensfa_tasa_docentes_pkey PRIMARY KEY (idtd);
 V   ALTER TABLE ONLY public.ensfa_tasa_docentes DROP CONSTRAINT ensfa_tasa_docentes_pkey;
       public            postgres    false    360            �           2606    17822 2   ensfa_tasa_mov_alumnos ensfa_tasa_mov_alumnos_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos
    ADD CONSTRAINT ensfa_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 \   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos DROP CONSTRAINT ensfa_tasa_mov_alumnos_pkey;
       public            postgres    false    362            �           2606    17824 4   ensfa_tasa_mov_docentes ensfa_tasa_mov_docentes_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes
    ADD CONSTRAINT ensfa_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 ^   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes DROP CONSTRAINT ensfa_tasa_mov_docentes_pkey;
       public            postgres    false    364            �           2606    17826 *   ensfa_tasa_pe_asat ensfa_tasa_pe_asat_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.ensfa_tasa_pe_asat
    ADD CONSTRAINT ensfa_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 T   ALTER TABLE ONLY public.ensfa_tasa_pe_asat DROP CONSTRAINT ensfa_tasa_pe_asat_pkey;
       public            postgres    false    366            �           2606    17828 8   ensfa_tasa_pe_pertinencia ensfa_tasa_pe_pertinencia_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia
    ADD CONSTRAINT ensfa_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 b   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia DROP CONSTRAINT ensfa_tasa_pe_pertinencia_pkey;
       public            postgres    false    368            �           2606    17830 4   ensfa_tasa_puntaje_egel ensfa_tasa_puntaje_egel_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel
    ADD CONSTRAINT ensfa_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 ^   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel DROP CONSTRAINT ensfa_tasa_puntaje_egel_pkey;
       public            postgres    false    370            �           2606    17832 0   ensfa_tasa_puntaje_ex ensfa_tasa_puntaje_ex_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex
    ADD CONSTRAINT ensfa_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 Z   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex DROP CONSTRAINT ensfa_tasa_puntaje_ex_pkey;
       public            postgres    false    372            �           2606    17834     universidades universidades_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.universidades
    ADD CONSTRAINT universidades_pkey PRIMARY KEY (iduniversidad);
 J   ALTER TABLE ONLY public.universidades DROP CONSTRAINT universidades_pkey;
       public            postgres    false    374            �           2606    17836    upa_carreras upa_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.upa_carreras
    ADD CONSTRAINT upa_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.upa_carreras DROP CONSTRAINT upa_carreras_pkey;
       public            postgres    false    376            �           2606    17838 *   upa_eficiencia_ire upa_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.upa_eficiencia_ire
    ADD CONSTRAINT upa_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.upa_eficiencia_ire DROP CONSTRAINT upa_eficiencia_ire_pkey;
       public            postgres    false    378            �           2606    17840 0   upa_indice_colocacion upa_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.upa_indice_colocacion
    ADD CONSTRAINT upa_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.upa_indice_colocacion DROP CONSTRAINT upa_indice_colocacion_pkey;
       public            postgres    false    380            �           2606    17842 "   upa_indice_ptc upa_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.upa_indice_ptc
    ADD CONSTRAINT upa_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.upa_indice_ptc DROP CONSTRAINT upa_indice_ptc_pkey;
       public            postgres    false    382            �           2606    17844 .   upa_indice_servicios upa_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.upa_indice_servicios
    ADD CONSTRAINT upa_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.upa_indice_servicios DROP CONSTRAINT upa_indice_servicios_pkey;
       public            postgres    false    384            �           2606    17846    upa_iseg upa_iseg_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.upa_iseg
    ADD CONSTRAINT upa_iseg_pkey PRIMARY KEY (idiseg);
 @   ALTER TABLE ONLY public.upa_iseg DROP CONSTRAINT upa_iseg_pkey;
       public            postgres    false    386            �           2606    17848    upa_isem upa_isem_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.upa_isem
    ADD CONSTRAINT upa_isem_pkey PRIMARY KEY (idisem);
 @   ALTER TABLE ONLY public.upa_isem DROP CONSTRAINT upa_isem_pkey;
       public            postgres    false    388            �           2606    17850 0   upa_tasa_acreditacion upa_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.upa_tasa_acreditacion
    ADD CONSTRAINT upa_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.upa_tasa_acreditacion DROP CONSTRAINT upa_tasa_acreditacion_pkey;
       public            postgres    false    390            �           2606    17852 *   upa_tasa_cobertura upa_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.upa_tasa_cobertura
    ADD CONSTRAINT upa_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.upa_tasa_cobertura DROP CONSTRAINT upa_tasa_cobertura_pkey;
       public            postgres    false    392            �           2606    17854 (   upa_tasa_docentes upa_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.upa_tasa_docentes
    ADD CONSTRAINT upa_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.upa_tasa_docentes DROP CONSTRAINT upa_tasa_docentes_pkey;
       public            postgres    false    394            �           2606    19855 .   upa_tasa_mov_alumnos upa_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.upa_tasa_mov_alumnos
    ADD CONSTRAINT upa_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.upa_tasa_mov_alumnos DROP CONSTRAINT upa_tasa_mov_alumnos_pkey;
       public            postgres    false    605            �           2606    17858 0   upa_tasa_mov_docentes upa_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.upa_tasa_mov_docentes
    ADD CONSTRAINT upa_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.upa_tasa_mov_docentes DROP CONSTRAINT upa_tasa_mov_docentes_pkey;
       public            postgres    false    396            �           2606    17860 &   upa_tasa_pe_asat upa_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.upa_tasa_pe_asat
    ADD CONSTRAINT upa_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.upa_tasa_pe_asat DROP CONSTRAINT upa_tasa_pe_asat_pkey;
       public            postgres    false    398            �           2606    17862 4   upa_tasa_pe_pertinencia upa_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia
    ADD CONSTRAINT upa_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia DROP CONSTRAINT upa_tasa_pe_pertinencia_pkey;
       public            postgres    false    400            �           2606    17864 0   upa_tasa_puntaje_egel upa_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.upa_tasa_puntaje_egel
    ADD CONSTRAINT upa_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.upa_tasa_puntaje_egel DROP CONSTRAINT upa_tasa_puntaje_egel_pkey;
       public            postgres    false    402            �           2606    17866 ,   upa_tasa_puntaje_ex upa_tasa_puntaje_ex_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.upa_tasa_puntaje_ex
    ADD CONSTRAINT upa_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 V   ALTER TABLE ONLY public.upa_tasa_puntaje_ex DROP CONSTRAINT upa_tasa_puntaje_ex_pkey;
       public            postgres    false    404            �           2606    17868    usuarios usuarios_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    406            �           2606    17870    uta_carreras uta_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.uta_carreras
    ADD CONSTRAINT uta_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.uta_carreras DROP CONSTRAINT uta_carreras_pkey;
       public            postgres    false    408            �           2606    17872 *   uta_eficiencia_ire uta_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.uta_eficiencia_ire
    ADD CONSTRAINT uta_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.uta_eficiencia_ire DROP CONSTRAINT uta_eficiencia_ire_pkey;
       public            postgres    false    410            �           2606    17874 0   uta_indice_colocacion uta_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.uta_indice_colocacion
    ADD CONSTRAINT uta_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.uta_indice_colocacion DROP CONSTRAINT uta_indice_colocacion_pkey;
       public            postgres    false    412            �           2606    17876 "   uta_indice_ptc uta_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.uta_indice_ptc
    ADD CONSTRAINT uta_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.uta_indice_ptc DROP CONSTRAINT uta_indice_ptc_pkey;
       public            postgres    false    414            �           2606    17878 .   uta_indice_servicios uta_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.uta_indice_servicios
    ADD CONSTRAINT uta_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.uta_indice_servicios DROP CONSTRAINT uta_indice_servicios_pkey;
       public            postgres    false    416            �           2606    17880    uta_iseg_l uta_iseg_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.uta_iseg_l
    ADD CONSTRAINT uta_iseg_l_pkey PRIMARY KEY (idisegl);
 D   ALTER TABLE ONLY public.uta_iseg_l DROP CONSTRAINT uta_iseg_l_pkey;
       public            postgres    false    418            �           2606    17882    uta_iseg_tsu uta_iseg_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.uta_iseg_tsu
    ADD CONSTRAINT uta_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 H   ALTER TABLE ONLY public.uta_iseg_tsu DROP CONSTRAINT uta_iseg_tsu_pkey;
       public            postgres    false    420            �           2606    17884    uta_isem_l uta_isem_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.uta_isem_l
    ADD CONSTRAINT uta_isem_l_pkey PRIMARY KEY (idiseml);
 D   ALTER TABLE ONLY public.uta_isem_l DROP CONSTRAINT uta_isem_l_pkey;
       public            postgres    false    422            �           2606    17886    uta_isem_tsu uta_isem_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.uta_isem_tsu
    ADD CONSTRAINT uta_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 H   ALTER TABLE ONLY public.uta_isem_tsu DROP CONSTRAINT uta_isem_tsu_pkey;
       public            postgres    false    424            �           2606    17888 0   uta_tasa_acreditacion uta_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.uta_tasa_acreditacion
    ADD CONSTRAINT uta_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.uta_tasa_acreditacion DROP CONSTRAINT uta_tasa_acreditacion_pkey;
       public            postgres    false    426            �           2606    17890 *   uta_tasa_cobertura uta_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.uta_tasa_cobertura
    ADD CONSTRAINT uta_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.uta_tasa_cobertura DROP CONSTRAINT uta_tasa_cobertura_pkey;
       public            postgres    false    428            �           2606    17892 (   uta_tasa_docentes uta_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.uta_tasa_docentes
    ADD CONSTRAINT uta_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.uta_tasa_docentes DROP CONSTRAINT uta_tasa_docentes_pkey;
       public            postgres    false    430            �           2606    17894 .   uta_tasa_mov_alumnos uta_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.uta_tasa_mov_alumnos
    ADD CONSTRAINT uta_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.uta_tasa_mov_alumnos DROP CONSTRAINT uta_tasa_mov_alumnos_pkey;
       public            postgres    false    432            �           2606    17896 0   uta_tasa_mov_docentes uta_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.uta_tasa_mov_docentes
    ADD CONSTRAINT uta_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.uta_tasa_mov_docentes DROP CONSTRAINT uta_tasa_mov_docentes_pkey;
       public            postgres    false    434            �           2606    17898 &   uta_tasa_pe_asat uta_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.uta_tasa_pe_asat
    ADD CONSTRAINT uta_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.uta_tasa_pe_asat DROP CONSTRAINT uta_tasa_pe_asat_pkey;
       public            postgres    false    436            �           2606    17900 4   uta_tasa_pe_pertinencia uta_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia
    ADD CONSTRAINT uta_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia DROP CONSTRAINT uta_tasa_pe_pertinencia_pkey;
       public            postgres    false    438            �           2606    17902 0   uta_tasa_puntaje_egel uta_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.uta_tasa_puntaje_egel
    ADD CONSTRAINT uta_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.uta_tasa_puntaje_egel DROP CONSTRAINT uta_tasa_puntaje_egel_pkey;
       public            postgres    false    440            �           2606    17904 4   uta_tasa_puntaje_egetsu uta_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu
    ADD CONSTRAINT uta_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 ^   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu DROP CONSTRAINT uta_tasa_puntaje_egetsu_pkey;
       public            postgres    false    442            �           2606    17906 .   uta_tasa_puntaje_exl uta_tasa_puntaje_exl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.uta_tasa_puntaje_exl
    ADD CONSTRAINT uta_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 X   ALTER TABLE ONLY public.uta_tasa_puntaje_exl DROP CONSTRAINT uta_tasa_puntaje_exl_pkey;
       public            postgres    false    444            �           2606    19883 2   uta_tasa_puntaje_extsu uta_tasa_puntaje_extsu_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu
    ADD CONSTRAINT uta_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 \   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu DROP CONSTRAINT uta_tasa_puntaje_extsu_pkey;
       public            postgres    false    609            �           2606    17910    utc_carreras utc_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utc_carreras
    ADD CONSTRAINT utc_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.utc_carreras DROP CONSTRAINT utc_carreras_pkey;
       public            postgres    false    446            �           2606    17912 *   utc_eficiencia_ire utc_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utc_eficiencia_ire
    ADD CONSTRAINT utc_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.utc_eficiencia_ire DROP CONSTRAINT utc_eficiencia_ire_pkey;
       public            postgres    false    448            �           2606    17914 0   utc_indice_colocacion utc_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utc_indice_colocacion
    ADD CONSTRAINT utc_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.utc_indice_colocacion DROP CONSTRAINT utc_indice_colocacion_pkey;
       public            postgres    false    450            �           2606    17916 "   utc_indice_ptc utc_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.utc_indice_ptc
    ADD CONSTRAINT utc_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.utc_indice_ptc DROP CONSTRAINT utc_indice_ptc_pkey;
       public            postgres    false    452            �           2606    17918 .   utc_indice_servicios utc_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utc_indice_servicios
    ADD CONSTRAINT utc_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.utc_indice_servicios DROP CONSTRAINT utc_indice_servicios_pkey;
       public            postgres    false    454            �           2606    17920    utc_iseg_l utc_iseg_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utc_iseg_l
    ADD CONSTRAINT utc_iseg_l_pkey PRIMARY KEY (idisegl);
 D   ALTER TABLE ONLY public.utc_iseg_l DROP CONSTRAINT utc_iseg_l_pkey;
       public            postgres    false    456            �           2606    17922    utc_iseg_tsu utc_iseg_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utc_iseg_tsu
    ADD CONSTRAINT utc_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 H   ALTER TABLE ONLY public.utc_iseg_tsu DROP CONSTRAINT utc_iseg_tsu_pkey;
       public            postgres    false    458            �           2606    17924    utc_isem_l utc_isem_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utc_isem_l
    ADD CONSTRAINT utc_isem_l_pkey PRIMARY KEY (idiseml);
 D   ALTER TABLE ONLY public.utc_isem_l DROP CONSTRAINT utc_isem_l_pkey;
       public            postgres    false    460            �           2606    17926    utc_isem_tsu utc_isem_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utc_isem_tsu
    ADD CONSTRAINT utc_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 H   ALTER TABLE ONLY public.utc_isem_tsu DROP CONSTRAINT utc_isem_tsu_pkey;
       public            postgres    false    462            �           2606    17928 0   utc_tasa_acreditacion utc_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utc_tasa_acreditacion
    ADD CONSTRAINT utc_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.utc_tasa_acreditacion DROP CONSTRAINT utc_tasa_acreditacion_pkey;
       public            postgres    false    464                       2606    17930 *   utc_tasa_cobertura utc_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utc_tasa_cobertura
    ADD CONSTRAINT utc_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.utc_tasa_cobertura DROP CONSTRAINT utc_tasa_cobertura_pkey;
       public            postgres    false    466                       2606    17932 (   utc_tasa_docentes utc_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.utc_tasa_docentes
    ADD CONSTRAINT utc_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.utc_tasa_docentes DROP CONSTRAINT utc_tasa_docentes_pkey;
       public            postgres    false    468                       2606    17934 .   utc_tasa_mov_alumnos utc_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.utc_tasa_mov_alumnos
    ADD CONSTRAINT utc_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.utc_tasa_mov_alumnos DROP CONSTRAINT utc_tasa_mov_alumnos_pkey;
       public            postgres    false    470                       2606    17936 0   utc_tasa_mov_docentes utc_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utc_tasa_mov_docentes
    ADD CONSTRAINT utc_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.utc_tasa_mov_docentes DROP CONSTRAINT utc_tasa_mov_docentes_pkey;
       public            postgres    false    472            	           2606    17938 &   utc_tasa_pe_asat utc_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.utc_tasa_pe_asat
    ADD CONSTRAINT utc_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.utc_tasa_pe_asat DROP CONSTRAINT utc_tasa_pe_asat_pkey;
       public            postgres    false    474                       2606    17940 4   utc_tasa_pe_pertinencia utc_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia
    ADD CONSTRAINT utc_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia DROP CONSTRAINT utc_tasa_pe_pertinencia_pkey;
       public            postgres    false    476                       2606    17942 0   utc_tasa_puntaje_egel utc_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.utc_tasa_puntaje_egel
    ADD CONSTRAINT utc_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.utc_tasa_puntaje_egel DROP CONSTRAINT utc_tasa_puntaje_egel_pkey;
       public            postgres    false    478                       2606    17944 4   utc_tasa_puntaje_egetsu utc_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu
    ADD CONSTRAINT utc_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 ^   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu DROP CONSTRAINT utc_tasa_puntaje_egetsu_pkey;
       public            postgres    false    480                       2606    17946 .   utc_tasa_puntaje_exl utc_tasa_puntaje_exl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utc_tasa_puntaje_exl
    ADD CONSTRAINT utc_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 X   ALTER TABLE ONLY public.utc_tasa_puntaje_exl DROP CONSTRAINT utc_tasa_puntaje_exl_pkey;
       public            postgres    false    482                       2606    17948 2   utc_tasa_puntaje_extsu utc_tasa_puntaje_extsu_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu
    ADD CONSTRAINT utc_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 \   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu DROP CONSTRAINT utc_tasa_puntaje_extsu_pkey;
       public            postgres    false    484                       2606    17950     utma_carreras utma_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utma_carreras
    ADD CONSTRAINT utma_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.utma_carreras DROP CONSTRAINT utma_carreras_pkey;
       public            postgres    false    486                       2606    17952 ,   utma_eficiencia_ire utma_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utma_eficiencia_ire
    ADD CONSTRAINT utma_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.utma_eficiencia_ire DROP CONSTRAINT utma_eficiencia_ire_pkey;
       public            postgres    false    488                       2606    17954 2   utma_indice_colocacion utma_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utma_indice_colocacion
    ADD CONSTRAINT utma_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.utma_indice_colocacion DROP CONSTRAINT utma_indice_colocacion_pkey;
       public            postgres    false    490                       2606    17956 $   utma_indice_ptc utma_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.utma_indice_ptc
    ADD CONSTRAINT utma_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.utma_indice_ptc DROP CONSTRAINT utma_indice_ptc_pkey;
       public            postgres    false    492                       2606    17958 0   utma_indice_servicios utma_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utma_indice_servicios
    ADD CONSTRAINT utma_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.utma_indice_servicios DROP CONSTRAINT utma_indice_servicios_pkey;
       public            postgres    false    494                       2606    17960    utma_iseg_l utma_iseg_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utma_iseg_l
    ADD CONSTRAINT utma_iseg_l_pkey PRIMARY KEY (idisegl);
 F   ALTER TABLE ONLY public.utma_iseg_l DROP CONSTRAINT utma_iseg_l_pkey;
       public            postgres    false    496            �           2606    19869     utma_iseg_tsu utma_iseg_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utma_iseg_tsu
    ADD CONSTRAINT utma_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 J   ALTER TABLE ONLY public.utma_iseg_tsu DROP CONSTRAINT utma_iseg_tsu_pkey;
       public            postgres    false    607            !           2606    17964    utma_isem_l utma_isem_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utma_isem_l
    ADD CONSTRAINT utma_isem_l_pkey PRIMARY KEY (idiseml);
 F   ALTER TABLE ONLY public.utma_isem_l DROP CONSTRAINT utma_isem_l_pkey;
       public            postgres    false    498            #           2606    17966     utma_isem_tsu utma_isem_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utma_isem_tsu
    ADD CONSTRAINT utma_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 J   ALTER TABLE ONLY public.utma_isem_tsu DROP CONSTRAINT utma_isem_tsu_pkey;
       public            postgres    false    500            %           2606    17968 2   utma_tasa_acreditacion utma_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utma_tasa_acreditacion
    ADD CONSTRAINT utma_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.utma_tasa_acreditacion DROP CONSTRAINT utma_tasa_acreditacion_pkey;
       public            postgres    false    502            '           2606    17970 ,   utma_tasa_cobertura utma_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utma_tasa_cobertura
    ADD CONSTRAINT utma_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.utma_tasa_cobertura DROP CONSTRAINT utma_tasa_cobertura_pkey;
       public            postgres    false    504            )           2606    17972 *   utma_tasa_docentes utma_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utma_tasa_docentes
    ADD CONSTRAINT utma_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.utma_tasa_docentes DROP CONSTRAINT utma_tasa_docentes_pkey;
       public            postgres    false    506            +           2606    17974 0   utma_tasa_mov_alumnos utma_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utma_tasa_mov_alumnos
    ADD CONSTRAINT utma_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.utma_tasa_mov_alumnos DROP CONSTRAINT utma_tasa_mov_alumnos_pkey;
       public            postgres    false    508            -           2606    17976 2   utma_tasa_mov_docentes utma_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utma_tasa_mov_docentes
    ADD CONSTRAINT utma_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.utma_tasa_mov_docentes DROP CONSTRAINT utma_tasa_mov_docentes_pkey;
       public            postgres    false    510            /           2606    17978 (   utma_tasa_pe_asat utma_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.utma_tasa_pe_asat
    ADD CONSTRAINT utma_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.utma_tasa_pe_asat DROP CONSTRAINT utma_tasa_pe_asat_pkey;
       public            postgres    false    512            1           2606    17980 6   utma_tasa_pe_pertinencia utma_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia
    ADD CONSTRAINT utma_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia DROP CONSTRAINT utma_tasa_pe_pertinencia_pkey;
       public            postgres    false    514            3           2606    17982 2   utma_tasa_puntaje_egel utma_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utma_tasa_puntaje_egel
    ADD CONSTRAINT utma_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.utma_tasa_puntaje_egel DROP CONSTRAINT utma_tasa_puntaje_egel_pkey;
       public            postgres    false    516            5           2606    17984 6   utma_tasa_puntaje_egetsu utma_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu
    ADD CONSTRAINT utma_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 `   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu DROP CONSTRAINT utma_tasa_puntaje_egetsu_pkey;
       public            postgres    false    518            7           2606    17986 0   utma_tasa_puntaje_exl utma_tasa_puntaje_exl_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utma_tasa_puntaje_exl
    ADD CONSTRAINT utma_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 Z   ALTER TABLE ONLY public.utma_tasa_puntaje_exl DROP CONSTRAINT utma_tasa_puntaje_exl_pkey;
       public            postgres    false    520            9           2606    17988 4   utma_tasa_puntaje_extsu utma_tasa_puntaje_extsu_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu
    ADD CONSTRAINT utma_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 ^   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu DROP CONSTRAINT utma_tasa_puntaje_extsu_pkey;
       public            postgres    false    522            ;           2606    17990     utna_carreras utna_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_carreras
    ADD CONSTRAINT utna_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.utna_carreras DROP CONSTRAINT utna_carreras_pkey;
       public            postgres    false    524            =           2606    17992 ,   utna_eficiencia_ire utna_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT utna_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT utna_eficiencia_ire_pkey;
       public            postgres    false    526            ?           2606    17994 2   utna_indice_colocacion utna_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT utna_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT utna_indice_colocacion_pkey;
       public            postgres    false    528            A           2606    17996 $   utna_indice_ptc utna_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT utna_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT utna_indice_ptc_pkey;
       public            postgres    false    530            C           2606    17998 0   utna_indice_servicios utna_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT utna_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT utna_indice_servicios_pkey;
       public            postgres    false    532            E           2606    18000    utna_iseg_l utna_iseg_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT utna_iseg_l_pkey PRIMARY KEY (idisegl);
 F   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT utna_iseg_l_pkey;
       public            postgres    false    534            G           2606    18002     utna_iseg_tsu utna_iseg_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT utna_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 J   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT utna_iseg_tsu_pkey;
       public            postgres    false    536            I           2606    18004    utna_isem_l utna_isem_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT utna_isem_l_pkey PRIMARY KEY (idiseml);
 F   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT utna_isem_l_pkey;
       public            postgres    false    538            K           2606    18006     utna_isem_tsu utna_isem_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT utna_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 J   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT utna_isem_tsu_pkey;
       public            postgres    false    540            M           2606    18008 2   utna_tasa_acreditacion utna_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT utna_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT utna_tasa_acreditacion_pkey;
       public            postgres    false    542            O           2606    18010 ,   utna_tasa_cobertura utna_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT utna_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT utna_tasa_cobertura_pkey;
       public            postgres    false    544            Q           2606    18012 *   utna_tasa_docentes utna_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT utna_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT utna_tasa_docentes_pkey;
       public            postgres    false    546            S           2606    18014 0   utna_tasa_mov_alumnos utna_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT utna_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT utna_tasa_mov_alumnos_pkey;
       public            postgres    false    548            U           2606    18016 2   utna_tasa_mov_docentes utna_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT utna_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT utna_tasa_mov_docentes_pkey;
       public            postgres    false    550            W           2606    18018 (   utna_tasa_pe_asat utna_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT utna_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT utna_tasa_pe_asat_pkey;
       public            postgres    false    552            Y           2606    18020 6   utna_tasa_pe_pertinencia utna_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT utna_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT utna_tasa_pe_pertinencia_pkey;
       public            postgres    false    554            [           2606    18022 2   utna_tasa_puntaje_egel utna_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT utna_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT utna_tasa_puntaje_egel_pkey;
       public            postgres    false    556            ]           2606    18024 6   utna_tasa_puntaje_egetsu utna_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT utna_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegestu);
 `   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT utna_tasa_puntaje_egetsu_pkey;
       public            postgres    false    558            _           2606    18026 0   utna_tasa_puntaje_exl utna_tasa_puntaje_exl_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utna_tasa_puntaje_exl
    ADD CONSTRAINT utna_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 Z   ALTER TABLE ONLY public.utna_tasa_puntaje_exl DROP CONSTRAINT utna_tasa_puntaje_exl_pkey;
       public            postgres    false    560            a           2606    18028 4   utna_tasa_puntaje_extsu utna_tasa_puntaje_extsu_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu
    ADD CONSTRAINT utna_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 ^   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu DROP CONSTRAINT utna_tasa_puntaje_extsu_pkey;
       public            postgres    false    562            c           2606    18030    utr_carreras utr_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utr_carreras
    ADD CONSTRAINT utr_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.utr_carreras DROP CONSTRAINT utr_carreras_pkey;
       public            postgres    false    564            e           2606    18032 *   utr_eficiencia_ire utr_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utr_eficiencia_ire
    ADD CONSTRAINT utr_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.utr_eficiencia_ire DROP CONSTRAINT utr_eficiencia_ire_pkey;
       public            postgres    false    566            g           2606    18034 0   utr_indice_colocacion utr_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utr_indice_colocacion
    ADD CONSTRAINT utr_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.utr_indice_colocacion DROP CONSTRAINT utr_indice_colocacion_pkey;
       public            postgres    false    568            i           2606    18036 "   utr_indice_ptc utr_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.utr_indice_ptc
    ADD CONSTRAINT utr_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.utr_indice_ptc DROP CONSTRAINT utr_indice_ptc_pkey;
       public            postgres    false    570            k           2606    18038 .   utr_indice_servicios utr_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utr_indice_servicios
    ADD CONSTRAINT utr_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.utr_indice_servicios DROP CONSTRAINT utr_indice_servicios_pkey;
       public            postgres    false    572            m           2606    18040    utr_iseg_l utr_iseg_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utr_iseg_l
    ADD CONSTRAINT utr_iseg_l_pkey PRIMARY KEY (idisegl);
 D   ALTER TABLE ONLY public.utr_iseg_l DROP CONSTRAINT utr_iseg_l_pkey;
       public            postgres    false    574            o           2606    18042    utr_iseg_tsu utr_iseg_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utr_iseg_tsu
    ADD CONSTRAINT utr_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 H   ALTER TABLE ONLY public.utr_iseg_tsu DROP CONSTRAINT utr_iseg_tsu_pkey;
       public            postgres    false    576            q           2606    18044    utr_isem_l utr_isem_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utr_isem_l
    ADD CONSTRAINT utr_isem_l_pkey PRIMARY KEY (idiseml);
 D   ALTER TABLE ONLY public.utr_isem_l DROP CONSTRAINT utr_isem_l_pkey;
       public            postgres    false    578            s           2606    18046    utr_isem_tsu utr_isem_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utr_isem_tsu
    ADD CONSTRAINT utr_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 H   ALTER TABLE ONLY public.utr_isem_tsu DROP CONSTRAINT utr_isem_tsu_pkey;
       public            postgres    false    580            u           2606    18048 0   utr_tasa_acreditacion utr_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utr_tasa_acreditacion
    ADD CONSTRAINT utr_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.utr_tasa_acreditacion DROP CONSTRAINT utr_tasa_acreditacion_pkey;
       public            postgres    false    582            w           2606    18050 *   utr_tasa_cobertura utr_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utr_tasa_cobertura
    ADD CONSTRAINT utr_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.utr_tasa_cobertura DROP CONSTRAINT utr_tasa_cobertura_pkey;
       public            postgres    false    584            y           2606    18052 (   utr_tasa_docentes utr_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.utr_tasa_docentes
    ADD CONSTRAINT utr_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.utr_tasa_docentes DROP CONSTRAINT utr_tasa_docentes_pkey;
       public            postgres    false    586            {           2606    18054 .   utr_tasa_mov_alumnos utr_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.utr_tasa_mov_alumnos
    ADD CONSTRAINT utr_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.utr_tasa_mov_alumnos DROP CONSTRAINT utr_tasa_mov_alumnos_pkey;
       public            postgres    false    588            }           2606    18056 0   utr_tasa_mov_docentes utr_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utr_tasa_mov_docentes
    ADD CONSTRAINT utr_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.utr_tasa_mov_docentes DROP CONSTRAINT utr_tasa_mov_docentes_pkey;
       public            postgres    false    590                       2606    18058 &   utr_tasa_pe_asat utr_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.utr_tasa_pe_asat
    ADD CONSTRAINT utr_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.utr_tasa_pe_asat DROP CONSTRAINT utr_tasa_pe_asat_pkey;
       public            postgres    false    592            �           2606    18060 4   utr_tasa_pe_pertinencia utr_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia
    ADD CONSTRAINT utr_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia DROP CONSTRAINT utr_tasa_pe_pertinencia_pkey;
       public            postgres    false    594            �           2606    18062 0   utr_tasa_puntaje_egel utr_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.utr_tasa_puntaje_egel
    ADD CONSTRAINT utr_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.utr_tasa_puntaje_egel DROP CONSTRAINT utr_tasa_puntaje_egel_pkey;
       public            postgres    false    596            �           2606    18064 4   utr_tasa_puntaje_egetsu utr_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu
    ADD CONSTRAINT utr_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 ^   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu DROP CONSTRAINT utr_tasa_puntaje_egetsu_pkey;
       public            postgres    false    598            �           2606    18066 .   utr_tasa_puntaje_exl utr_tasa_puntaje_exl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utr_tasa_puntaje_exl
    ADD CONSTRAINT utr_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 X   ALTER TABLE ONLY public.utr_tasa_puntaje_exl DROP CONSTRAINT utr_tasa_puntaje_exl_pkey;
       public            postgres    false    600            �           2606    18068 2   utr_tasa_puntaje_extsu utr_tasa_puntaje_extsu_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu
    ADD CONSTRAINT utr_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 \   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu DROP CONSTRAINT utr_tasa_puntaje_extsu_pkey;
       public            postgres    false    602            >           2606    18069    utna_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    544    524    4667            4           2606    18074    utna_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    524    526    4667            E           2606    18079     utna_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    558    4667    524            D           2606    18084    utna_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    524    556    4667            <           2606    18089    utna_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    540    4667    524            ;           2606    18094    utna_isem_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    524    538    4667            5           2606    18099    utna_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    528    4667    524            8           2606    18104    utna_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    532    524    4667            6           2606    18109    utna_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 A   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    524    530    4667            ?           2606    18114    utna_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    546    4667    524            :           2606    18119    utna_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    524    536    4667            9           2606    18124    utna_iseg_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    534    524    4667            @           2606    18129    utna_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4667    524    548            A           2606    18134    utna_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    524    4667    550            =           2606    18139    utna_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4667    542    524            G           2606    18144    utna_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    562    524    4667            F           2606    18149    utna_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    524    560    4667            �           2606    18154    crena_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.crena_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    230    4357    214            �           2606    18159    crena_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.crena_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    214    216    4357            �           2606    18164    crena_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    242    4357    214            �           2606    18169    crena_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.crena_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    214    244    4357            �           2606    18174    crena_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 H   ALTER TABLE ONLY public.crena_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    222    4357    214            �           2606    18179    crena_iseg carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 <   ALTER TABLE ONLY public.crena_iseg DROP CONSTRAINT carrera;
       public          postgres    false    224    4357    214            �           2606    18184    crena_isem carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 <   ALTER TABLE ONLY public.crena_isem DROP CONSTRAINT carrera;
       public          postgres    false    226    4357    214            �           2606    18189    crena_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 E   ALTER TABLE ONLY public.crena_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    232    214    4357            �           2606    18194    crena_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 B   ALTER TABLE ONLY public.crena_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    214    220    4357            �           2606    18199    crena_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    218    4357    214            �           2606    18204    crena_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 H   ALTER TABLE ONLY public.crena_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    214    234    4357            �           2606    18209    crena_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    236    4357    214            �           2606    18214    crena_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4357    228    214            �           2606    18219    enrjsm_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrjsm_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    278    4421    294            �           2606    18224    enrjsm_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrjsm_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    280    278    4421            �           2606    18229     enrjsm_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    306    278    4421            �           2606    18234    enrjsm_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 I   ALTER TABLE ONLY public.enrjsm_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    278    286    4421            �           2606    18239    enrjsm_iseg carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 =   ALTER TABLE ONLY public.enrjsm_iseg DROP CONSTRAINT carrera;
       public          postgres    false    288    4421    278            �           2606    18244    enrjsm_isem carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 =   ALTER TABLE ONLY public.enrjsm_isem DROP CONSTRAINT carrera;
       public          postgres    false    278    4421    290            �           2606    18249    enrjsm_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 F   ALTER TABLE ONLY public.enrjsm_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    296    4421    278            �           2606    18254    enrjsm_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 C   ALTER TABLE ONLY public.enrjsm_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    284    4421    278            �           2606    18259     enrjsm_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    282    4421    278            �           2606    18264    enrjsm_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 I   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4421    298    278            �           2606    18269     enrjsm_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    300    4421    278            �           2606    18274     enrjsm_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    292    4421    278            �           2606    18279    enrjsm_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    308    4421    278            �           2606    18284    enrr_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 E   ALTER TABLE ONLY public.enrr_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    326    4453    310            �           2606    18289    enrr_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 E   ALTER TABLE ONLY public.enrr_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    312    4453    310            �           2606    18294    enrr_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    338    4453    310            �           2606    18299    enrr_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrr_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    318    4453    310            �           2606    18304    enrr_iseg carrera    FK CONSTRAINT        ALTER TABLE ONLY public.enrr_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 ;   ALTER TABLE ONLY public.enrr_iseg DROP CONSTRAINT carrera;
       public          postgres    false    320    4453    310            �           2606    18309    enrr_isem carrera    FK CONSTRAINT        ALTER TABLE ONLY public.enrr_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 ;   ALTER TABLE ONLY public.enrr_isem DROP CONSTRAINT carrera;
       public          postgres    false    322    4453    310            �           2606    18314    enrr_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.enrr_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    328    4453    310            �           2606    18319    enrr_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 A   ALTER TABLE ONLY public.enrr_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    316    4453    310            �           2606    18324    enrr_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    314    4453    310            �           2606    18329    enrr_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    330    4453    310            �           2606    18334    enrr_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    332    4453    310            �           2606    18339    enrr_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    324    4453    310            �           2606    18344    enrr_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    340    4453    310            �           2606    18349    ensfa_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ensfa_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    358    4485    342            �           2606    18354    ensfa_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ensfa_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    344    4485    342            �           2606    18359    ensfa_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    370    4485    342            �           2606    18364    ensfa_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 H   ALTER TABLE ONLY public.ensfa_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    350    4485    342            �           2606    18369    ensfa_iseg carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 <   ALTER TABLE ONLY public.ensfa_iseg DROP CONSTRAINT carrera;
       public          postgres    false    352    4485    342            �           2606    18374    ensfa_isem carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 <   ALTER TABLE ONLY public.ensfa_isem DROP CONSTRAINT carrera;
       public          postgres    false    354    4485    342            �           2606    18379    ensfa_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 E   ALTER TABLE ONLY public.ensfa_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    342    4485    360            �           2606    18384    ensfa_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 B   ALTER TABLE ONLY public.ensfa_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    348    4485    342            �           2606    18389    ensfa_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    346    4485    342            �           2606    18394    ensfa_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 H   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    362    4485    342            �           2606    18399    ensfa_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    364    4485    342            �           2606    18404    ensfa_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    356    4485    342            �           2606    18409    ensfa_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    372    4485    342            �           2606    18414    upa_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 D   ALTER TABLE ONLY public.upa_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    392    4519    376            �           2606    18419    upa_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 D   ALTER TABLE ONLY public.upa_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    378    4519    376            �           2606    18424    upa_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    402    4519    376            �           2606    18429    upa_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.upa_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    384    4519    376            �           2606    18434    upa_iseg carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.upa_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 :   ALTER TABLE ONLY public.upa_iseg DROP CONSTRAINT carrera;
       public          postgres    false    386    4519    376            �           2606    18439    upa_isem carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.upa_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 :   ALTER TABLE ONLY public.upa_isem DROP CONSTRAINT carrera;
       public          postgres    false    388    4519    376            �           2606    18444    upa_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 C   ALTER TABLE ONLY public.upa_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    394    4519    376            �           2606    18449    upa_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 @   ALTER TABLE ONLY public.upa_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    382    4519    376            �           2606    18454    upa_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    380    4519    376            �           2606    18464    upa_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    396    4519    376            �           2606    18469    upa_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    390    4519    376            �           2606    18474    upa_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 E   ALTER TABLE ONLY public.upa_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    404    4519    376                       2606    18479    uta_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 D   ALTER TABLE ONLY public.uta_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    428    4551    408            �           2606    18484    uta_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 D   ALTER TABLE ONLY public.uta_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    410    4551    408                       2606    18489    uta_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 I   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    442    4551    408                       2606    18494    uta_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    440    4551    408            	           2606    18504    uta_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 F   ALTER TABLE ONLY public.uta_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    444    4551    408            �           2606    18509    uta_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 F   ALTER TABLE ONLY public.uta_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    416    4551    408            �           2606    18514    uta_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 >   ALTER TABLE ONLY public.uta_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    420    4551    408            �           2606    18519    uta_iseg_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.uta_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 <   ALTER TABLE ONLY public.uta_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    418    4551    408            �           2606    18524    uta_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 >   ALTER TABLE ONLY public.uta_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    424    4551    408            �           2606    18529    uta_isem_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.uta_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 <   ALTER TABLE ONLY public.uta_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    422    4551    408                       2606    18534    uta_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 C   ALTER TABLE ONLY public.uta_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    430    4551    408            �           2606    18539    uta_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 @   ALTER TABLE ONLY public.uta_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    414    408    4551            �           2606    18544    uta_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    412    4551    408                       2606    18549    uta_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 F   ALTER TABLE ONLY public.uta_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    432    408    4551                       2606    18554    uta_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4551    434    408                        2606    18559    uta_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4551    426    408                       2606    18564    utc_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utc_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4589    446    466                       2606    18569    utc_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utc_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    446    448    4589                       2606    18574    utc_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    4589    446    480                       2606    18579    utc_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    446    4589    478                       2606    18584    utc_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    446    4589    484                       2606    18589    utc_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utc_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    4589    446    482                       2606    18594    utc_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utc_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    454    4589    446                       2606    18599    utc_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utc_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    458    4589    446                       2606    18604    utc_iseg_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utc_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utc_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    456    4589    446                       2606    18609    utc_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utc_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    462    446    4589                       2606    18614    utc_isem_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utc_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utc_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    460    4589    446                       2606    18619    utc_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 C   ALTER TABLE ONLY public.utc_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    468    4589    446                       2606    18624    utc_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 @   ALTER TABLE ONLY public.utc_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    4589    446    452                       2606    18629    utc_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    446    450    4589                       2606    18634    utc_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utc_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    446    470    4589                       2606    18639    utc_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    472    446    4589                       2606    18644    utc_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    464    4589    446            )           2606    18649    utma_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utma_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    486    504    4629                        2606    18654    utma_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utma_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    4629    488    486            0           2606    18659     utma_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    486    4629    518            2           2606    18664    utma_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    4629    522    486            1           2606    18669    utma_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utma_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    520    486    4629            /           2606    18674    utma_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    486    516    4629            $           2606    18679    utma_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utma_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4629    486    494            %           2606    18689    utma_iseg_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utma_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    496    4629    486            '           2606    18694    utma_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utma_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    500    486    4629            &           2606    18699    utma_isem_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utma_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    498    486    4629            *           2606    18704    utma_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utma_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    486    506    4629            "           2606    18709    utma_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 A   ALTER TABLE ONLY public.utma_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    492    4629    486            !           2606    18714    utma_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    4629    490    486            +           2606    18719    utma_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utma_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4629    508    486            ,           2606    18724    utma_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    510    4629    486            (           2606    18729    utma_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    486    502    4629            S           2606    18734    utr_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utr_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    584    4707    564            I           2606    18739    utr_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utr_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    564    4707    566            Z           2606    18744    utr_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    564    4707    598            Y           2606    18749    utr_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    4707    596    564            \           2606    18754    utr_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    602    4707    564            [           2606    18759    utr_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utr_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    564    600    4707            M           2606    18764    utr_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utr_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4707    572    564            O           2606    18769    utr_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utr_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    4707    576    564            N           2606    18774    utr_iseg_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utr_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utr_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    4707    574    564            Q           2606    18779    utr_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utr_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    4707    580    564            P           2606    18784    utr_isem_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utr_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utr_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    4707    578    564            T           2606    18789    utr_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 C   ALTER TABLE ONLY public.utr_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4707    586    564            K           2606    18794    utr_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 @   ALTER TABLE ONLY public.utr_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    4707    570    564            J           2606    18799    utr_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    564    4707    568            U           2606    18804    utr_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utr_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    588    4707    564            V           2606    18809    utr_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    564    590    4707            R           2606    18814    utr_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4707    582    564            �           2606    18819    ena_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 D   ALTER TABLE ONLY public.ena_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4389    262    246            �           2606    18824    ena_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 D   ALTER TABLE ONLY public.ena_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    246    248    4389            �           2606    18829    ena_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    274    4389    246            �           2606    18834    ena_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 E   ALTER TABLE ONLY public.ena_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    246    276    4389            �           2606    18839    ena_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ena_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4389    246    254            �           2606    18844    ena_iseg carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.ena_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 :   ALTER TABLE ONLY public.ena_iseg DROP CONSTRAINT carrera;
       public          postgres    false    256    246    4389            �           2606    18849    ena_isem carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.ena_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 :   ALTER TABLE ONLY public.ena_isem DROP CONSTRAINT carrera;
       public          postgres    false    4389    246    258            �           2606    18854    ena_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 C   ALTER TABLE ONLY public.ena_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    264    4389    246            �           2606    18859    ena_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 @   ALTER TABLE ONLY public.ena_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    4389    252    246            �           2606    18864    ena_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    250    4389    246            �           2606    18869    ena_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ena_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4389    266    246            �           2606    18874    ena_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    246    268    4389            �           2606    18879    ena_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4389    260    246            ]           2606    19856    upa_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.upa_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4519    376    605            ^           2606    19870    utma_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utma_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    4629    607    486            _           2606    19884    uta_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 H   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    408    4551    609            B           2606    18884    utna_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utna_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    524    552    4667            C           2606    18889    utna_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    554    524    4667            �           2606    18894    crena_tasa_pe_asat pe    FK CONSTRAINT        ALTER TABLE ONLY public.crena_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.crena_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.crena_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    238    4357    214            �           2606    18899    crena_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.crena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    214    4357    240            �           2606    18904    enrjsm_tasa_pe_asat pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrjsm_carreras(idcarrera);
 @   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    4421    278    302            �           2606    18909    enrjsm_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrjsm_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    4421    278    304            �           2606    18914    enrr_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.enrr_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrr_carreras(idcarrera);
 >   ALTER TABLE ONLY public.enrr_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    334    4453    310            �           2606    18919    enrr_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrr_carreras(idcarrera);
 E   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    310    4453    336            �           2606    18924    ensfa_tasa_pe_asat pe    FK CONSTRAINT        ALTER TABLE ONLY public.ensfa_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ensfa_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.ensfa_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    366    342    4485            �           2606    18929    ensfa_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ensfa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    342    368    4485            �           2606    18934    upa_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.upa_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.upa_carreras(idcarrera);
 =   ALTER TABLE ONLY public.upa_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    376    398    4519            �           2606    18939    upa_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.upa_carreras(idcarrera);
 D   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    4519    400    376                       2606    18944    uta_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.uta_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.uta_carreras(idcarrera);
 =   ALTER TABLE ONLY public.uta_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    436    408    4551                       2606    18949    uta_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.uta_carreras(idcarrera);
 D   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    438    408    4551                       2606    18954    utc_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.utc_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utc_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utc_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    474    4589    446                       2606    18959    utc_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utc_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    446    476    4589            -           2606    18964    utma_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.utma_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utma_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utma_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    486    512    4629            .           2606    18969    utma_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utma_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    514    4629    486            W           2606    18974    utr_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.utr_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utr_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utr_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    4707    564    592            X           2606    18979    utr_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    594    564    4707            �           2606    18984    ena_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.ena_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ena_carreras(idcarrera);
 =   ALTER TABLE ONLY public.ena_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    270    246    4389            �           2606    18989    ena_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ena_carreras(idcarrera);
 D   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    272    246    4389            7           2606    18994     utna_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utna_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    4667    530    524            �           2606    18999 !   crena_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.crena_carreras(idcarrera);
 K   ALTER TABLE ONLY public.crena_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    220    4357    214            �           2606    19004 "   enrjsm_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.enrjsm_carreras(idcarrera);
 L   ALTER TABLE ONLY public.enrjsm_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    4421    278    284            �           2606    19009     enrr_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.enrr_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrr_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    316    310    4453            �           2606    19014 !   ensfa_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.ensfa_carreras(idcarrera);
 K   ALTER TABLE ONLY public.ensfa_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    348    342    4485            �           2606    19019    upa_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.upa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.upa_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    382    376    4519            �           2606    19024    uta_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.uta_carreras(idcarrera);
 I   ALTER TABLE ONLY public.uta_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    414    408    4551                       2606    19029    utc_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utc_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utc_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    452    446    4589            #           2606    19034     utma_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utma_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utma_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    4629    486    492            L           2606    19039    utr_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utr_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utr_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    570    564    4707            �           2606    19044    ena_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.ena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ena_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    4389    246    252            �           2606    19049    usuarios universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT universidad;
       public          postgres    false    374    406    4517            3           2606    19054    utna_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 C   ALTER TABLE ONLY public.utna_carreras DROP CONSTRAINT universidad;
       public          postgres    false    524    4517    374            �           2606    19059    crena_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 D   ALTER TABLE ONLY public.crena_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4517    214    374            �           2606    19064    enrjsm_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 E   ALTER TABLE ONLY public.enrjsm_carreras DROP CONSTRAINT universidad;
       public          postgres    false    278    374    4517            �           2606    19069    enrr_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 C   ALTER TABLE ONLY public.enrr_carreras DROP CONSTRAINT universidad;
       public          postgres    false    374    310    4517            �           2606    19074    ensfa_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 D   ALTER TABLE ONLY public.ensfa_carreras DROP CONSTRAINT universidad;
       public          postgres    false    342    374    4517            �           2606    19079    upa_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 B   ALTER TABLE ONLY public.upa_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4517    374    376            �           2606    19084    uta_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 B   ALTER TABLE ONLY public.uta_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4517    408    374            
           2606    19089    utc_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 B   ALTER TABLE ONLY public.utc_carreras DROP CONSTRAINT universidad;
       public          postgres    false    446    374    4517                       2606    19094    utma_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 C   ALTER TABLE ONLY public.utma_carreras DROP CONSTRAINT universidad;
       public          postgres    false    374    4517    486            H           2606    19099    utr_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 B   ALTER TABLE ONLY public.utr_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4517    564    374            �           2606    19104    ena_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 B   ALTER TABLE ONLY public.ena_carreras DROP CONSTRAINT universidad;
       public          postgres    false    374    4517    246            �   V   x�3�4�tM)MNL�<�9O��� 5931�ӵ89?'�(�*1%��'395(\RZ��i�e��'�(5��.ct]��@��x���qqq ��8�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      
      x������ � �            x������ � �         U   x�3��tM)MNL�<�9O�3/3931�ӵ89?'�(�*1%��'395(\RZ��i�e��%�(5��.ct]��@��x���qqq E�8d            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �             x������ � �      "      x������ � �      $      x������ � �      &      x������ � �      (      x������ � �      *      x������ � �      ,      x������ � �      .   @   x�3��tM)MNL�<�9O!�(37�(3�ӵ89?ȪJL����LN�K�L,)-J������� H9      0      x������ � �      2      x������ � �      4      x������ � �      6      x������ � �      8      x������ � �      :      x������ � �      <      x������ � �      >      x������ � �      @      x������ � �      B      x������ � �      D      x������ � �      F      x������ � �      H      x������ � �      J      x������ � �      L      x������ � �      N   M   x�3�44�tM)MNL�<�9O�������DN�����Ģ̪Ĕ|N���Լ��ĒҢDN.#4=E��@��5��qqq � &      P      x������ � �      R      x������ � �      T      x������ � �      V      x������ � �      X      x������ � �      Z      x������ � �      \      x������ � �      ^      x������ � �      `      x������ � �      b      x������ � �      d      x������ � �      f      x������ � �      h      x������ � �      j      x������ � �      l      x������ � �      n   �   x���=N�0��9Ŝ ����U��@lI3��hV�xe�����Xq_l��X�z���Ԫ�U#��	e@8����pO`,�#;��4"�@c�F��W��t��T���8�q�5�f�G���M8`:9[�2Jl�X�V�����b�w?[G�p4hPJݛ��\���>��3���Ie����Hk)Ư�xÞ��3_�Թ���{LcW�i�����iQ�i�UU�1$i�      p      x������ � �      r      x������ � �      t      x������ � �      v      x������ � �      x      x������ � �      z      x������ � �      |      x������ � �      ~      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ?  x���Mn�0���)|T��%J��誛�3 K���Q]T����Mi`�����=�֫I��z��t�X��d�a���dۂS`4Z�.+Z�t����/��^C=�&���9z�����qm��F,�=�5�E��_T!�S���������|蔽��B�qA�b�V����n(6Mh��d����)�j��%�S䬚���S1k�'Qid�o:[��<�J�<�'�U�r����x摐���S��S�Zi,^�A>���h���T�Y�)�ȧ��%�&��ȅNT`}LS�Ή���Q��_���      �   �   x���=N�0Fk�>�j�� e�RDZhhiF��� ��m��؊#�bL�Y!0�����y�ٛ�p9�DL������'d�P�`�us�p?�K���_�f�ô�k�V�G�	=D{'�%'p$3ƪ������6��hG�?K����uf�1� �\E��GWN����I��u�J7_��ڭ�8��zB����8�Cv)�O�]_���=1-U~H�]~Z5M�Z���      �      x������ � �      �   }  x�M�Q��0D�a1V�$������5B�S�ұ��OT!�Cm����Y)J�c�S�2�5�(O�}�>>�+�@��y�*Ͱ�>�N�?nԥb�}<��3��`�_�Hg��B2��t��eU��J�?,�NS�3Y� ~����%�P�ߔ�2d�tBl
���ҹX�:�1�Gf��YU:nUQ�9YqW�����kx2Z�a#�ւ�8gF�'+�oHA�Z�� R��xv�i�9�B���q\����[��-�;��fx��X3�r��$h�Bh�$~���̀x��mr�f(�v��s^͉{$��l�U͠/�����A	Mmu�f��N>4��l%�����ߌf@V,8s3g3��1�����a���p�      �      x������ � �      �      x������ � �      �   u   x�}���0C�f�K���$�*�HO`�P�����e�2����ۃ����Cm�l�vsRA��o��|&U����|�PC�Kݑ�]~�nB~��:}5n��ߦ���
�/�      �   �   x�u�Q!��0]�.��9��`7M��f�g�.4d���	Vg;�٪�~|���/Ǥ]�,YP'Y]�Dr?�+�R-w����E����[jUC5��b8]����x�#v�S����?�D�+�
/����32Zr���Wc�7}�=      �      x������ � �      �      x������ � �      �      x������ � �      u   �  x�m�MN�0�דS� ��q�,*�(;6� R�@����tɂg��g��mP+%�y��sP��Ab�p7�+[�U��ĳ���~�$��ٲ��C[|Z���{����"R�qQ+���z�!I��R
�^R��fἏ*M1X�3N4-�[�I|��jY٨-�mR� ��A��싘@W��K[�����2�{\v��s������ݾ"9:�� D�*�%�:]vH?o�����7��U����΂);�<	�4ՓL�����}�/�<�(��y#w�ư�!�8S&m�����5��L��L��SB�w�|�#vd�Ne�ŉ��(�d椥��)�#M����:�n�F�����+!��HY�6y��	/Ez�d�LX���G�e��m|"���c��JO�u�Iy�>]DQ��[�Q      �      x������ � �      �      x������ � �      �   A   x�M͹ !��X.fۜMl�A��_"9^��a�,Q2E�!jtQ��U4I���܅�3�~{�      �      x������ � �      �      x������ � �      �   �  x�U��n�0����w�X9(%��ؙ4� KE
��vhRD	ZY!���z]��Jۍ�N�XN���(��O�h1�O�t��E/P���l������j�݊���Nw�d1�/��e&�&��	zb
�_}DY�-F������$���F��F�����t��=?����v�h:��"��Ǧ%�e�aΠ�w3�d�_I�������?���O�T�A<SEv.)F���F�H�����֝�?�?�c2�x�?�!�º�U�
�%�l0��2.�`�o��[bLš}���v���
���O��IN)��#�SM�5P��8-,a��p�(f7p��Y��'Jt�ɾ�٥b���%�T�TQ8إV� Q\iIL�O�GP+;z�Kw׎�j��gBφ��N~�z��L&3�!%��]�z{�(�qV���Hӡ��A��W�����4�_37���x�t5��9o�9$�B�?�      �   g  x����n�0���S�	��m��h�n*��8����l @�
Yʖ��@;{��ب$MO3v�L~���d�R�u��rp�������EHrx�T��{ІeY���AV~�ΰu����n�	x0���t�K�-(��0i�١pf �C��з�΍v�y��	,_Ǣ�(���5J��^��i�S5ZA�����eV�0s�n�j��'����_IY���6��'Le(rpR���j����)zw��Q�BԠj�K�Μ(\w�2%(Vg<��1d� g��o�gޙE���u���?��[�{j
�Ou�g�[�W�7I-
��~����l�B���5�֧i��F�@��=����[Y������k��(sԐ�U�k���+c^��5��+Xz�WN�(pp�`k�m����v�I_�����\oHU<�y>K�)}�1��d��H-JXO&_����b�J�OG�$�Oh�x+;�_�|lv6��y����f2��h���=��������MpO!�������A�i*�jlv	9���6��fss�Q�MY-ƛrL���aD���}U�e=M�;N�i��JnO+�I�j�r������Бz���=p��������U�/�f���@�      �      x������ � �      �   �  x�U�A�$!D�z����e��� 2+��,�(�bI�YF�S:��Qd|?�"�����<M�*�#8��i�T-7bذ�E���r2����m[5��1E�ŠhE�o�[4��Y���+ʬ�1g�-����_�Y��3*[��C����be�It7�6���:��F�o�8�'p��߉�����X$)���M��������S��5+O���0���Z�G֟�8����X���@�*��[�����o@�L����A�;�.m�:%�޲'�Q`�`/s��`9g�u�eEl��Jٽ٩SK���(N���
��ڇ$�dU���!=TU!�y5��af����e�D�$Q������L���w���S�]}\Uզ�.M�����/�j�){T�/)�Բa�U�I�����Yo���r�X�����ÕExv�ެ;�R�N��ԋ�G;ȼ;�
�Ý`U�μ���i�`;v���Ҷ��9v����@�cϕ#�����tnݽdkh ]Zo�����ë���a�����������2����w��BuI� 
�1op����G�:�,��(^mj���gr~�B�L���.��s�L����Um'v�٠6� �v)1Gp���w��1���np�[���9%���#/([�V�wr����2�.m`�,�͊����Q�*OoBZX�&��lMz��B1&�	�W���`�%xa^����$~�Z����fcn�r��9�cyj�J�A|�g�����9.Ѡ1�L?��֭􃰉�I�aM?�v����pw���n��IX6Oځʿ�~қv~��"�{�/�08|Y6�.a����Gb����K���Y� ׉�
KDI�ms��'�R����0�)06�a+�!����.3��=
��ޅ�-�"��<����7��U!��p��{�D|�1���|���rq(�F��\oqMs����O�_(@.�WW��X�c<?(8�SA�<:h�����|ɑ��Ԏ�B��<�����g-�>      �   �  x�͔;o1����h��y��g;ح�K����3Yr�H��6;x(�u�/V�9���n�(���{�Q���g��) >UP8�ɻl��Z�d�B��d�	JYs��6�q�bO*:�6`�ű;n&�55f^&
����:tcz]d��ʤz�1��,_���7A_o�j4I.�9-�2QS4n��ec�z�(�6��I��r�Zr�\�=������+�����%���nE�d`�,+^��;�.CLZ��a!A�Z>�O��s���\I|I1�[K�� �Qv�,�r���d�ߓAWht���<\��O*k�{gL+��lX�x��t��k��߭R�G���x�Y�w���+g�V���~�5�
�T��~Γ����bp�"���pN��V��ۂ���~�z�;ҙ��������y��7R��o�z��c�;����ݡ(�a=ɋ�2��˥��UĹ!���Q-[s���� nha��V�&#��aƶ�11���.:-���� �dG��P��f/�i�;�a^����waFjZ܈�K��qB�4f��rR�^%�R��+��f�e�Eϋ�!�r��������WK�wP���e0��.���g;I�h�$@\z��%��ӳ�a*���%���l���00JU���+Y��y��t: H�HT      �      x������ � �      �   �   x�MQ�� ��a|�Uq������iA�Q�=Ը5����V]��Z7��F��bW6<P��V��bt9
8�����La��q5l�����g���5�e���(�i=>c�0��$ٷd@���凧ħ,�})$l�C��9�]lq�߉Σ�V��_~��/`E\�����V�����M8�
Io��K,����E�}{��j)�_�U�      �   g   x����	�0C��0�v~�.�����C�B1��B��pu��F招&]���(*f?O�\X���pC0��4�*�3x�ܐ?[��R�GP�Y��3�c�W��Ff      �   �   x�}�[!E�a1up/��:JEǪic�@<<D@(�B%�+F�n�
F�b���y?�5�z�ks��1;��^F8�R�7��J�%Mlr��Q;-����@�_� e�ʑ`Tgp�)��U�f��r���! i�0*����!��H�      �   �   x��Q[� ��ØA[�w���cQ�-m�l� ���D1��A�t\ I�`�%��Dwsh���遫��j�
`�S��׾>p&���Pm*7m�X����.����;��6����K�����XYn�U�3�
c��~�����	���aU:      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�m�]nAǟ'��*4��y,H� ��7^�6*����@�3�b�kob�FB���~3�� �ࡹ �e����?��v�Z����n�̦���밾�>ί�����"�J:�`g*�yr��J<�cd�v8��=;�f��	�<g,���g��:��R�.�+��E5�qڥ�KS��m7��{��ns�I
|yvJ
��9f�:>m��c�����"�N˴X�E(�H�QA^��(m֤����9��p����f������K3.�i_B��D�s�Xd�W���@�F�I���vX�﷏
@Udߠu�	�J��8�����{x���O?����q�E����#8z�n������j}7��8��'Z�%� Yۄ{�� ��u�W�3�A��3�4E�����6b������i� `TS��� ���e'Zj�cq��ԚT�N�IR��;<���M�h9b�m�������9����-�(�" ͞ǣ6Ee��*_|Q�^px��
���}�m���μb�)���e�to�20�h��P��ԑ#h�s���I#eT�m�#`�%��A.l���2ב/J�uL����;�;t]�0�5����y�d%0X�(Z��QXmOL���gF�Y�_
�Eb����
#����Q$}�awP�{P=3E�ND�
���I�wT��.�S�OS�sw�m"����E8§Cu�� asɌ�%���6��(a����]��q8u���%@w�c��Z]�
tv̮b�N�/z���̮�hEp�ɕ�
O�-��(�+�0��t@�B^��B�G�L�]�G!
�i�'A��#R�KM!Ջ ��
U�
v�ބ(���
]�BG�j����X�0R8f��)����*j�IL���2�X>3\ԝ�+L�iGu2H6�9��a���������$��n�$�%���ڔI�Ɠ.z	l�,x���&���V�0l��B�c��ņta,����&���Ǉ�j�|/D�      �      x������ � �      �      x������ � �      �   v   x�U��C! k3L��}`�L��L���4G�N���V[�Gϻ4��l�!W����Kt��͡4u�Ry-
-b��In�o�<��#��2yʓ�Q�A��])7��4�E��{^��R@�      �      x������ � �      �      x������ � �      �   �   x�=�K!C��0S��]��瘠vo��3$�a�.��TYQ��vP��+l�L$�U���&�-6!�1��_HMz����{�A:�����%ң�Xp�h�p]�3U���NB��p�~���ڨ4�_h�t?M��+��<)      y   �   x�E�[�D!D���� W|������BGM��*�}01Cx�q����"L�^5�u|b��:*�&KY}����{�+ɠ�_I�,��C��?�L�c��Ƌ���%{��xJ��2�������:i]Q�P~�-?��_k��d.|      �   r  x�}�An�0E��)r���BۥE*�DP���nF΀,9d;Tt���r�NҨ�������?S!�Z[���o�_!^�^0����r��^��?�"QobM� ��F���kL���=8G�P\a��)M~���S,���ld6�yd�xY���~�)g������hsR[5l�`D&�1眝�#������ߦ`�-��8y:��3J�B�v����n��\}q�ˣ��0���@��!�T&���nT㴯i�Q�F�"M@g!�yQ�$�c��\	�y���;�"�ԧv��E׽�,��wo�>��*4�5Z/�k��
��П�	�s��<lO�Cu�����z�ZK����e;^m�n�����(�~ ���      �      x������ � �      �   r  x�U�kr�0��a:�%Yw���Q`��Lf�������;�+�hk����Nkޯ�A{��z���794�����\�u*�
!�/C�L��ͅŀp�!��a� Dn���S����Hcø�q�Z��3m�i闖!y�ǰ!yI���H�5�$s��!�I�����F���׻Y�1�%cNä�+$خ��4^!�;��b�8�6༆�58���7�m�����n���9��N_���t�Fs��<��gP�����xd�qϣcx��:SQ�5D�}ה��A���&!̍id6�qH:��! RB�P��_��0�h�I]}�48=�y�<:<��'�X�`����i��)��)��@�D>e��f��Ӑ      �   �   x���Kj1 е�:Aif �,:%��U6�-��#M�L��M�E���U0�l[�B��m�&���F�vEH�a�6���Ү�?��9kx�OΜ0Q��F��g,�1����#�`��^�8�z�Lǅڏgh���/xbQ��8�`q��}f�HE���_ׇa>J�F�eu&?O*�]2տ7��Cخ�=%�5��(|�K������f��?�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�u��N�0�g�S� ŉ�6#�1�������3�b8�#��;�JU����.SN�Ғ(��}��.S���B
��Q�
Z�Q��J�J�bu=|ގ�[ZH�����K؈�%5�W����
��@�z\��QU�����}xy��k)����jZ��v�BP��y��F�۴�V`�gE�7�ӗ�<�<���͞�%䵰ǜ`oCy���������2n���8�u��u��y�%D/�[�4��e���܆��s�4�u�<�!�c_�2f�@�l,+�V.���;�/���T^a�7s�`��S�SA�r�!��6%C
�F�@�U3,�b߆ߥ�bY�pK�V,>��L+�G�s`SӮuԠ&���&��U��N��G4��jrܕ
�XŐD�&�3��>�?��~����Ǹ�~u�~����YC����&������n��k��Y      �      x������ � �      �      x������ � �      �   G   x�Mι�0���W���k5�
T���/�p��B�R��E���ԙ��2M^Ӣ���6*Ƅ<Kȇ2n�y"�@�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ^  x���An�0E��)|��@)�2
�D"鮛!�%c#ۨjw=PW!�8��4�.Q����̀�X�x,�Qf[�?,O����б��S��J���w�+�g6���X���Q��L�̺>zzgi�����=Z(���xbvh�f�ɑ���Gǅ��9�dY$q&��w�\ZS�k��༽4��y܁��:/)sxV�P���-E�ϒ.������(������1!��[�T���ˍ�X!bw������k�R&���ƿ�E���{"L���kB�.$o�{8�����6-4��h)Gd�jI%�u�6�H�<�ta;ڿ����c�W��DZ��߫�D���Z"&���^n�(��'*d             x������ � �         �   x�U��� ��Ŝ�ͳ��_�lH�#�A0��#�A��B�Q�X�����ݼ{D�޽�����~2G�$�_��_���祘Dm׈˒H�W꒜�\r@w��%�����4۝�lP%[5��z� ��b?�����9T<?"�p�6�         �   x�=�A
�0E��)�b�хH+(���A�dR�#���#�b�.��ϼ��3���j��Օb��3dJ8"�<1���'z���q���AƔ'3z���n�P �G�ԇ�{%�K{���@O	=	$h�NxKQ$qv�����zG�Hʳ��V��IP]SFw���H�            x������ � �         >   x�]��  C�eҒu��C �<���	"� �3}>�Go����~:�~��?nf��^      w   l   x�E��� C��0��ݥ��Q���a�<0Nd�` �"���V`]����I0��D�+��P/#�mN
��uv�[�^=����^�kk����'�?��L6��l��D� |j �      
   5   x�3�44�4202�4��3b0mh�g�	����!LX�@R���� CJ�         J   x�����0��0��(���������8?��9���"�c��%Ā/�e���ņ���ð�m�eb�ٻ���,�            x������ � �            x������ � �            x������ � �         �   x�e�;�0k|�	�2Mʜ �'U��$T {��~"``�����?�(h�D$(&X@���*]i��
�Q�p0����i`�izؒH<ENX�	#P�kS*�-߈�P�����pq��K�5t�3�p�j^��7/u������5
!o��19�|�k�2���d��4��x'���㳆��;p�ѥ}��Z�6u| �N����m�$Jm�            x������ � �            x������ � �         4   x�3�4�4202�,���2�4D�s#�L8͐x����J�8��1z\\\ ���            x������ � �            x������ � �             x������ � �      "      x������ � �      $   �  x����r�0���)������@<cS&&�r�ʂь�Y�%�>J �N���q��У=�~��~��I���4�[}x2�:#�*��B��"{&��=���0(?����f�`����n@*�}�·���+�_�`�a���s���U�p2���]G^kN�0VC���0��`�C�ak�	3��w������&��]��}�F� ����1ckE�**N�4��QɁD��G %Q��[a8��s�L�Cf�zNE�Q����~��cS�b�2�.5A��'|@!�NY�7>�f��Z�6
���y���Ox/�Z��<���n��3z�%O��J�����*0=������H��^@����
�����~p��t�%:�.p�J�q�#���
������|���o|+�@� �8��oֻ���%Ngɵ��h�'�F|�֚Xk��E�b��H��m�V�������~$6�+����S&)��h�V�Y{�p���96��eM2�ͯb���F�ɴ�M��v,�ڝ��v�S>I�L�&Ι>�;�V(����8�S�`w��)������E��r��d�4Խ�nm�q3}b����a��R�_�O�I�~��n���b�U͠��(X\�C��Տ�K�h�]�8G޺��U<��|i�Z�.��      &      x������ � �      (   �  x�]�]�!��e19�������jjN&}[���<t��;�3DH�����&��Rj��-��!P���|�`�^�ᥰ#��H�`����z�mN_U:��kB��D������Ƅ�E+3������Ϩ�� K�)�8�O���c�F(Qz�Ei�:	zѵ�һHp�>+�b�U��ܟ	b�'#B����?B������tv��+EQ2NM��:h��Jَ�ODT!��>q礫��Qg
�:X�g��`��{Z?3�i��r�"Գ:@C3H����Vm�5�����R�̀I>������?�n�����	�c���q����m���a�������l�=PGh�+�I��xm a5 ���G��N�m�+p�7	if�/mO �<9n��D ҩ9�D����$���
��*��b�U�2�����XVT`�%�j��� �"���;ZB�=F�y�r�ئ3GG?y'0��b��"B԰�B��ł���Y�B4�c����4�E�df�44
g:��Q+G/���I��v��ŝ7H2��Z�j]�\D<�])"^A��WXE�+�"��ܘ͋����"\{.���������Lz�z�1�c@��⁣�;�vn8���po\�hy6���@pri�h�* b>�����
3����7��"�͗����@
MG3ݛ�e����D$�H7�*��X��T�〶�S|܁�幚~p4�w����C����D�<x_x�F#[�"��f#M��+�����1d �?%���C�$����"G�;{?��(k�GX��+���� y�ӈ��-B^��G����\M�(Rh��6���/a�`�W��L��m"^ś�Gwһ0\� qVn�3�Fb0ȓ�	�w�BԆ!# �!���J��#�c8t�ش�A��A"u<E!��A�V�xqXo� 1�1��Y�&H���l$�F_q9��!�_'��      *   
  x��Y�n��]+_���K�#�Nc+~�(1,%� �i�-��f7��T"���3�]x��w��̗̩f�vl�2�3	`$�d�S]u���nuZ��N�u*�"��PX]��X,��X+\��r���B0�'����8sE&�L΄�$g��5�D�a9>Lx*���,O��:.\n%W��ǝa�e�'��V_�̚H8����u���'3:��:7����Yy���+3cs���Jǭ5JfE"�Ƶ9-�D.s93�*����.�,	�1(�?��`i�o+8�ܚ�(�s���Sq�S�������2�X�&��V�"{l\yNo8��ݱAyf��{]h~��߂;x
8���ůQ�,4&�"/"��˔8-��4���̸<23lVw5�����`�4�*ϕ���MZ^���//3�h��t�+<��&�C�r��mc��"`T�[;���i����p���&�'� v̉T�_2�x�ё*ʋ���k�ϸ*j��Wp�(�Ц����yl�E��*/��3��1<���tl,K7�����f���k]�[�����T����?.+����D"rNp6�gq� NJC���T�e��z��ɨH׺(�'l,�D����'��tp�H��-a�s��<Ͻ[@����[�AAy��V8������@��hʗ�X�ګ1=o�T��J(�	�
z�ul؁ы�L��Kd龄#* �0��\��:�����}iE`4��,��0�U�RG!,��=e'|,�
�zP4������H�[\�gx�t�K�����zQQ��O�5�M��D.w�Q#�����)g�&\�T���j��IH��1:��Q��\�H/R_�s wk�ڛ�݊����<'?���1���p5C�i�MA6���JWxQy1AH�d�p&]�WmU_�٩��5k`t5���p^s&S�Y�U"�֔H���Tc��bG�K}N�Ĵ��H&�F��A����6������%MV͠_Y
�33a9.����p��l	�i��"��O�[�/3���#�PM��P^�-���R�G��e���ɸ�ӫ�n�ڡ��4�Hǐ+���J8�x!�ElX�G^��X&ޛc�J/�x�dau,-ω�#��o�Ə�#p�%�?��Q�:5����`y���-�LIH�ڼ�X�7"�"��4S�6���.nY*�ѵ$sH,�H��J����|`4|ǎj1e'�]��0牨�����ꝇ�o��l�먓{_�-|�sP@.ϱA�VZ2���Z ��G�
Ų)���+Jp�	��./����N�<��!�#M��*�jN�� �j6Ͽ76�M��I�M�Pn?�K���H�X��?fM�;��vh���c�I�Y�&�{2��S�|d�)�9:WM=�B%��+���~����'�ё���۵}/�Ԏ�̷%=t.1�ݭT	4x��`'s�l��(j�e�P�Bʩ���0�T�%���¡	�%����V�F/�����s�%�3h(�X��eb��H��i�;*T��~�( $l�w�Q3�\�T�Gz��K%���·���{o��o�_�O2�2L �ȇpf�BU_S	J�@���]�K�'�����*"����Z��4*-I�r2)��[�ܜ4�"_�K�qZ�~z�گ���-�h&�u�!D߹o��H������
ME�_c x|��=i��]��#t�9J�zD�9:���`�	�%i�<������_�(8�>Z?&x$���X�
�U(�K~�6��FZ�?~�g�8�q��[��G)����^[��W�kaZ8L�4�A�(eQ�5Y�4���j�C�Փ)���q��	��2��)��K���� �(�����$H>Vw���=;r�(�%����|�Aፇ��Z�:BnnIզ����.��������h�:~��l�߳?�ZhSs�W�Zݬ�#�h�4�^�5(Ph͋��O|J|��\b�}���i�����h��+�;�C����(Rlj�t���l�v$_�@�"r�܉7�_Yi<�p��b;����������/%�+���\������Fh��	Tjf���0;6��U�6Ch�� ��B�R�2{(����t��P�Z�/��|�^�r�جS��QA
xL/?ڇ�߭��0�М��2��#D������1<����R^����\�S����C����UO���(z@G�F�t�hc���ҙdZ�#d��M��bL�N�������2��6q�Z�8ຠi����B��Q3�O����z�0�s���i���5�S��v�=f��ks-}ل���}��6Ec�c�Ƅ�]_���̼Z����=\t�6C�|���?�4R�֔ODla�4ڝ!W��R�M��M�P-:�hj��fN�\п�#�Ng��lm��;	~Ӂ��s^�i8���Y������N���ԍ (Ŗ��r�
�mA�ى�Ҁ0!�i�7Yj|�}���i$�u~d]���YYPb1��䟩2�? Q���0�c����ꜞ��ۊ�5�"����������w�D��<��b����ܶA��Տf� h���������Kr;��6���E��W�_�=z��Oł�i      ,      x������ � �      .   �   x�m�[��0D�a1���^��ut���^E�X�hf��]dbF�̪$x;�2�;��9�:	i߄�(
b�I]q��Q��M��9}�����b,W�:'� ,\m���t��g�J֟ɧ���vt|u�.��t52�r�+�w	C��������Z��#��԰ zPS1KW&8`Ŧ�g�{YJ�ѳ�����w؎�z2�(np-X�{�U��͙Y�      0     x�URI�![�a|��w�������/(�4!*T��lإ�5�:��.-BO�OG��_D}n�-K+C�5�IY�zNء'��0�ia]���#�9,[ˤ��؞p'�S��41� �����	θ4��N�
�JYa9G��K��S���N���6:_��YT 2�"��L��J�%���\o�tg��gVD�]��}[�{�	i��u�������
�X'��������v� ��=��k������r����$���mK!x|�$���%�X7�N�+��A�/      2   a   x�����0��&
nh�.��������$x��D��˥ҭr�kg���Da�6�F,�(�MR�m��$鞯<Mr��$9\�`�F���=#"^�~dT      4   q   x����@!��0�"��������Q#�$$'��ӷB�(U:�|U�[������'��'�����r�����9���9@˔��r����'��� A�/%��?,�r�Z���Z�	+�      6      x������ � �      8      x������ � �      :      x������ � �      <     x�u�Kn]7���*�������ag�ur���4.�f�ee�XI�j��\��ҡ��(�R�ę��)�_~���S1��
rI��Ě����%r����2E#�UL�s%�^��t�H��l�EK�}��f���}N�PŲ-8Y���л��i���#�p��j:F n��S���#Kz�ID��?�J<W�w��v�gaB��/߾}��}������7�&���N,�Yb��Z�#�V�^o�i5+Z��]�
�+�HX)�J3�Gp#�R�z3|Eg�ލߕVLw�8�1�e:�j�]N��f'xa�T2�%,hIv�5`�8���	&y���js����,������:�����r�Q�h��9bJ�x��Vk��4bJ�in���5�[u�/~4Gx�_л3���p��N�O�����6��9=o�E�1�N�b�����<���l��x+uS�:��m�E����=Mf}���3�bYXp�/�X���?o�E��s�A��D$�:�ưF1�������C|��
�qϟn�^A�����4����e���lo���vvOG<`�1�0���,ư�!f�.]�F�:/u�,6�Y���z�����x��@�x��AJ�2�)�X���g�KG��j�@,6��x���K�mU�R�A�f<��	�t�Y�T0?gJ#b���L�4i��A�t���?�Ɂ� `<��H_��F'fx�� ��a��ͩ&�S4g�	i��p�)��N�:N��n<�����Q�ۻ�cN��j�����Er߄֣�̴W�'�y�)-���}}��c�h��P�Մ�	���|{y����/��F>kOF}��w�6����o_�X���rs�z�J"J��5@/��}JR�i:ㄫ��9��'��@Vr��	o/	W��^-o�kV��9@$����-y��C�~�+�[�/'�ħ(�E�V`��H<�H�
|�1"C��H�y�W�q��v�����x�˻��O�f�Wv���N{�5��:�r>�A6e�b/?\������/�SY      >      x������ � �      @      x�}Rٍ1��^��!g[�뿎�7�\#�F( !����s��ayB��g�����a�5�L9Q�պ�:�L��[@�r���5�!W��ܸQ������	�xZ�2"AN��@#[9�5A��
HS���j��[:���ߑ�2���K�>���(�����>F%L� s%(c%��{*���h;���x��{��b�֣�2���l��ZTv��f��8�2�����wM���������3�w���      B   �   x�mR�m1{K�(廉T�� �#� �j��a��Hِ��(��ͼ���a��C��ĝ�Ţh���بOm���4L���谀ɡ��tʼ�r��J.�/��V��+�-/�$��+����üYTE�v������G�!-�j�x�3�L�`�����{-�����{H��~3n�|���� N�)���+�a��/P��YOx�/U��fl�      D   �   x�U��� C�M1+�ܽ��:�!$B ĳ���FD��V �7�0t�M �8�]V'�`��w+��},�'Q`���+s�4�>�������`����Iؒ n�ʦ�m#��)�Q��#혚�r�����m1)�      F   �   x�UP�1��a�@޻t�9j �C�t�1����&UJ^B=ہ����4�3՛�T.�/8>�WLo���p�Q;|�*N�N���V����QЛޘ$r:4q�,�?Ѡ@����x�M')�N�a]:��\Cu� |}��d�m󱖗N��]���x��a��8      H      x������ � �      J      x������ � �      L   �  x�}�MN�0���)rD���R,%ݤ���4ɱ�c��@,G�Ř4��*�Β�}3��M�T�UK������囏���Dl~�Zp^HY܉Yg��@��bYߋ���3�
s�w��"Zj�?"��_VJj9�:g��B�������'V�G4�@����0=�:�|�\Q��b�KG���PJ��0eq��I����iD��
/��B10���Hѷ�r�S���W�|l��w���5���_��"��1�5�l����| ۯ���ݻ���_��-�HO"lb�U=�������9vq���	������DGx:1�&�]-�
&,�ieZ�Z��f�w�'����GL.ǌ�*�(��O�B ��L=+�C��j���ɻ�};l��Q��I�e?rc=�      N      x������ � �      P   z  x�]�ɑCAC��T��2��1b1U�������B�t�%�$�t��LG�.me#IC7mR�IV=����?���!���+BPEr� ++�'�p���ˏ^5�O>�
���?%�e�g����(��� �&#~���lʲꑍ؝e'��Ѱ�vE�<�s:\z	�b�\�I��嬒d�g�Ȍ}F-���ۣ@�Y�2��EW�a����i�Xf:��x�W��w���[��_�y�y�e��TRlG/���a������Wm⑏m&�[�}�q��_ 1F�yT\�'餞/����_�}�I�Z���&QkK�ֳh�X��zI�8ڸE��K-�F2��dh���ڒ��L��+Z�bh�$C�[m�b�{����a�?���n      R      x������ � �      T      x������ � �      V   {   x�=N��0{�b �G/�+;aX��a�:�:ah�Ȝ��h�Z0	�W�4��(HN�;��&)+��<p�!��vX�ž�¤���Rnc�T�~j�����M7���^�����yP�����&�      X   �   x�EO�!;�bx�ௗ�����3&
*��1�����:V�S�����[�lI�W]uMf��͛<(��H���d�����s-����3LyRU�-I��M&*S������Я��<��'p��-�*v��&k���L~*"65�      Z   N   x��LQ
�P�����zt����E5�(�7��B(bgf�c��.�K���x���D~�8�ۑ�s��(}��n5�b0"�      \   A   x�3�4�4202�44�3 �0�2�4!U�1�!D�:�2�4&�4SN3\��q��j�9�.�b���� 9�)�      ^      x������ � �      `      x������ � �      b      x������ � �      d     x���Mn�0���)� �B���AТ����h�v����@9@O������L���HS%1EǅJ"v���?�Zo~>>o'}���<?�[��A�Y�q�'�ʮ��\!��{���x���}���jV���H���_�L֜ua��kx�~&3�4z��tw�^�z<�54�RE�����m����E��\�^m��CW�V����X��*e��c	3Ң,C,c���, _�>V���9�X�Vk߂C��O�Li��P~ߪ*����,:O-��������K�іԀ���0ɍ���7'��0��(�FЊ��w��1�27nV�aN������p�� �eK^���X7�|h��xhؙ>��G`S]3=���?�!�V:�2��ؖ�*V*�E����(X�2^C���){V!tVl�Bx�U�`�=����)r�]7�>�;5�Oy(�����P�N���\ƁE:��G:����Nk�Q@'��A�@'+�9ujZܿMMgV��Nm��M�����w/n��v���N��6��ݲ, �#c�      f      x������ � �      h      x������ � �      j      x������ � �      l      x������ � �      n      x������ � �      p      x������ � �      r      x������ � �     