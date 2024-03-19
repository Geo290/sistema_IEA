PGDMP                         {            plan_estrategico_back    15.3    15.3 (              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19899    plan_estrategico_back    DATABASE     �   CREATE DATABASE plan_estrategico_back WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
 %   DROP DATABASE plan_estrategico_back;
                postgres    false            �            1259    19900    admin_module_universidades    TABLE     �   CREATE TABLE public.admin_module_universidades (
    "IDUniversidad" integer NOT NULL,
    "Abreviacion" character varying(10) NOT NULL,
    "Nombre" character varying(100),
    "Plan_estudios" character varying(15)
);
 .   DROP TABLE public.admin_module_universidades;
       public         heap    postgres    false            �            1259    19903 ,   admin_module_universidades_IDUniversidad_seq    SEQUENCE     �   CREATE SEQUENCE public."admin_module_universidades_IDUniversidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."admin_module_universidades_IDUniversidad_seq";
       public          postgres    false    214            �           0    0 ,   admin_module_universidades_IDUniversidad_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."admin_module_universidades_IDUniversidad_seq" OWNED BY public.admin_module_universidades."IDUniversidad";
          public          postgres    false    215            �            1259    19904    admin_module_usuarios    TABLE     >  CREATE TABLE public.admin_module_usuarios (
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    "IDUsuario" integer NOT NULL,
    "Cargo" character varying(10) NOT NULL,
    "Universidad_id" integer
);
 )   DROP TABLE public.admin_module_usuarios;
       public         heap    postgres    false            �            1259    19909 #   admin_module_usuarios_IDUsuario_seq    SEQUENCE     �   CREATE SEQUENCE public."admin_module_usuarios_IDUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."admin_module_usuarios_IDUsuario_seq";
       public          postgres    false    216            �           0    0 #   admin_module_usuarios_IDUsuario_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."admin_module_usuarios_IDUsuario_seq" OWNED BY public.admin_module_usuarios."IDUsuario";
          public          postgres    false    217            �            1259    19910    admin_module_usuarios_groups    TABLE     �   CREATE TABLE public.admin_module_usuarios_groups (
    id bigint NOT NULL,
    usuarios_id integer NOT NULL,
    group_id integer NOT NULL
);
 0   DROP TABLE public.admin_module_usuarios_groups;
       public         heap    postgres    false            �            1259    19913 #   admin_module_usuarios_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_module_usuarios_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_module_usuarios_groups_id_seq;
       public          postgres    false    218            �           0    0 #   admin_module_usuarios_groups_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_module_usuarios_groups_id_seq OWNED BY public.admin_module_usuarios_groups.id;
          public          postgres    false    219            �            1259    19914 &   admin_module_usuarios_user_permissions    TABLE     �   CREATE TABLE public.admin_module_usuarios_user_permissions (
    id bigint NOT NULL,
    usuarios_id integer NOT NULL,
    permission_id integer NOT NULL
);
 :   DROP TABLE public.admin_module_usuarios_user_permissions;
       public         heap    postgres    false            �            1259    19917 -   admin_module_usuarios_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_module_usuarios_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.admin_module_usuarios_user_permissions_id_seq;
       public          postgres    false    220            �           0    0 -   admin_module_usuarios_user_permissions_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.admin_module_usuarios_user_permissions_id_seq OWNED BY public.admin_module_usuarios_user_permissions.id;
          public          postgres    false    221            �            1259    19918 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    19921    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    222            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    223            �            1259    19922    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    19925    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    224            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    225            �            1259    19926    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    19929    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    226            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    227            �            1259    19930    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    19933    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    19939    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    229            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    230            �            1259    19940    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    19943    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    231            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    232            �            1259    19944    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    19949    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    233            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    234            �            1259    19950    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    19955    utna_module_utna_carreras    TABLE     7  CREATE TABLE public.utna_module_utna_carreras (
    "IDCarrera" integer NOT NULL,
    "Nombre" character varying(100) NOT NULL,
    "Abreviacion" character varying(10) NOT NULL,
    "Modalidad" character varying(15) NOT NULL,
    "Nivel" character varying(15) NOT NULL,
    "Universidad_id" integer NOT NULL
);
 -   DROP TABLE public.utna_module_utna_carreras;
       public         heap    postgres    false            �            1259    19958 '   utna_module_utna_carreras_IDCarrera_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_carreras_IDCarrera_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_carreras_IDCarrera_seq";
       public          postgres    false    236            �           0    0 '   utna_module_utna_carreras_IDCarrera_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_carreras_IDCarrera_seq" OWNED BY public.utna_module_utna_carreras."IDCarrera";
          public          postgres    false    237            �            1259    19959    utna_module_utna_eficiencia_ire    TABLE     9  CREATE TABLE public.utna_module_utna_eficiencia_ire (
    "IDEIRE" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Indice_retencion" numeric(5,2),
    "Indice_desercion" numeric(5,2),
    "Indice_eficiencia_terminal" numeric(5,2),
    "Indice_titulacion" numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 3   DROP TABLE public.utna_module_utna_eficiencia_ire;
       public         heap    postgres    false            �            1259    19962 *   utna_module_utna_eficiencia_ire_IDEIRE_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_eficiencia_ire_IDEIRE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."utna_module_utna_eficiencia_ire_IDEIRE_seq";
       public          postgres    false    238            �           0    0 *   utna_module_utna_eficiencia_ire_IDEIRE_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."utna_module_utna_eficiencia_ire_IDEIRE_seq" OWNED BY public.utna_module_utna_eficiencia_ire."IDEIRE";
          public          postgres    false    239            �            1259    19963 "   utna_module_utna_indice_colocacion    TABLE     �   CREATE TABLE public.utna_module_utna_indice_colocacion (
    "IDIC" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Egresados" integer,
    "Colocados" integer,
    "Indice_colocacion" numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 6   DROP TABLE public.utna_module_utna_indice_colocacion;
       public         heap    postgres    false            �            1259    19966 +   utna_module_utna_indice_colocacion_IDIC_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_indice_colocacion_IDIC_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_indice_colocacion_IDIC_seq";
       public          postgres    false    240            �           0    0 +   utna_module_utna_indice_colocacion_IDIC_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_indice_colocacion_IDIC_seq" OWNED BY public.utna_module_utna_indice_colocacion."IDIC";
          public          postgres    false    241            �            1259    19967    utna_module_utna_indice_ptc    TABLE     �  CREATE TABLE public.utna_module_utna_indice_ptc (
    "IDIPTC" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Nombre_profesor" character varying(100),
    "Nombre_investigacion" character varying(250),
    "Tipo_profesor" character varying(3),
    "Estado_investigacion" character varying(10),
    "Carrera_id" integer NOT NULL,
    "PE_Pertenecientes_id" integer NOT NULL,
    "Participación_CA" boolean,
    "Perfil_PRODEPT" boolean
);
 /   DROP TABLE public.utna_module_utna_indice_ptc;
       public         heap    postgres    false            �            1259    19970 &   utna_module_utna_indice_ptc_IDIPTC_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_indice_ptc_IDIPTC_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."utna_module_utna_indice_ptc_IDIPTC_seq";
       public          postgres    false    242            �           0    0 &   utna_module_utna_indice_ptc_IDIPTC_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."utna_module_utna_indice_ptc_IDIPTC_seq" OWNED BY public.utna_module_utna_indice_ptc."IDIPTC";
          public          postgres    false    243            �            1259    19971 !   utna_module_utna_indice_servicios    TABLE     V  CREATE TABLE public.utna_module_utna_indice_servicios (
    "IDIS" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Salud_externa" numeric(5,2),
    "Bolsa_trabajo" numeric(5,2),
    "Salud_interna" numeric(5,2),
    "Asesoria_academica" numeric(5,2),
    "Actividades_crecimiento" numeric(5,2),
    "Tutoria" numeric(5,2),
    "Orientacion" numeric(5,2),
    "Espacio_expresion" numeric(5,2),
    "Estimulos_desempeno" numeric(5,2),
    "Seguridad" numeric(5,2),
    "Instalaciones" numeric(5,2),
    "Actividades_arte" numeric(5,2),
    "Traslado" numeric(5,2),
    "Fomento_salud" numeric(5,2),
    "Alimentos" numeric(5,2),
    "Indice_satisfaccion" numeric(5,2),
    "Carrera_id" integer NOT NULL,
    "Bibliteca" numeric(5,2),
    "Conectivida" numeric(5,2),
    "Laboratorio_computo" numeric(5,2),
    "Laboratorio_practica" numeric(5,2)
);
 5   DROP TABLE public.utna_module_utna_indice_servicios;
       public         heap    postgres    false            �            1259    19974 *   utna_module_utna_indice_servicios_IDIS_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_indice_servicios_IDIS_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."utna_module_utna_indice_servicios_IDIS_seq";
       public          postgres    false    244            �           0    0 *   utna_module_utna_indice_servicios_IDIS_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."utna_module_utna_indice_servicios_IDIS_seq" OWNED BY public.utna_module_utna_indice_servicios."IDIS";
          public          postgres    false    245            �            1259    19975    utna_module_utna_iseg_l    TABLE     C  CREATE TABLE public.utna_module_utna_iseg_l (
    "IDISEGL" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Bolsa_trabajo" numeric(5,2) NOT NULL,
    "Op_estadia" numeric(5,2) NOT NULL,
    "Experiencia_practica" numeric(5,2),
    "Laboratorios_talleres" numeric(5,2),
    "Infraestructura" numeric(5,2),
    "Dominio_prob_lab" numeric(5,2),
    "Conocimiento_prof" numeric(5,2),
    "Calificacion_MEB5" numeric(5,2),
    "Op_preparacion" numeric(5,2),
    "Indice_satisfaccion" numeric(5,2),
    "Carrera_id" integer NOT NULL,
    "Trabaja_lugar_estadia" numeric(5,2)
);
 +   DROP TABLE public.utna_module_utna_iseg_l;
       public         heap    postgres    false            �            1259    19978 #   utna_module_utna_iseg_l_IDISEGL_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_iseg_l_IDISEGL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."utna_module_utna_iseg_l_IDISEGL_seq";
       public          postgres    false    246            �           0    0 #   utna_module_utna_iseg_l_IDISEGL_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."utna_module_utna_iseg_l_IDISEGL_seq" OWNED BY public.utna_module_utna_iseg_l."IDISEGL";
          public          postgres    false    247            �            1259    19979    utna_module_utna_iseg_tsu    TABLE     5  CREATE TABLE public.utna_module_utna_iseg_tsu (
    "IDISEGTSU" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Bolsa_trabajo" numeric(5,2),
    "Op_estadia" numeric(5,2),
    "Experiencia_practica" numeric(5,2),
    "Laboratorios_talleres" numeric(5,2),
    "Infraestructura" numeric(5,2),
    "Dominio_prob_lab" numeric(5,2),
    "Conocimiento_prof" numeric(5,2),
    "Calificacion_MEB5" numeric(5,2),
    "Op_preparacion" numeric(5,2),
    "Indice_satisfaccion" numeric(5,2),
    "Carrera_id" integer NOT NULL,
    "Trabaja_lugar_estadia" numeric(5,2)
);
 -   DROP TABLE public.utna_module_utna_iseg_tsu;
       public         heap    postgres    false            �            1259    19982 '   utna_module_utna_iseg_tsu_IDISEGTSU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_iseg_tsu_IDISEGTSU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_iseg_tsu_IDISEGTSU_seq";
       public          postgres    false    248            �           0    0 '   utna_module_utna_iseg_tsu_IDISEGTSU_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_iseg_tsu_IDISEGTSU_seq" OWNED BY public.utna_module_utna_iseg_tsu."IDISEGTSU";
          public          postgres    false    249            �            1259    19983    utna_module_utna_isem_l    TABLE     �  CREATE TABLE public.utna_module_utna_isem_l (
    "IDISEML" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Op_grado" numeric(5,2),
    "Creatividad" numeric(5,2),
    "Manejo_equipo" numeric(5,2),
    "Solucion_prob" numeric(5,2),
    "Op_trabajo" numeric(5,2),
    "Capacidad" numeric(5,2),
    "Cumple_req" numeric(5,2),
    "Calificacion_trabajo" numeric(5,2),
    "Indice_satisfaccion" numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 +   DROP TABLE public.utna_module_utna_isem_l;
       public         heap    postgres    false            �            1259    19986 #   utna_module_utna_isem_l_IDISEML_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_isem_l_IDISEML_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."utna_module_utna_isem_l_IDISEML_seq";
       public          postgres    false    250            �           0    0 #   utna_module_utna_isem_l_IDISEML_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."utna_module_utna_isem_l_IDISEML_seq" OWNED BY public.utna_module_utna_isem_l."IDISEML";
          public          postgres    false    251            �            1259    19987    utna_module_utna_isem_tsu    TABLE     �  CREATE TABLE public.utna_module_utna_isem_tsu (
    "IDISEMTSU" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Op_grado" numeric(5,2),
    "Creatividad" numeric(5,2),
    "Manejo_equipo" numeric(5,2),
    "Solucion_prob" numeric(5,2),
    "Op_trabajo" numeric(5,2),
    "Capacidad" numeric(5,2),
    "Cumple_req" numeric(5,2),
    "Calificacion_trabajo" numeric(5,2),
    "Indice_satisfaccion" numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 -   DROP TABLE public.utna_module_utna_isem_tsu;
       public         heap    postgres    false            �            1259    19990 '   utna_module_utna_isem_tsu_IDISEMTSU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_isem_tsu_IDISEMTSU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_isem_tsu_IDISEMTSU_seq";
       public          postgres    false    252            �           0    0 '   utna_module_utna_isem_tsu_IDISEMTSU_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_isem_tsu_IDISEMTSU_seq" OWNED BY public.utna_module_utna_isem_tsu."IDISEMTSU";
          public          postgres    false    253            �            1259    19991 "   utna_module_utna_tasa_acreditacion    TABLE     ,  CREATE TABLE public.utna_module_utna_tasa_acreditacion (
    "IDTA" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Acreditacion" boolean NOT NULL,
    "Tipo_acreditacion" character varying(50),
    "Carrera_id" integer NOT NULL,
    "Fecha_acreditacion" date,
    "Fecha_vencimiento" date
);
 6   DROP TABLE public.utna_module_utna_tasa_acreditacion;
       public         heap    postgres    false            �            1259    19994 +   utna_module_utna_tasa_acreditacion_IDTA_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_acreditacion_IDTA_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_tasa_acreditacion_IDTA_seq";
       public          postgres    false    254            �           0    0 +   utna_module_utna_tasa_acreditacion_IDTA_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_tasa_acreditacion_IDTA_seq" OWNED BY public.utna_module_utna_tasa_acreditacion."IDTA";
          public          postgres    false    255                        1259    19995    utna_module_utna_tasa_cobertura    TABLE     �   CREATE TABLE public.utna_module_utna_tasa_cobertura (
    "IDTC" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Incremento_matricula" numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 3   DROP TABLE public.utna_module_utna_tasa_cobertura;
       public         heap    postgres    false                       1259    19998 (   utna_module_utna_tasa_cobertura_IDTC_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_cobertura_IDTC_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."utna_module_utna_tasa_cobertura_IDTC_seq";
       public          postgres    false    256            �           0    0 (   utna_module_utna_tasa_cobertura_IDTC_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."utna_module_utna_tasa_cobertura_IDTC_seq" OWNED BY public.utna_module_utna_tasa_cobertura."IDTC";
          public          postgres    false    257                       1259    19999    utna_module_utna_tasa_docentes    TABLE       CREATE TABLE public.utna_module_utna_tasa_docentes (
    "IDTD" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "No_docentes" integer,
    "Doc_perfil_adecuado" integer,
    "Tasa_docentes" numeric(5,2),
    "Carrera_id" integer NOT NULL,
    "Exp_Lab_pertinente" integer
);
 2   DROP TABLE public.utna_module_utna_tasa_docentes;
       public         heap    postgres    false                       1259    20002 '   utna_module_utna_tasa_docentes_IDTD_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_docentes_IDTD_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_tasa_docentes_IDTD_seq";
       public          postgres    false    258            �           0    0 '   utna_module_utna_tasa_docentes_IDTD_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_tasa_docentes_IDTD_seq" OWNED BY public.utna_module_utna_tasa_docentes."IDTD";
          public          postgres    false    259                       1259    20003 !   utna_module_utna_tasa_mov_alumnos    TABLE     A  CREATE TABLE public.utna_module_utna_tasa_mov_alumnos (
    "IDTMA" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Matricula" integer,
    "No_alum_viajaron" integer,
    "Paises" character varying(100),
    "Tasa_movilidad" numeric(5,2),
    "Carrera_id" integer NOT NULL,
    "Estado" character varying(100)
);
 5   DROP TABLE public.utna_module_utna_tasa_mov_alumnos;
       public         heap    postgres    false                       1259    20006 +   utna_module_utna_tasa_mov_alumnos_IDTMA_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq";
       public          postgres    false    260            �           0    0 +   utna_module_utna_tasa_mov_alumnos_IDTMA_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq" OWNED BY public.utna_module_utna_tasa_mov_alumnos."IDTMA";
          public          postgres    false    261                       1259    20007 "   utna_module_utna_tasa_mov_docentes    TABLE     A  CREATE TABLE public.utna_module_utna_tasa_mov_docentes (
    "IDTMD" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Matricula" integer,
    "No_doc_viajaron" integer,
    "Paises" character varying(100),
    "Tasa_movilidad" numeric(5,2),
    "Carrera_id" integer NOT NULL,
    "Estado" character varying(100)
);
 6   DROP TABLE public.utna_module_utna_tasa_mov_docentes;
       public         heap    postgres    false                       1259    20010 ,   utna_module_utna_tasa_mov_docentes_IDTMD_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_mov_docentes_IDTMD_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."utna_module_utna_tasa_mov_docentes_IDTMD_seq";
       public          postgres    false    262            �           0    0 ,   utna_module_utna_tasa_mov_docentes_IDTMD_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_mov_docentes_IDTMD_seq" OWNED BY public.utna_module_utna_tasa_mov_docentes."IDTMD";
          public          postgres    false    263                       1259    20011    utna_module_utna_tasa_pe_asat    TABLE     �   CREATE TABLE public.utna_module_utna_tasa_pe_asat (
    "IDTPEASAT" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Realizacion" date,
    "Vencimiento" date,
    "PE_id" integer NOT NULL
);
 1   DROP TABLE public.utna_module_utna_tasa_pe_asat;
       public         heap    postgres    false            	           1259    20014 +   utna_module_utna_tasa_pe_asat_IDTPEASAT_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq";
       public          postgres    false    264            �           0    0 +   utna_module_utna_tasa_pe_asat_IDTPEASAT_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq" OWNED BY public.utna_module_utna_tasa_pe_asat."IDTPEASAT";
          public          postgres    false    265            
           1259    20015 $   utna_module_utna_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utna_module_utna_tasa_pe_pertinencia (
    "IDTPEP" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Presenta" boolean NOT NULL,
    "Fecha_elaboracion" date,
    "PE_id" integer NOT NULL
);
 8   DROP TABLE public.utna_module_utna_tasa_pe_pertinencia;
       public         heap    postgres    false                       1259    20018 /   utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq";
       public          postgres    false    266            �           0    0 /   utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq" OWNED BY public.utna_module_utna_tasa_pe_pertinencia."IDTPEP";
          public          postgres    false    267                       1259    20019 "   utna_module_utna_tasa_puntaje_egel    TABLE     g  CREATE TABLE public.utna_module_utna_tasa_puntaje_egel (
    "IDTPEGEL" integer NOT NULL,
    "Periodo" integer NOT NULL,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric(5,2),
    puntaje_sobresaliente numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 6   DROP TABLE public.utna_module_utna_tasa_puntaje_egel;
       public         heap    postgres    false                       1259    20022 /   utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq";
       public          postgres    false    268            �           0    0 /   utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq" OWNED BY public.utna_module_utna_tasa_puntaje_egel."IDTPEGEL";
          public          postgres    false    269                       1259    20023 $   utna_module_utna_tasa_puntaje_egetsu    TABLE     k  CREATE TABLE public.utna_module_utna_tasa_puntaje_egetsu (
    "IDTPEGESTU" integer NOT NULL,
    "Periodo" integer NOT NULL,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric(5,2),
    puntaje_sobresaliente numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 8   DROP TABLE public.utna_module_utna_tasa_puntaje_egetsu;
       public         heap    postgres    false                       1259    20026 3   utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq";
       public          postgres    false    270            �           0    0 3   utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq" OWNED BY public.utna_module_utna_tasa_puntaje_egetsu."IDTPEGESTU";
          public          postgres    false    271                       1259    20027 !   utna_module_utna_tasa_puntaje_exl    TABLE     e  CREATE TABLE public.utna_module_utna_tasa_puntaje_exl (
    "IDTPEXL" integer NOT NULL,
    "Periodo" integer NOT NULL,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric(5,2),
    puntaje_sobresaliente numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 5   DROP TABLE public.utna_module_utna_tasa_puntaje_exl;
       public         heap    postgres    false                       1259    20030 -   utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq";
       public          postgres    false    272            �           0    0 -   utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq" OWNED BY public.utna_module_utna_tasa_puntaje_exl."IDTPEXL";
          public          postgres    false    273                       1259    20031 #   utna_module_utna_tasa_puntaje_extsu    TABLE     i  CREATE TABLE public.utna_module_utna_tasa_puntaje_extsu (
    "IDTPEXTSU" integer NOT NULL,
    "Periodo" integer NOT NULL,
    p_700_800 integer,
    p_801_900 integer,
    p_901_1000 integer,
    p_1001_1200 integer,
    p_1201_1300 integer,
    puntaje_satisfactorio numeric(5,2),
    puntaje_sobresaliente numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 7   DROP TABLE public.utna_module_utna_tasa_puntaje_extsu;
       public         heap    postgres    false                       1259    20034 1   utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq";
       public          postgres    false    274            �           0    0 1   utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq" OWNED BY public.utna_module_utna_tasa_puntaje_extsu."IDTPEXTSU";
          public          postgres    false    275            �           2604    20035 (   admin_module_universidades IDUniversidad    DEFAULT     �   ALTER TABLE ONLY public.admin_module_universidades ALTER COLUMN "IDUniversidad" SET DEFAULT nextval('public."admin_module_universidades_IDUniversidad_seq"'::regclass);
 Y   ALTER TABLE public.admin_module_universidades ALTER COLUMN "IDUniversidad" DROP DEFAULT;
       public          postgres    false    215    214            �           2604    20036    admin_module_usuarios IDUsuario    DEFAULT     �   ALTER TABLE ONLY public.admin_module_usuarios ALTER COLUMN "IDUsuario" SET DEFAULT nextval('public."admin_module_usuarios_IDUsuario_seq"'::regclass);
 P   ALTER TABLE public.admin_module_usuarios ALTER COLUMN "IDUsuario" DROP DEFAULT;
       public          postgres    false    217    216                        2604    20037    admin_module_usuarios_groups id    DEFAULT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups ALTER COLUMN id SET DEFAULT nextval('public.admin_module_usuarios_groups_id_seq'::regclass);
 N   ALTER TABLE public.admin_module_usuarios_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218                       2604    20038 )   admin_module_usuarios_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_module_usuarios_user_permissions_id_seq'::regclass);
 X   ALTER TABLE public.admin_module_usuarios_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220                       2604    20039    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222                       2604    20040    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224                       2604    20041    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226                       2604    20042    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229                       2604    20043    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231                       2604    20044    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233                       2604    20045 #   utna_module_utna_carreras IDCarrera    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_carreras ALTER COLUMN "IDCarrera" SET DEFAULT nextval('public."utna_module_utna_carreras_IDCarrera_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_carreras ALTER COLUMN "IDCarrera" DROP DEFAULT;
       public          postgres    false    237    236            	           2604    20046 &   utna_module_utna_eficiencia_ire IDEIRE    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire ALTER COLUMN "IDEIRE" SET DEFAULT nextval('public."utna_module_utna_eficiencia_ire_IDEIRE_seq"'::regclass);
 W   ALTER TABLE public.utna_module_utna_eficiencia_ire ALTER COLUMN "IDEIRE" DROP DEFAULT;
       public          postgres    false    239    238            
           2604    20047 '   utna_module_utna_indice_colocacion IDIC    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion ALTER COLUMN "IDIC" SET DEFAULT nextval('public."utna_module_utna_indice_colocacion_IDIC_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_indice_colocacion ALTER COLUMN "IDIC" DROP DEFAULT;
       public          postgres    false    241    240                       2604    20048 "   utna_module_utna_indice_ptc IDIPTC    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc ALTER COLUMN "IDIPTC" SET DEFAULT nextval('public."utna_module_utna_indice_ptc_IDIPTC_seq"'::regclass);
 S   ALTER TABLE public.utna_module_utna_indice_ptc ALTER COLUMN "IDIPTC" DROP DEFAULT;
       public          postgres    false    243    242                       2604    20049 &   utna_module_utna_indice_servicios IDIS    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios ALTER COLUMN "IDIS" SET DEFAULT nextval('public."utna_module_utna_indice_servicios_IDIS_seq"'::regclass);
 W   ALTER TABLE public.utna_module_utna_indice_servicios ALTER COLUMN "IDIS" DROP DEFAULT;
       public          postgres    false    245    244                       2604    20050    utna_module_utna_iseg_l IDISEGL    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_l ALTER COLUMN "IDISEGL" SET DEFAULT nextval('public."utna_module_utna_iseg_l_IDISEGL_seq"'::regclass);
 P   ALTER TABLE public.utna_module_utna_iseg_l ALTER COLUMN "IDISEGL" DROP DEFAULT;
       public          postgres    false    247    246                       2604    20051 #   utna_module_utna_iseg_tsu IDISEGTSU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu ALTER COLUMN "IDISEGTSU" SET DEFAULT nextval('public."utna_module_utna_iseg_tsu_IDISEGTSU_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_iseg_tsu ALTER COLUMN "IDISEGTSU" DROP DEFAULT;
       public          postgres    false    249    248                       2604    20052    utna_module_utna_isem_l IDISEML    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_isem_l ALTER COLUMN "IDISEML" SET DEFAULT nextval('public."utna_module_utna_isem_l_IDISEML_seq"'::regclass);
 P   ALTER TABLE public.utna_module_utna_isem_l ALTER COLUMN "IDISEML" DROP DEFAULT;
       public          postgres    false    251    250                       2604    20053 #   utna_module_utna_isem_tsu IDISEMTSU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_isem_tsu ALTER COLUMN "IDISEMTSU" SET DEFAULT nextval('public."utna_module_utna_isem_tsu_IDISEMTSU_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_isem_tsu ALTER COLUMN "IDISEMTSU" DROP DEFAULT;
       public          postgres    false    253    252                       2604    20054 '   utna_module_utna_tasa_acreditacion IDTA    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion ALTER COLUMN "IDTA" SET DEFAULT nextval('public."utna_module_utna_tasa_acreditacion_IDTA_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_tasa_acreditacion ALTER COLUMN "IDTA" DROP DEFAULT;
       public          postgres    false    255    254                       2604    20055 $   utna_module_utna_tasa_cobertura IDTC    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura ALTER COLUMN "IDTC" SET DEFAULT nextval('public."utna_module_utna_tasa_cobertura_IDTC_seq"'::regclass);
 U   ALTER TABLE public.utna_module_utna_tasa_cobertura ALTER COLUMN "IDTC" DROP DEFAULT;
       public          postgres    false    257    256                       2604    20056 #   utna_module_utna_tasa_docentes IDTD    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes ALTER COLUMN "IDTD" SET DEFAULT nextval('public."utna_module_utna_tasa_docentes_IDTD_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_tasa_docentes ALTER COLUMN "IDTD" DROP DEFAULT;
       public          postgres    false    259    258                       2604    20057 '   utna_module_utna_tasa_mov_alumnos IDTMA    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos ALTER COLUMN "IDTMA" SET DEFAULT nextval('public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_tasa_mov_alumnos ALTER COLUMN "IDTMA" DROP DEFAULT;
       public          postgres    false    261    260                       2604    20058 (   utna_module_utna_tasa_mov_docentes IDTMD    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes ALTER COLUMN "IDTMD" SET DEFAULT nextval('public."utna_module_utna_tasa_mov_docentes_IDTMD_seq"'::regclass);
 Y   ALTER TABLE public.utna_module_utna_tasa_mov_docentes ALTER COLUMN "IDTMD" DROP DEFAULT;
       public          postgres    false    263    262                       2604    20059 '   utna_module_utna_tasa_pe_asat IDTPEASAT    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat ALTER COLUMN "IDTPEASAT" SET DEFAULT nextval('public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_tasa_pe_asat ALTER COLUMN "IDTPEASAT" DROP DEFAULT;
       public          postgres    false    265    264                       2604    20060 +   utna_module_utna_tasa_pe_pertinencia IDTPEP    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia ALTER COLUMN "IDTPEP" SET DEFAULT nextval('public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq"'::regclass);
 \   ALTER TABLE public.utna_module_utna_tasa_pe_pertinencia ALTER COLUMN "IDTPEP" DROP DEFAULT;
       public          postgres    false    267    266                       2604    20061 +   utna_module_utna_tasa_puntaje_egel IDTPEGEL    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel ALTER COLUMN "IDTPEGEL" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq"'::regclass);
 \   ALTER TABLE public.utna_module_utna_tasa_puntaje_egel ALTER COLUMN "IDTPEGEL" DROP DEFAULT;
       public          postgres    false    269    268                       2604    20062 /   utna_module_utna_tasa_puntaje_egetsu IDTPEGESTU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu ALTER COLUMN "IDTPEGESTU" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq"'::regclass);
 `   ALTER TABLE public.utna_module_utna_tasa_puntaje_egetsu ALTER COLUMN "IDTPEGESTU" DROP DEFAULT;
       public          postgres    false    271    270                       2604    20063 )   utna_module_utna_tasa_puntaje_exl IDTPEXL    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl ALTER COLUMN "IDTPEXL" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq"'::regclass);
 Z   ALTER TABLE public.utna_module_utna_tasa_puntaje_exl ALTER COLUMN "IDTPEXL" DROP DEFAULT;
       public          postgres    false    273    272                       2604    20064 -   utna_module_utna_tasa_puntaje_extsu IDTPEXTSU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu ALTER COLUMN "IDTPEXTSU" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq"'::regclass);
 ^   ALTER TABLE public.utna_module_utna_tasa_puntaje_extsu ALTER COLUMN "IDTPEXTSU" DROP DEFAULT;
       public          postgres    false    275    274            ?          0    19900    admin_module_universidades 
   TABLE DATA           o   COPY public.admin_module_universidades ("IDUniversidad", "Abreviacion", "Nombre", "Plan_estudios") FROM stdin;
    public          postgres    false    214   ��      A          0    19904    admin_module_usuarios 
   TABLE DATA           �   COPY public.admin_module_usuarios (password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, "IDUsuario", "Cargo", "Universidad_id") FROM stdin;
    public          postgres    false    216   &�      C          0    19910    admin_module_usuarios_groups 
   TABLE DATA           Q   COPY public.admin_module_usuarios_groups (id, usuarios_id, group_id) FROM stdin;
    public          postgres    false    218   ��      E          0    19914 &   admin_module_usuarios_user_permissions 
   TABLE DATA           `   COPY public.admin_module_usuarios_user_permissions (id, usuarios_id, permission_id) FROM stdin;
    public          postgres    false    220   �      G          0    19918 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    222   .�      I          0    19922    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    224   K�      K          0    19926    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    226   h�      M          0    19930    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    228   ?�      N          0    19933    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    229   \�      P          0    19940    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    231   ��      R          0    19944    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    233   .�      T          0    19950    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    235   �      U          0    19955    utna_module_utna_carreras 
   TABLE DATA           �   COPY public.utna_module_utna_carreras ("IDCarrera", "Nombre", "Abreviacion", "Modalidad", "Nivel", "Universidad_id") FROM stdin;
    public          postgres    false    236   ��      W          0    19959    utna_module_utna_eficiencia_ire 
   TABLE DATA           �   COPY public.utna_module_utna_eficiencia_ire ("IDEIRE", "Periodo", "Indice_retencion", "Indice_desercion", "Indice_eficiencia_terminal", "Indice_titulacion", "Carrera_id") FROM stdin;
    public          postgres    false    238   ��      Y          0    19963 "   utna_module_utna_indice_colocacion 
   TABLE DATA           �   COPY public.utna_module_utna_indice_colocacion ("IDIC", "Periodo", "Egresados", "Colocados", "Indice_colocacion", "Carrera_id") FROM stdin;
    public          postgres    false    240   ��      [          0    19967    utna_module_utna_indice_ptc 
   TABLE DATA           �   COPY public.utna_module_utna_indice_ptc ("IDIPTC", "Periodo", "Nombre_profesor", "Nombre_investigacion", "Tipo_profesor", "Estado_investigacion", "Carrera_id", "PE_Pertenecientes_id", "Participación_CA", "Perfil_PRODEPT") FROM stdin;
    public          postgres    false    242   ��      ]          0    19971 !   utna_module_utna_indice_servicios 
   TABLE DATA           �  COPY public.utna_module_utna_indice_servicios ("IDIS", "Periodo", "Salud_externa", "Bolsa_trabajo", "Salud_interna", "Asesoria_academica", "Actividades_crecimiento", "Tutoria", "Orientacion", "Espacio_expresion", "Estimulos_desempeno", "Seguridad", "Instalaciones", "Actividades_arte", "Traslado", "Fomento_salud", "Alimentos", "Indice_satisfaccion", "Carrera_id", "Bibliteca", "Conectivida", "Laboratorio_computo", "Laboratorio_practica") FROM stdin;
    public          postgres    false    244   ��      _          0    19975    utna_module_utna_iseg_l 
   TABLE DATA           8  COPY public.utna_module_utna_iseg_l ("IDISEGL", "Periodo", "Bolsa_trabajo", "Op_estadia", "Experiencia_practica", "Laboratorios_talleres", "Infraestructura", "Dominio_prob_lab", "Conocimiento_prof", "Calificacion_MEB5", "Op_preparacion", "Indice_satisfaccion", "Carrera_id", "Trabaja_lugar_estadia") FROM stdin;
    public          postgres    false    246   ��      a          0    19979    utna_module_utna_iseg_tsu 
   TABLE DATA           <  COPY public.utna_module_utna_iseg_tsu ("IDISEGTSU", "Periodo", "Bolsa_trabajo", "Op_estadia", "Experiencia_practica", "Laboratorios_talleres", "Infraestructura", "Dominio_prob_lab", "Conocimiento_prof", "Calificacion_MEB5", "Op_preparacion", "Indice_satisfaccion", "Carrera_id", "Trabaja_lugar_estadia") FROM stdin;
    public          postgres    false    248   ��      c          0    19983    utna_module_utna_isem_l 
   TABLE DATA           �   COPY public.utna_module_utna_isem_l ("IDISEML", "Periodo", "Op_grado", "Creatividad", "Manejo_equipo", "Solucion_prob", "Op_trabajo", "Capacidad", "Cumple_req", "Calificacion_trabajo", "Indice_satisfaccion", "Carrera_id") FROM stdin;
    public          postgres    false    250   -�      e          0    19987    utna_module_utna_isem_tsu 
   TABLE DATA           �   COPY public.utna_module_utna_isem_tsu ("IDISEMTSU", "Periodo", "Op_grado", "Creatividad", "Manejo_equipo", "Solucion_prob", "Op_trabajo", "Capacidad", "Cumple_req", "Calificacion_trabajo", "Indice_satisfaccion", "Carrera_id") FROM stdin;
    public          postgres    false    252   ��      g          0    19991 "   utna_module_utna_tasa_acreditacion 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_acreditacion ("IDTA", "Periodo", "Acreditacion", "Tipo_acreditacion", "Carrera_id", "Fecha_acreditacion", "Fecha_vencimiento") FROM stdin;
    public          postgres    false    254   �      i          0    19995    utna_module_utna_tasa_cobertura 
   TABLE DATA           r   COPY public.utna_module_utna_tasa_cobertura ("IDTC", "Periodo", "Incremento_matricula", "Carrera_id") FROM stdin;
    public          postgres    false    256   :�      k          0    19999    utna_module_utna_tasa_docentes 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_docentes ("IDTD", "Periodo", "No_docentes", "Doc_perfil_adecuado", "Tasa_docentes", "Carrera_id", "Exp_Lab_pertinente") FROM stdin;
    public          postgres    false    258   W�      m          0    20003 !   utna_module_utna_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_mov_alumnos ("IDTMA", "Periodo", "Matricula", "No_alum_viajaron", "Paises", "Tasa_movilidad", "Carrera_id", "Estado") FROM stdin;
    public          postgres    false    260   t�      o          0    20007 "   utna_module_utna_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_mov_docentes ("IDTMD", "Periodo", "Matricula", "No_doc_viajaron", "Paises", "Tasa_movilidad", "Carrera_id", "Estado") FROM stdin;
    public          postgres    false    262   ��      q          0    20011    utna_module_utna_tasa_pe_asat 
   TABLE DATA           v   COPY public.utna_module_utna_tasa_pe_asat ("IDTPEASAT", "Periodo", "Realizacion", "Vencimiento", "PE_id") FROM stdin;
    public          postgres    false    264   ��      s          0    20015 $   utna_module_utna_tasa_pe_pertinencia 
   TABLE DATA           }   COPY public.utna_module_utna_tasa_pe_pertinencia ("IDTPEP", "Periodo", "Presenta", "Fecha_elaboracion", "PE_id") FROM stdin;
    public          postgres    false    266   ��      u          0    20019 "   utna_module_utna_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_egel ("IDTPEGEL", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    268   ��      w          0    20023 $   utna_module_utna_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_egetsu ("IDTPEGESTU", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    270   ��      y          0    20027 !   utna_module_utna_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_exl ("IDTPEXL", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    272   ��      {          0    20031 #   utna_module_utna_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_extsu ("IDTPEXTSU", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    274   ��      �           0    0 ,   admin_module_universidades_IDUniversidad_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."admin_module_universidades_IDUniversidad_seq"', 11, true);
          public          postgres    false    215            �           0    0 #   admin_module_usuarios_IDUsuario_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."admin_module_usuarios_IDUsuario_seq"', 24, true);
          public          postgres    false    217            �           0    0 #   admin_module_usuarios_groups_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.admin_module_usuarios_groups_id_seq', 1, false);
          public          postgres    false    219            �           0    0 -   admin_module_usuarios_user_permissions_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.admin_module_usuarios_user_permissions_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    223            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    225            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 116, true);
          public          postgres    false    227            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);
          public          postgres    false    230            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 29, true);
          public          postgres    false    232            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);
          public          postgres    false    234            �           0    0 '   utna_module_utna_carreras_IDCarrera_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."utna_module_utna_carreras_IDCarrera_seq"', 29, true);
          public          postgres    false    237            �           0    0 *   utna_module_utna_eficiencia_ire_IDEIRE_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."utna_module_utna_eficiencia_ire_IDEIRE_seq"', 1, false);
          public          postgres    false    239            �           0    0 +   utna_module_utna_indice_colocacion_IDIC_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."utna_module_utna_indice_colocacion_IDIC_seq"', 140, true);
          public          postgres    false    241            �           0    0 &   utna_module_utna_indice_ptc_IDIPTC_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."utna_module_utna_indice_ptc_IDIPTC_seq"', 103, true);
          public          postgres    false    243            �           0    0 *   utna_module_utna_indice_servicios_IDIS_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."utna_module_utna_indice_servicios_IDIS_seq"', 1, false);
          public          postgres    false    245            �           0    0 #   utna_module_utna_iseg_l_IDISEGL_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."utna_module_utna_iseg_l_IDISEGL_seq"', 12, true);
          public          postgres    false    247            �           0    0 '   utna_module_utna_iseg_tsu_IDISEGTSU_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."utna_module_utna_iseg_tsu_IDISEGTSU_seq"', 17, true);
          public          postgres    false    249            �           0    0 #   utna_module_utna_isem_l_IDISEML_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."utna_module_utna_isem_l_IDISEML_seq"', 12, true);
          public          postgres    false    251            �           0    0 '   utna_module_utna_isem_tsu_IDISEMTSU_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."utna_module_utna_isem_tsu_IDISEMTSU_seq"', 17, true);
          public          postgres    false    253            �           0    0 +   utna_module_utna_tasa_acreditacion_IDTA_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."utna_module_utna_tasa_acreditacion_IDTA_seq"', 1, false);
          public          postgres    false    255            �           0    0 (   utna_module_utna_tasa_cobertura_IDTC_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."utna_module_utna_tasa_cobertura_IDTC_seq"', 1, false);
          public          postgres    false    257            �           0    0 '   utna_module_utna_tasa_docentes_IDTD_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."utna_module_utna_tasa_docentes_IDTD_seq"', 1, false);
          public          postgres    false    259            �           0    0 +   utna_module_utna_tasa_mov_alumnos_IDTMA_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq"', 145, true);
          public          postgres    false    261            �           0    0 ,   utna_module_utna_tasa_mov_docentes_IDTMD_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."utna_module_utna_tasa_mov_docentes_IDTMD_seq"', 1, false);
          public          postgres    false    263            �           0    0 +   utna_module_utna_tasa_pe_asat_IDTPEASAT_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq"', 29, true);
          public          postgres    false    265            �           0    0 /   utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq"', 29, true);
          public          postgres    false    267            �           0    0 /   utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq"', 12, true);
          public          postgres    false    269            �           0    0 3   utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq"', 17, true);
          public          postgres    false    271            �           0    0 -   utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq"', 1, false);
          public          postgres    false    273            �           0    0 1   utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq"', 1, false);
          public          postgres    false    275                       2606    20066 :   admin_module_universidades admin_module_universidades_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_universidades
    ADD CONSTRAINT admin_module_universidades_pkey PRIMARY KEY ("IDUniversidad");
 d   ALTER TABLE ONLY public.admin_module_universidades DROP CONSTRAINT admin_module_universidades_pkey;
       public            postgres    false    214            '           2606    20068 >   admin_module_usuarios_groups admin_module_usuarios_groups_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuarios_groups_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuarios_groups_pkey;
       public            postgres    false    218            *           2606    20070 \   admin_module_usuarios_groups admin_module_usuarios_groups_usuarios_id_group_id_aadc0b82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuarios_groups_usuarios_id_group_id_aadc0b82_uniq UNIQUE (usuarios_id, group_id);
 �   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuarios_groups_usuarios_id_group_id_aadc0b82_uniq;
       public            postgres    false    218    218            !           2606    20072 0   admin_module_usuarios admin_module_usuarios_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.admin_module_usuarios
    ADD CONSTRAINT admin_module_usuarios_pkey PRIMARY KEY ("IDUsuario");
 Z   ALTER TABLE ONLY public.admin_module_usuarios DROP CONSTRAINT admin_module_usuarios_pkey;
       public            postgres    false    216            ,           2606    20074 f   admin_module_usuarios_user_permissions admin_module_usuarios_us_usuarios_id_permission_i_e5ef4523_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuarios_us_usuarios_id_permission_i_e5ef4523_uniq UNIQUE (usuarios_id, permission_id);
 �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuarios_us_usuarios_id_permission_i_e5ef4523_uniq;
       public            postgres    false    220    220            /           2606    20076 R   admin_module_usuarios_user_permissions admin_module_usuarios_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuarios_user_permissions_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuarios_user_permissions_pkey;
       public            postgres    false    220            $           2606    20078 8   admin_module_usuarios admin_module_usuarios_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.admin_module_usuarios
    ADD CONSTRAINT admin_module_usuarios_username_key UNIQUE (username);
 b   ALTER TABLE ONLY public.admin_module_usuarios DROP CONSTRAINT admin_module_usuarios_username_key;
       public            postgres    false    216            3           2606    20080    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    222            8           2606    20082 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    224    224            ;           2606    20084 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    224            5           2606    20086    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    222            >           2606    20088 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    226    226            @           2606    20090 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    226            C           2606    20092 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    228            E           2606    20094 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    228            H           2606    20096 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    229            K           2606    20098 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    231    231            M           2606    20100 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    231            O           2606    20102 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    233            R           2606    20104 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    235            V           2606    20106 8   utna_module_utna_carreras utna_module_utna_carreras_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.utna_module_utna_carreras
    ADD CONSTRAINT utna_module_utna_carreras_pkey PRIMARY KEY ("IDCarrera");
 b   ALTER TABLE ONLY public.utna_module_utna_carreras DROP CONSTRAINT utna_module_utna_carreras_pkey;
       public            postgres    false    236            Y           2606    20108 D   utna_module_utna_eficiencia_ire utna_module_utna_eficiencia_ire_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire
    ADD CONSTRAINT utna_module_utna_eficiencia_ire_pkey PRIMARY KEY ("IDEIRE");
 n   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire DROP CONSTRAINT utna_module_utna_eficiencia_ire_pkey;
       public            postgres    false    238            \           2606    20110 J   utna_module_utna_indice_colocacion utna_module_utna_indice_colocacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion
    ADD CONSTRAINT utna_module_utna_indice_colocacion_pkey PRIMARY KEY ("IDIC");
 t   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion DROP CONSTRAINT utna_module_utna_indice_colocacion_pkey;
       public            postgres    false    240            `           2606    20112 <   utna_module_utna_indice_ptc utna_module_utna_indice_ptc_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc
    ADD CONSTRAINT utna_module_utna_indice_ptc_pkey PRIMARY KEY ("IDIPTC");
 f   ALTER TABLE ONLY public.utna_module_utna_indice_ptc DROP CONSTRAINT utna_module_utna_indice_ptc_pkey;
       public            postgres    false    242            c           2606    20114 H   utna_module_utna_indice_servicios utna_module_utna_indice_servicios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios
    ADD CONSTRAINT utna_module_utna_indice_servicios_pkey PRIMARY KEY ("IDIS");
 r   ALTER TABLE ONLY public.utna_module_utna_indice_servicios DROP CONSTRAINT utna_module_utna_indice_servicios_pkey;
       public            postgres    false    244            f           2606    20116 4   utna_module_utna_iseg_l utna_module_utna_iseg_l_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utna_module_utna_iseg_l
    ADD CONSTRAINT utna_module_utna_iseg_l_pkey PRIMARY KEY ("IDISEGL");
 ^   ALTER TABLE ONLY public.utna_module_utna_iseg_l DROP CONSTRAINT utna_module_utna_iseg_l_pkey;
       public            postgres    false    246            i           2606    20118 8   utna_module_utna_iseg_tsu utna_module_utna_iseg_tsu_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.utna_module_utna_iseg_tsu
    ADD CONSTRAINT utna_module_utna_iseg_tsu_pkey PRIMARY KEY ("IDISEGTSU");
 b   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu DROP CONSTRAINT utna_module_utna_iseg_tsu_pkey;
       public            postgres    false    248            l           2606    20120 4   utna_module_utna_isem_l utna_module_utna_isem_l_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utna_module_utna_isem_l
    ADD CONSTRAINT utna_module_utna_isem_l_pkey PRIMARY KEY ("IDISEML");
 ^   ALTER TABLE ONLY public.utna_module_utna_isem_l DROP CONSTRAINT utna_module_utna_isem_l_pkey;
       public            postgres    false    250            o           2606    20122 8   utna_module_utna_isem_tsu utna_module_utna_isem_tsu_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.utna_module_utna_isem_tsu
    ADD CONSTRAINT utna_module_utna_isem_tsu_pkey PRIMARY KEY ("IDISEMTSU");
 b   ALTER TABLE ONLY public.utna_module_utna_isem_tsu DROP CONSTRAINT utna_module_utna_isem_tsu_pkey;
       public            postgres    false    252            r           2606    20124 J   utna_module_utna_tasa_acreditacion utna_module_utna_tasa_acreditacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion
    ADD CONSTRAINT utna_module_utna_tasa_acreditacion_pkey PRIMARY KEY ("IDTA");
 t   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion DROP CONSTRAINT utna_module_utna_tasa_acreditacion_pkey;
       public            postgres    false    254            u           2606    20126 D   utna_module_utna_tasa_cobertura utna_module_utna_tasa_cobertura_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura
    ADD CONSTRAINT utna_module_utna_tasa_cobertura_pkey PRIMARY KEY ("IDTC");
 n   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura DROP CONSTRAINT utna_module_utna_tasa_cobertura_pkey;
       public            postgres    false    256            x           2606    20128 B   utna_module_utna_tasa_docentes utna_module_utna_tasa_docentes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes
    ADD CONSTRAINT utna_module_utna_tasa_docentes_pkey PRIMARY KEY ("IDTD");
 l   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes DROP CONSTRAINT utna_module_utna_tasa_docentes_pkey;
       public            postgres    false    258            {           2606    20130 H   utna_module_utna_tasa_mov_alumnos utna_module_utna_tasa_mov_alumnos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos
    ADD CONSTRAINT utna_module_utna_tasa_mov_alumnos_pkey PRIMARY KEY ("IDTMA");
 r   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos DROP CONSTRAINT utna_module_utna_tasa_mov_alumnos_pkey;
       public            postgres    false    260            ~           2606    20132 J   utna_module_utna_tasa_mov_docentes utna_module_utna_tasa_mov_docentes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes
    ADD CONSTRAINT utna_module_utna_tasa_mov_docentes_pkey PRIMARY KEY ("IDTMD");
 t   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes DROP CONSTRAINT utna_module_utna_tasa_mov_docentes_pkey;
       public            postgres    false    262            �           2606    20134 @   utna_module_utna_tasa_pe_asat utna_module_utna_tasa_pe_asat_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat
    ADD CONSTRAINT utna_module_utna_tasa_pe_asat_pkey PRIMARY KEY ("IDTPEASAT");
 j   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat DROP CONSTRAINT utna_module_utna_tasa_pe_asat_pkey;
       public            postgres    false    264            �           2606    20136 N   utna_module_utna_tasa_pe_pertinencia utna_module_utna_tasa_pe_pertinencia_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia
    ADD CONSTRAINT utna_module_utna_tasa_pe_pertinencia_pkey PRIMARY KEY ("IDTPEP");
 x   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia DROP CONSTRAINT utna_module_utna_tasa_pe_pertinencia_pkey;
       public            postgres    false    266            �           2606    20138 J   utna_module_utna_tasa_puntaje_egel utna_module_utna_tasa_puntaje_egel_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_egel_pkey PRIMARY KEY ("IDTPEGEL");
 t   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel DROP CONSTRAINT utna_module_utna_tasa_puntaje_egel_pkey;
       public            postgres    false    268            �           2606    20140 N   utna_module_utna_tasa_puntaje_egetsu utna_module_utna_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_egetsu_pkey PRIMARY KEY ("IDTPEGESTU");
 x   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu DROP CONSTRAINT utna_module_utna_tasa_puntaje_egetsu_pkey;
       public            postgres    false    270            �           2606    20142 H   utna_module_utna_tasa_puntaje_exl utna_module_utna_tasa_puntaje_exl_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_exl_pkey PRIMARY KEY ("IDTPEXL");
 r   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl DROP CONSTRAINT utna_module_utna_tasa_puntaje_exl_pkey;
       public            postgres    false    272            �           2606    20144 L   utna_module_utna_tasa_puntaje_extsu utna_module_utna_tasa_puntaje_extsu_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_extsu_pkey PRIMARY KEY ("IDTPEXTSU");
 v   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu DROP CONSTRAINT utna_module_utna_tasa_puntaje_extsu_pkey;
       public            postgres    false    274                       1259    20145 -   admin_module_usuarios_Universidad_id_839997f7    INDEX     }   CREATE INDEX "admin_module_usuarios_Universidad_id_839997f7" ON public.admin_module_usuarios USING btree ("Universidad_id");
 C   DROP INDEX public."admin_module_usuarios_Universidad_id_839997f7";
       public            postgres    false    216            %           1259    20146 .   admin_module_usuarios_groups_group_id_c4db1625    INDEX     {   CREATE INDEX admin_module_usuarios_groups_group_id_c4db1625 ON public.admin_module_usuarios_groups USING btree (group_id);
 B   DROP INDEX public.admin_module_usuarios_groups_group_id_c4db1625;
       public            postgres    false    218            (           1259    20147 1   admin_module_usuarios_groups_usuarios_id_bf9b452f    INDEX     �   CREATE INDEX admin_module_usuarios_groups_usuarios_id_bf9b452f ON public.admin_module_usuarios_groups USING btree (usuarios_id);
 E   DROP INDEX public.admin_module_usuarios_groups_usuarios_id_bf9b452f;
       public            postgres    false    218            -           1259    20148 =   admin_module_usuarios_user_permissions_permission_id_4cf14b49    INDEX     �   CREATE INDEX admin_module_usuarios_user_permissions_permission_id_4cf14b49 ON public.admin_module_usuarios_user_permissions USING btree (permission_id);
 Q   DROP INDEX public.admin_module_usuarios_user_permissions_permission_id_4cf14b49;
       public            postgres    false    220            0           1259    20149 ;   admin_module_usuarios_user_permissions_usuarios_id_1087d62c    INDEX     �   CREATE INDEX admin_module_usuarios_user_permissions_usuarios_id_1087d62c ON public.admin_module_usuarios_user_permissions USING btree (usuarios_id);
 O   DROP INDEX public.admin_module_usuarios_user_permissions_usuarios_id_1087d62c;
       public            postgres    false    220            "           1259    20150 ,   admin_module_usuarios_username_4aba3709_like    INDEX     �   CREATE INDEX admin_module_usuarios_username_4aba3709_like ON public.admin_module_usuarios USING btree (username varchar_pattern_ops);
 @   DROP INDEX public.admin_module_usuarios_username_4aba3709_like;
       public            postgres    false    216            1           1259    20151    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    222            6           1259    20152 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    224            9           1259    20153 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    224            <           1259    20154 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    226            A           1259    20155 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    228            F           1259    20156 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    229            I           1259    20157 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    229            P           1259    20158 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    235            S           1259    20159 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    235            T           1259    20160 1   utna_module_utna_carreras_Universidad_id_5259bb1d    INDEX     �   CREATE INDEX "utna_module_utna_carreras_Universidad_id_5259bb1d" ON public.utna_module_utna_carreras USING btree ("Universidad_id");
 G   DROP INDEX public."utna_module_utna_carreras_Universidad_id_5259bb1d";
       public            postgres    false    236            W           1259    20161 3   utna_module_utna_eficiencia_ire_Carrera_id_e1a3efef    INDEX     �   CREATE INDEX "utna_module_utna_eficiencia_ire_Carrera_id_e1a3efef" ON public.utna_module_utna_eficiencia_ire USING btree ("Carrera_id");
 I   DROP INDEX public."utna_module_utna_eficiencia_ire_Carrera_id_e1a3efef";
       public            postgres    false    238            Z           1259    20162 6   utna_module_utna_indice_colocacion_Carrera_id_2d3cd102    INDEX     �   CREATE INDEX "utna_module_utna_indice_colocacion_Carrera_id_2d3cd102" ON public.utna_module_utna_indice_colocacion USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_indice_colocacion_Carrera_id_2d3cd102";
       public            postgres    false    240            ]           1259    20163 /   utna_module_utna_indice_ptc_Carrera_id_fa143864    INDEX     �   CREATE INDEX "utna_module_utna_indice_ptc_Carrera_id_fa143864" ON public.utna_module_utna_indice_ptc USING btree ("Carrera_id");
 E   DROP INDEX public."utna_module_utna_indice_ptc_Carrera_id_fa143864";
       public            postgres    false    242            ^           1259    20164 9   utna_module_utna_indice_ptc_PE_Pertenecientes_id_03ec3eea    INDEX     �   CREATE INDEX "utna_module_utna_indice_ptc_PE_Pertenecientes_id_03ec3eea" ON public.utna_module_utna_indice_ptc USING btree ("PE_Pertenecientes_id");
 O   DROP INDEX public."utna_module_utna_indice_ptc_PE_Pertenecientes_id_03ec3eea";
       public            postgres    false    242            a           1259    20165 5   utna_module_utna_indice_servicios_Carrera_id_f85c6d0a    INDEX     �   CREATE INDEX "utna_module_utna_indice_servicios_Carrera_id_f85c6d0a" ON public.utna_module_utna_indice_servicios USING btree ("Carrera_id");
 K   DROP INDEX public."utna_module_utna_indice_servicios_Carrera_id_f85c6d0a";
       public            postgres    false    244            d           1259    20166 +   utna_module_utna_iseg_l_Carrera_id_6038bc21    INDEX     y   CREATE INDEX "utna_module_utna_iseg_l_Carrera_id_6038bc21" ON public.utna_module_utna_iseg_l USING btree ("Carrera_id");
 A   DROP INDEX public."utna_module_utna_iseg_l_Carrera_id_6038bc21";
       public            postgres    false    246            g           1259    20167 -   utna_module_utna_iseg_tsu_Carrera_id_c254dc59    INDEX     }   CREATE INDEX "utna_module_utna_iseg_tsu_Carrera_id_c254dc59" ON public.utna_module_utna_iseg_tsu USING btree ("Carrera_id");
 C   DROP INDEX public."utna_module_utna_iseg_tsu_Carrera_id_c254dc59";
       public            postgres    false    248            j           1259    20168 +   utna_module_utna_isem_l_Carrera_id_e6ccdd20    INDEX     y   CREATE INDEX "utna_module_utna_isem_l_Carrera_id_e6ccdd20" ON public.utna_module_utna_isem_l USING btree ("Carrera_id");
 A   DROP INDEX public."utna_module_utna_isem_l_Carrera_id_e6ccdd20";
       public            postgres    false    250            m           1259    20169 -   utna_module_utna_isem_tsu_Carrera_id_b028db55    INDEX     }   CREATE INDEX "utna_module_utna_isem_tsu_Carrera_id_b028db55" ON public.utna_module_utna_isem_tsu USING btree ("Carrera_id");
 C   DROP INDEX public."utna_module_utna_isem_tsu_Carrera_id_b028db55";
       public            postgres    false    252            p           1259    20170 6   utna_module_utna_tasa_acreditacion_Carrera_id_f0f67dad    INDEX     �   CREATE INDEX "utna_module_utna_tasa_acreditacion_Carrera_id_f0f67dad" ON public.utna_module_utna_tasa_acreditacion USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_tasa_acreditacion_Carrera_id_f0f67dad";
       public            postgres    false    254            s           1259    20171 3   utna_module_utna_tasa_cobertura_Carrera_id_f1f71131    INDEX     �   CREATE INDEX "utna_module_utna_tasa_cobertura_Carrera_id_f1f71131" ON public.utna_module_utna_tasa_cobertura USING btree ("Carrera_id");
 I   DROP INDEX public."utna_module_utna_tasa_cobertura_Carrera_id_f1f71131";
       public            postgres    false    256            v           1259    20172 2   utna_module_utna_tasa_docentes_Carrera_id_b50d6d4e    INDEX     �   CREATE INDEX "utna_module_utna_tasa_docentes_Carrera_id_b50d6d4e" ON public.utna_module_utna_tasa_docentes USING btree ("Carrera_id");
 H   DROP INDEX public."utna_module_utna_tasa_docentes_Carrera_id_b50d6d4e";
       public            postgres    false    258            y           1259    20173 5   utna_module_utna_tasa_mov_alumnos_Carrera_id_8af85fe9    INDEX     �   CREATE INDEX "utna_module_utna_tasa_mov_alumnos_Carrera_id_8af85fe9" ON public.utna_module_utna_tasa_mov_alumnos USING btree ("Carrera_id");
 K   DROP INDEX public."utna_module_utna_tasa_mov_alumnos_Carrera_id_8af85fe9";
       public            postgres    false    260            |           1259    20174 6   utna_module_utna_tasa_mov_docentes_Carrera_id_641d558f    INDEX     �   CREATE INDEX "utna_module_utna_tasa_mov_docentes_Carrera_id_641d558f" ON public.utna_module_utna_tasa_mov_docentes USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_tasa_mov_docentes_Carrera_id_641d558f";
       public            postgres    false    262                       1259    20175 ,   utna_module_utna_tasa_pe_asat_PE_id_82792736    INDEX     {   CREATE INDEX "utna_module_utna_tasa_pe_asat_PE_id_82792736" ON public.utna_module_utna_tasa_pe_asat USING btree ("PE_id");
 B   DROP INDEX public."utna_module_utna_tasa_pe_asat_PE_id_82792736";
       public            postgres    false    264            �           1259    20176 8   utna_module_utna_tasa_pe_pertinencia_Carrera_id_e3afaf73    INDEX     �   CREATE INDEX "utna_module_utna_tasa_pe_pertinencia_Carrera_id_e3afaf73" ON public.utna_module_utna_tasa_pe_pertinencia USING btree ("PE_id");
 N   DROP INDEX public."utna_module_utna_tasa_pe_pertinencia_Carrera_id_e3afaf73";
       public            postgres    false    266            �           1259    20177 6   utna_module_utna_tasa_puntaje_egel_Carrera_id_58649386    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_egel_Carrera_id_58649386" ON public.utna_module_utna_tasa_puntaje_egel USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_tasa_puntaje_egel_Carrera_id_58649386";
       public            postgres    false    268            �           1259    20178 8   utna_module_utna_tasa_puntaje_egetsu_Carrera_id_1aa960eb    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_egetsu_Carrera_id_1aa960eb" ON public.utna_module_utna_tasa_puntaje_egetsu USING btree ("Carrera_id");
 N   DROP INDEX public."utna_module_utna_tasa_puntaje_egetsu_Carrera_id_1aa960eb";
       public            postgres    false    270            �           1259    20179 5   utna_module_utna_tasa_puntaje_exl_Carrera_id_869e1045    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_exl_Carrera_id_869e1045" ON public.utna_module_utna_tasa_puntaje_exl USING btree ("Carrera_id");
 K   DROP INDEX public."utna_module_utna_tasa_puntaje_exl_Carrera_id_869e1045";
       public            postgres    false    272            �           1259    20180 7   utna_module_utna_tasa_puntaje_extsu_Carrera_id_b7e02192    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_extsu_Carrera_id_b7e02192" ON public.utna_module_utna_tasa_puntaje_extsu USING btree ("Carrera_id");
 M   DROP INDEX public."utna_module_utna_tasa_puntaje_extsu_Carrera_id_b7e02192";
       public            postgres    false    274            �           2606    20181 O   admin_module_usuarios admin_module_usuario_Universidad_id_839997f7_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios
    ADD CONSTRAINT "admin_module_usuario_Universidad_id_839997f7_fk_admin_mod" FOREIGN KEY ("Universidad_id") REFERENCES public.admin_module_universidades("IDUniversidad") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.admin_module_usuarios DROP CONSTRAINT "admin_module_usuario_Universidad_id_839997f7_fk_admin_mod";
       public          postgres    false    3358    214    216            �           2606    20186 _   admin_module_usuarios_user_permissions admin_module_usuario_permission_id_4cf14b49_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuario_permission_id_4cf14b49_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuario_permission_id_4cf14b49_fk_auth_perm;
       public          postgres    false    220    226    3392            �           2606    20191 ]   admin_module_usuarios_user_permissions admin_module_usuario_usuarios_id_1087d62c_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuario_usuarios_id_1087d62c_fk_admin_mod FOREIGN KEY (usuarios_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuario_usuarios_id_1087d62c_fk_admin_mod;
       public          postgres    false    220    3361    216            �           2606    20196 S   admin_module_usuarios_groups admin_module_usuario_usuarios_id_bf9b452f_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuario_usuarios_id_bf9b452f_fk_admin_mod FOREIGN KEY (usuarios_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuario_usuarios_id_bf9b452f_fk_admin_mod;
       public          postgres    false    218    3361    216            �           2606    20201 \   admin_module_usuarios_groups admin_module_usuarios_groups_group_id_c4db1625_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuarios_groups_group_id_c4db1625_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuarios_groups_group_id_c4db1625_fk_auth_group_id;
       public          postgres    false    3381    222    218            �           2606    20206 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    224    226    3392            �           2606    20211 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    224    3381    222            �           2606    20216 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3405    226    231            �           2606    20221 =   authtoken_token authtoken_token_user_id_35299eff_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_admin_mod FOREIGN KEY (user_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_admin_mod;
       public          postgres    false    3361    228    216            �           2606    20226 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    229    3405    231            �           2606    20231 ?   django_admin_log django_admin_log_user_id_c564eba6_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_admin_mod FOREIGN KEY (user_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_admin_mod;
       public          postgres    false    216    3361    229            �           2606    20236 S   utna_module_utna_carreras utna_module_utna_car_Universidad_id_5259bb1d_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_carreras
    ADD CONSTRAINT "utna_module_utna_car_Universidad_id_5259bb1d_fk_admin_mod" FOREIGN KEY ("Universidad_id") REFERENCES public.admin_module_universidades("IDUniversidad") DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.utna_module_utna_carreras DROP CONSTRAINT "utna_module_utna_car_Universidad_id_5259bb1d_fk_admin_mod";
       public          postgres    false    236    214    3358            �           2606    20241 U   utna_module_utna_eficiencia_ire utna_module_utna_efi_Carrera_id_e1a3efef_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire
    ADD CONSTRAINT "utna_module_utna_efi_Carrera_id_e1a3efef_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire DROP CONSTRAINT "utna_module_utna_efi_Carrera_id_e1a3efef_fk_utna_modu";
       public          postgres    false    3414    236    238            �           2606    20246 X   utna_module_utna_indice_colocacion utna_module_utna_ind_Carrera_id_2d3cd102_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion
    ADD CONSTRAINT "utna_module_utna_ind_Carrera_id_2d3cd102_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion DROP CONSTRAINT "utna_module_utna_ind_Carrera_id_2d3cd102_fk_utna_modu";
       public          postgres    false    236    240    3414            �           2606    20251 W   utna_module_utna_indice_servicios utna_module_utna_ind_Carrera_id_f85c6d0a_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios
    ADD CONSTRAINT "utna_module_utna_ind_Carrera_id_f85c6d0a_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios DROP CONSTRAINT "utna_module_utna_ind_Carrera_id_f85c6d0a_fk_utna_modu";
       public          postgres    false    244    3414    236            �           2606    20256 Q   utna_module_utna_indice_ptc utna_module_utna_ind_Carrera_id_fa143864_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc
    ADD CONSTRAINT "utna_module_utna_ind_Carrera_id_fa143864_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.utna_module_utna_indice_ptc DROP CONSTRAINT "utna_module_utna_ind_Carrera_id_fa143864_fk_utna_modu";
       public          postgres    false    236    242    3414            �           2606    20261 [   utna_module_utna_indice_ptc utna_module_utna_ind_PE_Pertenecientes_id_03ec3eea_fk_utna_modu    FK CONSTRAINT       ALTER TABLE ONLY public.utna_module_utna_indice_ptc
    ADD CONSTRAINT "utna_module_utna_ind_PE_Pertenecientes_id_03ec3eea_fk_utna_modu" FOREIGN KEY ("PE_Pertenecientes_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc DROP CONSTRAINT "utna_module_utna_ind_PE_Pertenecientes_id_03ec3eea_fk_utna_modu";
       public          postgres    false    3414    242    236            �           2606    20266 M   utna_module_utna_iseg_l utna_module_utna_ise_Carrera_id_6038bc21_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_l
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_6038bc21_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.utna_module_utna_iseg_l DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_6038bc21_fk_utna_modu";
       public          postgres    false    246    236    3414            �           2606    20271 O   utna_module_utna_isem_tsu utna_module_utna_ise_Carrera_id_b028db55_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_isem_tsu
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_b028db55_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.utna_module_utna_isem_tsu DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_b028db55_fk_utna_modu";
       public          postgres    false    252    3414    236            �           2606    20276 O   utna_module_utna_iseg_tsu utna_module_utna_ise_Carrera_id_c254dc59_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_c254dc59_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_c254dc59_fk_utna_modu";
       public          postgres    false    3414    248    236            �           2606    20281 M   utna_module_utna_isem_l utna_module_utna_ise_Carrera_id_e6ccdd20_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_isem_l
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_e6ccdd20_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.utna_module_utna_isem_l DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_e6ccdd20_fk_utna_modu";
       public          postgres    false    3414    236    250            �           2606    20286 Z   utna_module_utna_tasa_puntaje_egetsu utna_module_utna_tas_Carrera_id_1aa960eb_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_1aa960eb_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_1aa960eb_fk_utna_modu";
       public          postgres    false    270    236    3414            �           2606    20291 X   utna_module_utna_tasa_puntaje_egel utna_module_utna_tas_Carrera_id_58649386_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_58649386_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_58649386_fk_utna_modu";
       public          postgres    false    268    3414    236            �           2606    20296 X   utna_module_utna_tasa_mov_docentes utna_module_utna_tas_Carrera_id_641d558f_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_641d558f_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_641d558f_fk_utna_modu";
       public          postgres    false    3414    262    236            �           2606    20301 W   utna_module_utna_tasa_puntaje_exl utna_module_utna_tas_Carrera_id_869e1045_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_869e1045_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_869e1045_fk_utna_modu";
       public          postgres    false    272    236    3414            �           2606    20306 W   utna_module_utna_tasa_mov_alumnos utna_module_utna_tas_Carrera_id_8af85fe9_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_8af85fe9_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_8af85fe9_fk_utna_modu";
       public          postgres    false    3414    236    260            �           2606    20311 T   utna_module_utna_tasa_docentes utna_module_utna_tas_Carrera_id_b50d6d4e_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_b50d6d4e_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_b50d6d4e_fk_utna_modu";
       public          postgres    false    236    3414    258            �           2606    20316 Y   utna_module_utna_tasa_puntaje_extsu utna_module_utna_tas_Carrera_id_b7e02192_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_b7e02192_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_b7e02192_fk_utna_modu";
       public          postgres    false    236    274    3414            �           2606    20321 X   utna_module_utna_tasa_acreditacion utna_module_utna_tas_Carrera_id_f0f67dad_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_f0f67dad_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_f0f67dad_fk_utna_modu";
       public          postgres    false    236    254    3414            �           2606    20326 U   utna_module_utna_tasa_cobertura utna_module_utna_tas_Carrera_id_f1f71131_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_f1f71131_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_f1f71131_fk_utna_modu";
       public          postgres    false    236    256    3414            �           2606    20331 U   utna_module_utna_tasa_pe_pertinencia utna_module_utna_tas_PE_id_3d5adf8a_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia
    ADD CONSTRAINT "utna_module_utna_tas_PE_id_3d5adf8a_fk_utna_modu" FOREIGN KEY ("PE_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia DROP CONSTRAINT "utna_module_utna_tas_PE_id_3d5adf8a_fk_utna_modu";
       public          postgres    false    236    266    3414            �           2606    20336 N   utna_module_utna_tasa_pe_asat utna_module_utna_tas_PE_id_82792736_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat
    ADD CONSTRAINT "utna_module_utna_tas_PE_id_82792736_fk_utna_modu" FOREIGN KEY ("PE_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat DROP CONSTRAINT "utna_module_utna_tas_PE_id_82792736_fk_utna_modu";
       public          postgres    false    264    3414    236            ?   >  x���Mn�0���)|T��%J��誛�3 K���Q]T����Mi`�����=�֫I��z��t�X��d�a���dۂS`4Z�.+Z�t����/��^C=�&���9z�����qm��F,�=�5�E��_T!�S���������|蔽��B�qA�b�V����n(6Mh��d����)�j��%�S䬚���S1k�'Qid�o:[��<�J�<�'�U�r����x摐���S��S�Zi,^�A>���h���T�Y�)�ȧ��%�&��ȅNT`}LS��x��(��/��d      A   �  x�u�I�����q�_��̶VCkr ���JNr��҃`��+֮�P��<����*v���W�h#�x�&Ar�<�A&>!��3��_ )�-���b�ԞsT�<���u�������� ���!5x��! "v ����w/����~�*�1�!;���!�,ER�Wዾ�U��4��_�W��t7��o���t��֘1��L���n�
��x��
��	3��h��cY�W]hb)����o�_l�7��ōY�����oF���$�<�bJcK3_�ϲ������=�XϡZ/��9�	����MZ���R?Vas�b��l�`��"y�`}���鉗9dzdhDrC�$�:�5\�nR���Y�56 1��"; R�d��@�t�\'U�jZ6-��N>��j���z{a��n�u�����IY���t�{7�#[���Lҕo9�B��XJr">�k�b�<�嚡�i�53��k>w.d��NT��zR}ʺn)iR=2�q{Y`:��[�.���/��
��_9�X'0S��9=e��vCjF��Z���T־OgQ��2F3��)����#�,G>y�{8�3M�pV!�����c%����D�[L�}�^ST�m��}�s�4J�H�)W����a�f�кr8X=4v�!��Ȏ�~-��gA]�n��A�9ܜ�����$�bq00�3�w�$��٤U��iZ>��p>���,)v�ˣ�!�`>7��3m�C������9���qR߉��M��AU�P�bi/݄���%�77�h��p<+`��֕C4�и���z�{�q�k��5ϱ"z"��.��BNn����>�d�V�z/Jau�MR�Z�(˃y{��i��g9�7�IG � 3$d��u���3M��y^7�����k-w�V ��9i�QL}�
4��u��[���J��J�vUn�O�3�^����R�� ��r=���0�7��o�H>ND鴶e���|��d.Z�L�w�:�+�?{ !�6�N��1�y��C'r�Ã��0M!��}��g-�����������hU�'�S��Z޸��0�A]Xz�Q��K�(���4��֕�T�����!) ��~�=��W��&�7K2ݥ�\�&�&�C�p����T��{��e�3{Wbk����عn=�@��76%����@�� �d�4CA���zg�1?��̉Yv؜�4��X���(�"��v`jӮ�ߤ�Y�۴pm+�
��3�S�+�������P�z����D���x�i+MB[˜Hϊ7�_�v~8��P:�W٥
��̌D����RI�������z f��<F�Bȡ�%�|�c{vb	�t7�v��'�[�*�3A����Mfmp��S��.�=>gyq��* T��� }�"�i��QKr�c{ԣ�f��[�۠����X`�F�2O�[k���" ��E�J���XW'�s^�$u���gG������9_)]=��n�B
!�߇N�3���Q�����#���g�" �`��a�#�9كj2��iJ۹� L���ƻ5�DR�����`z|h�!F4~ۑѷ��#Lcє�x)���0��ah�!$�?�ۭMm��qq<I��=F4��YX>_Y�;��~��]?+��~|�i�9j��AO�{do� ��8V�z�D�����y@7��oW~v�l�z����a�='�+~I'��]���^��妇Gv<0o�}}����Q���*|�n��ŪD!�Aa��zP2'3�ԩ�,��b�
js�|�Ϋ��>|��s������K�����/�z��O��S[HdQ�N�k:䛒�����P�l����;�r�[UX:vVM%�c~���髯hA����d��w����g��m�F긵Ē������D'�_��y����K���m���B:@d�b�鞿������d��D���s�}�"/�=Fb��#�8�C��0�|P@�9F�;������]�      C      x������ � �      E      x������ � �      G      x������ � �      I      x������ � �      K   �  x��XK��8\K����z��ˉp�X�a����ۏz?�{SU�23�e��s�g3��^�㣰�2�TF��7�ڿԥ���4��"�v����mo܎������@�� ������>�y��A��Z:�'h�;�=C�%YDH�஻��4���������x|���"$�	�2Y� �"\W��v�]��|ZU{#�h=Ѧ�v8�B�#�F��"�Q��~����������@�	|�+��`�^���d-���bvG����N�ϲ��K����K���?B�� �}x�:=��@����4~�w"z�#�8��G�p�)��d(`��Z��[�6�d�fV�ϝ6�x�+��sF0KH�]�I�9!����1���,��~>_���ko�a����i*��uUf�ఢ�Q�;�3�N,��R�F�9�2�^�fˆ����;y�w	9������������p�L>'b�d�����K7ء�e���{]��x$)�Q�rIj<&�V�AIZ4+�ț�~/ʔ<��Bקw�D��F?��#ҥ6�%@$��7*k���?o�}l�g�������u��G�>32,�$ujF����x�ftH0X%Ӿ^��_��4j!�p����"b4�N�u��̮�k\�"Ĳkd�6�z$��@�-�,�$�oW(�2�N�V�t2|"�mڎ�]��&�0'2�~�O�Et6:Pȶ&R`��LS">��v,�v��ni�uC5g� �էlO2�6&by`�Lw2�-�ͅ�����g7o��,4&���KhGĂ�&kB�Ic%m���v�+���g�� ���B���1Xg<��д�V�Ï[���6�PI�Bf,���̱�.�|��q6B�JCf��Eh gs8��(��fp�  O�;4k�n�w�[�f;}v�3��T�v���/D4���B�A#3��ȁI�}+@�K�ʊE��Uگ0M��3�}
3��=��O��f�,�/�|ڱۭK˚M�n�UZ�dah($mL����+�,�"�"lg��'���u�U%ؙ�JK��8���5q�Q0�7q�� �˛��]��_�oA�@��f��:4��%I忩��F%�忮��v%i徳�̦�\��U+��N#�j1�79�J�]�)��hU�-[L'�Ϫ:t�>�4w���6�2�Z�P�mƈ�nNJ�c,MJ�&"З�3B�a��_ʹ~Z���w]�E�	�,�6[��Z���E�U      M      x������ � �      N   ~   x��1
�0 �99�ǵ(�W�d�N:�B�G!c��G�^�noyZ�ºT]�j@m�i���u�>�Z��8����=Y��]L!-��,Ӻ�-�����q�|��^X"���~����]I)��l"�      P   4  x���mn� @��L�~�e�����T��GI�NlR����ωh'���Ϡ��.f���肇ղ3p�3��	>4�g�?o`#"Ռ���mMMᓼ�g�=��Ng؋�<�)�<Ҳ6�L��c	#�9���i�3������QTNΓ7A�>W.	�L�m0�
E��?(��C�6���m�0����� h��Kh.��.Ҥ����A5��P�T�i���F�3�#�ѕ�"���+4'���6af�L5$�[yA��vL�zo_ȩ��3y�Jc��ǹQ����h˼��!3�՗' ��Dy      R   �  x����r�0�����}'�y��hP�R��$2�s��b����k�����V���5�%�R�M� ���&��? � �7�}�� �D`�."�
f�oF_��F9=�m�Ђ�;=��[��P"y	 K R�O&�ф��h��	ՠ�Uo\���IbLbQPtA�#j��bm���%,�@�9�\�i���6A��|A�sD�cR��l�k�e� 
�
D,�{�k�aiF�*�]aP�Iaȅ��yӽmu�!*ݶʄ��L��3�eA��'�`��MinH��j�B�
݅"���>QQ]��x�r&���B��1Kd���Ǚ���x6`e,V�輪g�-�sF�D���v�N|;���<!.�Q\6�ގ���jX�O!�X4�,||��\�/n�f�,��W� �)6�M*����N5/�6W�������$�t�>�F��obR֖ p�����tv����Os���	���!�5�Z" @�)�	�DPD9�S���m��P���d�ѹ7M)`�j��nJN��<^fQ�9![G"UX�枫15j�!�Ǝ��~�,�Ү�a�������
�k���U
燧�,�{31�.g�n.��$�l��_'6�#���$IG�B�	�:�[~n�i0{P����6��_�2�)N�ϷUgQ����\�垏j�*U����T����� i6��]��,����t�W)�'��U?u:xcҭ��dA����a���@��       T   �  x���ێ�H ��������((�;EDQ�&��ID��O�f���
���|`I�PK0~Dq7b(N,��ޞ,�5K��-��˹�H��z�M<R݉$��硚���s�<�H��KTFo"�Y���`�{��]lS�[���%��������$\N��9�ha�:���9e�VDU��ޙ�޹�(ɔ�ި��C��vQ%e�/K�^�ap,s��a�RbQ�!��LAr
�jnX�^]q���Ԅ��x���_ ����J2�2�fX�@����-Ǉ�!��g;<�#���^���G�X�c1����ƿuz�!�7�_���9߬2�}}u�I��~�����>Yٶe�y�ܹT��r��[��[ox��cc��ؒ���̞�ZT�0�͖H��"?�[G�?���iD�\�&�����~\	_B\c��/�5��d-���(]��l�=�������qc3�R�������_!�	D�2D3(��D��K����u< �Cۅ͔�1����p��}����k"����&Ֆ��l��S�Zɰ+m;��_"�	�2/�x� ��D����2����,���VB�Ȼ�'^d�NN+��5vtk�P�i�K_���4\SO�EV
OC8y��H� ���������.AQ�m� ���QR4��(��~"��8�<�;t�/���,�XE'�z�+g=�tN$-
�Lm��J��'B�'_>2&3*BL�7ѿ�����6Y�I      U   |  x��TKr�@]7��	R�cK�*�Pf�Mg4��j�q�fH�.G��H�\,-��$�1K������ua���ܙ�+������x�\�*{�A�a�J� ��*8�2�	>�2�w[T�ɽ�� =�f�d�kLw(]���`i��3�gӥ�w ���u�������-߈!̼��k�U�kaŎT��r�����h��R�
|���EŒr���L	�h��8����ᵰ��i�9WXf���d���#HQ��$GW��I�(!�}�1�d������o<tVo5�{�e��ݛ�ԓ{Bv��2���v!���[�u�ʦ����֐cZ0���h%HW������͗o�(�]�;�I�S�=�/Kg^��h�Z�|#������7]��'�U#w�g��X�Q��핅�d�h'ka�;.dve$6���*M׋�[���ˏJ�?^�&��sK~5�)yN�`\1�Gc��1�9]N '��Z�$���"I�A�ҙ��׆w!VJ��9Vk� ���$ng@���(��&p����.�IA���Cr��U\���2V�?�h�}�6�ӥ���uQ��1�U�I�I�;��r���B�Eİq��|u�����I���h�]dõ��9�&׷/�N��u�t      W      x������ � �      Y   �  x�m�Qr-!D��Ťu/o��x����J���0ʑ�GK�����嫔'Ķ��H��oq�G!Z�C?����Y$�Z����tF"@�Q�2���~.�dr�%�-U��-��m�.�r3{��b� `�%�R�d�Ԥ�%a�vIaqkض�ZH%M���3ֹ)>'Nd��X��ĉ�_r%�Zu�j�7P�7���T��ͤU�f�"z3���[þ?�CV}M�l�@�à��`�����nu`?�^��̶�5˫�^2�r�
�o3Yc�zt�s@�l��:W����~���agӶ��������/d���p��%��]�~k.�n-��=?�愣�@=��('Pí�'
� �Q�H�rc4L�n(���T0U��`�vc�T�Ƃ�Z��M&�	d���UmP-�tc۪ͭ�:�4���>��l�����*tˈD��m�X�T�/m��� �JWEc�6��Uv4?���p�O�� .�dK�H8d �h�X���ugvo�N�te��-��9����_�d8P\�0���e���:�p�����K[0��Ǜ.|��W'^^�w�Q�z��]6�4\6�֊�.~kC�"�y�9�|�l�Vq�&�-�V�F����u�Xf�lL.P��zl����4�fʬ�9��݅ǦR^��9	�Id���T�N�l�#�I6|�Z:=6�M-�qN���g�7�d�[Q�]�5�e�S7gb9ps����xy+���h,�C��)�rfc! ,�m�h�CB8�1�ZNהh�f�%�}q{����j���4ڭ��:�'�S��Zb�s��<!��V���y��^���4_]OD�"_o�OɭGȧ�	ĥ�z��ˌ�%�j=A~b�� �!"����!f=>>EHo���aR�aPu�ar�_0xä����H����Ǚ��@h�clZX�Ȅ��V��U#W�jf��06���4�/�k���`FD|�#9������A��V���U�(�6�:�U������ྗ��<����ڊɿ/��z�A      [   
  x��Y�n۸^�O�e4E�ܻ�8n.�n��-0@7�D�l)RCJn��p��"�,�(����d�d���_Z's0i���:�����O�n7����ƅ���auy�c1e}c�p�<�>�_
���b"4í8sE&�X���$g��3�D�a9>y*���]�X#u\��J��͝aoe�8��2k"�L����+܏vw� �!9:��:7����qy���L�����`\a�����"�F�لe"���g��P[I�]��n�[^}�����7+8�ܚ�(�s��Sq�S�������F�t ����3��+��L��Ǻ奅��e��2io�5T�sP�s�8ˀ���"2��I�T��� _�Y`yf\��ɶq
{D�	�iPxQ^)�����։gP�db�hCz�+�<��&�=�r��`���z`*����v��HE�c�_ha��&� ����d̝G�6:REy����t�^H;c���X�/�Z����Pr�r�ri�ʛ���r ��5��R����ds�2Z�����+���Cࠎ��.��
8gc����.."�D��i@4�J�����Ϝ���q��"}�����cS|��K]`GBL��(���*�zoX2��� �<��9�Qs4+�]n#O�0ш��mf��U��۬��P2�2ױa�FO�K�wE,�G��@��љ��W�1��������d�G�;�0���:
q`��);��Tx�Bn�	�Z�[���⪼Ķm��k��<Y��=\��V��;9��@�H �=l�q �R2��؄k�>ǆ������#�s�.�Q��eWQ��)m����-8ǮY��Aך��W�h��N�ȁ�\�Qn�HB�߂�T!� /*������ޏ�9�U����;��͚e8������yəL�|q�U���S^#�B,Si���;�]�ú/F�F2��s_����F�s����ߟ��H`�9,K�vf�,ǣ6
a�y?�IX'E�F0L%%�����e��[�~a;���ő}���6Ή;���Z�ˊ�+�q�L� W�w/i�I���;*��⅀a�P�|b,ob�xeP1�<S��h8<R�ciyETW�n�Iw��<Y���HnT�.Ll%e|Pe-M)���yy=e�DbE.�i�5��ڊ�=��|db�/�I���ya�N��J�����a��t�Ϋ����'b��M�Uk����P���؍z�����wA���4m��J&T}¦\*|D�P,��fz���@/vy�P�����=*���H˪�|��.[�tWl�7�Ul^��%#8�������E�/ɭ{���^� �Y�>�*�y�i��̴�5��	�n�2�BM�ѽj�z*yL/]��&��q&"PZ�͇�nk�� ���A��}>�}I�KL�n�	U-/��:���Z~�{J<H9���/L'�n)�To�Є���Z�;�Ͽ�����ħHΐC��8/C�C*�L#��@�X駎@�����c�򯐴�7�%Ƞ�TJ_.|����~���hc�}���a
�`#�>����
U��JP�O�|�t>����R�i�TR�=��sל&��T,��¡�\!�&��+��$�3�OW��l(�R�����q!����>�U	MNΌi��TD��11F�ǧ��Jw� 5P��{�Qy{�"��O�x���^�9H�U���&�ڷ#Wk|�"�tL�h������b-+W�(-�	f M���~�(ώ�qn�3��R���/�òc[���)5�A�(EQ�5Y�4�	��kj�C�ͦSB'�@�<��:��(���st�y�KE�W"%H>P���p�En墼!5/Q�gl?

/<�.����<d�$U����[+���~f�}4 T�p�ul6��U]j������9B�VN��|�A�Bg^l���#�S��ʹ�<�P�~FC�/����64L������MM�N�`��َ���P��wbÍ��WV�-�l��N��P��|��R旮hi�y/d�U���F��NTjƾ�@bvl@a��]!�.w@�#9K9��T�r��w�'M�,>KЗ~_����+�XiH(T�
ʀg�� ?0�0�|A�7��U���� .$}t�������R^���AU}0;���o��p"uL�»�?��҉ _*=��m,��Z:�@�D.���A���b1�S��g]v���Ɋ�=�+ه�s�b�낆���3�7�F�Ϳ��n�� �s$?t��&�.:[�>��z`���L�'�[tͻ	|��yt�w�;�xoS4��@�jL����H!-&�I�R���=<:���B��ۖ��p��ʡ���B"(i�;=�"�L�}N��ᅟg�#K' 4s*�dn@�Ꭼ��Yq�õu�����r\����nfxT� ��>J�����lmn֙�+U>:��g��6	��$a�!v���@�4��ш6���ֿ���0���bB�?Qi����D�c#Ô��?c_�	K��X̥�j�fF-�˖�9��q1M�K:+�BݏM���� : x)�@*n�ܳEw�n{��v?P♣��٣G���+�T      ]      x������ � �      _   �   x���K�!D��a�/w���cP���Eo2(�W	H��#1��)�'�ј��̯��d��� MH�)8�d��E��ށ�����)�PТ(� ��#چ��n�L �8/�y�X��m@��%<�O������-��#qE:�n��r�����I.�kުJ�&I!��p3�f�P�Я��F��j�zua~|'�{ ~�q=�5������6��'=��RL      a   9  x�mS��� |�b2�F��뿎#aA����.�`-�j-�f2�)<zM}MK�Rx�W;�����w����:�ވ?x-���:�i���ET��W�޺�U)��O�[��'n��ŝ�$��G�C,$��DA<�D/��*��d�<~=�(�_#��|n��JH��,���1?N���'�3��h��!Jj��Ԕ�c5��C�U��K�̬�5 �!��I����u�bl!�ce'��d����r."�"|ZԄ<i� z+�&b��A�Ei�ΰ��.��vBW�d�g`ٚ�|�7��cE-`ۀ��s_��E��      c   `   x�����0�w<L�)$�K���IG��B��?p����i''�N4��Gϸ��O�N6��+��(,
�H�-,�%��X(���J[���H����N ��m�      e   p   x���� !�޸Ąp���ױ��|,��G$�D�(��v���0���o���rj{�5J���5H�J�a�iX�eX�mX���%�G�$���)� '5�D�DV&9�h"'-�
�Ջ��      g      x������ � �      i      x������ � �      k      x������ � �      m   .  x�m�M�7��5����H�/�^z�]6�00�`&��|_������Z���b�����S�p|�p�[��=�*��ĩDU��y��'���MHS�ت�M��(�oV�RU�	u
���6���8���9c�ҞI��bߑ$U��mR%��x_D��"V��F��a��I� ���8H� b2c���J�X��B��x���I𼘈{,a�,�s�
i�b��W/�h|�b���W�J��d;��rP$�,��9��w�R1���B�C1a�dX)Cb�z,*��rq5VDλ�b^l�(���՗�器'�an�Ҟ`F�#�/�̆�{�K39�	~�˪���G6[�!	�4�8����	�x�S�P$�7���Xqϋ��_V�=Ð������S�3R6�T�32fӟ4DdܻC>�+3�<S���/A��g��bJ"�*�Jmg�K�A��ȗɼ!bR�*5��KQ���ȗ�����T��_`E��
+L;�+�0��_��x�0#�{]f��x��*B���v�^��W�ၯ��)�-�������M�p8�ֺJ��Q�A�ĨN��|F�3*��Z��B9�֓Jš�3�zF����%zU�����D����	O�p &�@+/�\)���&�2�<l�&²�;�(��0O���#�l��#B�݌/���yf�ي�T{��?
�u�ȭk�O��/Åj~� ��FX��$#��r9SN2h�e�5N�Qkj��q&�Ɵ^�8�LZC2Qj�8��f(U�e���ބ�
D�jb�n޺5#u�Դ@2��]�q�b�%��4�u�/�}�u�3ŏaM�X�� G�>��{���~�m�QrjCW���C���0+��}<ô���L�C�	k|���������y�s�mNW���� :>�ܿ��|��V�y�jU�:��ѓ��#����wkK�͋��Ry�x:�x��>[�Y ��U�4���������jthe?yQY\|[��N�_l�"�#
'���O��'	�ؑY�Ii���%dX}g�~�k�'Ί��/�9g8�k�w�6�
�Q���qdޞ��~�%�      o      x������ � �      q   �   x�}�ٍ!C�ǹ���Nb#���j�p}��j=a�2ŗ�����)?����k��Wfu>�y�cB��a�e`DړW�:�w$�.'�cF����*�W��j�WEۣ�Jޑ���7�@��@�%g	���ú:��=����X�O2���ɱ��3d�����c�i�|�,�e[���Цj{JU���9�W�tD�X#p��`��E:�R��1�uu/ϱ��.{�0@icԣK�_"� >�ϐ�      s   �   x�m�Mn!���]�b\�'x�w��_͌Z���
�J�� M�j?q�o��}T��V\VQS�,^K-��U�����p���QD�0�C�|����F1��������o��禺OW7VPgט�-0Gc�^Ԍ�p�M ���I��_������!8oxx+�kB���X~�5��c�k�حi@�'����A����?��n���v�
�?�f�uh=�x}�,Ql�      u   �   x�U��q�0���0\ �.����i�^.�c�$�_��H�sS���x���y�6vk;"�
��₡aFl���[���K2J��������-d�Z�MU%�6���*��S�u��p��������O��P����l9�[��+^�tQ�2���ҟ��UpF����Q�#�� rR�Q�I&_*"�WX;�      w   �   x�UQ[��0�6�A�#w���cI33m���2�Q�Pŀ��;0x�ɢ0�/�K1a�f��H8�/|�$��/�$yN� l�U%�a��vǾ��&o)��آ�9A�T�T{=W �=�T7�51T�'�����(��g�"������?�pd�������NG.�,Ĩ����ή��=]n�K��v�����-�9z�9��t��~ŏ�ud:I���x	�|�d�ą��H�c"��Q�      y      x������ � �      {      x������ � �     