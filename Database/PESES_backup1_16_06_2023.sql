PGDMP         	                {            plan_estrategico    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17096    plan_estrategico    DATABASE     �   CREATE DATABASE plan_estrategico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
     DROP DATABASE plan_estrategico;
                postgres    false            �            1259    17124    carreras    TABLE     �   CREATE TABLE public.carreras (
    idcarrera integer NOT NULL,
    universidad integer,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15)
);
    DROP TABLE public.carreras;
       public         heap    postgres    false            �            1259    17123    carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.carreras_idcarrera_seq;
       public          postgres    false    219            �           0    0    carreras_idcarrera_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.carreras_idcarrera_seq OWNED BY public.carreras.idcarrera;
          public          postgres    false    218            �            1259    17105    universidades    TABLE     �   CREATE TABLE public.universidades (
    iduniversidad integer NOT NULL,
    abreviacion character varying(10),
    nombre character varying(100),
    plan_estudios character varying(15)
);
 !   DROP TABLE public.universidades;
       public         heap    postgres    false            �            1259    17104    universidades_iduniversidad_seq    SEQUENCE     �   CREATE SEQUENCE public.universidades_iduniversidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.universidades_iduniversidad_seq;
       public          postgres    false    215            �           0    0    universidades_iduniversidad_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.universidades_iduniversidad_seq OWNED BY public.universidades.iduniversidad;
          public          postgres    false    214            �            1259    17112    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    idusuario integer NOT NULL,
    nombre_usuario character varying(20),
    "contraseña" character varying(8),
    cargo character varying(10),
    universidad integer
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    17111    usuarios_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuarios_idusuario_seq;
       public          postgres    false    217            �           0    0    usuarios_idusuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuarios_idusuario_seq OWNED BY public.usuarios.idusuario;
          public          postgres    false    216            �            1259    17150    utna_eficiencia_ire    TABLE     �   CREATE TABLE public.utna_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer,
    "año" integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.utna_eficiencia_ire;
       public         heap    postgres    false            �            1259    17149    utna_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_eficiencia_ire_ideire_seq;
       public          postgres    false    223            �           0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_eficiencia_ire_ideire_seq OWNED BY public.utna_eficiencia_ire.ideire;
          public          postgres    false    222            �            1259    17305    utna_indice_colocacion    TABLE     �   CREATE TABLE public.utna_indice_colocacion (
    idic integer NOT NULL,
    carrera integer,
    "año" integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.utna_indice_colocacion;
       public         heap    postgres    false            �            1259    17304    utna_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_indice_colocacion_idic_seq;
       public          postgres    false    245            �           0    0    utna_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_indice_colocacion_idic_seq OWNED BY public.utna_indice_colocacion.idic;
          public          postgres    false    244            �            1259    17264    utna_indice_ptc    TABLE     D  CREATE TABLE public.utna_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer,
    "año" integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(150),
    pe_perteneciente integer,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10)
);
 #   DROP TABLE public.utna_indice_ptc;
       public         heap    postgres    false            �            1259    17263    utna_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utna_indice_ptc_idiptc_seq;
       public          postgres    false    239            �           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utna_indice_ptc_idiptc_seq OWNED BY public.utna_indice_ptc.idiptc;
          public          postgres    false    238            �            1259    17193    utna_indice_servicios    TABLE     2  CREATE TABLE public.utna_indice_servicios (
    idis integer NOT NULL,
    carrera integer,
    "año" integer,
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
    indice_satisfaccion numeric
);
 )   DROP TABLE public.utna_indice_servicios;
       public         heap    postgres    false            �            1259    17192    utna_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_indice_servicios_idis_seq;
       public          postgres    false    229            �           0    0    utna_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_indice_servicios_idis_seq OWNED BY public.utna_indice_servicios.idis;
          public          postgres    false    228            �            1259    17359    utna_iseg_l    TABLE     �  CREATE TABLE public.utna_iseg_l (
    idisegl integer NOT NULL,
    carrera integer,
    "año" integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
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
       public         heap    postgres    false            �            1259    17358    utna_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_iseg_l_idisegl_seq;
       public          postgres    false    253            �           0    0    utna_iseg_l_idisegl_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_iseg_l_idisegl_seq OWNED BY public.utna_iseg_l.idisegl;
          public          postgres    false    252            �            1259    17207    utna_iseg_tsu    TABLE     �  CREATE TABLE public.utna_iseg_tsu (
    idisegtsu integer NOT NULL,
    carrera integer,
    "año" integer,
    bolsa_trabajo numeric,
    op_estadia numeric,
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
       public         heap    postgres    false            �            1259    17206    utna_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_iseg_tsu_idisegtsu_seq;
       public          postgres    false    231            �           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_iseg_tsu_idisegtsu_seq OWNED BY public.utna_iseg_tsu.idisegtsu;
          public          postgres    false    230            �            1259    17235    utna_isem_l    TABLE     Y  CREATE TABLE public.utna_isem_l (
    idiseml integer NOT NULL,
    carrera integer,
    "año" integer,
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
       public         heap    postgres    false            �            1259    17234    utna_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_isem_l_idiseml_seq;
       public          postgres    false    235            �           0    0    utna_isem_l_idiseml_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_isem_l_idiseml_seq OWNED BY public.utna_isem_l.idiseml;
          public          postgres    false    234            �            1259    17221    utna_isem_tsu    TABLE     ]  CREATE TABLE public.utna_isem_tsu (
    idisemtsu integer NOT NULL,
    carrera integer,
    "año" integer,
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
       public         heap    postgres    false            �            1259    17220    utna_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_isem_tsu_idisemtsu_seq;
       public          postgres    false    233            �           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_isem_tsu_idisemtsu_seq OWNED BY public.utna_isem_tsu.idisemtsu;
          public          postgres    false    232            �            1259    17347    utna_tasa_acreditacion    TABLE     �   CREATE TABLE public.utna_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer,
    "año" integer,
    acreditacion boolean,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.utna_tasa_acreditacion;
       public         heap    postgres    false            �            1259    17346    utna_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_acreditacion_idta_seq;
       public          postgres    false    251            �           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_acreditacion_idta_seq OWNED BY public.utna_tasa_acreditacion.idta;
          public          postgres    false    250            �            1259    17136    utna_tasa_cobertura    TABLE     �   CREATE TABLE public.utna_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer,
    "año" integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.utna_tasa_cobertura;
       public         heap    postgres    false            �            1259    17135    utna_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.utna_tasa_cobertura_idtc_seq;
       public          postgres    false    221            �           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.utna_tasa_cobertura_idtc_seq OWNED BY public.utna_tasa_cobertura.idtc;
          public          postgres    false    220            �            1259    17250    utna_tasa_docentes    TABLE     �   CREATE TABLE public.utna_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer,
    "año" integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.utna_tasa_docentes;
       public         heap    postgres    false            �            1259    17249    utna_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_tasa_docentes_idtd_seq;
       public          postgres    false    237            �           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_tasa_docentes_idtd_seq OWNED BY public.utna_tasa_docentes.idtd;
          public          postgres    false    236            �            1259    17319    utna_tasa_mov_alumnos    TABLE     �   CREATE TABLE public.utna_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer,
    "año" integer,
    matricula integer,
    no_alum_viajaron integer,
    paises character varying(100),
    tasa_movilidad numeric
);
 )   DROP TABLE public.utna_tasa_mov_alumnos;
       public         heap    postgres    false            �            1259    17318    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    247            �           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq OWNED BY public.utna_tasa_mov_alumnos.idtma;
          public          postgres    false    246            �            1259    17333    utna_tasa_mov_docentes    TABLE     �   CREATE TABLE public.utna_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer,
    "año" integer,
    matricula integer,
    no_doc_viajaron integer,
    paises character varying(100),
    tasa_movilidad numeric
);
 *   DROP TABLE public.utna_tasa_mov_docentes;
       public         heap    postgres    false            �            1259    17332     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    249            �           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq OWNED BY public.utna_tasa_mov_docentes.idtmd;
          public          postgres    false    248            �            1259    17281    utna_tasa_pe_asat    TABLE     �   CREATE TABLE public.utna_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer,
    "año" integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.utna_tasa_pe_asat;
       public         heap    postgres    false            �            1259    17280    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    241            �           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq OWNED BY public.utna_tasa_pe_asat.idtpeasat;
          public          postgres    false    240            �            1259    17293    utna_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utna_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer,
    "año" integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.utna_tasa_pe_pertinencia;
       public         heap    postgres    false            �            1259    17292 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    243            �           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utna_tasa_pe_pertinencia.idtpep;
          public          postgres    false    242            �            1259    17178    utna_tasa_puntaje_egel    TABLE     5  CREATE TABLE public.utna_tasa_puntaje_egel (
    idtpegel integer NOT NULL,
    carrera integer,
    "año" integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 *   DROP TABLE public.utna_tasa_puntaje_egel;
       public         heap    postgres    false            �            1259    17177 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    227            �           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utna_tasa_puntaje_egel.idtpegel;
          public          postgres    false    226            �            1259    17164    utna_tasa_puntaje_egetsu    TABLE     9  CREATE TABLE public.utna_tasa_puntaje_egetsu (
    idtpegestu integer NOT NULL,
    carrera integer,
    "año" integer,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric,
    puntaje_sobresaliente numeric
);
 ,   DROP TABLE public.utna_tasa_puntaje_egetsu;
       public         heap    postgres    false            �            1259    17163 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq;
       public          postgres    false    225            �           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq OWNED BY public.utna_tasa_puntaje_egetsu.idtpegestu;
          public          postgres    false    224            �           2604    17127    carreras idcarrera    DEFAULT     x   ALTER TABLE ONLY public.carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.carreras_idcarrera_seq'::regclass);
 A   ALTER TABLE public.carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    17108    universidades iduniversidad    DEFAULT     �   ALTER TABLE ONLY public.universidades ALTER COLUMN iduniversidad SET DEFAULT nextval('public.universidades_iduniversidad_seq'::regclass);
 J   ALTER TABLE public.universidades ALTER COLUMN iduniversidad DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    17115    usuarios idusuario    DEFAULT     x   ALTER TABLE ONLY public.usuarios ALTER COLUMN idusuario SET DEFAULT nextval('public.usuarios_idusuario_seq'::regclass);
 A   ALTER TABLE public.usuarios ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    17153    utna_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utna_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utna_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.utna_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    17308    utna_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utna_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.utna_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    17267    utna_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utna_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.utna_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    17196    utna_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utna_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.utna_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    17362    utna_iseg_l idisegl    DEFAULT     z   ALTER TABLE ONLY public.utna_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utna_iseg_l_idisegl_seq'::regclass);
 B   ALTER TABLE public.utna_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    252    253    253            �           2604    17210    utna_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utna_iseg_tsu_idisegtsu_seq'::regclass);
 F   ALTER TABLE public.utna_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    17238    utna_isem_l idiseml    DEFAULT     z   ALTER TABLE ONLY public.utna_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utna_isem_l_idiseml_seq'::regclass);
 B   ALTER TABLE public.utna_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    17224    utna_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utna_isem_tsu_idisemtsu_seq'::regclass);
 F   ALTER TABLE public.utna_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    17350    utna_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utna_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    251    250    251            �           2604    17139    utna_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utna_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.utna_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    17253    utna_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utna_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.utna_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    17322    utna_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utna_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    17336    utna_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utna_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.utna_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    248    249    249            �           2604    17284    utna_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utna_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    17296    utna_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utna_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    17181    utna_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utna_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    17167 #   utna_tasa_puntaje_egetsu idtpegestu    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu SET DEFAULT nextval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq'::regclass);
 R   ALTER TABLE public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu DROP DEFAULT;
       public          postgres    false    225    224    225            �          0    17124    carreras 
   TABLE DATA           a   COPY public.carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel) FROM stdin;
    public          postgres    false    219   ��       �          0    17105    universidades 
   TABLE DATA           Z   COPY public.universidades (iduniversidad, abreviacion, nombre, plan_estudios) FROM stdin;
    public          postgres    false    215   ��       �          0    17112    usuarios 
   TABLE DATA           `   COPY public.usuarios (idusuario, nombre_usuario, "contraseña", cargo, universidad) FROM stdin;
    public          postgres    false    217   �       �          0    17150    utna_eficiencia_ire 
   TABLE DATA           �   COPY public.utna_eficiencia_ire (ideire, carrera, "año", indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    223   .�       �          0    17305    utna_indice_colocacion 
   TABLE DATA           p   COPY public.utna_indice_colocacion (idic, carrera, "año", egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    245   K�       �          0    17264    utna_indice_ptc 
   TABLE DATA           �   COPY public.utna_indice_ptc (idiptc, carrera, "año", nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación") FROM stdin;
    public          postgres    false    239   h�       �          0    17193    utna_indice_servicios 
   TABLE DATA           F  COPY public.utna_indice_servicios (idis, carrera, "año", salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, indice_satisfaccion) FROM stdin;
    public          postgres    false    229   ��       �          0    17359    utna_iseg_l 
   TABLE DATA           �   COPY public.utna_iseg_l (idisegl, carrera, "año", bolsa_trabajo, op_estadia, esperiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    253   ��       �          0    17207    utna_iseg_tsu 
   TABLE DATA           �   COPY public.utna_iseg_tsu (idisegtsu, carrera, "año", bolsa_trabajo, op_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    231   ��       �          0    17235    utna_isem_l 
   TABLE DATA           �   COPY public.utna_isem_l (idiseml, carrera, "año", op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    235   ��       �          0    17221    utna_isem_tsu 
   TABLE DATA           �   COPY public.utna_isem_tsu (idisemtsu, carrera, "año", op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    233   ��       �          0    17347    utna_tasa_acreditacion 
   TABLE DATA           h   COPY public.utna_tasa_acreditacion (idta, carrera, "año", acreditacion, tipo_acreditacion) FROM stdin;
    public          postgres    false    251   �       �          0    17136    utna_tasa_cobertura 
   TABLE DATA           Z   COPY public.utna_tasa_cobertura (idtc, carrera, "año", incremento_matricula) FROM stdin;
    public          postgres    false    221   3�       �          0    17250    utna_tasa_docentes 
   TABLE DATA           t   COPY public.utna_tasa_docentes (idtd, carrera, "año", no_docentes, doc_perfil_adecuado, tasa_docentes) FROM stdin;
    public          postgres    false    237   P�       �          0    17319    utna_tasa_mov_alumnos 
   TABLE DATA           |   COPY public.utna_tasa_mov_alumnos (idtma, carrera, "año", matricula, no_alum_viajaron, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    247   m�       �          0    17333    utna_tasa_mov_docentes 
   TABLE DATA           |   COPY public.utna_tasa_mov_docentes (idtmd, carrera, "año", matricula, no_doc_viajaron, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    249   ��       �          0    17281    utna_tasa_pe_asat 
   TABLE DATA           \   COPY public.utna_tasa_pe_asat (idtpeasat, pe, "año", realizacion, vencimiento) FROM stdin;
    public          postgres    false    241   ��       �          0    17293    utna_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.utna_tasa_pe_pertinencia (idtpep, pe, "año", presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    243   ��       �          0    17178    utna_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egel (idtpegel, carrera, "año", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    227   ��       �          0    17164    utna_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egetsu (idtpegestu, carrera, "año", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    225   ��       �           0    0    carreras_idcarrera_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.carreras_idcarrera_seq', 1, false);
          public          postgres    false    218            �           0    0    universidades_iduniversidad_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.universidades_iduniversidad_seq', 1, false);
          public          postgres    false    214            �           0    0    usuarios_idusuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_idusuario_seq', 1, false);
          public          postgres    false    216            �           0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    222            �           0    0    utna_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    244            �           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utna_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    238            �           0    0    utna_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_indice_servicios_idis_seq', 1, false);
          public          postgres    false    228            �           0    0    utna_iseg_l_idisegl_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_iseg_l_idisegl_seq', 1, false);
          public          postgres    false    252            �           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_iseg_tsu_idisegtsu_seq', 1, false);
          public          postgres    false    230            �           0    0    utna_isem_l_idiseml_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_isem_l_idiseml_seq', 1, false);
          public          postgres    false    234            �           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_isem_tsu_idisemtsu_seq', 1, false);
          public          postgres    false    232            �           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    250            �           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.utna_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    220            �           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    236            �           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    246            �           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    248            �           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    240            �           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    242            �           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    226            �           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq', 1, false);
          public          postgres    false    224            �           2606    17129    carreras carreras_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT carreras_pkey PRIMARY KEY (idcarrera);
 @   ALTER TABLE ONLY public.carreras DROP CONSTRAINT carreras_pkey;
       public            postgres    false    219            �           2606    17110     universidades universidades_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.universidades
    ADD CONSTRAINT universidades_pkey PRIMARY KEY (iduniversidad);
 J   ALTER TABLE ONLY public.universidades DROP CONSTRAINT universidades_pkey;
       public            postgres    false    215            �           2606    17117    usuarios usuarios_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    217            �           2606    17157 ,   utna_eficiencia_ire utna_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT utna_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT utna_eficiencia_ire_pkey;
       public            postgres    false    223            �           2606    17312 2   utna_indice_colocacion utna_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT utna_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT utna_indice_colocacion_pkey;
       public            postgres    false    245            �           2606    17269 $   utna_indice_ptc utna_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT utna_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT utna_indice_ptc_pkey;
       public            postgres    false    239            �           2606    17200 0   utna_indice_servicios utna_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT utna_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT utna_indice_servicios_pkey;
       public            postgres    false    229            �           2606    17366    utna_iseg_l utna_iseg_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT utna_iseg_l_pkey PRIMARY KEY (idisegl);
 F   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT utna_iseg_l_pkey;
       public            postgres    false    253            �           2606    17214     utna_iseg_tsu utna_iseg_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT utna_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 J   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT utna_iseg_tsu_pkey;
       public            postgres    false    231            �           2606    17242    utna_isem_l utna_isem_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT utna_isem_l_pkey PRIMARY KEY (idiseml);
 F   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT utna_isem_l_pkey;
       public            postgres    false    235            �           2606    17228     utna_isem_tsu utna_isem_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT utna_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 J   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT utna_isem_tsu_pkey;
       public            postgres    false    233            �           2606    17352 2   utna_tasa_acreditacion utna_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT utna_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT utna_tasa_acreditacion_pkey;
       public            postgres    false    251            �           2606    17143 ,   utna_tasa_cobertura utna_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT utna_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT utna_tasa_cobertura_pkey;
       public            postgres    false    221            �           2606    17257 *   utna_tasa_docentes utna_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT utna_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT utna_tasa_docentes_pkey;
       public            postgres    false    237            �           2606    17326 0   utna_tasa_mov_alumnos utna_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT utna_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT utna_tasa_mov_alumnos_pkey;
       public            postgres    false    247            �           2606    17340 2   utna_tasa_mov_docentes utna_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT utna_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT utna_tasa_mov_docentes_pkey;
       public            postgres    false    249            �           2606    17286 (   utna_tasa_pe_asat utna_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT utna_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT utna_tasa_pe_asat_pkey;
       public            postgres    false    241            �           2606    17298 6   utna_tasa_pe_pertinencia utna_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT utna_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT utna_tasa_pe_pertinencia_pkey;
       public            postgres    false    243            �           2606    17185 2   utna_tasa_puntaje_egel utna_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT utna_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT utna_tasa_puntaje_egel_pkey;
       public            postgres    false    227            �           2606    17171 6   utna_tasa_puntaje_egetsu utna_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT utna_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegestu);
 `   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT utna_tasa_puntaje_egetsu_pkey;
       public            postgres    false    225                       2606    17144    utna_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    221    3293    219                       2606    17158    utna_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    223    219    3293                       2606    17172     utna_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    219    3293    225                       2606    17186    utna_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    227    3293    219                       2606    17201    utna_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    219    229    3293                       2606    17215    utna_iseg_tsu carrera    FK CONSTRAINT     ~   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    231    219    3293                       2606    17229    utna_isem_tsu carrera    FK CONSTRAINT     ~   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    233    3293    219            	           2606    17243    utna_isem_l carrera    FK CONSTRAINT     |   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    235    219    3293            
           2606    17258    utna_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 D   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    237    3293    219                       2606    17270    utna_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 A   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    3293    219    239                       2606    17313    utna_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    219    245    3293                       2606    17327    utna_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    247    219    3293                       2606    17341    utna_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    3293    249    219                       2606    17353    utna_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    219    251    3293                       2606    17367    utna_iseg_l carrera    FK CONSTRAINT     |   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    3293    219    253                       2606    17287    utna_tasa_pe_asat pe    FK CONSTRAINT     x   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.carreras(idcarrera);
 >   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    241    3293    219                       2606    17299    utna_tasa_pe_pertinencia pe    FK CONSTRAINT        ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    219    3293    243                       2606    17275     utna_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    219    239    3293                        2606    17118    usuarios universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT universidad;
       public          postgres    false    3289    217    215                       2606    17130    carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 >   ALTER TABLE ONLY public.carreras DROP CONSTRAINT universidad;
       public          postgres    false    3289    219    215            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     