PGDMP         1        
        {            plan_estrategico    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    23567    plan_estrategico    DATABASE     �   CREATE DATABASE plan_estrategico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
     DROP DATABASE plan_estrategico;
                postgres    false            �            1259    23568    universidades    TABLE     �   CREATE TABLE public.universidades (
    iduniversidad integer NOT NULL,
    abreviacion character varying(10),
    nombre character varying(100),
    plan_estudios character varying(15)
);
 !   DROP TABLE public.universidades;
       public         heap    postgres    false            �            1259    23571    universidades_iduniversidad_seq    SEQUENCE     �   CREATE SEQUENCE public.universidades_iduniversidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.universidades_iduniversidad_seq;
       public          postgres    false    214            �           0    0    universidades_iduniversidad_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.universidades_iduniversidad_seq OWNED BY public.universidades.iduniversidad;
          public          postgres    false    215            �            1259    23572    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    idusuario integer NOT NULL,
    nombre_usuario character varying(20) NOT NULL,
    "contraseña" character varying(8),
    cargo character varying(10),
    universidad integer NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    23575    usuarios_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuarios_idusuario_seq;
       public          postgres    false    216            �           0    0    usuarios_idusuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuarios_idusuario_seq OWNED BY public.usuarios.idusuario;
          public          postgres    false    217            �            1259    23576    utna_carreras    TABLE       CREATE TABLE public.utna_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 !   DROP TABLE public.utna_carreras;
       public         heap    postgres    false            �            1259    23579    utna_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_carreras_idcarrera_seq;
       public          postgres    false    218            �           0    0    utna_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_carreras_idcarrera_seq OWNED BY public.utna_carreras.idcarrera;
          public          postgres    false    219            �            1259    23580    utna_eficiencia_ire    TABLE     �   CREATE TABLE public.utna_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.utna_eficiencia_ire;
       public         heap    postgres    false            �            1259    23585    utna_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_eficiencia_ire_ideire_seq;
       public          postgres    false    220            �           0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_eficiencia_ire_ideire_seq OWNED BY public.utna_eficiencia_ire.ideire;
          public          postgres    false    221            �            1259    23586    utna_indice_colocacion    TABLE     �   CREATE TABLE public.utna_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.utna_indice_colocacion;
       public         heap    postgres    false            �            1259    23591    utna_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_indice_colocacion_idic_seq;
       public          postgres    false    222            �           0    0    utna_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_indice_colocacion_idic_seq OWNED BY public.utna_indice_colocacion.idic;
          public          postgres    false    223            �            1259    23850    utna_indice_ptc    TABLE     �  CREATE TABLE public.utna_indice_ptc (
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
       public         heap    postgres    false            �            1259    23849    utna_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utna_indice_ptc_idiptc_seq;
       public          postgres    false    241            �           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utna_indice_ptc_idiptc_seq OWNED BY public.utna_indice_ptc.idiptc;
          public          postgres    false    240            �            1259    23836    utna_indice_servicios    TABLE     �  CREATE TABLE public.utna_indice_servicios (
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
       public         heap    postgres    false            �            1259    23835    utna_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utna_indice_servicios_idis_seq;
       public          postgres    false    239            �           0    0    utna_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utna_indice_servicios_idis_seq OWNED BY public.utna_indice_servicios.idis;
          public          postgres    false    238            �            1259    23895    utna_iseg_l    TABLE     �  CREATE TABLE public.utna_iseg_l (
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
       public         heap    postgres    false            �            1259    23894    utna_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_iseg_l_idisegl_seq;
       public          postgres    false    247            �           0    0    utna_iseg_l_idisegl_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_iseg_l_idisegl_seq OWNED BY public.utna_iseg_l.idisegl;
          public          postgres    false    246            �            1259    23881    utna_iseg_tsu    TABLE     �  CREATE TABLE public.utna_iseg_tsu (
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
       public         heap    postgres    false            �            1259    23880    utna_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_iseg_tsu_idisegtsu_seq;
       public          postgres    false    245            �           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_iseg_tsu_idisegtsu_seq OWNED BY public.utna_iseg_tsu.idisegtsu;
          public          postgres    false    244            �            1259    23614    utna_isem_l    TABLE     c  CREATE TABLE public.utna_isem_l (
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
       public         heap    postgres    false            �            1259    23619    utna_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utna_isem_l_idiseml_seq;
       public          postgres    false    224            �           0    0    utna_isem_l_idiseml_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utna_isem_l_idiseml_seq OWNED BY public.utna_isem_l.idiseml;
          public          postgres    false    225            �            1259    23620    utna_isem_tsu    TABLE     g  CREATE TABLE public.utna_isem_tsu (
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
       public         heap    postgres    false            �            1259    23625    utna_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_isem_tsu_idisemtsu_seq;
       public          postgres    false    226            �           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_isem_tsu_idisemtsu_seq OWNED BY public.utna_isem_tsu.idisemtsu;
          public          postgres    false    227            �            1259    23938    utna_tasa_acreditacion    TABLE        CREATE TABLE public.utna_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.utna_tasa_acreditacion;
       public         heap    postgres    false            �            1259    23937    utna_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_acreditacion_idta_seq;
       public          postgres    false    253            �           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_acreditacion_idta_seq OWNED BY public.utna_tasa_acreditacion.idta;
          public          postgres    false    252            �            1259    23630    utna_tasa_cobertura    TABLE     �   CREATE TABLE public.utna_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.utna_tasa_cobertura;
       public         heap    postgres    false            �            1259    23635    utna_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.utna_tasa_cobertura_idtc_seq;
       public          postgres    false    228            �           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.utna_tasa_cobertura_idtc_seq OWNED BY public.utna_tasa_cobertura.idtc;
          public          postgres    false    229            �            1259    23867    utna_tasa_docentes    TABLE     �   CREATE TABLE public.utna_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.utna_tasa_docentes;
       public         heap    postgres    false            �            1259    23866    utna_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utna_tasa_docentes_idtd_seq;
       public          postgres    false    243            �           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utna_tasa_docentes_idtd_seq OWNED BY public.utna_tasa_docentes.idtd;
          public          postgres    false    242            �            1259    23909    utna_tasa_mov_alumnos    TABLE       CREATE TABLE public.utna_tasa_mov_alumnos (
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
       public         heap    postgres    false            �            1259    23908    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    249            �           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_mov_alumnos_idtma_seq OWNED BY public.utna_tasa_mov_alumnos.idtma;
          public          postgres    false    248            �            1259    23923    utna_tasa_mov_docentes    TABLE       CREATE TABLE public.utna_tasa_mov_docentes (
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
       public         heap    postgres    false            �            1259    23922     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    251            �           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utna_tasa_mov_docentes_idtmd_seq OWNED BY public.utna_tasa_mov_docentes.idtmd;
          public          postgres    false    250            �            1259    23654    utna_tasa_pe_asat    TABLE     �   CREATE TABLE public.utna_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.utna_tasa_pe_asat;
       public         heap    postgres    false            �            1259    23657    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    230            �           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utna_tasa_pe_asat_idtpeasat_seq OWNED BY public.utna_tasa_pe_asat.idtpeasat;
          public          postgres    false    231            �            1259    23658    utna_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utna_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.utna_tasa_pe_pertinencia;
       public         heap    postgres    false            �            1259    23661 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    232            �           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utna_tasa_pe_pertinencia.idtpep;
          public          postgres    false    233            �            1259    23662    utna_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.utna_tasa_puntaje_egel (
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
       public         heap    postgres    false            �            1259    23667 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    234            �           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utna_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utna_tasa_puntaje_egel.idtpegel;
          public          postgres    false    235            �            1259    23668    utna_tasa_puntaje_egetsu    TABLE     C  CREATE TABLE public.utna_tasa_puntaje_egetsu (
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
       public         heap    postgres    false            �            1259    23673 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE     �   CREATE SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq;
       public          postgres    false    236            �           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.utna_tasa_puntaje_egetsu_idtpegestu_seq OWNED BY public.utna_tasa_puntaje_egetsu.idtpegestu;
          public          postgres    false    237            �           2604    23674    universidades iduniversidad    DEFAULT     �   ALTER TABLE ONLY public.universidades ALTER COLUMN iduniversidad SET DEFAULT nextval('public.universidades_iduniversidad_seq'::regclass);
 J   ALTER TABLE public.universidades ALTER COLUMN iduniversidad DROP DEFAULT;
       public          postgres    false    215    214            �           2604    23675    usuarios idusuario    DEFAULT     x   ALTER TABLE ONLY public.usuarios ALTER COLUMN idusuario SET DEFAULT nextval('public.usuarios_idusuario_seq'::regclass);
 A   ALTER TABLE public.usuarios ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    217    216            �           2604    23676    utna_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utna_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utna_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.utna_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    219    218            �           2604    23677    utna_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utna_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utna_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.utna_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    221    220            �           2604    23678    utna_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utna_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.utna_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    223    222            �           2604    23853    utna_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utna_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.utna_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    23839    utna_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utna_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utna_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.utna_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    23898    utna_iseg_l idisegl    DEFAULT     z   ALTER TABLE ONLY public.utna_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utna_iseg_l_idisegl_seq'::regclass);
 B   ALTER TABLE public.utna_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    246    247    247            �           2604    23884    utna_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utna_iseg_tsu_idisegtsu_seq'::regclass);
 F   ALTER TABLE public.utna_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    23683    utna_isem_l idiseml    DEFAULT     z   ALTER TABLE ONLY public.utna_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utna_isem_l_idiseml_seq'::regclass);
 B   ALTER TABLE public.utna_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    225    224            �           2604    23684    utna_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utna_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utna_isem_tsu_idisemtsu_seq'::regclass);
 F   ALTER TABLE public.utna_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    227    226            �           2604    23941    utna_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utna_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    253    252    253            �           2604    23686    utna_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utna_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.utna_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    229    228            �           2604    23870    utna_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utna_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.utna_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    23912    utna_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utna_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    249    248    249            �           2604    23926    utna_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utna_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.utna_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    250    251    251            �           2604    23690    utna_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utna_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.utna_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    231    230            �           2604    23691    utna_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utna_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    233    232            �           2604    23692    utna_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utna_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.utna_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    235    234            �           2604    23693 #   utna_tasa_puntaje_egetsu idtpegestu    DEFAULT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu SET DEFAULT nextval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq'::regclass);
 R   ALTER TABLE public.utna_tasa_puntaje_egetsu ALTER COLUMN idtpegestu DROP DEFAULT;
       public          postgres    false    237    236            �          0    23568    universidades 
   TABLE DATA           Z   COPY public.universidades (iduniversidad, abreviacion, nombre, plan_estudios) FROM stdin;
    public          postgres    false    214   ��       �          0    23572    usuarios 
   TABLE DATA           `   COPY public.usuarios (idusuario, nombre_usuario, "contraseña", cargo, universidad) FROM stdin;
    public          postgres    false    216   +�       �          0    23576    utna_carreras 
   TABLE DATA           s   COPY public.utna_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    218   �       �          0    23580    utna_eficiencia_ire 
   TABLE DATA           �   COPY public.utna_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    220   ��       �          0    23586    utna_indice_colocacion 
   TABLE DATA           q   COPY public.utna_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    222   ��       �          0    23850    utna_indice_ptc 
   TABLE DATA           �   COPY public.utna_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    241   ��       �          0    23836    utna_indice_servicios 
   TABLE DATA           �  COPY public.utna_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    239   �       �          0    23895    utna_iseg_l 
   TABLE DATA             COPY public.utna_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    247   (�       �          0    23881    utna_iseg_tsu 
   TABLE DATA             COPY public.utna_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    245   �       �          0    23614    utna_isem_l 
   TABLE DATA           �   COPY public.utna_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    224   E�       �          0    23620    utna_isem_tsu 
   TABLE DATA           �   COPY public.utna_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    226   ��       �          0    23938    utna_tasa_acreditacion 
   TABLE DATA           �   COPY public.utna_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    253   =�       �          0    23630    utna_tasa_cobertura 
   TABLE DATA           [   COPY public.utna_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    228   Z�       �          0    23867    utna_tasa_docentes 
   TABLE DATA           �   COPY public.utna_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    243   w�       �          0    23909    utna_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utna_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    249   ��       �          0    23923    utna_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utna_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    251   C�       �          0    23654    utna_tasa_pe_asat 
   TABLE DATA           ]   COPY public.utna_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    230   `�       �          0    23658    utna_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.utna_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    232   p�       �          0    23662    utna_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    234   \�       �          0    23668    utna_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utna_tasa_puntaje_egetsu (idtpegestu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    236   ��       �           0    0    universidades_iduniversidad_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.universidades_iduniversidad_seq', 11, true);
          public          postgres    false    215            �           0    0    usuarios_idusuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_idusuario_seq', 22, true);
          public          postgres    false    217            �           0    0    utna_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_carreras_idcarrera_seq', 29, true);
          public          postgres    false    219            �           0    0    utna_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    221            �           0    0    utna_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    223            �           0    0    utna_indice_ptc_idiptc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utna_indice_ptc_idiptc_seq', 51, true);
          public          postgres    false    240            �           0    0    utna_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utna_indice_servicios_idis_seq', 1, false);
          public          postgres    false    238            �           0    0    utna_iseg_l_idisegl_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_iseg_l_idisegl_seq', 12, true);
          public          postgres    false    246            �           0    0    utna_iseg_tsu_idisegtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_iseg_tsu_idisegtsu_seq', 17, true);
          public          postgres    false    244            �           0    0    utna_isem_l_idiseml_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.utna_isem_l_idiseml_seq', 12, true);
          public          postgres    false    225            �           0    0    utna_isem_tsu_idisemtsu_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_isem_tsu_idisemtsu_seq', 17, true);
          public          postgres    false    227            �           0    0    utna_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    252            �           0    0    utna_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.utna_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    229            �           0    0    utna_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utna_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    242            �           0    0    utna_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_mov_alumnos_idtma_seq', 58, true);
          public          postgres    false    248            �           0    0     utna_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utna_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    250            �           0    0    utna_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utna_tasa_pe_asat_idtpeasat_seq', 29, true);
          public          postgres    false    231            �           0    0 #   utna_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_pe_pertinencia_idtpep_seq', 29, true);
          public          postgres    false    233            �           0    0 #   utna_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egel_idtpegel_seq', 12, true);
          public          postgres    false    235            �           0    0 '   utna_tasa_puntaje_egetsu_idtpegestu_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.utna_tasa_puntaje_egetsu_idtpegestu_seq', 17, true);
          public          postgres    false    237            �           2606    23695     universidades universidades_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.universidades
    ADD CONSTRAINT universidades_pkey PRIMARY KEY (iduniversidad);
 J   ALTER TABLE ONLY public.universidades DROP CONSTRAINT universidades_pkey;
       public            postgres    false    214            �           2606    23697    usuarios usuarios_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    216            �           2606    23699     utna_carreras utna_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_carreras
    ADD CONSTRAINT utna_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.utna_carreras DROP CONSTRAINT utna_carreras_pkey;
       public            postgres    false    218            �           2606    23701 ,   utna_eficiencia_ire utna_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT utna_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT utna_eficiencia_ire_pkey;
       public            postgres    false    220            �           2606    23703 2   utna_indice_colocacion utna_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT utna_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT utna_indice_colocacion_pkey;
       public            postgres    false    222            �           2606    23855 $   utna_indice_ptc utna_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT utna_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT utna_indice_ptc_pkey;
       public            postgres    false    241            �           2606    23843 0   utna_indice_servicios utna_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT utna_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT utna_indice_servicios_pkey;
       public            postgres    false    239            �           2606    23902    utna_iseg_l utna_iseg_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT utna_iseg_l_pkey PRIMARY KEY (idisegl);
 F   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT utna_iseg_l_pkey;
       public            postgres    false    247            �           2606    23888     utna_iseg_tsu utna_iseg_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT utna_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 J   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT utna_iseg_tsu_pkey;
       public            postgres    false    245            �           2606    23713    utna_isem_l utna_isem_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT utna_isem_l_pkey PRIMARY KEY (idiseml);
 F   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT utna_isem_l_pkey;
       public            postgres    false    224            �           2606    23715     utna_isem_tsu utna_isem_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT utna_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 J   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT utna_isem_tsu_pkey;
       public            postgres    false    226            �           2606    23943 2   utna_tasa_acreditacion utna_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT utna_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT utna_tasa_acreditacion_pkey;
       public            postgres    false    253            �           2606    23719 ,   utna_tasa_cobertura utna_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT utna_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT utna_tasa_cobertura_pkey;
       public            postgres    false    228            �           2606    23874 *   utna_tasa_docentes utna_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT utna_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT utna_tasa_docentes_pkey;
       public            postgres    false    243            �           2606    23916 0   utna_tasa_mov_alumnos utna_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT utna_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT utna_tasa_mov_alumnos_pkey;
       public            postgres    false    249            �           2606    23930 2   utna_tasa_mov_docentes utna_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT utna_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT utna_tasa_mov_docentes_pkey;
       public            postgres    false    251            �           2606    23727 (   utna_tasa_pe_asat utna_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT utna_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT utna_tasa_pe_asat_pkey;
       public            postgres    false    230            �           2606    23729 6   utna_tasa_pe_pertinencia utna_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT utna_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT utna_tasa_pe_pertinencia_pkey;
       public            postgres    false    232            �           2606    23731 2   utna_tasa_puntaje_egel utna_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT utna_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT utna_tasa_puntaje_egel_pkey;
       public            postgres    false    234            �           2606    23733 6   utna_tasa_puntaje_egetsu utna_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT utna_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegestu);
 `   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT utna_tasa_puntaje_egetsu_pkey;
       public            postgres    false    236                       2606    23734    utna_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    218    3293    228                       2606    23739    utna_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    3293    218    220            
           2606    23744     utna_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    3293    236    218            	           2606    23749    utna_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    3293    234    218                       2606    23769    utna_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    3293    226    218                       2606    23774    utna_isem_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    3293    224    218                       2606    23789    utna_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    218    3293    222                       2606    23844    utna_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    239    218    3293                       2606    23856    utna_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 A   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    218    3293    241                       2606    23875    utna_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utna_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    218    243    3293                       2606    23889    utna_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utna_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    3293    245    218                       2606    23903    utna_iseg_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utna_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    3293    218    247                       2606    23917    utna_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utna_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    218    249    3293                       2606    23931    utna_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    218    3293    251                       2606    23944    utna_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utna_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utna_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    3293    218    253                       2606    23809    utna_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.utna_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utna_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utna_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    218    230    3293                       2606    23814    utna_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utna_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utna_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    218    232    3293                       2606    23861     utna_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utna_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utna_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    3293    241    218                        2606    23824    usuarios universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT universidad;
       public          postgres    false    214    216    3289                       2606    23829    utna_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.universidades(iduniversidad);
 C   ALTER TABLE ONLY public.utna_carreras DROP CONSTRAINT universidad;
       public          postgres    false    3289    218    214            �   ?  x���Mn�0���)|T��%J��誛�3 K���Q]T����Mi`�����=�֫I��z��t�X��d�a���dۂS`4Z�.+Z�t����/��^C=�&���9z�����qm��F,�=�5�E��_T!�S���������|蔽��B�qA�b�V����n(6Mh��d����)�j��%�S䬚���S1k�'Qid�o:[��<�J�<�'�U�r����x摐���S��S�Zi,^�A>���h���T�Y�)�ȧ��%�&��ȅNT`}LS�Ή���Q��_���      �   �  x�U��n�0����w�X9(%��ؙ4� KE
��vhRD	ZY!���z]��Jۍ�N�XN���(��O�h1�O�t��E/P���l������j�݊���Nw�d1�/��e&�&��	zb
�_}DY�-F������$���F��F�����t��=?����v�h:��"��Ǧ%�e�aΠ�w3�d�_I�������?���O�T�A<SEv.)F���F�H�����֝�?�?�c2�x�?�!�º�U�
�%�l0��2.�`�o��[bLš}���v���
���O��IN)��#�SM�5P��8-,a��p�(f7p��Y��'Jt�ɾ�٥b���%�T�TQ8إV� Q\iIL�O�GP+;z�Kw׎�j��gBφ��N~�z��L&3�!%��]�z{�(�qV���Hӡ��A��W�����4�_37���x�t5��9o�9$�B�?�      �   �  x����r�0���)������@<cS&&�r�ʂь�Y�%�>J �N���q��У=�~��~��I���4�[}x2�:#�*��B��"{&��=���0(?����f�`����n@*�}�·���+�_�`�a���s���U�p2���]G^kN�0VC���0��`�C�ak�	3��w������&��]��}�F� ����1ckE�**N�4��QɁD��G %Q��[a8��s�L�Cf�zNE�Q����~��cS�b�2�.5A��'|@!�NY�7>�f��Z�6
���y���Ox/�Z��<���n��3z�%O��J�����*0=������H��^@����
�����~p��t�%:�.p�J�q�#���
������|���o|+�@� �8��oֻ���%Ngɵ��h�'�F|�֚Xk��E�b��H��m�V�������~$6�+����S&)��h�V�Y{�p���96��eM2�ͯb���F�ɴ�M��v,�ڝ��v�S>I�L�&Ι>�;�V(����8�S�`w��)������E��r��d�4Խ�nm�q3}b����a��R�_�O�I�~��n���b�U͠��(X\�C��Տ�K�h�]�8G޺��U<��|i�Z�.��      �      x������ � �      �      x������ � �      �   
  x��Y�n��]+_���K�#�Nc+~�(1,%� �i�-��f7��T"���3�]x��w��̗̩f�vl�2�3	`$�d�S]u���nuZ��N�u*�"��PX]��X,��X+\��r���B0�'����8sE&�L΄�$g��5�D�a9>Lx*���,O��:.\n%W��ǝa�e�'��V_�̚H8����u���'3:��:7����Yy���+3cs���Jǭ5JfE"�Ƶ9-�D.s93�*����.�,	�1(�?��`i�o+8�ܚ�(�s���Sq�S�������2�X�&��V�"{l\yNo8��ݱAyf��{]h~��߂;x
8���ůQ�,4&�"/"��˔8-��4���̸<23lVw5�����`�4�*ϕ���MZ^���//3�h��t�+<��&�C�r��mc��"`T�[;���i����p���&�'� v̉T�_2�x�ё*ʋ���k�ϸ*j��Wp�(�Ц����yl�E��*/��3��1<���tl,K7�����f���k]�[�����T����?.+����D"rNp6�gq� NJC���T�e��z��ɨH׺(�'l,�D����'��tp�H��-a�s��<Ͻ[@����[�AAy��V8������@��hʗ�X�ګ1=o�T��J(�	�
z�ul؁ы�L��Kd龄#* �0��\��:�����}iE`4��,��0�U�RG!,��=e'|,�
�zP4������H�[\�gx�t�K�����zQQ��O�5�M��D.w�Q#�����)g�&\�T���j��IH��1:��Q��\�H/R_�s wk�ڛ�݊����<'?���1���p5C�i�MA6���JWxQy1AH�d�p&]�WmU_�٩��5k`t5���p^s&S�Y�U"�֔H���Tc��bG�K}N�Ĵ��H&�F��A����6������%MV͠_Y
�33a9.����p��l	�i��"��O�[�/3���#�PM��P^�-���R�G��e���ɸ�ӫ�n�ڡ��4�Hǐ+���J8�x!�ElX�G^��X&ޛc�J/�x�dau,-ω�#��o�Ə�#p�%�?��Q�:5����`y���-�LIH�ڼ�X�7"�"��4S�6���.nY*�ѵ$sH,�H��J����|`4|ǎj1e'�]��0牨�����ꝇ�o��l�먓{_�-|�sP@.ϱA�VZ2���Z ��G�
Ų)���+Jp�	��./����N�<��!�#M��*�jN�� �j6Ͽ76�M��I�M�Pn?�K���H�X��?fM�;��vh���c�I�Y�&�{2��S�|d�)�9:WM=�B%��+���~����'�ё���۵}/�Ԏ�̷%=t.1�ݭT	4x��`'s�l��(j�e�P�Bʩ���0�T�%���¡	�%����V�F/�����s�%�3h(�X��eb��H��i�;*T��~�( $l�w�Q3�\�T�Gz��K%���·���{o��o�_�O2�2L �ȇpf�BU_S	J�@���]�K�'�����*"����Z��4*-I�r2)��[�ܜ4�"_�K�qZ�~z�گ���-�h&�u�!D߹o��H������
ME�_c x|��=i��]��#t�9J�zD�9:���`�	�%i�<������_�(8�>Z?&x$���X�
�U(�K~�6��FZ�?~�g�8�q��[��G)����^[��W�kaZ8L�4�A�(eQ�5Y�4���j�C�Փ)���q��	��2��)��K���� �(�����$H>Vw���=;r�(�%����|�Aፇ��Z�:BnnIզ����.��������h�:~��l�߳?�ZhSs�W�Zݬ�#�h�4�^�5(Ph͋��O|J|��\b�}���i�����h��+�;�C����(Rlj�t���l�v$_�@�"r�܉7�_Yi<�p��b;����������/%�+���\������Fh��	Tjf���0;6��U�6Ch�� ��B�R�2{(����t��P�Z�/��|�^�r�جS��QA
xL/?ڇ�߭��0�М��2��#D������1<����R^����\�S����C����UO���(z@G�F�t�hc���ҙdZ�#d��M��bL�N�������2��6q�Z�8ຠi����B��Q3�O����z�0�s���i���5�S��v�=f��ks-}ل���}��6Ec�c�Ƅ�]_���̼Z����=\t�6C�|���?�4R�֔ODla�4ڝ!W��R�M��M�P-:�hj��fN�\п�#�Ng��lm��;	~Ӂ��s^�i8���Y������N���ԍ (Ŗ��r�
�mA�ى�Ҁ0!�i�7Yj|�}���i$�u~d]���YYPb1��䟩2�? Q���0�c����ꜞ��ۊ�5�"����������w�D��<��b����ܶA��Տf� h���������Kr;��6���E��W�_�=z��Oł�i      �      x������ � �      �   �   x�m���0�c1��!�&����B��gEG>�%Lr�d��T)���@�P���U�zB��4ɰ��f{��,d!��ڋ#�EX3�����FF��QⱐD|���ӟ�ճT���o�5����Q�+�F��<�@Y>�w��1��g� ��"�t��s�#W6���zoy����0��aQt1�q�m'�;g��(c��υ�+��@�_`      �   %  x�UR˕�0;�b��_��V0��1X��{ &�%�@�P�RH�E�m���}|Yo�h��{
�p�_�)���0H��E:
qdo��8=7D����ͭ�#v�A����Q���&bB�"�$�p���N��e�I��ĿA�9-S��;���bYc��������H䞈�����p��!�$��KaHtai��!c���3�ta^s�26������M�B@?�JRo��-`h�g3=�qJ�3�M�6��c�t2��ӵ���k�+f[,�g�'9��Ok3I�O���\�u�a	o��}���G�I      �   d   x����� ��c#W��D'��s���!��/���69���v�'b�q��wL�O,�h�p��r�o�L�,��t�Fn�d��Q�i#�c����� �j      �   t   x����� �f�C`�N��s��#%� 1"��R�l�J˙�)�]����������i�h���e��z� =ej@O��`BsY	z�)��_b��m.��}{k�R�*      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�u�=N1�k�)8 Bc��%�{�mFT4��8�e�8
�h��g���2	��?�6�>��v����(u}�H��5�r"6��G=S6��M��u�Q������{�4�ʶG7>>�s1vf�@{!U�DpvW�p���coK)�B��p���Bl�W߽-��"�.NB0��t$�H��ȯ׼u�+/���@~�|߿��������u?�C�a*+),go&+/�B�L�}�rg�S�3xA:�JɑB[�:��!�Q�RG�rg[I]��t�1���C5�[�\�n��2nF�N7(r���{+wK�[�[狂�����1&�s��Ͳ��\���	�XJ��h��t�%���R������$��RqcxI���w���<L2��;:�~l1����j���.��4� ^      �      x������ � �      �      x�}Rٍ1��^��!g[�뿎�7�\#�F( !����s��ayB��g�����a�5�L9Q�պ�:�L��[@�r���5�!W��ܸQ������	�xZ�2"AN��@#[9�5A��
HS���j��[:���ߑ�2���K�>���(�����>F%L� s%(c%��{*���h;���x��{��b�֣�2���l��ZTv��f��8�2�����wM���������3�w���      �   �   x�mR�m1{K�(廉T�� �#� �j��a��Hِ��(��ͼ���a��C��ĝ�Ţh���بOm���4L���谀ɡ��tʼ�r��J.�/��V��+�-/�$��+����üYTE�v������G�!-�j�x�3�L�`�����{-�����{H��~3n�|���� N�)���+�a��/P��YOx�/U��fl�      �   �   x�U��!��1w�`��#��,	��IX�e=�3}��N2�ܔAL�AJY�<�=���&�U��l��-���u�F7�^�Ѽ�
R�|V,��/_涂��G��cj�q��3�D�w?EO�����+����4�      �   �   x�U��� ��aNMx/qt�9���J���������F�_>A�Ɋ���5�d �d`�R�d��a�f����Lj��� �\��¢o7�!rX�E~O$�sK�5/�7ϔ�%E�����qv���K#�f�ǅ�{�ۮ�M_1���c�n�̶Z���+HG     