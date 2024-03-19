PGDMP     /                    {            plan_estrategico_ses    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24344    plan_estrategico_ses    DATABASE     �   CREATE DATABASE plan_estrategico_ses WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
 $   DROP DATABASE plan_estrategico_ses;
                postgres    false            �            1259    24345    universidades    TABLE     �   CREATE TABLE public.universidades (
    iduniversidad integer NOT NULL,
    abreviacion character varying(10),
    nombre character varying(100),
    plan_estudios character varying(15)
);
 !   DROP TABLE public.universidades;
       public         heap    postgres    false            �            1259    24348    universidades_iduniversidad_seq    SEQUENCE     �   CREATE SEQUENCE public.universidades_iduniversidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.universidades_iduniversidad_seq;
       public          postgres    false    214            �           0    0    universidades_iduniversidad_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.universidades_iduniversidad_seq OWNED BY public.universidades.iduniversidad;
          public          postgres    false    215            �            1259    24349    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    idusuario integer NOT NULL,
    nombre_usuario character varying(20) NOT NULL,
    "contraseña" character varying(8),
    cargo character varying(10),
    universidad integer NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    24352    usuarios_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuarios_idusuario_seq;
       public          postgres    false    216            �           0    0    usuarios_idusuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuarios_idusuario_seq OWNED BY public.usuarios.idusuario;
          public          postgres    false    217            �            1259    24353    utna_carreras    TABLE       CREATE TABLE public.utna_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 !   DROP TABLE public.utna_carreras;
       public         heap    postgres    false            �            1259    24356    utna_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_carreras_idcarrera_seq;
       public          postgres    false    218            �           0    0    utna_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_carreras_idcarrera_seq OWNED BY public.utna_carreras.idcarrera;
          public          postgres    false    219            �            1259    24357    utna_eficiencia_ire    TABLE     �   CREATE TABLE public.utna_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.utna_eficiencia_ire;
       public         heap    postgres    false            �            1259    24362    utna_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_eficiencia_ire_ideire_seq;
       public          postgres    false    220            �           0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_eficiencia_ire_ideire_seq OWNED BY public.utna_eficiencia_ire.ideire;
          public          postgres    false    221            �            1259    24363    utna_indice_colocacion    TABLE     �   CREATE TABLE public.utna_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.utna_indice_colocacion;
       public         heap    postgres    false            �            1259    24368    utna_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_indice_colocacion_idic_seq;
       public          postgres    false    222            �           0    0    utna_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_indice_colocacion_idic_seq OWNED BY public.utna_indice_colocacion.idic;
          public          postgres    false    223            �            1259    24369    utna_indice_ptc    TABLE     �  CREATE TABLE public.utna_indice_ptc (
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
       public         heap    postgres    false            �            1259    24372    utna_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utna_indice_ptc_idiptc_seq;
       public          postgres    false    224            �           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utna_indice_ptc_idiptc_seq OWNED BY public.utna_indice_ptc.idiptc;
          public          postgres    false    225            �            1259    24373    utna_indice_servicios    TABLE     �  CREATE TABLE public.utna_indice_servicios (
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
       public         heap    postgres    false            �            1259    24378    utna_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_indice_servicios_idis_seq;
       public          postgres    false    226            �           0    0    utna_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_indice_servicios_idis_seq OWNED BY public.utna_indice_servicios.idis;
          public          postgres    false    227            �            1259    24379    utna_iseg_l    TABLE     �  CREATE TABLE public.utna_iseg_l (
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
       public         heap    postgres    false            �            1259    24384    utna_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_iseg_l_idisegl_seq;
       public          postgres    false    228            �           0    0    utna_iseg_l_idisegl_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_iseg_l_idisegl_seq OWNED BY public.utna_iseg_l.idisegl;
          public          postgres    false    229            �            1259    24385    utna_iseg_tsu    TABLE     �  CREATE TABLE public.utna_iseg_tsu (
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
       public         heap    postgres    false            �            1259    24390    utna_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_iseg_tsu_idisegtsu_seq;
       public          postgres    false    230            �           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_iseg_tsu_idisegtsu_seq OWNED BY public.utna_iseg_tsu.idisegtsu;
          public          postgres    false    231            �            1259    24391    utna_isem_l    TABLE     c  CREATE TABLE public.utna_isem_l (
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
       public         heap    postgres    false            �            1259    24396    utna_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_isem_l_idiseml_seq;
       public          postgres    false    232            �           0    0    utna_isem_l_idiseml_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_isem_l_idiseml_seq OWNED BY public.utna_isem_l.idiseml;
          public          postgres    false    233            �            1259    24397    utna_isem_tsu    TABLE     g  CREATE TABLE public.utna_isem_tsu (
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
       public         heap    postgres    false            �            1259    24402    utna_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_isem_tsu_idisemtsu_seq;
       public          postgres    false    234            �           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_isem_tsu_idisemtsu_seq OWNED BY public.utna_isem_tsu.idisemtsu;
          public          postgres    false    235            �            1259    24403    utna_tasa_acreditacion    TABLE        CREATE TABLE public.utna_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.utna_tasa_acreditacion;
       public         heap    postgres    false            �            1259    24406    utna_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_acreditacion_idta_seq;
       public          postgres    false    236            �           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_acreditacion_idta_seq OWNED BY public.utna_tasa_acreditacion.idta;
          public          postgres    false    237            �            1259    24407    utna_tasa_cobertura    TABLE     �   CREATE TABLE public.utna_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.utna_tasa_cobertura;
       public         heap    postgres    false            �            1259    24412    utna_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.utna_tasa_cobertura_idtc_seq;
       public          postgres    false    238            �           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.utna_tasa_cobertura_idtc_seq OWNED BY public.utna_tasa_cobertura.idtc;
          public          postgres    false    239            �            1259    24413    utna_tasa_docentes    TABLE     �   CREATE TABLE public.utna_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.utna_tasa_docentes;
       public         heap    postgres    false            �            1259    24418    utna_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_tasa_docentes_idtd_seq;
       public          postgres    false    240            �           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_tasa_docentes_idtd_seq OWNED BY public.utna_tasa_docentes.idtd;
          public          postgres    false    241            �            1259    24419    utna_tasa_mov_alumnos    TABLE       CREATE TABLE public.utna_tasa_mov_alumnos (
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
       public         heap    postgres    false            �            1259    24424    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    242            �           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq OWNED BY public.utna_tasa_mov_alumnos.idtma;
          public          postgres    false    243            �            1259    24425    utna_tasa_mov_docentes    TABLE       CREATE TABLE public.utna_tasa_mov_docentes (
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
       public         heap    postgres    false            �            1259    24430     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    244            �           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq OWNED BY public.utna_tasa_mov_docentes.idtmd;
          public          postgres    false    245            �            1259    24431    utna_tasa_pe_asat    TABLE     �   CREATE TABLE public.utna_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.utna_tasa_pe_asat;
       public         heap    postgres    false            �            1259    24434    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    246            �           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq OWNED BY public.utna_tasa_pe_asat.idtpeasat;
          public          postgres    false    247            �            1259    24435    utna_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utna_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.utna_tasa_pe_pertinencia;
       public         heap    postgres    false            �            1259    24438 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    248            �           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utna_tasa_pe_pertinencia.idtpep;
          public          postgres    false    249            �            1259    24439    utna_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.utna_tasa_puntaje_egel (
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
       public         heap    postgres    false            �            1259    24444 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    250            �           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utna_tasa_puntaje_egel.idtpegel;
          public          postgres    false    251            �            1259    24445    utna_tasa_puntaje_egetsu    TABLE     C  CREATE TABLE public.utna_tasa_puntaje_egetsu (
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
       public         heap    postgres    false            �            1259    24450 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq;
       public          postgres    false    252            �           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq OWNED BY public.utna_tasa_puntaje_egetsu.idtpegestu;
          public          postgres    false    253            �            1259    24451    utna_tasa_puntaje_exl    TABLE     =  CREATE TABLE public.utna_tasa_puntaje_exl (
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
       public         heap    postgres    false            �            1259    24456 !   utna_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.utna_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    254            �           0    0 !   utna_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.utna_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utna_tasa_puntaje_exl.idtpexl;
          public          postgres    false    255                        1259    24457    utna_tasa_puntaje_extsu    TABLE     A  CREATE TABLE public.utna_tasa_puntaje_extsu (
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
       public         heap    postgres    false                       1259    24462 %   utna_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.utna_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    256            �           0    0 %   utna_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.utna_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utna_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    257            �           2604    24463    universidades iduniversidad    DEFAULT     �   ALTER TABLE ONLY public.universidades ALTER COLUMN iduniversidad SET DEFAULT nextval('public.universidades_iduniversidad_seq'::regclass);
 J   ALTER TABLE public.universidades ALTER COLUMN iduniversidad DROP DEFAULT;
       public          postgres    false    215    214            �           2604    24464    usuarios idusuario    DEFAULT     x   ALTER TABLE ONLY public.usuarios ALTER COLUMN idusuario SET DEFAULT nextval('public.usuarios_idusuario_seq'::regclass);
 A   ALTER TABLE public.usuarios ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    217    216            �           2604    24465    utna_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utna_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utna_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.utna_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    219    218            �           2604    24466    utna_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utna_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utna_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.utna_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    221    220            �           2604    24467    utna_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utna_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.utna_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    223    222            �           2604    24468    utna_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utna_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.utna_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    225    224            �           2604    24469    utna_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utna_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.utna_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    227    226            �           2604    24470    utna_iseg_l idisegl    DEFAULT     z   ALTER TABLE ONLY public.utna_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utna_iseg_l_idisegl_seq'::regclass);
 B   ALTER TABLE public.utna_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    229    228            �           2604    24471    utna_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utna_iseg_tsu_idisegtsu_seq'::regclass);
 F   ALTER TABLE public.utna_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    231    230            �           2604    24472    utna_isem_l idiseml    DEFAULT     z   ALTER TABLE ONLY public.utna_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utna_isem_l_idiseml_seq'::regclass);
 B   ALTER TABLE public.utna_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    233    232            �           2604    24473    utna_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utna_isem_tsu_idisemtsu_seq'::regclass);
 F   ALTER TABLE public.utna_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    235    234            �           2604    24474    utna_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utna_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    237    236            �           2604    24475    utna_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utna_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.utna_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    239    238            �           2604    24476    utna_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utna_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.utna_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    241    240            �           2604    24477    utna_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utna_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    243    242            �           2604    24478    utna_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utna_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.utna_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    245    244            �           2604    24479    utna_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utna_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    247    246            �           2604    24480    utna_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utna_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    249    248            �           2604    24481    utna_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utna_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    251    250            �           2604    24482 #   utna_tasa_puntaje_egetsu idtpegestu    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu SET DEFAULT nextval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq'::regclass);
 R   ALTER TABLE public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu DROP DEFAULT;
       public          postgres    false    253    252            �           2604    24483    utna_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utna_tasa_puntaje_exl_idtpexl_seq'::regclass);
 L   ALTER TABLE public.utna_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    255    254            �           2604    24484 !   utna_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utna_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 P   ALTER TABLE public.utna_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    257    256            �          0    24345    universidades 
   TABLE DATA           Z   COPY public.universidades (iduniversidad, abreviacion, nombre, plan_estudios) FROM stdin;
    public          postgres    false    214   ��       �          0    24349    usuarios 
   TABLE DATA           `   COPY public.usuarios (idusuario, nombre_usuario, "contraseña", cargo, universidad) FROM stdin;
    public          postgres    false    216   ��       �          0    24353    utna_carreras 
   TABLE DATA           s   COPY public.utna_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    218   ��       �          0    24357    utna_eficiencia_ire 
   TABLE DATA           �   COPY public.utna_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    220   p�       �          0    24363    utna_indice_colocacion 
   TABLE DATA           q   COPY public.utna_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    222   ��       �          0    24369    utna_indice_ptc 
   TABLE DATA           �   COPY public.utna_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    224   s�       �          0    24373    utna_indice_servicios 
   TABLE DATA           �  COPY public.utna_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    226   �      �          0    24379    utna_iseg_l 
   TABLE DATA             COPY public.utna_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    228   �      �          0    24385    utna_iseg_tsu 
   TABLE DATA             COPY public.utna_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    230   �      �          0    24391    utna_isem_l 
   TABLE DATA           �   COPY public.utna_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    232   �	      �          0    24397    utna_isem_tsu 
   TABLE DATA           �   COPY public.utna_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    234   9
      �          0    24403    utna_tasa_acreditacion 
   TABLE DATA           �   COPY public.utna_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    236   �
      �          0    24407    utna_tasa_cobertura 
   TABLE DATA           [   COPY public.utna_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    238   �
      �          0    24413    utna_tasa_docentes 
   TABLE DATA           �   COPY public.utna_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    240   �
      �          0    24419    utna_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utna_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    242         �          0    24425    utna_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utna_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    244   ,      �          0    24431    utna_tasa_pe_asat 
   TABLE DATA           ]   COPY public.utna_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    246   I      �          0    24435    utna_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.utna_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    248   Y      �          0    24439    utna_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    250   E      �          0    24445    utna_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egetsu (idtpegestu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    252   �      �          0    24451    utna_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    254   �      �          0    24457    utna_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    256   �      �           0    0    universidades_iduniversidad_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.universidades_iduniversidad_seq', 11, true);
          public          postgres    false    215            �           0    0    usuarios_idusuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_idusuario_seq', 22, true);
          public          postgres    false    217            �           0    0    utna_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_carreras_idcarrera_seq', 29, true);
          public          postgres    false    219            �           0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    221                        0    0    utna_indice_colocacion_idic_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_indice_colocacion_idic_seq', 140, true);
          public          postgres    false    223                       0    0    utna_indice_ptc_idiptc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utna_indice_ptc_idiptc_seq', 51, true);
          public          postgres    false    225                       0    0    utna_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_indice_servicios_idis_seq', 1, false);
          public          postgres    false    227                       0    0    utna_iseg_l_idisegl_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_iseg_l_idisegl_seq', 12, true);
          public          postgres    false    229                       0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_iseg_tsu_idisegtsu_seq', 17, true);
          public          postgres    false    231                       0    0    utna_isem_l_idiseml_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_isem_l_idiseml_seq', 12, true);
          public          postgres    false    233                       0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_isem_tsu_idisemtsu_seq', 17, true);
          public          postgres    false    235                       0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    237                       0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.utna_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    239            	           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    241            
           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_tasa_mov_alumnos_idtma_seq', 145, true);
          public          postgres    false    243                       0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    245                       0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_pe_asat_idtpeasat_seq', 29, true);
          public          postgres    false    247                       0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_pe_pertinencia_idtpep_seq', 29, true);
          public          postgres    false    249                       0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egel_idtpegel_seq', 12, true);
          public          postgres    false    251                       0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq', 17, true);
          public          postgres    false    253                       0    0 !   utna_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.utna_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    255                       0    0 %   utna_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.utna_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    257            �           2606    24486     universidades universidades_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.universidades
    ADD CONSTRAINT universidades_pkey PRIMARY KEY (iduniversidad);
 J   ALTER TABLE ONLY public.universidades DROP CONSTRAINT universidades_pkey;
       public            postgres    false    214            �           2606    24488    usuarios usuarios_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    216            �           2606    24490     utna_carreras utna_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_carreras
    ADD CONSTRAINT utna_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.utna_carreras DROP CONSTRAINT utna_carreras_pkey;
       public            postgres    false    218            �           2606    24492 ,   utna_eficiencia_ire utna_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT utna_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT utna_eficiencia_ire_pkey;
       public            postgres    false    220            �           2606    24494 2   utna_indice_colocacion utna_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT utna_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT utna_indice_colocacion_pkey;
       public            postgres    false    222            �           2606    24496 $   utna_indice_ptc utna_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT utna_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT utna_indice_ptc_pkey;
       public            postgres    false    224            �           2606    24498 0   utna_indice_servicios utna_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT utna_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT utna_indice_servicios_pkey;
       public            postgres    false    226            �           2606    24500    utna_iseg_l utna_iseg_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT utna_iseg_l_pkey PRIMARY KEY (idisegl);
 F   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT utna_iseg_l_pkey;
       public            postgres    false    228            �           2606    24502     utna_iseg_tsu utna_iseg_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT utna_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 J   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT utna_iseg_tsu_pkey;
       public            postgres    false    230            �           2606    24504    utna_isem_l utna_isem_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT utna_isem_l_pkey PRIMARY KEY (idiseml);
 F   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT utna_isem_l_pkey;
       public            postgres    false    232            �           2606    24506     utna_isem_tsu utna_isem_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT utna_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 J   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT utna_isem_tsu_pkey;
       public            postgres    false    234            �           2606    24508 2   utna_tasa_acreditacion utna_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT utna_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT utna_tasa_acreditacion_pkey;
       public            postgres    false    236            �           2606    24510 ,   utna_tasa_cobertura utna_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT utna_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT utna_tasa_cobertura_pkey;
       public            postgres    false    238            �           2606    24512 *   utna_tasa_docentes utna_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT utna_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT utna_tasa_docentes_pkey;
       public            postgres    false    240                       2606    24514 0   utna_tasa_mov_alumnos utna_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT utna_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT utna_tasa_mov_alumnos_pkey;
       public            postgres    false    242                       2606    24516 2   utna_tasa_mov_docentes utna_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT utna_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT utna_tasa_mov_docentes_pkey;
       public            postgres    false    244                       2606    24518 (   utna_tasa_pe_asat utna_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT utna_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT utna_tasa_pe_asat_pkey;
       public            postgres    false    246                       2606    24520 6   utna_tasa_pe_pertinencia utna_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT utna_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT utna_tasa_pe_pertinencia_pkey;
       public            postgres    false    248            	           2606    24522 2   utna_tasa_puntaje_egel utna_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT utna_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT utna_tasa_puntaje_egel_pkey;
       public            postgres    false    250                       2606    24524 6   utna_tasa_puntaje_egetsu utna_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT utna_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegestu);
 `   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT utna_tasa_puntaje_egetsu_pkey;
       public            postgres    false    252                       2606    24526 0   utna_tasa_puntaje_exl utna_tasa_puntaje_exl_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utna_tasa_puntaje_exl
    ADD CONSTRAINT utna_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 Z   ALTER TABLE ONLY public.utna_tasa_puntaje_exl DROP CONSTRAINT utna_tasa_puntaje_exl_pkey;
       public            postgres    false    254                       2606    24528 4   utna_tasa_puntaje_extsu utna_tasa_puntaje_extsu_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu
    ADD CONSTRAINT utna_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 ^   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu DROP CONSTRAINT utna_tasa_puntaje_extsu_pkey;
       public            postgres    false    256                       2606    24529    utna_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    218    238    3305                       2606    24534    utna_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    218    3305    220            #           2606    24539     utna_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    218    252    3305            "           2606    24544    utna_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    3305    218    250                       2606    24549    utna_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    234    3305    218                       2606    24554    utna_isem_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    3305    232    218                       2606    24559    utna_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    222    218    3305                       2606    24564    utna_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    218    226    3305                       2606    24569    utna_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 A   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    224    3305    218                       2606    24574    utna_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    218    240    3305                       2606    24579    utna_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    230    3305    218                       2606    24584    utna_iseg_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    228    3305    218                       2606    24589    utna_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    218    242    3305                       2606    24594    utna_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    3305    244    218                       2606    24599    utna_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    3305    218    236            %           2606    24604    utna_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utna_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    3305    218    256            $           2606    24609    utna_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    254    3305    218                        2606    24614    utna_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utna_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    246    218    3305            !           2606    24619    utna_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    218    3305    248                       2606    24624     utna_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utna_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    218    224    3305                       2606    24629    usuarios universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT universidad;
       public          postgres    false    3301    216    214                       2606    24634    utna_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 C   ALTER TABLE ONLY public.utna_carreras DROP CONSTRAINT universidad;
       public          postgres    false    218    214    3301            �   ?  x���Mn�0���)|T��%J��誛�3 K���Q]T����Mi`�����=�֫I��z��t�X��d�a���dۂS`4Z�.+Z�t����/��^C=�&���9z�����qm��F,�=�5�E��_T!�S���������|蔽��B�qA�b�V����n(6Mh��d����)�j��%�S䬚���S1k�'Qid�o:[��<�J�<�'�U�r����x摐���S��S�Zi,^�A>���h���T�Y�)�ȧ��%�&��ȅNT`}LS�Ή���Q��_���      �   �  x�U��n�0����w�X9(%��ؙ4� KE
��vhRD	ZY!���z]��Jۍ�N�XN���(��O�h1�O�t��E/P���l������j�݊���Nw�d1�/��e&�&��	zb
�_}DY�-F������$���F��F�����t��=?����v�h:��"��Ǧ%�e�aΠ�w3�d�_I�������?���O�T�A<SEv.)F���F�H�����֝�?�?�c2�x�?�!�º�U�
�%�l0��2.�`�o��[bLš}���v���
���O��IN)��#�SM�5P��8-,a��p�(f7p��Y��'Jt�ɾ�٥b���%�T�TQ8إV� Q\iIL�O�GP+;z�Kw׎�j��gBφ��N~�z��L&3�!%��]�z{�(�qV���Hӡ��A��W�����4�_37���x�t5��9o�9$�B�?�      �   �  x����r�0���)������@<cS&&�r�ʂь�Y�%�>J �N���q��У=�~��~��I���4�[}x2�:#�*��B��"{&��=���0(?����f�`����n@*�}�·���+�_�`�a���s���U�p2���]G^kN�0VC���0��`�C�ak�	3��w������&��]��}�F� ����1ckE�**N�4��QɁD��G %Q��[a8��s�L�Cf�zNE�Q����~��cS�b�2�.5A��'|@!�NY�7>�f��Z�6
���y���Ox/�Z��<���n��3z�%O��J�����*0=������H��^@����
�����~p��t�%:�.p�J�q�#���
������|���o|+�@� �8��oֻ���%Ngɵ��h�'�F|�֚Xk��E�b��H��m�V�������~$6�+����S&)��h�V�Y{�p���96��eM2�ͯb���F�ɴ�M��v,�ڝ��v�S>I�L�&Ι>�;�V(����8�S�`w��)������E��r��d�4Խ�nm�q3}b����a��R�_�O�I�~��n���b�U͠��(X\�C��Տ�K�h�]�8G޺��U<��|i�Z�.��      �      x������ � �      �   �  x�]�]�!��e19�������jjN&}[���<t��;�3DH�����&��Rj��-��!P���|�`�^�ᥰ#��H�`����z�mN_U:��kB��D������Ƅ�E+3������Ϩ�� K�)�8�O���c�F(Qz�Ei�:	zѵ�һHp�>+�b�U��ܟ	b�'#B����?B������tv��+EQ2NM��:h��Jَ�ODT!��>q礫��Qg
�:X�g��`��{Z?3�i��r�"Գ:@C3H����Vm�5�����R�̀I>������?�n�����	�c���q����m���a�������l�=PGh�+�I��xm a5 ���G��N�m�+p�7	if�/mO �<9n��D ҩ9�D����$���
��*��b�U�2�����XVT`�%�j��� �"���;ZB�=F�y�r�ئ3GG?y'0��b��"B԰�B��ł���Y�B4�c����4�E�df�44
g:��Q+G/���I��v��ŝ7H2��Z�j]�\D<�])"^A��WXE�+�"��ܘ͋����"\{.���������Lz�z�1�c@��⁣�;�vn8���po\�hy6���@pri�h�* b>�����
3����7��"�͗����@
MG3ݛ�e����D$�H7�*��X��T�〶�S|܁�幚~p4�w����C����D�<x_x�F#[�"��f#M��+�����1d �?%���C�$����"G�;{?��(k�GX��+���� y�ӈ��-B^��G����\M�(Rh��6���/a�`�W��L��m"^ś�Gwһ0\� qVn�3�Fb0ȓ�	�w�BԆ!# �!���J��#�c8t�ش�A��A"u<E!��A�V�xqXo� 1�1��Y�&H���l$�F_q9��!�_'��      �   
  x��Y�n��]+_���K�#�Nc+~�(1,%� �i�-��f7��T"���3�]x��w��̗̩f�vl�2�3	`$�d�S]u���nuZ��N�u*�"��PX]��X,��X+\��r���B0�'����8sE&�L΄�$g��5�D�a9>Lx*���,O��:.\n%W��ǝa�e�'��V_�̚H8����u���'3:��:7����Yy���+3cs���Jǭ5JfE"�Ƶ9-�D.s93�*����.�,	�1(�?��`i�o+8�ܚ�(�s���Sq�S�������2�X�&��V�"{l\yNo8��ݱAyf��{]h~��߂;x
8���ůQ�,4&�"/"��˔8-��4���̸<23lVw5�����`�4�*ϕ���MZ^���//3�h��t�+<��&�C�r��mc��"`T�[;���i����p���&�'� v̉T�_2�x�ё*ʋ���k�ϸ*j��Wp�(�Ц����yl�E��*/��3��1<���tl,K7�����f���k]�[�����T����?.+����D"rNp6�gq� NJC���T�e��z��ɨH׺(�'l,�D����'��tp�H��-a�s��<Ͻ[@����[�AAy��V8������@��hʗ�X�ګ1=o�T��J(�	�
z�ul؁ы�L��Kd龄#* �0��\��:�����}iE`4��,��0�U�RG!,��=e'|,�
�zP4������H�[\�gx�t�K�����zQQ��O�5�M��D.w�Q#�����)g�&\�T���j��IH��1:��Q��\�H/R_�s wk�ڛ�݊����<'?���1���p5C�i�MA6���JWxQy1AH�d�p&]�WmU_�٩��5k`t5���p^s&S�Y�U"�֔H���Tc��bG�K}N�Ĵ��H&�F��A����6������%MV͠_Y
�33a9.����p��l	�i��"��O�[�/3���#�PM��P^�-���R�G��e���ɸ�ӫ�n�ڡ��4�Hǐ+���J8�x!�ElX�G^��X&ޛc�J/�x�dau,-ω�#��o�Ə�#p�%�?��Q�:5����`y���-�LIH�ڼ�X�7"�"��4S�6���.nY*�ѵ$sH,�H��J����|`4|ǎj1e'�]��0牨�����ꝇ�o��l�먓{_�-|�sP@.ϱA�VZ2���Z ��G�
Ų)���+Jp�	��./����N�<��!�#M��*�jN�� �j6Ͽ76�M��I�M�Pn?�K���H�X��?fM�;��vh���c�I�Y�&�{2��S�|d�)�9:WM=�B%��+���~����'�ё���۵}/�Ԏ�̷%=t.1�ݭT	4x��`'s�l��(j�e�P�Bʩ���0�T�%���¡	�%����V�F/�����s�%�3h(�X��eb��H��i�;*T��~�( $l�w�Q3�\�T�Gz��K%���·���{o��o�_�O2�2L �ȇpf�BU_S	J�@���]�K�'�����*"����Z��4*-I�r2)��[�ܜ4�"_�K�qZ�~z�گ���-�h&�u�!D߹o��H������
ME�_c x|��=i��]��#t�9J�zD�9:���`�	�%i�<������_�(8�>Z?&x$���X�
�U(�K~�6��FZ�?~�g�8�q��[��G)����^[��W�kaZ8L�4�A�(eQ�5Y�4���j�C�Փ)���q��	��2��)��K���� �(�����$H>Vw���=;r�(�%����|�Aፇ��Z�:BnnIզ����.��������h�:~��l�߳?�ZhSs�W�Zݬ�#�h�4�^�5(Ph͋��O|J|��\b�}���i�����h��+�;�C����(Rlj�t���l�v$_�@�"r�܉7�_Yi<�p��b;����������/%�+���\������Fh��	Tjf���0;6��U�6Ch�� ��B�R�2{(����t��P�Z�/��|�^�r�جS��QA
xL/?ڇ�߭��0�М��2��#D������1<����R^����\�S����C����UO���(z@G�F�t�hc���ҙdZ�#d��M��bL�N�������2��6q�Z�8ຠi����B��Q3�O����z�0�s���i���5�S��v�=f��ks-}ل���}��6Ec�c�Ƅ�]_���̼Z����=\t�6C�|���?�4R�֔ODla�4ڝ!W��R�M��M�P-:�hj��fN�\п�#�Ng��lm��;	~Ӂ��s^�i8���Y������N���ԍ (Ŗ��r�
�mA�ى�Ҁ0!�i�7Yj|�}���i$�u~d]���YYPb1��䟩2�? Q���0�c����ꜞ��ۊ�5�"����������w�D��<��b����ܶA��Տf� h���������Kr;��6���E��W�_�=z��Oł�i      �      x������ � �      �   �   x�m�[��0D�a1���^��ut���^E�X�hf��]dbF�̪$x;�2�;��9�:	i߄�(
b�I]q��Q��M��9}�����b,W�:'� ,\m���t��g�J֟ɧ���vt|u�.��t52�r�+�w	C��������Z��#��԰ zPS1KW&8`Ŧ�g�{YJ�ѳ�����w؎�z2�(np-X�{�U��͙Y�      �     x�URI�![�a|��w�������/(�4!*T��lإ�5�:��.-BO�OG��_D}n�-K+C�5�IY�zNء'��0�ia]���#�9,[ˤ��؞p'�S��41� �����	θ4��N�
�JYa9G��K��S���N���6:_��YT 2�"��L��J�%���\o�tg��gVD�]��}[�{�	i��u�������
�X'��������v� ��=��k������r����$���mK!x|�$���%�X7�N�+��A�/      �   a   x�����0��&
nh�.��������$x��D��˥ҭr�kg���Da�6�F,�(�MR�m��$鞯<Mr��$9\�`�F���=#"^�~dT      �   q   x����@!��0�"��������Q#�$$'��ӷB�(U:�|U�[������'��'�����r�����9���9@˔��r����'��� A�/%��?,�r�Z���Z�	+�      �      x������ � �      �      x������ � �      �      x������ � �      �     x�u�Kn]7���*�������ag�ur���4.�f�ee�XI�j��\��ҡ��(�R�ę��)�_~���S1��
rI��Ě����%r����2E#�UL�s%�^��t�H��l�EK�}��f���}N�PŲ-8Y���л��i���#�p��j:F n��S���#Kz�ID��?�J<W�w��v�gaB��/߾}��}������7�&���N,�Yb��Z�#�V�^o�i5+Z��]�
�+�HX)�J3�Gp#�R�z3|Eg�ލߕVLw�8�1�e:�j�]N��f'xa�T2�%,hIv�5`�8���	&y���js����,������:�����r�Q�h��9bJ�x��Vk��4bJ�in���5�[u�/~4Gx�_л3���p��N�O�����6��9=o�E�1�N�b�����<���l��x+uS�:��m�E����=Mf}���3�bYXp�/�X���?o�E��s�A��D$�:�ưF1�������C|��
�qϟn�^A�����4����e���lo���vvOG<`�1�0���,ư�!f�.]�F�:/u�,6�Y���z�����x��@�x��AJ�2�)�X���g�KG��j�@,6��x���K�mU�R�A�f<��	�t�Y�T0?gJ#b���L�4i��A�t���?�Ɂ� `<��H_��F'fx�� ��a��ͩ&�S4g�	i��p�)��N�:N��n<�����Q�ۻ�cN��j�����Er߄֣�̴W�'�y�)-���}}��c�h��P�Մ�	���|{y����/��F>kOF}��w�6����o_�X���rs�z�J"J��5@/��}JR�i:ㄫ��9��'��@Vr��	o/	W��^-o�kV��9@$����-y��C�~�+�[�/'�ħ(�E�V`��H<�H�
|�1"C��H�y�W�q��v�����x�˻��O�f�Wv���N{�5��:�r>�A6e�b/?\������/�SY      �      x������ � �      �      x�}Rٍ1��^��!g[�뿎�7�\#�F( !����s��ayB��g�����a�5�L9Q�պ�:�L��[@�r���5�!W��ܸQ������	�xZ�2"AN��@#[9�5A��
HS���j��[:���ߑ�2���K�>���(�����>F%L� s%(c%��{*���h;���x��{��b�֣�2���l��ZTv��f��8�2�����wM���������3�w���      �   �   x�mR�m1{K�(廉T�� �#� �j��a��Hِ��(��ͼ���a��C��ĝ�Ţh���بOm���4L���谀ɡ��tʼ�r��J.�/��V��+�-/�$��+����üYTE�v������G�!-�j�x�3�L�`�����{-�����{H��~3n�|���� N�)���+�a��/P��YOx�/U��fl�      �   �   x�U��� C�M1+�ܽ��:�!$B ĳ���FD��V �7�0t�M �8�]V'�`��w+��},�'Q`���+s�4�>�������`����Iؒ n�ʦ�m#��)�Q��#혚�r�����m1)�      �   �   x�UP�1��a�@޻t�9j �C�t�1����&UJ^B=ہ����4�3՛�T.�/8>�WLo���p�Q;|�*N�N���V����QЛޘ$r:4q�,�?Ѡ@����x�M')�N�a]:��\Cu� |}��d�m󱖗N��]���x��a��8      �      x������ � �      �      x������ � �     