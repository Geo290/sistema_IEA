PGDMP                          {            peses    15.3    15.3 (              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    31888    peses    DATABASE     y   CREATE DATABASE peses WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE peses;
                postgres    false            �            1259    31889    admin_module_universidades    TABLE     �   CREATE TABLE public.admin_module_universidades (
    "IDUniversidad" integer NOT NULL,
    "Abreviacion" character varying(10) NOT NULL,
    "Nombre" character varying(100),
    "Plan_estudios" character varying(15)
);
 .   DROP TABLE public.admin_module_universidades;
       public         heap    postgres    false            �            1259    31892 ,   admin_module_universidades_IDUniversidad_seq    SEQUENCE     �   CREATE SEQUENCE public."admin_module_universidades_IDUniversidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."admin_module_universidades_IDUniversidad_seq";
       public          postgres    false    214            �           0    0 ,   admin_module_universidades_IDUniversidad_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."admin_module_universidades_IDUniversidad_seq" OWNED BY public.admin_module_universidades."IDUniversidad";
          public          postgres    false    215            �            1259    31893    admin_module_usuarios    TABLE     >  CREATE TABLE public.admin_module_usuarios (
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
       public         heap    postgres    false            �            1259    31898 #   admin_module_usuarios_IDUsuario_seq    SEQUENCE     �   CREATE SEQUENCE public."admin_module_usuarios_IDUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."admin_module_usuarios_IDUsuario_seq";
       public          postgres    false    216            �           0    0 #   admin_module_usuarios_IDUsuario_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."admin_module_usuarios_IDUsuario_seq" OWNED BY public.admin_module_usuarios."IDUsuario";
          public          postgres    false    217            �            1259    31899    admin_module_usuarios_groups    TABLE     �   CREATE TABLE public.admin_module_usuarios_groups (
    id bigint NOT NULL,
    usuarios_id integer NOT NULL,
    group_id integer NOT NULL
);
 0   DROP TABLE public.admin_module_usuarios_groups;
       public         heap    postgres    false            �            1259    31902 #   admin_module_usuarios_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_module_usuarios_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_module_usuarios_groups_id_seq;
       public          postgres    false    218            �           0    0 #   admin_module_usuarios_groups_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_module_usuarios_groups_id_seq OWNED BY public.admin_module_usuarios_groups.id;
          public          postgres    false    219            �            1259    31903 &   admin_module_usuarios_user_permissions    TABLE     �   CREATE TABLE public.admin_module_usuarios_user_permissions (
    id bigint NOT NULL,
    usuarios_id integer NOT NULL,
    permission_id integer NOT NULL
);
 :   DROP TABLE public.admin_module_usuarios_user_permissions;
       public         heap    postgres    false            �            1259    31906 -   admin_module_usuarios_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_module_usuarios_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.admin_module_usuarios_user_permissions_id_seq;
       public          postgres    false    220            �           0    0 -   admin_module_usuarios_user_permissions_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.admin_module_usuarios_user_permissions_id_seq OWNED BY public.admin_module_usuarios_user_permissions.id;
          public          postgres    false    221            �            1259    31907 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    31910    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    222            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    223            �            1259    31911    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    31914    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    224            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    225            �            1259    31915    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    31918    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    226            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    227            �            1259    31919    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    31922    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    31928    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    229            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    230            �            1259    31929    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    31932    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    231            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    232            �            1259    31933    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    31938    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    233            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    234            �            1259    31939    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    31944    utna_module_utna_carreras    TABLE     7  CREATE TABLE public.utna_module_utna_carreras (
    "IDCarrera" integer NOT NULL,
    "Nombre" character varying(100) NOT NULL,
    "Abreviacion" character varying(10) NOT NULL,
    "Modalidad" character varying(15) NOT NULL,
    "Nivel" character varying(15) NOT NULL,
    "Universidad_id" integer NOT NULL
);
 -   DROP TABLE public.utna_module_utna_carreras;
       public         heap    postgres    false            �            1259    31947 '   utna_module_utna_carreras_IDCarrera_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_carreras_IDCarrera_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_carreras_IDCarrera_seq";
       public          postgres    false    236            �           0    0 '   utna_module_utna_carreras_IDCarrera_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_carreras_IDCarrera_seq" OWNED BY public.utna_module_utna_carreras."IDCarrera";
          public          postgres    false    237            �            1259    31948    utna_module_utna_eficiencia_ire    TABLE     ]  CREATE TABLE public.utna_module_utna_eficiencia_ire (
    "IDEIRE" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Indice_retencion" numeric(5,2) NOT NULL,
    "Indice_desercion" numeric(5,2) NOT NULL,
    "Indice_eficiencia_terminal" numeric(5,2) NOT NULL,
    "Indice_titulacion" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL
);
 3   DROP TABLE public.utna_module_utna_eficiencia_ire;
       public         heap    postgres    false            �            1259    31951 *   utna_module_utna_eficiencia_ire_IDEIRE_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_eficiencia_ire_IDEIRE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."utna_module_utna_eficiencia_ire_IDEIRE_seq";
       public          postgres    false    238            �           0    0 *   utna_module_utna_eficiencia_ire_IDEIRE_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."utna_module_utna_eficiencia_ire_IDEIRE_seq" OWNED BY public.utna_module_utna_eficiencia_ire."IDEIRE";
          public          postgres    false    239            �            1259    31952 "   utna_module_utna_indice_colocacion    TABLE       CREATE TABLE public.utna_module_utna_indice_colocacion (
    "IDIC" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Egresados" integer NOT NULL,
    "Colocados" integer NOT NULL,
    "Indice_colocacion" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL
);
 6   DROP TABLE public.utna_module_utna_indice_colocacion;
       public         heap    postgres    false            �            1259    31955 +   utna_module_utna_indice_colocacion_IDIC_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_indice_colocacion_IDIC_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_indice_colocacion_IDIC_seq";
       public          postgres    false    240            �           0    0 +   utna_module_utna_indice_colocacion_IDIC_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_indice_colocacion_IDIC_seq" OWNED BY public.utna_module_utna_indice_colocacion."IDIC";
          public          postgres    false    241            �            1259    31956    utna_module_utna_indice_ptc    TABLE     �  CREATE TABLE public.utna_module_utna_indice_ptc (
    "IDIPTC" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Nombre_profesor" character varying(100) NOT NULL,
    "Nombre_investigacion" character varying(250) NOT NULL,
    "Tipo_profesor" character varying(3) NOT NULL,
    "Estado_investigacion" character varying(10) NOT NULL,
    "Carrera_id" integer NOT NULL,
    "PE_Pertenecientes_id" integer NOT NULL,
    "Participación_CA" boolean,
    "Perfil_PRODEPT" boolean
);
 /   DROP TABLE public.utna_module_utna_indice_ptc;
       public         heap    postgres    false            �            1259    31959 &   utna_module_utna_indice_ptc_IDIPTC_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_indice_ptc_IDIPTC_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."utna_module_utna_indice_ptc_IDIPTC_seq";
       public          postgres    false    242            �           0    0 &   utna_module_utna_indice_ptc_IDIPTC_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."utna_module_utna_indice_ptc_IDIPTC_seq" OWNED BY public.utna_module_utna_indice_ptc."IDIPTC";
          public          postgres    false    243            �            1259    31960 !   utna_module_utna_indice_servicios    TABLE     
  CREATE TABLE public.utna_module_utna_indice_servicios (
    "IDIS" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Salud_externa" numeric(5,2) NOT NULL,
    "Bolsa_trabajo" numeric(5,2) NOT NULL,
    "Salud_interna" numeric(5,2) NOT NULL,
    "Asesoria_academica" numeric(5,2) NOT NULL,
    "Actividades_crecimiento" numeric(5,2) NOT NULL,
    "Tutoria" numeric(5,2) NOT NULL,
    "Orientacion" numeric(5,2) NOT NULL,
    "Espacio_expresion" numeric(5,2) NOT NULL,
    "Estimulos_desempeno" numeric(5,2) NOT NULL,
    "Seguridad" numeric(5,2) NOT NULL,
    "Instalaciones" numeric(5,2) NOT NULL,
    "Actividades_arte" numeric(5,2) NOT NULL,
    "Traslado" numeric(5,2) NOT NULL,
    "Fomento_salud" numeric(5,2) NOT NULL,
    "Alimentos" numeric(5,2) NOT NULL,
    "Indice_satisfaccion" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL,
    "Bibliteca" numeric(5,2) NOT NULL,
    "Conectivida" numeric(5,2) NOT NULL,
    "Laboratorio_computo" numeric(5,2) NOT NULL,
    "Laboratorio_practica" numeric(5,2) NOT NULL
);
 5   DROP TABLE public.utna_module_utna_indice_servicios;
       public         heap    postgres    false            �            1259    31963 *   utna_module_utna_indice_servicios_IDIS_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_indice_servicios_IDIS_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."utna_module_utna_indice_servicios_IDIS_seq";
       public          postgres    false    244            �           0    0 *   utna_module_utna_indice_servicios_IDIS_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."utna_module_utna_indice_servicios_IDIS_seq" OWNED BY public.utna_module_utna_indice_servicios."IDIS";
          public          postgres    false    245            �            1259    31964    utna_module_utna_iseg_l    TABLE     �  CREATE TABLE public.utna_module_utna_iseg_l (
    "IDISEGL" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Bolsa_trabajo" numeric(5,2) NOT NULL,
    "Op_estadia" numeric(5,2) NOT NULL,
    "Experiencia_practica" numeric(5,2) NOT NULL,
    "Laboratorios_talleres" numeric(5,2) NOT NULL,
    "Infraestructura" numeric(5,2) NOT NULL,
    "Dominio_prob_lab" numeric(5,2) NOT NULL,
    "Conocimiento_prof" numeric(5,2) NOT NULL,
    "Calificacion_MEB5" numeric(5,2) NOT NULL,
    "Op_preparacion" numeric(5,2) NOT NULL,
    "Indice_satisfaccion" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL,
    "Trabaja_lugar_estadia" numeric(5,2) NOT NULL
);
 +   DROP TABLE public.utna_module_utna_iseg_l;
       public         heap    postgres    false            �            1259    31967 #   utna_module_utna_iseg_l_IDISEGL_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_iseg_l_IDISEGL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."utna_module_utna_iseg_l_IDISEGL_seq";
       public          postgres    false    246            �           0    0 #   utna_module_utna_iseg_l_IDISEGL_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."utna_module_utna_iseg_l_IDISEGL_seq" OWNED BY public.utna_module_utna_iseg_l."IDISEGL";
          public          postgres    false    247            �            1259    31968    utna_module_utna_iseg_tsu    TABLE     �  CREATE TABLE public.utna_module_utna_iseg_tsu (
    "IDISEGTSU" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Bolsa_trabajo" numeric(5,2) NOT NULL,
    "Op_estadia" numeric(5,2) NOT NULL,
    "Experiencia_practica" numeric(5,2) NOT NULL,
    "Laboratorios_talleres" numeric(5,2) NOT NULL,
    "Infraestructura" numeric(5,2) NOT NULL,
    "Dominio_prob_lab" numeric(5,2) NOT NULL,
    "Conocimiento_prof" numeric(5,2) NOT NULL,
    "Calificacion_MEB5" numeric(5,2) NOT NULL,
    "Op_preparacion" numeric(5,2) NOT NULL,
    "Indice_satisfaccion" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL,
    "Trabaja_lugar_estadia" numeric(5,2) NOT NULL
);
 -   DROP TABLE public.utna_module_utna_iseg_tsu;
       public         heap    postgres    false            �            1259    31971 '   utna_module_utna_iseg_tsu_IDISEGTSU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_iseg_tsu_IDISEGTSU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_iseg_tsu_IDISEGTSU_seq";
       public          postgres    false    248            �           0    0 '   utna_module_utna_iseg_tsu_IDISEGTSU_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_iseg_tsu_IDISEGTSU_seq" OWNED BY public.utna_module_utna_iseg_tsu."IDISEGTSU";
          public          postgres    false    249            �            1259    31972    utna_module_utna_isem_l    TABLE       CREATE TABLE public.utna_module_utna_isem_l (
    "IDISEML" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Op_grado" numeric(5,2) NOT NULL,
    "Creatividad" numeric(5,2) NOT NULL,
    "Manejo_equipo" numeric(5,2) NOT NULL,
    "Solucion_prob" numeric(5,2) NOT NULL,
    "Op_trabajo" numeric(5,2) NOT NULL,
    "Capacidad" numeric(5,2) NOT NULL,
    "Cumple_req" numeric(5,2) NOT NULL,
    "Calificacion_trabajo" numeric(5,2) NOT NULL,
    "Indice_satisfaccion" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL
);
 +   DROP TABLE public.utna_module_utna_isem_l;
       public         heap    postgres    false            �            1259    31975 #   utna_module_utna_isem_l_IDISEML_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_isem_l_IDISEML_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."utna_module_utna_isem_l_IDISEML_seq";
       public          postgres    false    250            �           0    0 #   utna_module_utna_isem_l_IDISEML_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."utna_module_utna_isem_l_IDISEML_seq" OWNED BY public.utna_module_utna_isem_l."IDISEML";
          public          postgres    false    251            �            1259    31976    utna_module_utna_isem_tsu    TABLE       CREATE TABLE public.utna_module_utna_isem_tsu (
    "IDISEMTSU" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Op_grado" numeric(5,2) NOT NULL,
    "Creatividad" numeric(5,2) NOT NULL,
    "Manejo_equipo" numeric(5,2) NOT NULL,
    "Solucion_prob" numeric(5,2) NOT NULL,
    "Op_trabajo" numeric(5,2) NOT NULL,
    "Capacidad" numeric(5,2) NOT NULL,
    "Cumple_req" numeric(5,2) NOT NULL,
    "Calificacion_trabajo" numeric(5,2) NOT NULL,
    "Indice_satisfaccion" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL
);
 -   DROP TABLE public.utna_module_utna_isem_tsu;
       public         heap    postgres    false            �            1259    31979 '   utna_module_utna_isem_tsu_IDISEMTSU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_isem_tsu_IDISEMTSU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_isem_tsu_IDISEMTSU_seq";
       public          postgres    false    252            �           0    0 '   utna_module_utna_isem_tsu_IDISEMTSU_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_isem_tsu_IDISEMTSU_seq" OWNED BY public.utna_module_utna_isem_tsu."IDISEMTSU";
          public          postgres    false    253            �            1259    31980 "   utna_module_utna_tasa_acreditacion    TABLE     G  CREATE TABLE public.utna_module_utna_tasa_acreditacion (
    "IDTA" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Acreditacion" boolean NOT NULL,
    "Tipo_acreditacion" character varying(50) NOT NULL,
    "Carrera_id" integer NOT NULL,
    "Fecha_acreditacion" date NOT NULL,
    "Fecha_vencimiento" date NOT NULL
);
 6   DROP TABLE public.utna_module_utna_tasa_acreditacion;
       public         heap    postgres    false            �            1259    31983 +   utna_module_utna_tasa_acreditacion_IDTA_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_acreditacion_IDTA_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_tasa_acreditacion_IDTA_seq";
       public          postgres    false    254            �           0    0 +   utna_module_utna_tasa_acreditacion_IDTA_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_tasa_acreditacion_IDTA_seq" OWNED BY public.utna_module_utna_tasa_acreditacion."IDTA";
          public          postgres    false    255                        1259    31984    utna_module_utna_tasa_cobertura    TABLE     �   CREATE TABLE public.utna_module_utna_tasa_cobertura (
    "IDTC" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Incremento_matricula" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL
);
 3   DROP TABLE public.utna_module_utna_tasa_cobertura;
       public         heap    postgres    false                       1259    31987 (   utna_module_utna_tasa_cobertura_IDTC_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_cobertura_IDTC_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."utna_module_utna_tasa_cobertura_IDTC_seq";
       public          postgres    false    256            �           0    0 (   utna_module_utna_tasa_cobertura_IDTC_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."utna_module_utna_tasa_cobertura_IDTC_seq" OWNED BY public.utna_module_utna_tasa_cobertura."IDTC";
          public          postgres    false    257                       1259    31988    utna_module_utna_tasa_docentes    TABLE     =  CREATE TABLE public.utna_module_utna_tasa_docentes (
    "IDTD" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "No_docentes" integer NOT NULL,
    "Doc_perfil_adecuado" integer NOT NULL,
    "Tasa_docentes" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL,
    "Exp_Lab_pertinente" integer NOT NULL
);
 2   DROP TABLE public.utna_module_utna_tasa_docentes;
       public         heap    postgres    false                       1259    31991 '   utna_module_utna_tasa_docentes_IDTD_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_docentes_IDTD_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_tasa_docentes_IDTD_seq";
       public          postgres    false    258            �           0    0 '   utna_module_utna_tasa_docentes_IDTD_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_tasa_docentes_IDTD_seq" OWNED BY public.utna_module_utna_tasa_docentes."IDTD";
          public          postgres    false    259                       1259    31992 !   utna_module_utna_tasa_mov_alumnos    TABLE     \  CREATE TABLE public.utna_module_utna_tasa_mov_alumnos (
    "IDTMA" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Matricula" integer NOT NULL,
    "No_alum_viajaron" integer NOT NULL,
    "Paises" character varying(100),
    "Tasa_movilidad" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL,
    "Estado" character varying(100)
);
 5   DROP TABLE public.utna_module_utna_tasa_mov_alumnos;
       public         heap    postgres    false                       1259    31995 +   utna_module_utna_tasa_mov_alumnos_IDTMA_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq";
       public          postgres    false    260            �           0    0 +   utna_module_utna_tasa_mov_alumnos_IDTMA_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq" OWNED BY public.utna_module_utna_tasa_mov_alumnos."IDTMA";
          public          postgres    false    261                       1259    31996 "   utna_module_utna_tasa_mov_docentes    TABLE     \  CREATE TABLE public.utna_module_utna_tasa_mov_docentes (
    "IDTMD" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Matricula" integer NOT NULL,
    "No_doc_viajaron" integer NOT NULL,
    "Paises" character varying(100),
    "Tasa_movilidad" numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL,
    "Estado" character varying(100)
);
 6   DROP TABLE public.utna_module_utna_tasa_mov_docentes;
       public         heap    postgres    false                       1259    31999 ,   utna_module_utna_tasa_mov_docentes_IDTMD_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_mov_docentes_IDTMD_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."utna_module_utna_tasa_mov_docentes_IDTMD_seq";
       public          postgres    false    262            �           0    0 ,   utna_module_utna_tasa_mov_docentes_IDTMD_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_mov_docentes_IDTMD_seq" OWNED BY public.utna_module_utna_tasa_mov_docentes."IDTMD";
          public          postgres    false    263                       1259    32000    utna_module_utna_tasa_pe_asat    TABLE     �   CREATE TABLE public.utna_module_utna_tasa_pe_asat (
    "IDTPEASAT" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Realizacion" date,
    "Vencimiento" date,
    "PE_id" integer NOT NULL
);
 1   DROP TABLE public.utna_module_utna_tasa_pe_asat;
       public         heap    postgres    false            	           1259    32003 +   utna_module_utna_tasa_pe_asat_IDTPEASAT_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq";
       public          postgres    false    264            �           0    0 +   utna_module_utna_tasa_pe_asat_IDTPEASAT_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq" OWNED BY public.utna_module_utna_tasa_pe_asat."IDTPEASAT";
          public          postgres    false    265            
           1259    32004 $   utna_module_utna_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utna_module_utna_tasa_pe_pertinencia (
    "IDTPEP" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Presenta" boolean NOT NULL,
    "Fecha_elaboracion" date,
    "PE_id" integer NOT NULL
);
 8   DROP TABLE public.utna_module_utna_tasa_pe_pertinencia;
       public         heap    postgres    false                       1259    32007 /   utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq";
       public          postgres    false    266            �           0    0 /   utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq" OWNED BY public.utna_module_utna_tasa_pe_pertinencia."IDTPEP";
          public          postgres    false    267                       1259    32008 "   utna_module_utna_tasa_puntaje_egel    TABLE     �  CREATE TABLE public.utna_module_utna_tasa_puntaje_egel (
    "IDTPEGEL" integer NOT NULL,
    "Periodo" integer NOT NULL,
    p_700_800 integer NOT NULL,
    p_801_900 integer NOT NULL,
    p_901_1000 integer NOT NULL,
    p_1001_1200 integer NOT NULL,
    p_1201_1300 integer NOT NULL,
    puntaje_satisfactorio numeric(5,2) NOT NULL,
    puntaje_sobresaliente numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL
);
 6   DROP TABLE public.utna_module_utna_tasa_puntaje_egel;
       public         heap    postgres    false                       1259    32011 /   utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq";
       public          postgres    false    268            �           0    0 /   utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq" OWNED BY public.utna_module_utna_tasa_puntaje_egel."IDTPEGEL";
          public          postgres    false    269                       1259    32012 $   utna_module_utna_tasa_puntaje_egetsu    TABLE     �  CREATE TABLE public.utna_module_utna_tasa_puntaje_egetsu (
    "IDTPEGESTU" integer NOT NULL,
    "Periodo" integer NOT NULL,
    p_700_800 integer NOT NULL,
    p_801_900 integer NOT NULL,
    p_901_1000 integer NOT NULL,
    p_1001_1200 integer NOT NULL,
    p_1201_1300 integer NOT NULL,
    puntaje_satisfactorio numeric(5,2) NOT NULL,
    puntaje_sobresaliente numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL
);
 8   DROP TABLE public.utna_module_utna_tasa_puntaje_egetsu;
       public         heap    postgres    false                       1259    32015 3   utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq";
       public          postgres    false    270            �           0    0 3   utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq" OWNED BY public.utna_module_utna_tasa_puntaje_egetsu."IDTPEGESTU";
          public          postgres    false    271                       1259    32016 !   utna_module_utna_tasa_puntaje_exl    TABLE     �  CREATE TABLE public.utna_module_utna_tasa_puntaje_exl (
    "IDTPEXL" integer NOT NULL,
    "Periodo" integer NOT NULL,
    p_700_800 integer NOT NULL,
    p_801_900 integer NOT NULL,
    p_901_1000 integer NOT NULL,
    p_1001_1200 integer NOT NULL,
    p_1201_1300 integer NOT NULL,
    puntaje_satisfactorio numeric(5,2) NOT NULL,
    puntaje_sobresaliente numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL
);
 5   DROP TABLE public.utna_module_utna_tasa_puntaje_exl;
       public         heap    postgres    false                       1259    32019 -   utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq";
       public          postgres    false    272            �           0    0 -   utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq" OWNED BY public.utna_module_utna_tasa_puntaje_exl."IDTPEXL";
          public          postgres    false    273                       1259    32020 #   utna_module_utna_tasa_puntaje_extsu    TABLE     �  CREATE TABLE public.utna_module_utna_tasa_puntaje_extsu (
    "IDTPEXTSU" integer NOT NULL,
    "Periodo" integer NOT NULL,
    p_700_800 integer NOT NULL,
    p_801_900 integer NOT NULL,
    p_901_1000 integer NOT NULL,
    p_1001_1200 integer NOT NULL,
    p_1201_1300 integer NOT NULL,
    puntaje_satisfactorio numeric(5,2) NOT NULL,
    puntaje_sobresaliente numeric(5,2) NOT NULL,
    "Carrera_id" integer NOT NULL
);
 7   DROP TABLE public.utna_module_utna_tasa_puntaje_extsu;
       public         heap    postgres    false                       1259    32023 1   utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq";
       public          postgres    false    274            �           0    0 1   utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq" OWNED BY public.utna_module_utna_tasa_puntaje_extsu."IDTPEXTSU";
          public          postgres    false    275            �           2604    32024 (   admin_module_universidades IDUniversidad    DEFAULT     �   ALTER TABLE ONLY public.admin_module_universidades ALTER COLUMN "IDUniversidad" SET DEFAULT nextval('public."admin_module_universidades_IDUniversidad_seq"'::regclass);
 Y   ALTER TABLE public.admin_module_universidades ALTER COLUMN "IDUniversidad" DROP DEFAULT;
       public          postgres    false    215    214            �           2604    32025    admin_module_usuarios IDUsuario    DEFAULT     �   ALTER TABLE ONLY public.admin_module_usuarios ALTER COLUMN "IDUsuario" SET DEFAULT nextval('public."admin_module_usuarios_IDUsuario_seq"'::regclass);
 P   ALTER TABLE public.admin_module_usuarios ALTER COLUMN "IDUsuario" DROP DEFAULT;
       public          postgres    false    217    216                        2604    32026    admin_module_usuarios_groups id    DEFAULT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups ALTER COLUMN id SET DEFAULT nextval('public.admin_module_usuarios_groups_id_seq'::regclass);
 N   ALTER TABLE public.admin_module_usuarios_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218                       2604    32027 )   admin_module_usuarios_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_module_usuarios_user_permissions_id_seq'::regclass);
 X   ALTER TABLE public.admin_module_usuarios_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220                       2604    32028    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222                       2604    32029    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224                       2604    32030    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226                       2604    32031    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229                       2604    32032    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231                       2604    32033    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233                       2604    32034 #   utna_module_utna_carreras IDCarrera    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_carreras ALTER COLUMN "IDCarrera" SET DEFAULT nextval('public."utna_module_utna_carreras_IDCarrera_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_carreras ALTER COLUMN "IDCarrera" DROP DEFAULT;
       public          postgres    false    237    236            	           2604    32035 &   utna_module_utna_eficiencia_ire IDEIRE    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire ALTER COLUMN "IDEIRE" SET DEFAULT nextval('public."utna_module_utna_eficiencia_ire_IDEIRE_seq"'::regclass);
 W   ALTER TABLE public.utna_module_utna_eficiencia_ire ALTER COLUMN "IDEIRE" DROP DEFAULT;
       public          postgres    false    239    238            
           2604    32036 '   utna_module_utna_indice_colocacion IDIC    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion ALTER COLUMN "IDIC" SET DEFAULT nextval('public."utna_module_utna_indice_colocacion_IDIC_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_indice_colocacion ALTER COLUMN "IDIC" DROP DEFAULT;
       public          postgres    false    241    240                       2604    32037 "   utna_module_utna_indice_ptc IDIPTC    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc ALTER COLUMN "IDIPTC" SET DEFAULT nextval('public."utna_module_utna_indice_ptc_IDIPTC_seq"'::regclass);
 S   ALTER TABLE public.utna_module_utna_indice_ptc ALTER COLUMN "IDIPTC" DROP DEFAULT;
       public          postgres    false    243    242                       2604    32038 &   utna_module_utna_indice_servicios IDIS    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios ALTER COLUMN "IDIS" SET DEFAULT nextval('public."utna_module_utna_indice_servicios_IDIS_seq"'::regclass);
 W   ALTER TABLE public.utna_module_utna_indice_servicios ALTER COLUMN "IDIS" DROP DEFAULT;
       public          postgres    false    245    244                       2604    32039    utna_module_utna_iseg_l IDISEGL    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_l ALTER COLUMN "IDISEGL" SET DEFAULT nextval('public."utna_module_utna_iseg_l_IDISEGL_seq"'::regclass);
 P   ALTER TABLE public.utna_module_utna_iseg_l ALTER COLUMN "IDISEGL" DROP DEFAULT;
       public          postgres    false    247    246                       2604    32040 #   utna_module_utna_iseg_tsu IDISEGTSU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu ALTER COLUMN "IDISEGTSU" SET DEFAULT nextval('public."utna_module_utna_iseg_tsu_IDISEGTSU_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_iseg_tsu ALTER COLUMN "IDISEGTSU" DROP DEFAULT;
       public          postgres    false    249    248                       2604    32041    utna_module_utna_isem_l IDISEML    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_isem_l ALTER COLUMN "IDISEML" SET DEFAULT nextval('public."utna_module_utna_isem_l_IDISEML_seq"'::regclass);
 P   ALTER TABLE public.utna_module_utna_isem_l ALTER COLUMN "IDISEML" DROP DEFAULT;
       public          postgres    false    251    250                       2604    32042 #   utna_module_utna_isem_tsu IDISEMTSU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_isem_tsu ALTER COLUMN "IDISEMTSU" SET DEFAULT nextval('public."utna_module_utna_isem_tsu_IDISEMTSU_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_isem_tsu ALTER COLUMN "IDISEMTSU" DROP DEFAULT;
       public          postgres    false    253    252                       2604    32043 '   utna_module_utna_tasa_acreditacion IDTA    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion ALTER COLUMN "IDTA" SET DEFAULT nextval('public."utna_module_utna_tasa_acreditacion_IDTA_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_tasa_acreditacion ALTER COLUMN "IDTA" DROP DEFAULT;
       public          postgres    false    255    254                       2604    32044 $   utna_module_utna_tasa_cobertura IDTC    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura ALTER COLUMN "IDTC" SET DEFAULT nextval('public."utna_module_utna_tasa_cobertura_IDTC_seq"'::regclass);
 U   ALTER TABLE public.utna_module_utna_tasa_cobertura ALTER COLUMN "IDTC" DROP DEFAULT;
       public          postgres    false    257    256                       2604    32045 #   utna_module_utna_tasa_docentes IDTD    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes ALTER COLUMN "IDTD" SET DEFAULT nextval('public."utna_module_utna_tasa_docentes_IDTD_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_tasa_docentes ALTER COLUMN "IDTD" DROP DEFAULT;
       public          postgres    false    259    258                       2604    32046 '   utna_module_utna_tasa_mov_alumnos IDTMA    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos ALTER COLUMN "IDTMA" SET DEFAULT nextval('public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_tasa_mov_alumnos ALTER COLUMN "IDTMA" DROP DEFAULT;
       public          postgres    false    261    260                       2604    32047 (   utna_module_utna_tasa_mov_docentes IDTMD    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes ALTER COLUMN "IDTMD" SET DEFAULT nextval('public."utna_module_utna_tasa_mov_docentes_IDTMD_seq"'::regclass);
 Y   ALTER TABLE public.utna_module_utna_tasa_mov_docentes ALTER COLUMN "IDTMD" DROP DEFAULT;
       public          postgres    false    263    262                       2604    32048 '   utna_module_utna_tasa_pe_asat IDTPEASAT    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat ALTER COLUMN "IDTPEASAT" SET DEFAULT nextval('public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_tasa_pe_asat ALTER COLUMN "IDTPEASAT" DROP DEFAULT;
       public          postgres    false    265    264                       2604    32049 +   utna_module_utna_tasa_pe_pertinencia IDTPEP    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia ALTER COLUMN "IDTPEP" SET DEFAULT nextval('public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq"'::regclass);
 \   ALTER TABLE public.utna_module_utna_tasa_pe_pertinencia ALTER COLUMN "IDTPEP" DROP DEFAULT;
       public          postgres    false    267    266                       2604    32050 +   utna_module_utna_tasa_puntaje_egel IDTPEGEL    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel ALTER COLUMN "IDTPEGEL" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq"'::regclass);
 \   ALTER TABLE public.utna_module_utna_tasa_puntaje_egel ALTER COLUMN "IDTPEGEL" DROP DEFAULT;
       public          postgres    false    269    268                       2604    32051 /   utna_module_utna_tasa_puntaje_egetsu IDTPEGESTU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu ALTER COLUMN "IDTPEGESTU" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq"'::regclass);
 `   ALTER TABLE public.utna_module_utna_tasa_puntaje_egetsu ALTER COLUMN "IDTPEGESTU" DROP DEFAULT;
       public          postgres    false    271    270                       2604    32052 )   utna_module_utna_tasa_puntaje_exl IDTPEXL    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl ALTER COLUMN "IDTPEXL" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq"'::regclass);
 Z   ALTER TABLE public.utna_module_utna_tasa_puntaje_exl ALTER COLUMN "IDTPEXL" DROP DEFAULT;
       public          postgres    false    273    272                       2604    32053 -   utna_module_utna_tasa_puntaje_extsu IDTPEXTSU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu ALTER COLUMN "IDTPEXTSU" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq"'::regclass);
 ^   ALTER TABLE public.utna_module_utna_tasa_puntaje_extsu ALTER COLUMN "IDTPEXTSU" DROP DEFAULT;
       public          postgres    false    275    274            ?          0    31889    admin_module_universidades 
   TABLE DATA           o   COPY public.admin_module_universidades ("IDUniversidad", "Abreviacion", "Nombre", "Plan_estudios") FROM stdin;
    public          postgres    false    214   ~�      A          0    31893    admin_module_usuarios 
   TABLE DATA           �   COPY public.admin_module_usuarios (password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, "IDUsuario", "Cargo", "Universidad_id") FROM stdin;
    public          postgres    false    216   ��      C          0    31899    admin_module_usuarios_groups 
   TABLE DATA           Q   COPY public.admin_module_usuarios_groups (id, usuarios_id, group_id) FROM stdin;
    public          postgres    false    218   ��      E          0    31903 &   admin_module_usuarios_user_permissions 
   TABLE DATA           `   COPY public.admin_module_usuarios_user_permissions (id, usuarios_id, permission_id) FROM stdin;
    public          postgres    false    220   ��      G          0    31907 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    222   ��      I          0    31911    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    224   ��      K          0    31915    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    226   �      M          0    31919    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    228   ��      N          0    31922    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    229   ��      P          0    31929    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    231   ��      R          0    31933    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    233   ��      T          0    31939    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    235   ��      U          0    31944    utna_module_utna_carreras 
   TABLE DATA           �   COPY public.utna_module_utna_carreras ("IDCarrera", "Nombre", "Abreviacion", "Modalidad", "Nivel", "Universidad_id") FROM stdin;
    public          postgres    false    236   ��      W          0    31948    utna_module_utna_eficiencia_ire 
   TABLE DATA           �   COPY public.utna_module_utna_eficiencia_ire ("IDEIRE", "Periodo", "Indice_retencion", "Indice_desercion", "Indice_eficiencia_terminal", "Indice_titulacion", "Carrera_id") FROM stdin;
    public          postgres    false    238   Z�      Y          0    31952 "   utna_module_utna_indice_colocacion 
   TABLE DATA           �   COPY public.utna_module_utna_indice_colocacion ("IDIC", "Periodo", "Egresados", "Colocados", "Indice_colocacion", "Carrera_id") FROM stdin;
    public          postgres    false    240   w�      [          0    31956    utna_module_utna_indice_ptc 
   TABLE DATA           �   COPY public.utna_module_utna_indice_ptc ("IDIPTC", "Periodo", "Nombre_profesor", "Nombre_investigacion", "Tipo_profesor", "Estado_investigacion", "Carrera_id", "PE_Pertenecientes_id", "Participación_CA", "Perfil_PRODEPT") FROM stdin;
    public          postgres    false    242   t�      ]          0    31960 !   utna_module_utna_indice_servicios 
   TABLE DATA           �  COPY public.utna_module_utna_indice_servicios ("IDIS", "Periodo", "Salud_externa", "Bolsa_trabajo", "Salud_interna", "Asesoria_academica", "Actividades_crecimiento", "Tutoria", "Orientacion", "Espacio_expresion", "Estimulos_desempeno", "Seguridad", "Instalaciones", "Actividades_arte", "Traslado", "Fomento_salud", "Alimentos", "Indice_satisfaccion", "Carrera_id", "Bibliteca", "Conectivida", "Laboratorio_computo", "Laboratorio_practica") FROM stdin;
    public          postgres    false    244   ��      _          0    31964    utna_module_utna_iseg_l 
   TABLE DATA           8  COPY public.utna_module_utna_iseg_l ("IDISEGL", "Periodo", "Bolsa_trabajo", "Op_estadia", "Experiencia_practica", "Laboratorios_talleres", "Infraestructura", "Dominio_prob_lab", "Conocimiento_prof", "Calificacion_MEB5", "Op_preparacion", "Indice_satisfaccion", "Carrera_id", "Trabaja_lugar_estadia") FROM stdin;
    public          postgres    false    246   ��      a          0    31968    utna_module_utna_iseg_tsu 
   TABLE DATA           <  COPY public.utna_module_utna_iseg_tsu ("IDISEGTSU", "Periodo", "Bolsa_trabajo", "Op_estadia", "Experiencia_practica", "Laboratorios_talleres", "Infraestructura", "Dominio_prob_lab", "Conocimiento_prof", "Calificacion_MEB5", "Op_preparacion", "Indice_satisfaccion", "Carrera_id", "Trabaja_lugar_estadia") FROM stdin;
    public          postgres    false    248   ��      c          0    31972    utna_module_utna_isem_l 
   TABLE DATA           �   COPY public.utna_module_utna_isem_l ("IDISEML", "Periodo", "Op_grado", "Creatividad", "Manejo_equipo", "Solucion_prob", "Op_trabajo", "Capacidad", "Cumple_req", "Calificacion_trabajo", "Indice_satisfaccion", "Carrera_id") FROM stdin;
    public          postgres    false    250   ��      e          0    31976    utna_module_utna_isem_tsu 
   TABLE DATA           �   COPY public.utna_module_utna_isem_tsu ("IDISEMTSU", "Periodo", "Op_grado", "Creatividad", "Manejo_equipo", "Solucion_prob", "Op_trabajo", "Capacidad", "Cumple_req", "Calificacion_trabajo", "Indice_satisfaccion", "Carrera_id") FROM stdin;
    public          postgres    false    252   S�      g          0    31980 "   utna_module_utna_tasa_acreditacion 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_acreditacion ("IDTA", "Periodo", "Acreditacion", "Tipo_acreditacion", "Carrera_id", "Fecha_acreditacion", "Fecha_vencimiento") FROM stdin;
    public          postgres    false    254   ��      i          0    31984    utna_module_utna_tasa_cobertura 
   TABLE DATA           r   COPY public.utna_module_utna_tasa_cobertura ("IDTC", "Periodo", "Incremento_matricula", "Carrera_id") FROM stdin;
    public          postgres    false    256   ��      k          0    31988    utna_module_utna_tasa_docentes 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_docentes ("IDTD", "Periodo", "No_docentes", "Doc_perfil_adecuado", "Tasa_docentes", "Carrera_id", "Exp_Lab_pertinente") FROM stdin;
    public          postgres    false    258   �      m          0    31992 !   utna_module_utna_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_mov_alumnos ("IDTMA", "Periodo", "Matricula", "No_alum_viajaron", "Paises", "Tasa_movilidad", "Carrera_id", "Estado") FROM stdin;
    public          postgres    false    260   )�      o          0    31996 "   utna_module_utna_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_mov_docentes ("IDTMD", "Periodo", "Matricula", "No_doc_viajaron", "Paises", "Tasa_movilidad", "Carrera_id", "Estado") FROM stdin;
    public          postgres    false    262   E�      q          0    32000    utna_module_utna_tasa_pe_asat 
   TABLE DATA           v   COPY public.utna_module_utna_tasa_pe_asat ("IDTPEASAT", "Periodo", "Realizacion", "Vencimiento", "PE_id") FROM stdin;
    public          postgres    false    264   b�      s          0    32004 $   utna_module_utna_tasa_pe_pertinencia 
   TABLE DATA           }   COPY public.utna_module_utna_tasa_pe_pertinencia ("IDTPEP", "Periodo", "Presenta", "Fecha_elaboracion", "PE_id") FROM stdin;
    public          postgres    false    266   h�      u          0    32008 "   utna_module_utna_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_egel ("IDTPEGEL", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    268   W       w          0    32012 $   utna_module_utna_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_egetsu ("IDTPEGESTU", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    270   �       y          0    32016 !   utna_module_utna_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_exl ("IDTPEXL", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    272   �      {          0    32020 #   utna_module_utna_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_extsu ("IDTPEXTSU", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    274   �      �           0    0 ,   admin_module_universidades_IDUniversidad_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."admin_module_universidades_IDUniversidad_seq"', 11, true);
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
          public          postgres    false    241            �           0    0 &   utna_module_utna_indice_ptc_IDIPTC_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."utna_module_utna_indice_ptc_IDIPTC_seq"', 51, true);
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
          public          postgres    false    275                       2606    32055 :   admin_module_universidades admin_module_universidades_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_universidades
    ADD CONSTRAINT admin_module_universidades_pkey PRIMARY KEY ("IDUniversidad");
 d   ALTER TABLE ONLY public.admin_module_universidades DROP CONSTRAINT admin_module_universidades_pkey;
       public            postgres    false    214            '           2606    32057 >   admin_module_usuarios_groups admin_module_usuarios_groups_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuarios_groups_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuarios_groups_pkey;
       public            postgres    false    218            *           2606    32059 \   admin_module_usuarios_groups admin_module_usuarios_groups_usuarios_id_group_id_aadc0b82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuarios_groups_usuarios_id_group_id_aadc0b82_uniq UNIQUE (usuarios_id, group_id);
 �   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuarios_groups_usuarios_id_group_id_aadc0b82_uniq;
       public            postgres    false    218    218            !           2606    32061 0   admin_module_usuarios admin_module_usuarios_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.admin_module_usuarios
    ADD CONSTRAINT admin_module_usuarios_pkey PRIMARY KEY ("IDUsuario");
 Z   ALTER TABLE ONLY public.admin_module_usuarios DROP CONSTRAINT admin_module_usuarios_pkey;
       public            postgres    false    216            ,           2606    32063 f   admin_module_usuarios_user_permissions admin_module_usuarios_us_usuarios_id_permission_i_e5ef4523_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuarios_us_usuarios_id_permission_i_e5ef4523_uniq UNIQUE (usuarios_id, permission_id);
 �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuarios_us_usuarios_id_permission_i_e5ef4523_uniq;
       public            postgres    false    220    220            /           2606    32065 R   admin_module_usuarios_user_permissions admin_module_usuarios_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuarios_user_permissions_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuarios_user_permissions_pkey;
       public            postgres    false    220            $           2606    32067 8   admin_module_usuarios admin_module_usuarios_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.admin_module_usuarios
    ADD CONSTRAINT admin_module_usuarios_username_key UNIQUE (username);
 b   ALTER TABLE ONLY public.admin_module_usuarios DROP CONSTRAINT admin_module_usuarios_username_key;
       public            postgres    false    216            3           2606    32069    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    222            8           2606    32071 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    224    224            ;           2606    32073 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    224            5           2606    32075    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    222            >           2606    32077 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    226    226            @           2606    32079 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    226            C           2606    32081 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    228            E           2606    32083 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    228            H           2606    32085 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    229            K           2606    32087 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    231    231            M           2606    32089 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    231            O           2606    32091 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    233            R           2606    32093 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    235            V           2606    32095 8   utna_module_utna_carreras utna_module_utna_carreras_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.utna_module_utna_carreras
    ADD CONSTRAINT utna_module_utna_carreras_pkey PRIMARY KEY ("IDCarrera");
 b   ALTER TABLE ONLY public.utna_module_utna_carreras DROP CONSTRAINT utna_module_utna_carreras_pkey;
       public            postgres    false    236            Y           2606    32097 D   utna_module_utna_eficiencia_ire utna_module_utna_eficiencia_ire_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire
    ADD CONSTRAINT utna_module_utna_eficiencia_ire_pkey PRIMARY KEY ("IDEIRE");
 n   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire DROP CONSTRAINT utna_module_utna_eficiencia_ire_pkey;
       public            postgres    false    238            \           2606    32099 J   utna_module_utna_indice_colocacion utna_module_utna_indice_colocacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion
    ADD CONSTRAINT utna_module_utna_indice_colocacion_pkey PRIMARY KEY ("IDIC");
 t   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion DROP CONSTRAINT utna_module_utna_indice_colocacion_pkey;
       public            postgres    false    240            `           2606    32101 <   utna_module_utna_indice_ptc utna_module_utna_indice_ptc_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc
    ADD CONSTRAINT utna_module_utna_indice_ptc_pkey PRIMARY KEY ("IDIPTC");
 f   ALTER TABLE ONLY public.utna_module_utna_indice_ptc DROP CONSTRAINT utna_module_utna_indice_ptc_pkey;
       public            postgres    false    242            c           2606    32103 H   utna_module_utna_indice_servicios utna_module_utna_indice_servicios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios
    ADD CONSTRAINT utna_module_utna_indice_servicios_pkey PRIMARY KEY ("IDIS");
 r   ALTER TABLE ONLY public.utna_module_utna_indice_servicios DROP CONSTRAINT utna_module_utna_indice_servicios_pkey;
       public            postgres    false    244            f           2606    32105 4   utna_module_utna_iseg_l utna_module_utna_iseg_l_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utna_module_utna_iseg_l
    ADD CONSTRAINT utna_module_utna_iseg_l_pkey PRIMARY KEY ("IDISEGL");
 ^   ALTER TABLE ONLY public.utna_module_utna_iseg_l DROP CONSTRAINT utna_module_utna_iseg_l_pkey;
       public            postgres    false    246            i           2606    32107 8   utna_module_utna_iseg_tsu utna_module_utna_iseg_tsu_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.utna_module_utna_iseg_tsu
    ADD CONSTRAINT utna_module_utna_iseg_tsu_pkey PRIMARY KEY ("IDISEGTSU");
 b   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu DROP CONSTRAINT utna_module_utna_iseg_tsu_pkey;
       public            postgres    false    248            l           2606    32109 4   utna_module_utna_isem_l utna_module_utna_isem_l_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utna_module_utna_isem_l
    ADD CONSTRAINT utna_module_utna_isem_l_pkey PRIMARY KEY ("IDISEML");
 ^   ALTER TABLE ONLY public.utna_module_utna_isem_l DROP CONSTRAINT utna_module_utna_isem_l_pkey;
       public            postgres    false    250            o           2606    32111 8   utna_module_utna_isem_tsu utna_module_utna_isem_tsu_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.utna_module_utna_isem_tsu
    ADD CONSTRAINT utna_module_utna_isem_tsu_pkey PRIMARY KEY ("IDISEMTSU");
 b   ALTER TABLE ONLY public.utna_module_utna_isem_tsu DROP CONSTRAINT utna_module_utna_isem_tsu_pkey;
       public            postgres    false    252            r           2606    32113 J   utna_module_utna_tasa_acreditacion utna_module_utna_tasa_acreditacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion
    ADD CONSTRAINT utna_module_utna_tasa_acreditacion_pkey PRIMARY KEY ("IDTA");
 t   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion DROP CONSTRAINT utna_module_utna_tasa_acreditacion_pkey;
       public            postgres    false    254            u           2606    32115 D   utna_module_utna_tasa_cobertura utna_module_utna_tasa_cobertura_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura
    ADD CONSTRAINT utna_module_utna_tasa_cobertura_pkey PRIMARY KEY ("IDTC");
 n   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura DROP CONSTRAINT utna_module_utna_tasa_cobertura_pkey;
       public            postgres    false    256            x           2606    32117 B   utna_module_utna_tasa_docentes utna_module_utna_tasa_docentes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes
    ADD CONSTRAINT utna_module_utna_tasa_docentes_pkey PRIMARY KEY ("IDTD");
 l   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes DROP CONSTRAINT utna_module_utna_tasa_docentes_pkey;
       public            postgres    false    258            {           2606    32119 H   utna_module_utna_tasa_mov_alumnos utna_module_utna_tasa_mov_alumnos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos
    ADD CONSTRAINT utna_module_utna_tasa_mov_alumnos_pkey PRIMARY KEY ("IDTMA");
 r   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos DROP CONSTRAINT utna_module_utna_tasa_mov_alumnos_pkey;
       public            postgres    false    260            ~           2606    32121 J   utna_module_utna_tasa_mov_docentes utna_module_utna_tasa_mov_docentes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes
    ADD CONSTRAINT utna_module_utna_tasa_mov_docentes_pkey PRIMARY KEY ("IDTMD");
 t   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes DROP CONSTRAINT utna_module_utna_tasa_mov_docentes_pkey;
       public            postgres    false    262            �           2606    32123 @   utna_module_utna_tasa_pe_asat utna_module_utna_tasa_pe_asat_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat
    ADD CONSTRAINT utna_module_utna_tasa_pe_asat_pkey PRIMARY KEY ("IDTPEASAT");
 j   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat DROP CONSTRAINT utna_module_utna_tasa_pe_asat_pkey;
       public            postgres    false    264            �           2606    32125 N   utna_module_utna_tasa_pe_pertinencia utna_module_utna_tasa_pe_pertinencia_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia
    ADD CONSTRAINT utna_module_utna_tasa_pe_pertinencia_pkey PRIMARY KEY ("IDTPEP");
 x   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia DROP CONSTRAINT utna_module_utna_tasa_pe_pertinencia_pkey;
       public            postgres    false    266            �           2606    32127 J   utna_module_utna_tasa_puntaje_egel utna_module_utna_tasa_puntaje_egel_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_egel_pkey PRIMARY KEY ("IDTPEGEL");
 t   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel DROP CONSTRAINT utna_module_utna_tasa_puntaje_egel_pkey;
       public            postgres    false    268            �           2606    32129 N   utna_module_utna_tasa_puntaje_egetsu utna_module_utna_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_egetsu_pkey PRIMARY KEY ("IDTPEGESTU");
 x   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu DROP CONSTRAINT utna_module_utna_tasa_puntaje_egetsu_pkey;
       public            postgres    false    270            �           2606    32131 H   utna_module_utna_tasa_puntaje_exl utna_module_utna_tasa_puntaje_exl_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_exl_pkey PRIMARY KEY ("IDTPEXL");
 r   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl DROP CONSTRAINT utna_module_utna_tasa_puntaje_exl_pkey;
       public            postgres    false    272            �           2606    32133 L   utna_module_utna_tasa_puntaje_extsu utna_module_utna_tasa_puntaje_extsu_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_extsu_pkey PRIMARY KEY ("IDTPEXTSU");
 v   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu DROP CONSTRAINT utna_module_utna_tasa_puntaje_extsu_pkey;
       public            postgres    false    274                       1259    32134 -   admin_module_usuarios_Universidad_id_839997f7    INDEX     }   CREATE INDEX "admin_module_usuarios_Universidad_id_839997f7" ON public.admin_module_usuarios USING btree ("Universidad_id");
 C   DROP INDEX public."admin_module_usuarios_Universidad_id_839997f7";
       public            postgres    false    216            %           1259    32135 .   admin_module_usuarios_groups_group_id_c4db1625    INDEX     {   CREATE INDEX admin_module_usuarios_groups_group_id_c4db1625 ON public.admin_module_usuarios_groups USING btree (group_id);
 B   DROP INDEX public.admin_module_usuarios_groups_group_id_c4db1625;
       public            postgres    false    218            (           1259    32136 1   admin_module_usuarios_groups_usuarios_id_bf9b452f    INDEX     �   CREATE INDEX admin_module_usuarios_groups_usuarios_id_bf9b452f ON public.admin_module_usuarios_groups USING btree (usuarios_id);
 E   DROP INDEX public.admin_module_usuarios_groups_usuarios_id_bf9b452f;
       public            postgres    false    218            -           1259    32137 =   admin_module_usuarios_user_permissions_permission_id_4cf14b49    INDEX     �   CREATE INDEX admin_module_usuarios_user_permissions_permission_id_4cf14b49 ON public.admin_module_usuarios_user_permissions USING btree (permission_id);
 Q   DROP INDEX public.admin_module_usuarios_user_permissions_permission_id_4cf14b49;
       public            postgres    false    220            0           1259    32138 ;   admin_module_usuarios_user_permissions_usuarios_id_1087d62c    INDEX     �   CREATE INDEX admin_module_usuarios_user_permissions_usuarios_id_1087d62c ON public.admin_module_usuarios_user_permissions USING btree (usuarios_id);
 O   DROP INDEX public.admin_module_usuarios_user_permissions_usuarios_id_1087d62c;
       public            postgres    false    220            "           1259    32139 ,   admin_module_usuarios_username_4aba3709_like    INDEX     �   CREATE INDEX admin_module_usuarios_username_4aba3709_like ON public.admin_module_usuarios USING btree (username varchar_pattern_ops);
 @   DROP INDEX public.admin_module_usuarios_username_4aba3709_like;
       public            postgres    false    216            1           1259    32140    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    222            6           1259    32141 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    224            9           1259    32142 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    224            <           1259    32143 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    226            A           1259    32144 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    228            F           1259    32145 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    229            I           1259    32146 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    229            P           1259    32147 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    235            S           1259    32148 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    235            T           1259    32149 1   utna_module_utna_carreras_Universidad_id_5259bb1d    INDEX     �   CREATE INDEX "utna_module_utna_carreras_Universidad_id_5259bb1d" ON public.utna_module_utna_carreras USING btree ("Universidad_id");
 G   DROP INDEX public."utna_module_utna_carreras_Universidad_id_5259bb1d";
       public            postgres    false    236            W           1259    32150 3   utna_module_utna_eficiencia_ire_Carrera_id_e1a3efef    INDEX     �   CREATE INDEX "utna_module_utna_eficiencia_ire_Carrera_id_e1a3efef" ON public.utna_module_utna_eficiencia_ire USING btree ("Carrera_id");
 I   DROP INDEX public."utna_module_utna_eficiencia_ire_Carrera_id_e1a3efef";
       public            postgres    false    238            Z           1259    32151 6   utna_module_utna_indice_colocacion_Carrera_id_2d3cd102    INDEX     �   CREATE INDEX "utna_module_utna_indice_colocacion_Carrera_id_2d3cd102" ON public.utna_module_utna_indice_colocacion USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_indice_colocacion_Carrera_id_2d3cd102";
       public            postgres    false    240            ]           1259    32152 /   utna_module_utna_indice_ptc_Carrera_id_fa143864    INDEX     �   CREATE INDEX "utna_module_utna_indice_ptc_Carrera_id_fa143864" ON public.utna_module_utna_indice_ptc USING btree ("Carrera_id");
 E   DROP INDEX public."utna_module_utna_indice_ptc_Carrera_id_fa143864";
       public            postgres    false    242            ^           1259    32153 9   utna_module_utna_indice_ptc_PE_Pertenecientes_id_03ec3eea    INDEX     �   CREATE INDEX "utna_module_utna_indice_ptc_PE_Pertenecientes_id_03ec3eea" ON public.utna_module_utna_indice_ptc USING btree ("PE_Pertenecientes_id");
 O   DROP INDEX public."utna_module_utna_indice_ptc_PE_Pertenecientes_id_03ec3eea";
       public            postgres    false    242            a           1259    32154 5   utna_module_utna_indice_servicios_Carrera_id_f85c6d0a    INDEX     �   CREATE INDEX "utna_module_utna_indice_servicios_Carrera_id_f85c6d0a" ON public.utna_module_utna_indice_servicios USING btree ("Carrera_id");
 K   DROP INDEX public."utna_module_utna_indice_servicios_Carrera_id_f85c6d0a";
       public            postgres    false    244            d           1259    32155 +   utna_module_utna_iseg_l_Carrera_id_6038bc21    INDEX     y   CREATE INDEX "utna_module_utna_iseg_l_Carrera_id_6038bc21" ON public.utna_module_utna_iseg_l USING btree ("Carrera_id");
 A   DROP INDEX public."utna_module_utna_iseg_l_Carrera_id_6038bc21";
       public            postgres    false    246            g           1259    32156 -   utna_module_utna_iseg_tsu_Carrera_id_c254dc59    INDEX     }   CREATE INDEX "utna_module_utna_iseg_tsu_Carrera_id_c254dc59" ON public.utna_module_utna_iseg_tsu USING btree ("Carrera_id");
 C   DROP INDEX public."utna_module_utna_iseg_tsu_Carrera_id_c254dc59";
       public            postgres    false    248            j           1259    32157 +   utna_module_utna_isem_l_Carrera_id_e6ccdd20    INDEX     y   CREATE INDEX "utna_module_utna_isem_l_Carrera_id_e6ccdd20" ON public.utna_module_utna_isem_l USING btree ("Carrera_id");
 A   DROP INDEX public."utna_module_utna_isem_l_Carrera_id_e6ccdd20";
       public            postgres    false    250            m           1259    32158 -   utna_module_utna_isem_tsu_Carrera_id_b028db55    INDEX     }   CREATE INDEX "utna_module_utna_isem_tsu_Carrera_id_b028db55" ON public.utna_module_utna_isem_tsu USING btree ("Carrera_id");
 C   DROP INDEX public."utna_module_utna_isem_tsu_Carrera_id_b028db55";
       public            postgres    false    252            p           1259    32159 6   utna_module_utna_tasa_acreditacion_Carrera_id_f0f67dad    INDEX     �   CREATE INDEX "utna_module_utna_tasa_acreditacion_Carrera_id_f0f67dad" ON public.utna_module_utna_tasa_acreditacion USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_tasa_acreditacion_Carrera_id_f0f67dad";
       public            postgres    false    254            s           1259    32160 3   utna_module_utna_tasa_cobertura_Carrera_id_f1f71131    INDEX     �   CREATE INDEX "utna_module_utna_tasa_cobertura_Carrera_id_f1f71131" ON public.utna_module_utna_tasa_cobertura USING btree ("Carrera_id");
 I   DROP INDEX public."utna_module_utna_tasa_cobertura_Carrera_id_f1f71131";
       public            postgres    false    256            v           1259    32161 2   utna_module_utna_tasa_docentes_Carrera_id_b50d6d4e    INDEX     �   CREATE INDEX "utna_module_utna_tasa_docentes_Carrera_id_b50d6d4e" ON public.utna_module_utna_tasa_docentes USING btree ("Carrera_id");
 H   DROP INDEX public."utna_module_utna_tasa_docentes_Carrera_id_b50d6d4e";
       public            postgres    false    258            y           1259    32162 5   utna_module_utna_tasa_mov_alumnos_Carrera_id_8af85fe9    INDEX     �   CREATE INDEX "utna_module_utna_tasa_mov_alumnos_Carrera_id_8af85fe9" ON public.utna_module_utna_tasa_mov_alumnos USING btree ("Carrera_id");
 K   DROP INDEX public."utna_module_utna_tasa_mov_alumnos_Carrera_id_8af85fe9";
       public            postgres    false    260            |           1259    32163 6   utna_module_utna_tasa_mov_docentes_Carrera_id_641d558f    INDEX     �   CREATE INDEX "utna_module_utna_tasa_mov_docentes_Carrera_id_641d558f" ON public.utna_module_utna_tasa_mov_docentes USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_tasa_mov_docentes_Carrera_id_641d558f";
       public            postgres    false    262                       1259    32164 ,   utna_module_utna_tasa_pe_asat_PE_id_82792736    INDEX     {   CREATE INDEX "utna_module_utna_tasa_pe_asat_PE_id_82792736" ON public.utna_module_utna_tasa_pe_asat USING btree ("PE_id");
 B   DROP INDEX public."utna_module_utna_tasa_pe_asat_PE_id_82792736";
       public            postgres    false    264            �           1259    32165 8   utna_module_utna_tasa_pe_pertinencia_Carrera_id_e3afaf73    INDEX     �   CREATE INDEX "utna_module_utna_tasa_pe_pertinencia_Carrera_id_e3afaf73" ON public.utna_module_utna_tasa_pe_pertinencia USING btree ("PE_id");
 N   DROP INDEX public."utna_module_utna_tasa_pe_pertinencia_Carrera_id_e3afaf73";
       public            postgres    false    266            �           1259    32166 6   utna_module_utna_tasa_puntaje_egel_Carrera_id_58649386    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_egel_Carrera_id_58649386" ON public.utna_module_utna_tasa_puntaje_egel USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_tasa_puntaje_egel_Carrera_id_58649386";
       public            postgres    false    268            �           1259    32167 8   utna_module_utna_tasa_puntaje_egetsu_Carrera_id_1aa960eb    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_egetsu_Carrera_id_1aa960eb" ON public.utna_module_utna_tasa_puntaje_egetsu USING btree ("Carrera_id");
 N   DROP INDEX public."utna_module_utna_tasa_puntaje_egetsu_Carrera_id_1aa960eb";
       public            postgres    false    270            �           1259    32168 5   utna_module_utna_tasa_puntaje_exl_Carrera_id_869e1045    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_exl_Carrera_id_869e1045" ON public.utna_module_utna_tasa_puntaje_exl USING btree ("Carrera_id");
 K   DROP INDEX public."utna_module_utna_tasa_puntaje_exl_Carrera_id_869e1045";
       public            postgres    false    272            �           1259    32169 7   utna_module_utna_tasa_puntaje_extsu_Carrera_id_b7e02192    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_extsu_Carrera_id_b7e02192" ON public.utna_module_utna_tasa_puntaje_extsu USING btree ("Carrera_id");
 M   DROP INDEX public."utna_module_utna_tasa_puntaje_extsu_Carrera_id_b7e02192";
       public            postgres    false    274            �           2606    32170 O   admin_module_usuarios admin_module_usuario_Universidad_id_839997f7_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios
    ADD CONSTRAINT "admin_module_usuario_Universidad_id_839997f7_fk_admin_mod" FOREIGN KEY ("Universidad_id") REFERENCES public.admin_module_universidades("IDUniversidad") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.admin_module_usuarios DROP CONSTRAINT "admin_module_usuario_Universidad_id_839997f7_fk_admin_mod";
       public          postgres    false    3358    214    216            �           2606    32175 _   admin_module_usuarios_user_permissions admin_module_usuario_permission_id_4cf14b49_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuario_permission_id_4cf14b49_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuario_permission_id_4cf14b49_fk_auth_perm;
       public          postgres    false    220    226    3392            �           2606    32180 ]   admin_module_usuarios_user_permissions admin_module_usuario_usuarios_id_1087d62c_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuario_usuarios_id_1087d62c_fk_admin_mod FOREIGN KEY (usuarios_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuario_usuarios_id_1087d62c_fk_admin_mod;
       public          postgres    false    220    3361    216            �           2606    32185 S   admin_module_usuarios_groups admin_module_usuario_usuarios_id_bf9b452f_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuario_usuarios_id_bf9b452f_fk_admin_mod FOREIGN KEY (usuarios_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuario_usuarios_id_bf9b452f_fk_admin_mod;
       public          postgres    false    218    3361    216            �           2606    32190 \   admin_module_usuarios_groups admin_module_usuarios_groups_group_id_c4db1625_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuarios_groups_group_id_c4db1625_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuarios_groups_group_id_c4db1625_fk_auth_group_id;
       public          postgres    false    3381    222    218            �           2606    32195 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    224    226    3392            �           2606    32200 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    224    3381    222            �           2606    32205 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3405    226    231            �           2606    32210 =   authtoken_token authtoken_token_user_id_35299eff_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_admin_mod FOREIGN KEY (user_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_admin_mod;
       public          postgres    false    3361    228    216            �           2606    32215 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    229    3405    231            �           2606    32220 ?   django_admin_log django_admin_log_user_id_c564eba6_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_admin_mod FOREIGN KEY (user_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_admin_mod;
       public          postgres    false    216    3361    229            �           2606    32225 S   utna_module_utna_carreras utna_module_utna_car_Universidad_id_5259bb1d_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_carreras
    ADD CONSTRAINT "utna_module_utna_car_Universidad_id_5259bb1d_fk_admin_mod" FOREIGN KEY ("Universidad_id") REFERENCES public.admin_module_universidades("IDUniversidad") DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.utna_module_utna_carreras DROP CONSTRAINT "utna_module_utna_car_Universidad_id_5259bb1d_fk_admin_mod";
       public          postgres    false    236    214    3358            �           2606    32230 U   utna_module_utna_eficiencia_ire utna_module_utna_efi_Carrera_id_e1a3efef_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire
    ADD CONSTRAINT "utna_module_utna_efi_Carrera_id_e1a3efef_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire DROP CONSTRAINT "utna_module_utna_efi_Carrera_id_e1a3efef_fk_utna_modu";
       public          postgres    false    3414    236    238            �           2606    32235 X   utna_module_utna_indice_colocacion utna_module_utna_ind_Carrera_id_2d3cd102_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion
    ADD CONSTRAINT "utna_module_utna_ind_Carrera_id_2d3cd102_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion DROP CONSTRAINT "utna_module_utna_ind_Carrera_id_2d3cd102_fk_utna_modu";
       public          postgres    false    236    240    3414            �           2606    32240 W   utna_module_utna_indice_servicios utna_module_utna_ind_Carrera_id_f85c6d0a_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios
    ADD CONSTRAINT "utna_module_utna_ind_Carrera_id_f85c6d0a_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios DROP CONSTRAINT "utna_module_utna_ind_Carrera_id_f85c6d0a_fk_utna_modu";
       public          postgres    false    244    3414    236            �           2606    32245 Q   utna_module_utna_indice_ptc utna_module_utna_ind_Carrera_id_fa143864_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc
    ADD CONSTRAINT "utna_module_utna_ind_Carrera_id_fa143864_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.utna_module_utna_indice_ptc DROP CONSTRAINT "utna_module_utna_ind_Carrera_id_fa143864_fk_utna_modu";
       public          postgres    false    236    242    3414            �           2606    32250 [   utna_module_utna_indice_ptc utna_module_utna_ind_PE_Pertenecientes_id_03ec3eea_fk_utna_modu    FK CONSTRAINT       ALTER TABLE ONLY public.utna_module_utna_indice_ptc
    ADD CONSTRAINT "utna_module_utna_ind_PE_Pertenecientes_id_03ec3eea_fk_utna_modu" FOREIGN KEY ("PE_Pertenecientes_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc DROP CONSTRAINT "utna_module_utna_ind_PE_Pertenecientes_id_03ec3eea_fk_utna_modu";
       public          postgres    false    3414    242    236            �           2606    32255 M   utna_module_utna_iseg_l utna_module_utna_ise_Carrera_id_6038bc21_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_l
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_6038bc21_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.utna_module_utna_iseg_l DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_6038bc21_fk_utna_modu";
       public          postgres    false    246    236    3414            �           2606    32260 O   utna_module_utna_isem_tsu utna_module_utna_ise_Carrera_id_b028db55_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_isem_tsu
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_b028db55_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.utna_module_utna_isem_tsu DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_b028db55_fk_utna_modu";
       public          postgres    false    252    3414    236            �           2606    32265 O   utna_module_utna_iseg_tsu utna_module_utna_ise_Carrera_id_c254dc59_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_c254dc59_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_c254dc59_fk_utna_modu";
       public          postgres    false    3414    248    236            �           2606    32270 M   utna_module_utna_isem_l utna_module_utna_ise_Carrera_id_e6ccdd20_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_isem_l
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_e6ccdd20_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.utna_module_utna_isem_l DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_e6ccdd20_fk_utna_modu";
       public          postgres    false    3414    236    250            �           2606    32275 Z   utna_module_utna_tasa_puntaje_egetsu utna_module_utna_tas_Carrera_id_1aa960eb_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_1aa960eb_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_1aa960eb_fk_utna_modu";
       public          postgres    false    270    236    3414            �           2606    32280 X   utna_module_utna_tasa_puntaje_egel utna_module_utna_tas_Carrera_id_58649386_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_58649386_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_58649386_fk_utna_modu";
       public          postgres    false    268    3414    236            �           2606    32285 X   utna_module_utna_tasa_mov_docentes utna_module_utna_tas_Carrera_id_641d558f_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_641d558f_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_641d558f_fk_utna_modu";
       public          postgres    false    3414    262    236            �           2606    32290 W   utna_module_utna_tasa_puntaje_exl utna_module_utna_tas_Carrera_id_869e1045_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_869e1045_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_869e1045_fk_utna_modu";
       public          postgres    false    272    236    3414            �           2606    32295 W   utna_module_utna_tasa_mov_alumnos utna_module_utna_tas_Carrera_id_8af85fe9_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_8af85fe9_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_8af85fe9_fk_utna_modu";
       public          postgres    false    3414    236    260            �           2606    32300 T   utna_module_utna_tasa_docentes utna_module_utna_tas_Carrera_id_b50d6d4e_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_b50d6d4e_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_b50d6d4e_fk_utna_modu";
       public          postgres    false    236    3414    258            �           2606    32305 Y   utna_module_utna_tasa_puntaje_extsu utna_module_utna_tas_Carrera_id_b7e02192_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_b7e02192_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_b7e02192_fk_utna_modu";
       public          postgres    false    236    274    3414            �           2606    32310 X   utna_module_utna_tasa_acreditacion utna_module_utna_tas_Carrera_id_f0f67dad_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_f0f67dad_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_f0f67dad_fk_utna_modu";
       public          postgres    false    236    254    3414            �           2606    32315 U   utna_module_utna_tasa_cobertura utna_module_utna_tas_Carrera_id_f1f71131_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_f1f71131_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_f1f71131_fk_utna_modu";
       public          postgres    false    236    256    3414            �           2606    32320 U   utna_module_utna_tasa_pe_pertinencia utna_module_utna_tas_PE_id_3d5adf8a_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia
    ADD CONSTRAINT "utna_module_utna_tas_PE_id_3d5adf8a_fk_utna_modu" FOREIGN KEY ("PE_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia DROP CONSTRAINT "utna_module_utna_tas_PE_id_3d5adf8a_fk_utna_modu";
       public          postgres    false    236    266    3414            �           2606    32325 N   utna_module_utna_tasa_pe_asat utna_module_utna_tas_PE_id_82792736_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat
    ADD CONSTRAINT "utna_module_utna_tas_PE_id_82792736_fk_utna_modu" FOREIGN KEY ("PE_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat DROP CONSTRAINT "utna_module_utna_tas_PE_id_82792736_fk_utna_modu";
       public          postgres    false    264    3414    236            ?   >  x���Mn�0���)|T��%J��誛�3 K���Q]T����Mi`�����=�֫I��z��t�X��d�a���dۂS`4Z�.+Z�t����/��^C=�&���9z�����qm��F,�=�5�E��_T!�S���������|蔽��B�qA�b�V����n(6Mh��d����)�j��%�S䬚���S1k�'Qid�o:[��<�J�<�'�U�r����x摐���S��S�Zi,^�A>���h���T�Y�)�ȧ��%�&��ȅNT`}LS��x��(��/��d      A   �  x���Y��X����_�ܙ���j2 ���J&���# � �~���&E2Z��<����ܥ� �SG�h#p�׭VG�m�(��lUu^�(	-�ҧ��Ls#����w�q��"�+O��u"(� ��/@���'�G� B
р �r~������9߿���Hr�0��ע}ɫ?�i�����;���I����G;Ȥ!��2#��@!��R��2�O�,�J�9�z�|�����������OH� av ��}'�W����aj��c�"�ǥ���Û)֧tsڏ�Л[cƼ�2�C�mk�*��+ݚs&�ؖ��ލe�^\t�MI�\������o�����ܿo�	?QpD2CD�|���)�-�|���/��8�L�SY<�j�\��c&8գ�7i��gK=��6LR��l�h��y�`}���陗;dzd���H=d��p=�I���ji�(� ��p�%vD��|%�D鲹���i��L/;9�7�լ@ �zwf���n��9��ё#�����Qo�P�lE��39�|�QB-�RVipk�NH��T��R��� 2/�,޹�9�;Q�.�I�!{t;�&�#c��E��N��n=��#�b�(���r�Y�N`�l�sz����ԌVk����j|�΢�8�e�v��S�7�j��G�!Y�|�p�{���Fu>fƎ�$p��{����l���r�ig�r�i����R����ö
�~�=�1�`�����$B�#4�s��8���w�̎�����x�Fx*mNb/c�;��p�H2�W��:�,����KJ�c]�g9H��^EI��y�po���i{@�b�,%�̹u3�Is#j��uE@�ψ���&vD.颽JF'\�ऀ�'ڣ����ƍ5DԽ������y��A���vy�\rv%D��)P���Z��(��m79�֚Gyͻ�&��Sq��G�y�w:8`�! !C>�·r��4�.�El�Vw#����Z��F�4PN1�Y*����-.���+���l,e�U��?h�p,�{i$�����~h=���0K7����D&��m�!�5�m�Y��@0��fԡ�����	Y����u*&����ӟ�
�I>��i
�'�}<���h����<���]nN�VP�}6k�֊�u�����ko�",i���?h��QS��CC#�� x��e>��j_:R��z�.�����umB@or:4'��m��A�v��O�MI��&ɣr�͜��ؔT^�+�u��F���sB@�E����|�;T2'��as���-:����%Dx�l�S�v�*u�_��k[�>P�倖������y�~,�Z/�q� 
S���˜��"G��:]�I�ݒ7kYǓ��W��N'/�N�Ev��<�3#��hm��\4e���O= s�{#�!���-�|�c{Nb	��n��dMϠwr]�'�4��e���టy�;�����y�� P�+_t %���HG-�U��^�r�En�/����*c��[�7�"˯���g�����2���/�a��C�s5^�$���� �����#��g�Wʣ�P�^!�����C'������*�Z�*r�m�5�]sK����O��Ձ��A=�O�4���jP���|�]�r")_|���`z|h�!F4�}"�/�GxLES>�Dg��[��=��$�p�nmj{��EJ��=F4��$
,�_Y��F�}�G?+�����9��s�"��������*Q��q�4ʹM�c�`W\/��$���5�����{N�W��ζ��`��'�#<V���1���9З���+띝T[y����ך6�Z�J����6iZ����+(����O��t^�U��[M��w�h� �ؽ4����B��_ϳ{��=�~�$���i��c��ۯ9��
U��[뒻�t!ǺUǕc��T1�7�(��}��j��A����<�>�����{��Ǐ^�      C      x������ � �      E      x������ � �      G      x������ � �      I      x������ � �      K   �  x��XK��8\K����s�^N���38 WW�~����d���-ef��(��)՟�P4�[я�����Je?_�g�QW���w�P�Q��fz�`�v�����/[��=����s7�r�ҁ>As��l�!�7��d!�G��D��i|>��t�����ޗ���S�x;R%+�\��}tЎ�b�+��Qg��'�<@;�]!�z#xo�O�(A;�[G׳ٲ=:���.��l�x�v����j��%�s!et�\��k�6�d�fV'�̞6�p�+�Tp��IH�	�$���)nB8�I�f��>����k��n����4���׺:	f�ఢV-̝т�ZgGF)E#�\ަԫs>�^�w���*�*�S�N:�Ϋl�N�>�U%���؋�<
s]{p�3�]�.4W��Z��h%�;���xDD�$�$Hќ�P�M��\�-�z���W���F��J#Х�����|���r���?��mlm��Y�%�{��� �fF�E���.�(�4�/،	�dZ׉4��c�F%��/�!߸TD�&��ۖ��D�\�R!���iٔ�$=���YI ߫P�e�r�
�d�D����yN�*d�x����Dt6:P�v&R`��LQ">��v,�v2�ni�u+�$x��ٞd*,,�mL&��@B�Lw2�-�ͅ���+K	�n��IhLD��'�Ў�'M,ք���J�z�WeMf��I�7 gsX��d��f��Y O�[4m�|��=#��P�B%!
����B,2�g��A4�g���v���׵�0 ���Q ��`�A ���h��p�Z���f���3�
�T�6^�Z�QM�d��e��T�̻B90	�oy�ciUU�(�>K��	�;��Oa�0�c��	�،�����O;�c�uiU�)ӭ>K��"���I2�B|e�eX$P��L�o��v\�ɨ
�L�J_����aTAښ�́*��S �Zl�>�4w��fw���K�P_p�QB�sp�QN�s`�Q�6ƃ6�O����3?�i}�/��<$؍(�ET��]�A��I]�c�����m�X���FDx?�"��� e!�L ��~�����1�_����v=�	=$x4#.�7o�
�U���웡��OqY�7����7D@-��ȫ�{O�r��	��b/��Jo5��u�̋�V��w��"�U)�݇�d���_h�����U      M      x������ � �      N   ~   x��1
�0 �99�ǵ(�W�d�N:�B�G!c��G�^�noyZ�ºT]�j@m�i���u�>�Z��8����=Y��]L!-��,Ӻ�-�����q�|��^X"���~����]I)��l"�      P   4  x����N� �����6}�愳�����etN3�%MK�}��׫hf���'Psz�lc���f��8���OM����؊HuE��N��q��ɎֱFfb����%�8.�'���&J1��}��s�rp�����ϕK);��	�l�"H��.�>hӁ~3t^KљK�����؄�lY64�H�x�'�k�@6ܖhZ�5��Ёjh��XMc$>�RT�Py���A5^b\���TC"����9Z&P���W��q�Mq��7i�ȵ�]��>ɋz���Z8�q��ga�ۄW��� |n�Dy      R   �  x����r�0���)�V�~��hT[!jmɕ�L�\}��Xe�����'�9g���O֧���a���y��i7��<!�b�eE�Bj�)b�|ChW����«��zz����:��`B������(IK]*@�6٨{;7.�r��̛n�?�_������9��!_lg\{�B�x���B�)ӥ�N�Ӱ�` �bA�sDk���pp����!����g7~�..v��$�E�O�0��E^M��B�imcQwv���h+{5�т�����X"�U!ᅤ�z�+$� at$b��(a��֖�b��>+du���Y�员!93�(c8o����� t�#���t9(]h���(�-��"|.}�� %'X�j`�hY|�X��0�eB9�(y��d����4�ϭ9��%��F�S����J�����.�6��9\�t�!_�H�B�7�=����b���J� �1y󘋹�S0W΁L�]uR<a�Ra�������~���=�p��Ƴh�>#�.�8���E�k�/�]n8�d�u�jݛ�\�zS��|_��hW�bJ>�&.ዓG�������W;$w�'��BU�{�D^�./�4ǿm�G��̧$3��������v��OpQ1Ua���11��.��6�d~Zm��0��?3v�WHVP�u�l���v����E|      T   6  x���Y��@  ����?�TQ�(�"Ȧ d����,��;���0Wxy|1����" ~$����$���:�},Sc*���JvW�To��L��'B��Ts��}`ל/cwMWɛ��կ���X%��`��q��>%��SC �"
�!ϣ ��#{:�Ȥ����+'=�pNUQ6�31�@O�\��V�md_�c�
��\Wd���w��C��F���!hX��@z����r�Y�SN��Y��Lz�/c����(�S~BAb���%�1@��bh���%C�L#[�ޗ��#kp�9r�'dm쩔]ϡ�=��[o��:f����-���T�84g?��;��(�l�.���Tm[=!��S��,��q��ҙ��S[�ρ:<���^w!�H��y�^5�T��t_���An[�%�L5�8������7ѷЖ?m$#��(�l}\��u���&9\ݹ࠹$>��w�9��+�|N���%dYV��	�|�z'W�l�H�	����f���D�ɆR��/�A�l��I���e�����=�ԸQr&4���藈������%�4������b�q��      U   |  x��TKr�@]7��	R�cK�*�Pf�Mg4��j�q�fH�.G��H�\,-��$�1K������ua���ܙ�+������x�\�*{�A�a�J� ��*8�2�	>�2�w[T�ɽ�� =�f�d�kLw(]���`i��3�gӥ�w ���u�������-߈!̼��k�U�kaŎT��r�����h��R�
|���EŒr���L	�h��8����ᵰ��i�9WXf���d���#HQ��$GW��I�(!�}�1�d������o<tVo5�{�e��ݛ�ԓ{Bv��2���v!���[�u�ʦ����֐cZ0���h%HW������͗o�(�]�;�I�S�=�/Kg^��h�Z�|#������7]��'�U#w�g��X�Q��핅�d�h'ka�;.dve$6���*M׋�[���ˏJ�?^�&��sK~5�)yN�`\1�Gc��1�9]N '��Z�$���"I�A�ҙ��׆w!VJ��9Vk� ���$ng@���(��&p����.�IA���Cr��U\���2V�?�h�}�6�ӥ���uQ��1�U�I�I�;��r���B�Eİq��|u�����I���h�]dõ��9�&׷/�N��u�t      W      x������ � �      Y   �  x�m�[n,!D���D�������㖡�LH4�|�h�y��x�?�Q�������#�xM1�m�!�c���⨏B�Gi����ZYKlU&���,�+�@y�HTc}?�je�|�-�-U��-��m�^Dx�=�E%��j�R�d�Ԋ�%�vI�eqk8��Z!M���+o�ω�3�zQ��×܋�G-��ʳ�N7���7�F�IfћI��ͤ��ͤZt��]@��ҷ��n�@�d�H����QL�:pj��Jf[u��ꤗ̷��B��L�����d�A=�!�Ν!# ��lpg�i�v��&��?y���t�r�$-n�G�ߚo����R�9�('P����8�	�p���JG�HpT#R�ܸ�j7L�n*���X0U��`�vc�T-n�&���
���6��U��m��Vs�vD���>��l���*t�X��g	�Zd�㟶
��� 2���q�6��U\��e� ��S��*H��7�R! 9�6V?pcݙ�[J'\���Չ��������W'�KFu��ף��W'R
���N�����_}�a��w��:��
�{G���}�eC��Ს�V˸���6�Xd��1��e#��;6�0DԷ�[�RM6�VW6��6٘ܠf+��ج[E�i��,S�4g0�.<6����^�Ih"�uƦ�����f;�2Ɇ�QK��f���7�I88���V&��VTl� g�w���͙X\���~�b%^ފv80+�����^�l���`���}Hg�=�&�pM��i6��ۻ�,�&��y�i����:�O角��Ĥ�D���Ef��!o>J�Y��D��i>YO�|E�� ��[��O-�K����.#�����;�����0���)�@z��W����������Ʌ7LzL� gFL?�D�`B[�c��&F&�,��8�L�\٪a�qfD�شӷ�`F���a"��]��83bښq��I�1��EQN#l>u0�^�9ym]�}/�_�����1      [   
  x��YMo۸]����h��M��;�����m�膖h�-EjHɍ����x��2�,��f�2�dΥ(���y��S�h�Ϲ��K7����ƙ���#auy�c1cc�p��<�>�_
���b*4�[q�L؉�I�b�k��4�r|�T*��<�F�p��\�B�;��ɸq:�4��e�DF����~кW��ѱL�йa��O�K�	FdR�̌��
+��(e��4צ�(����<a�G�N
�"�h/�z�幌��Y�YO��dFɜko����[�r��v�'�1ʤCɿN�iE�ĸ�p"\��c�����3���|��w����9��R�e���}]^�ĩ��cp��,�<3.��d�aO������ey��9;0iy�O���Ĭ���Q.���H�ך����Eʃ놖�Y@��v����"1�a|��M�+N���cN��1wh��H�U�;xU@��	hw�U1��[��gr;L\���Ʊ\Dڨ�:��<���6�[�Ʋ��놽>��ޮ\b�+p��o�߭3c#�3���D$"�g^���Gq�P�?K%XV��ÈgNFEʸ�E�>bCiF���<쥃)�DLO	+(I���e����c,#�n�e�r!�nX�U,{�Fapf�1��}[Mj�Uaگ"�P2�%4��ذC�g兂�{"���	CT `M[a�γћ�����Ҋ�h:���֛b3�:�:
9`���1;�C�T�ֆ��?fm�}��kqU^�(�K��.^���o��
��|c"�;��XD�BKɔ3c�}�{q������'���61��!W1��1=tY�W�wC��]���Ԛ��dg��B�͠~�\MPg�1Hb���x��U^T^��/�[ܟH��U��`2;��f�*�=���]��L�T���DP�)��\!��&��ˊ�.�9=��"��6�h�ğ����������l0X5�~e)��̈��A�a0'p	�i��"��OW#p��:�k�	B��(�E��b�8%�x,U}��\V�_���U��x�����#;*�!�ʰ�N!^�
�ȫby��s�Z������F�CWK�K��w�l�.��g���!��%�?��Q�:3��$����n%Z�4%!}c��j�^�Ċ\4��L	r 
�ѵ��Y*�ѷ$SH,���H��J���V�� ���Ŕ�Vw���'b����u{����
P�Be6��i�̽+/f��9,���pЬц�L�����B�l�"C���j���R5�S(��lHD�@Dc-���eJ�@`�l��Ul^��%#������#�DlpW���D��G�"��v��J�8桦��Y�gB�'�0e�G6��2��q���(�n�=M���LD���?��k�ԧY�6�f���Pi|⻒6���n�U�� ��6��A-?��$.���k�ƒʶ�2�]4���?v#�V�����Bz��DrEk�L�P��2qG������{S5���oA�}4�%�`�TJ_.|����y���`���}���a ��#>���
U��JP�O�|Z��|�މK�%�����*"��n!\s��jR��
��s�����W$`+4I>N��Q��P��	���&B�7�=}���8�s^�����=cb�������pi�0<�c��	G��S���>E������ �VQ��M��o�7���񥋂�1]��S�G��	���@^��8�d'�45���3<;�ƹ�S�b�>J�����=��bk� dؚ���C)�b���)��4XS#�l>�:9j�1i�9�FiX^SM_��ȣX*��� �Pm���M�a���̼B���(��at���v!�.�ڔU��x	����dF�G@��7��f�P�Х�>��Bݬ�#�h�4�.�(t����'>&>U^��,b	��g4���KL;hC����*Rlj�t����V;�/T�-�J9c�Ėˑ��4[�`��V�P��|��R旮Yi���h�N�֫nM�#���;9���L|[avlHi���!�.�@@�6K9��T�rϏv��&������������5/-	��QA
xB?�{���/l�8�|u�j�X�.�>�C�z^lhp)���r��ޝ}m�o`�puH����Kݣ�R:�]%�X:7�t�ل�Yﰧ9G�ҙ�Ó;{�{�hm�]z���������g��P51���z�g5�p�������CgkЧvQ��[�f��,[�����	|�c�Et���`��)K[5&��f��̴Z�M}��w�������鷛{��f�r��"���4ڝ>W��R|�3�Exᗙ���	 ͜�#Y��k�O�#��p�����u^�]������������������1���ZX�)W���p�$��#m����0K��OS�[�d�Ώl���8#J,�!����*SQ����C:&|��}9��,�{�bA�֘Q}���b�V���uX���N�aN�#s{����* ��(r@*n@�i�;�k.�Z�F��V�<x��/1��      ]      x������ � �      _   �   x���I!D�z��]r�sDehM�Ȧ�Q �0����B�W4�t��A��� s�.�u.���dV� �x��zS�9 �O'���G�d�� � ����9Ի�=@@3@���=��"P �{
��P�s���0.�?�y��W(�c
Z�vt]����`�r>�~T��j�ϱ*� n�_!������w�*�GtU���b�oj~�      a   *  x�]SA�� [���Z�����1Vſ�ZL� |U���{�5��~�fĿf]����)��@���	}`6��4O`9v8��J���	���;y��S�[3~{7��q|�X�$f��ſ�?��" E%
�$&����b��b�LW�����zD�A��Ƌ��1 Z}'=����C0x�bB����Ng@
�)k��OY�<������3j�	�OG�1�v��#�a��l��60�c)akQ�91A�'����>�H�p��,ܱ�З��,���u������w)��f��      c   a   x�����0�7&�4$�K���IG��B��?��#�F�	�U'�w�c�i�'i>�-��
��&��6RaKa�-0Ji��֠+uRq�Gi��m<      e   o   x���� 1��q1C�^��:6ia>H��d��̲�=�9/N{kS/�F�xHҰͰݰ:ð�4��2��6��q������r
9�ID��Hԑ��@N(��IE��?y��>      g      x������ � �      i      x������ � �      k      x������ � �      m     x���Mn$7���S���H�w9&��f�M#'��E��3��R"��X�l�F�.����Ģ'��G���ϟn�cJ7>�{`S(�M���)i����}��&�)U��T*��Si�ڄ6���e��Oe`0.�4:�1�iy_�B�_��}Dҥ(��ICY���TR$�+DQX����p��G�� �A �V�V��;Ŋ�Ӆ���E#ˮi�<!{�e��+Xk缞��������?�>��|���_*.q�z���f�v񌭤_<���W\�'�\��{A'2�{��&�ݬ�"S����R2���u*HR!դ�o���y��'}M�es���#Z02`�Z.2`��B��yar*�,KskV<\�-y�(nH����H��`d����BхР�ނQ�7�kF��÷d���[2�@���@0q�m�(@�5 �!�_�R��Ʉ�|EM&U>g��)n�tQ�Mi���*�H����!��H)�bRWE��0�9���$d�v�F��@�R�D
w�+��b�D�łC `H
�h���V�*T8r
�h��#KD����|�nGKDO�����合t�~����3��c�`t��N�ҝ�,:Ф���0)���G2�RZ� Sz9�z0&��l�!�R=�zd�j0�(x����G5i�h4�Z<�H�x������.
D��h�+����!:����;-PZHFp6%@q���*�oS�ݔ�C�ewX��o�|���x�٭>�$���}�^��h�jjƋ�l��������q���VE���F��(:�؊iY�ƞ���!�ۏ������K��s�¸�u�v<=�b�M�Q6�QҮ��J=g��}���ݾ<�~}���E����?(�"m���9�����1�9����!�e��k�;u/
�Q�����!��*D*!��`㺊��6�v��q����ŷ��E�ŝ�H��ˌvH��L�	Д��
Дأ��טZY�qo�H����^P|2��V���t�!�����A�w鶪��e[Lf�3��Ǉ��5���      o      x������ � �      q   �   x�}�ٍ!C�ǹ���Nb#���j�p}��j=a�2ŗ�����)?����k��Wfu>�y�cB��a�e`DړW�:�w$�.'�cF����*�W��j�WEۣ�Jޑ���7�@��@�%g	���ú:��=����X�O2���ɱ��3d�����c�i�|�,�e[���Цj{JU���9�W�tD�X#p��`��E:�R��1�uu/ϱ��.{�0@icԣK�_"� >�ϐ�      s   �   x�m�Mn!���]�b\�'x�w��_͌Z���
�J�� M�j?q�o��}T��V\VQS�,^K-��U�����p���QD�0�C�|����F1��������o��禺OW7VPgט�-0Gc�^Ԍ�p�M ���I��_������!8oxx+�kB���X~�5��c�k�حi@�'����A����?��n���v�
�?�f�uh=�x}�,Ql�      u   �   x�U�Y!D���aq�����1�L��1<�&���!��.sڋ��j�A?xw�Q�b{񎖩^yc��/h�|r�\7\���=�Ī�3jwwhզ�ux��[�1ˏ��6�]L3��z��Z̛ۛ���!�-6�      w   �   x�]��!��Ü��K�����"��Glh��ߢ�b~��-��MhA�ްX�\�]h��V��!�h�7�X�І����Ҏ�鬴��7F�1Aי�A'f`���«:�Ѕ�`��>b�������?�z��a_�v�/j�v�����x] ޅ�J�      y      x������ � �      {      x������ � �     