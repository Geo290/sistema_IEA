PGDMP     !    %                 {            plan_estrategico    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    20146    plan_estrategico    DATABASE     �   CREATE DATABASE plan_estrategico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
     DROP DATABASE plan_estrategico;
                postgres    false            �            1259    20148    universidades    TABLE     �   CREATE TABLE public.universidades (
    iduniversidad integer NOT NULL,
    abreviacion character varying(10),
    nombre character varying(100),
    plan_estudios character varying(15)
);
 !   DROP TABLE public.universidades;
       public         heap    postgres    false            �            1259    20147    universidades_iduniversidad_seq    SEQUENCE     �   CREATE SEQUENCE public.universidades_iduniversidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.universidades_iduniversidad_seq;
       public          postgres    false    215            �           0    0    universidades_iduniversidad_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.universidades_iduniversidad_seq OWNED BY public.universidades.iduniversidad;
          public          postgres    false    214            �            1259    20155    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    idusuario integer NOT NULL,
    nombre_usuario character varying(20) NOT NULL,
    "contraseña" character varying(8),
    cargo character varying(10),
    universidad integer NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    20154    usuarios_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuarios_idusuario_seq;
       public          postgres    false    217            �           0    0    usuarios_idusuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuarios_idusuario_seq OWNED BY public.usuarios.idusuario;
          public          postgres    false    216            �            1259    20167    utna_carreras    TABLE     �   CREATE TABLE public.utna_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15)
);
 !   DROP TABLE public.utna_carreras;
       public         heap    postgres    false            �            1259    20166    utna_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_carreras_idcarrera_seq;
       public          postgres    false    219            �           0    0    utna_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_carreras_idcarrera_seq OWNED BY public.utna_carreras.idcarrera;
          public          postgres    false    218            �            1259    20193    utna_eficiencia_ire    TABLE     �   CREATE TABLE public.utna_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.utna_eficiencia_ire;
       public         heap    postgres    false            �            1259    20192    utna_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_eficiencia_ire_ideire_seq;
       public          postgres    false    223            �           0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_eficiencia_ire_ideire_seq OWNED BY public.utna_eficiencia_ire.ideire;
          public          postgres    false    222            �            1259    20361    utna_indice_colocacion    TABLE     �   CREATE TABLE public.utna_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.utna_indice_colocacion;
       public         heap    postgres    false            �            1259    20360    utna_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_indice_colocacion_idic_seq;
       public          postgres    false    247            �           0    0    utna_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_indice_colocacion_idic_seq OWNED BY public.utna_indice_colocacion.idic;
          public          postgres    false    246            �            1259    20320    utna_indice_ptc    TABLE     W  CREATE TABLE public.utna_indice_ptc (
    idiptc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    nombre_profesor character varying(100),
    nombre_investigacion character varying(150),
    pe_perteneciente integer NOT NULL,
    tipo_profesor character varying(3),
    "estado_investigación" character varying(10)
);
 #   DROP TABLE public.utna_indice_ptc;
       public         heap    postgres    false            �            1259    20319    utna_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utna_indice_ptc_idiptc_seq;
       public          postgres    false    241            �           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utna_indice_ptc_idiptc_seq OWNED BY public.utna_indice_ptc.idiptc;
          public          postgres    false    240            �            1259    20235    utna_indice_servicios    TABLE     <  CREATE TABLE public.utna_indice_servicios (
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
    indice_satisfaccion numeric
);
 )   DROP TABLE public.utna_indice_servicios;
       public         heap    postgres    false            �            1259    20234    utna_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_indice_servicios_idis_seq;
       public          postgres    false    229            �           0    0    utna_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_indice_servicios_idis_seq OWNED BY public.utna_indice_servicios.idis;
          public          postgres    false    228            �            1259    20263    utna_iseg_l    TABLE     �  CREATE TABLE public.utna_iseg_l (
    idisegl integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
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
       public         heap    postgres    false            �            1259    20262    utna_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_iseg_l_idisegl_seq;
       public          postgres    false    233            �           0    0    utna_iseg_l_idisegl_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_iseg_l_idisegl_seq OWNED BY public.utna_iseg_l.idisegl;
          public          postgres    false    232            �            1259    20249    utna_iseg_tsu    TABLE     �  CREATE TABLE public.utna_iseg_tsu (
    idisegtsu integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
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
       public         heap    postgres    false            �            1259    20248    utna_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_iseg_tsu_idisegtsu_seq;
       public          postgres    false    231            �           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_iseg_tsu_idisegtsu_seq OWNED BY public.utna_iseg_tsu.idisegtsu;
          public          postgres    false    230            �            1259    20292    utna_isem_l    TABLE     c  CREATE TABLE public.utna_isem_l (
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
       public         heap    postgres    false            �            1259    20291    utna_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_isem_l_idiseml_seq;
       public          postgres    false    237            �           0    0    utna_isem_l_idiseml_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_isem_l_idiseml_seq OWNED BY public.utna_isem_l.idiseml;
          public          postgres    false    236            �            1259    20277    utna_isem_tsu    TABLE     g  CREATE TABLE public.utna_isem_tsu (
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
       public         heap    postgres    false            �            1259    20276    utna_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_isem_tsu_idisemtsu_seq;
       public          postgres    false    235            �           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_isem_tsu_idisemtsu_seq OWNED BY public.utna_isem_tsu.idisemtsu;
          public          postgres    false    234            �            1259    20403    utna_tasa_acreditacion    TABLE     �   CREATE TABLE public.utna_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.utna_tasa_acreditacion;
       public         heap    postgres    false            �            1259    20402    utna_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_acreditacion_idta_seq;
       public          postgres    false    253            �           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_acreditacion_idta_seq OWNED BY public.utna_tasa_acreditacion.idta;
          public          postgres    false    252            �            1259    20179    utna_tasa_cobertura    TABLE     �   CREATE TABLE public.utna_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.utna_tasa_cobertura;
       public         heap    postgres    false            �            1259    20178    utna_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.utna_tasa_cobertura_idtc_seq;
       public          postgres    false    221            �           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.utna_tasa_cobertura_idtc_seq OWNED BY public.utna_tasa_cobertura.idtc;
          public          postgres    false    220            �            1259    20306    utna_tasa_docentes    TABLE     �   CREATE TABLE public.utna_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.utna_tasa_docentes;
       public         heap    postgres    false            �            1259    20305    utna_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_tasa_docentes_idtd_seq;
       public          postgres    false    239            �           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_tasa_docentes_idtd_seq OWNED BY public.utna_tasa_docentes.idtd;
          public          postgres    false    238            �            1259    20375    utna_tasa_mov_alumnos    TABLE     �   CREATE TABLE public.utna_tasa_mov_alumnos (
    idtma integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_alum_viajaron integer,
    paises character varying(100),
    tasa_movilidad numeric
);
 )   DROP TABLE public.utna_tasa_mov_alumnos;
       public         heap    postgres    false            �            1259    20374    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    249            �           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq OWNED BY public.utna_tasa_mov_alumnos.idtma;
          public          postgres    false    248            �            1259    20389    utna_tasa_mov_docentes    TABLE     �   CREATE TABLE public.utna_tasa_mov_docentes (
    idtmd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    matricula integer,
    no_doc_viajaron integer,
    paises character varying(100),
    tasa_movilidad numeric
);
 *   DROP TABLE public.utna_tasa_mov_docentes;
       public         heap    postgres    false            �            1259    20388     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    251            �           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq OWNED BY public.utna_tasa_mov_docentes.idtmd;
          public          postgres    false    250            �            1259    20337    utna_tasa_pe_asat    TABLE     �   CREATE TABLE public.utna_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.utna_tasa_pe_asat;
       public         heap    postgres    false            �            1259    20336    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    243            �           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq OWNED BY public.utna_tasa_pe_asat.idtpeasat;
          public          postgres    false    242            �            1259    20349    utna_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utna_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.utna_tasa_pe_pertinencia;
       public         heap    postgres    false            �            1259    20348 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    245            �           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utna_tasa_pe_pertinencia.idtpep;
          public          postgres    false    244            �            1259    20221    utna_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.utna_tasa_puntaje_egel (
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
       public         heap    postgres    false            �            1259    20220 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    227            �           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utna_tasa_puntaje_egel.idtpegel;
          public          postgres    false    226            �            1259    20207    utna_tasa_puntaje_egetsu    TABLE     C  CREATE TABLE public.utna_tasa_puntaje_egetsu (
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
       public         heap    postgres    false            �            1259    20206 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq;
       public          postgres    false    225            �           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq OWNED BY public.utna_tasa_puntaje_egetsu.idtpegestu;
          public          postgres    false    224            �           2604    20151    universidades iduniversidad    DEFAULT     �   ALTER TABLE ONLY public.universidades ALTER COLUMN iduniversidad SET DEFAULT nextval('public.universidades_iduniversidad_seq'::regclass);
 J   ALTER TABLE public.universidades ALTER COLUMN iduniversidad DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    20158    usuarios idusuario    DEFAULT     x   ALTER TABLE ONLY public.usuarios ALTER COLUMN idusuario SET DEFAULT nextval('public.usuarios_idusuario_seq'::regclass);
 A   ALTER TABLE public.usuarios ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    20170    utna_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utna_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utna_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.utna_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    20196    utna_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utna_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utna_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.utna_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    20364    utna_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utna_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.utna_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    246    247    247            �           2604    20323    utna_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utna_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.utna_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    20238    utna_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utna_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.utna_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    20266    utna_iseg_l idisegl    DEFAULT     z   ALTER TABLE ONLY public.utna_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utna_iseg_l_idisegl_seq'::regclass);
 B   ALTER TABLE public.utna_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    20252    utna_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utna_iseg_tsu_idisegtsu_seq'::regclass);
 F   ALTER TABLE public.utna_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    20295    utna_isem_l idiseml    DEFAULT     z   ALTER TABLE ONLY public.utna_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utna_isem_l_idiseml_seq'::regclass);
 B   ALTER TABLE public.utna_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    20280    utna_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utna_isem_tsu_idisemtsu_seq'::regclass);
 F   ALTER TABLE public.utna_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    20406    utna_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utna_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    253    252    253            �           2604    20182    utna_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utna_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.utna_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    20309    utna_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utna_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.utna_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    20378    utna_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utna_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    248    249    249            �           2604    20392    utna_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utna_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.utna_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    251    250    251            �           2604    20340    utna_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utna_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    20352    utna_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utna_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    20224    utna_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utna_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    20210 #   utna_tasa_puntaje_egetsu idtpegestu    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu SET DEFAULT nextval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq'::regclass);
 R   ALTER TABLE public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu DROP DEFAULT;
       public          postgres    false    225    224    225            �          0    20148    universidades 
   TABLE DATA           Z   COPY public.universidades (iduniversidad, abreviacion, nombre, plan_estudios) FROM stdin;
    public          postgres    false    215   ��       �          0    20155    usuarios 
   TABLE DATA           `   COPY public.usuarios (idusuario, nombre_usuario, "contraseña", cargo, universidad) FROM stdin;
    public          postgres    false    217   ��       �          0    20167    utna_carreras 
   TABLE DATA           f   COPY public.utna_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel) FROM stdin;
    public          postgres    false    219   ��       �          0    20193    utna_eficiencia_ire 
   TABLE DATA           �   COPY public.utna_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    223   [�       �          0    20361    utna_indice_colocacion 
   TABLE DATA           q   COPY public.utna_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    247   x�       �          0    20320    utna_indice_ptc 
   TABLE DATA           �   COPY public.utna_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación") FROM stdin;
    public          postgres    false    241   ��       �          0    20235    utna_indice_servicios 
   TABLE DATA           G  COPY public.utna_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, indice_satisfaccion) FROM stdin;
    public          postgres    false    229   ��       �          0    20263    utna_iseg_l 
   TABLE DATA           �   COPY public.utna_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, esperiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    233   ��       �          0    20249    utna_iseg_tsu 
   TABLE DATA           �   COPY public.utna_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    231   ��       �          0    20292    utna_isem_l 
   TABLE DATA           �   COPY public.utna_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    237   	�       �          0    20277    utna_isem_tsu 
   TABLE DATA           �   COPY public.utna_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    235   &�       �          0    20403    utna_tasa_acreditacion 
   TABLE DATA           i   COPY public.utna_tasa_acreditacion (idta, carrera, periodo, acreditacion, tipo_acreditacion) FROM stdin;
    public          postgres    false    253   C�       �          0    20179    utna_tasa_cobertura 
   TABLE DATA           [   COPY public.utna_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    221   `�       �          0    20306    utna_tasa_docentes 
   TABLE DATA           u   COPY public.utna_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, tasa_docentes) FROM stdin;
    public          postgres    false    239   }�       �          0    20375    utna_tasa_mov_alumnos 
   TABLE DATA           }   COPY public.utna_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    249   ��       �          0    20389    utna_tasa_mov_docentes 
   TABLE DATA           }   COPY public.utna_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    251   ��       �          0    20337    utna_tasa_pe_asat 
   TABLE DATA           ]   COPY public.utna_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    243   ��       �          0    20349    utna_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.utna_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    245   ��       �          0    20221    utna_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    227   �       �          0    20207    utna_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egetsu (idtpegestu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    225   +�       �           0    0    universidades_iduniversidad_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.universidades_iduniversidad_seq', 11, true);
          public          postgres    false    214            �           0    0    usuarios_idusuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_idusuario_seq', 22, true);
          public          postgres    false    216            �           0    0    utna_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_carreras_idcarrera_seq', 29, true);
          public          postgres    false    218            �           0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    222            �           0    0    utna_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    246            �           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utna_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    240            �           0    0    utna_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_indice_servicios_idis_seq', 1, false);
          public          postgres    false    228            �           0    0    utna_iseg_l_idisegl_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_iseg_l_idisegl_seq', 1, false);
          public          postgres    false    232            �           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_iseg_tsu_idisegtsu_seq', 1, false);
          public          postgres    false    230            �           0    0    utna_isem_l_idiseml_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_isem_l_idiseml_seq', 1, false);
          public          postgres    false    236            �           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_isem_tsu_idisemtsu_seq', 1, false);
          public          postgres    false    234            �           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    252            �           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.utna_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    220            �           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    238            �           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    248            �           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    250            �           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    242            �           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    244            �           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    226            �           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq', 1, false);
          public          postgres    false    224            �           2606    20153     universidades universidades_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.universidades
    ADD CONSTRAINT universidades_pkey PRIMARY KEY (iduniversidad);
 J   ALTER TABLE ONLY public.universidades DROP CONSTRAINT universidades_pkey;
       public            postgres    false    215            �           2606    20160    usuarios usuarios_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    217            �           2606    20172     utna_carreras utna_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_carreras
    ADD CONSTRAINT utna_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.utna_carreras DROP CONSTRAINT utna_carreras_pkey;
       public            postgres    false    219            �           2606    20200 ,   utna_eficiencia_ire utna_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT utna_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT utna_eficiencia_ire_pkey;
       public            postgres    false    223            �           2606    20368 2   utna_indice_colocacion utna_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT utna_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT utna_indice_colocacion_pkey;
       public            postgres    false    247            �           2606    20325 $   utna_indice_ptc utna_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT utna_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT utna_indice_ptc_pkey;
       public            postgres    false    241            �           2606    20242 0   utna_indice_servicios utna_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT utna_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT utna_indice_servicios_pkey;
       public            postgres    false    229            �           2606    20270    utna_iseg_l utna_iseg_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT utna_iseg_l_pkey PRIMARY KEY (idisegl);
 F   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT utna_iseg_l_pkey;
       public            postgres    false    233            �           2606    20256     utna_iseg_tsu utna_iseg_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT utna_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 J   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT utna_iseg_tsu_pkey;
       public            postgres    false    231            �           2606    20299    utna_isem_l utna_isem_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT utna_isem_l_pkey PRIMARY KEY (idiseml);
 F   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT utna_isem_l_pkey;
       public            postgres    false    237            �           2606    20284     utna_isem_tsu utna_isem_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT utna_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 J   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT utna_isem_tsu_pkey;
       public            postgres    false    235            �           2606    20408 2   utna_tasa_acreditacion utna_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT utna_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT utna_tasa_acreditacion_pkey;
       public            postgres    false    253            �           2606    20186 ,   utna_tasa_cobertura utna_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT utna_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT utna_tasa_cobertura_pkey;
       public            postgres    false    221            �           2606    20313 *   utna_tasa_docentes utna_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT utna_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT utna_tasa_docentes_pkey;
       public            postgres    false    239            �           2606    20382 0   utna_tasa_mov_alumnos utna_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT utna_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT utna_tasa_mov_alumnos_pkey;
       public            postgres    false    249            �           2606    20396 2   utna_tasa_mov_docentes utna_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT utna_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT utna_tasa_mov_docentes_pkey;
       public            postgres    false    251            �           2606    20342 (   utna_tasa_pe_asat utna_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT utna_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT utna_tasa_pe_asat_pkey;
       public            postgres    false    243            �           2606    20354 6   utna_tasa_pe_pertinencia utna_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT utna_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT utna_tasa_pe_pertinencia_pkey;
       public            postgres    false    245            �           2606    20228 2   utna_tasa_puntaje_egel utna_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT utna_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT utna_tasa_puntaje_egel_pkey;
       public            postgres    false    227            �           2606    20214 6   utna_tasa_puntaje_egetsu utna_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT utna_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegestu);
 `   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT utna_tasa_puntaje_egetsu_pkey;
       public            postgres    false    225                       2606    20187    utna_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    219    221    3293                       2606    20201    utna_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    3293    219    223                       2606    20215     utna_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    3293    219    225                       2606    20229    utna_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    3293    227    219                       2606    20243    utna_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    3293    229    219                       2606    20257    utna_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    219    231    3293                       2606    20271    utna_iseg_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    233    3293    219            	           2606    20285    utna_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    235    219    3293            
           2606    20300    utna_isem_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    237    3293    219                       2606    20314    utna_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    219    239    3293                       2606    20326    utna_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 A   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    3293    219    241                       2606    20369    utna_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    219    3293    247                       2606    20383    utna_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    3293    219    249                       2606    20397    utna_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    219    251    3293                       2606    20409    utna_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    219    253    3293                       2606    20343    utna_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utna_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    243    3293    219                       2606    20355    utna_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    3293    245    219                       2606    20331     utna_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utna_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    3293    241    219                        2606    20161    usuarios universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT universidad;
       public          postgres    false    215    217    3289                       2606    20173    utna_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 C   ALTER TABLE ONLY public.utna_carreras DROP CONSTRAINT universidad;
       public          postgres    false    215    3289    219            �   ?  x���Mn�0���)|T��%J��誛�3 K���Q]T����Mi`�����=�֫I��z��t�X��d�a���dۂS`4Z�.+Z�t����/��^C=�&���9z�����qm��F,�=�5�E��_T!�S���������|蔽��B�qA�b�V����n(6Mh��d����)�j��%�S䬚���S1k�'Qid�o:[��<�J�<�'�U�r����x摐���S��S�Zi,^�A>���h���T�Y�)�ȧ��%�&��ȅNT`}LS�Ή���Q��_���      �   �  x�U��n�0����w�X9(%��ؙ4� KE
��vhRD	ZY!���z]��Jۍ�N�XN���(��O�h1�O�t��E/P���l������j�݊���Nw�d1�/��e&�&��	zb
�_}DY�-F������$���F��F�����t��=?����v�h:��"��Ǧ%�e�aΠ�w3�d�_I�������?���O�T�A<SEv.)F���F�H�����֝�?�?�c2�x�?�!�º�U�
�%�l0��2.�`�o��[bLš}���v���
���O��IN)��#�SM�5P��8-,a��p�(f7p��Y��'Jt�ɾ�٥b���%�T�TQ8إV� Q\iIL�O�GP+;z�Kw׎�j��gBφ��N~�z��L&3�!%��]�z{�(�qV���Hӡ��A��W�����4�_37���x�t5��9o�9$�B�?�      �   �  x��TK��0]˧�	R�g�,]Wل3�fӑ�*Y�d����(9�,R9K�q�؆��]z��u�~�'c%dVށ���ɤ�J��o�)�L_�.>
��K^�~K��C3�ǰ���ds���&�w=U:�����';��ʘ��jϨQ	��E���x7�S+��৶0�|�m؆g@���x�lt�ߡ��5R����YZ+!�S0gE�*J��i����	�I�c�����)���1	�0����i>Bx��U2D2C}�� IԄ}FJ���^�o���kT���YDA�y��d�@��[D-�;�9����R6i�������><Z�$��e���S�/ˡp���O���ȗ&�>��%�V	���f�F�_���%�Z�o����o8"�2
ӶY=�]h��w�����B�gW�|㎗Xi���-��q��s�V��V��X�:�eS���S&)� ��l<cx9e����+Y��$݇IMg<�G�%��8�R��9Vi� �E@�3���<�;�R�v��2��9)PW8{�o���˨�����������,2��K�\{�-,�Y����n���-��X&�֮_/��]f��O�I�p�^'q����Z�B����?Ҵ�C      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     