PGDMP     )    5                {            plan_estrategico_acoplado    15.3    15.3 �              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    20343    plan_estrategico_acoplado    DATABASE     �   CREATE DATABASE plan_estrategico_acoplado WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
 )   DROP DATABASE plan_estrategico_acoplado;
                postgres    false            �            1259    20344    admin_module_universidades    TABLE     �   CREATE TABLE public.admin_module_universidades (
    "IDUniversidad" integer NOT NULL,
    "Abreviacion" character varying(10) NOT NULL,
    "Nombre" character varying(100),
    "Plan_estudios" character varying(15)
);
 .   DROP TABLE public.admin_module_universidades;
       public         heap    postgres    false            �            1259    20347 ,   admin_module_universidades_IDUniversidad_seq    SEQUENCE     �   CREATE SEQUENCE public."admin_module_universidades_IDUniversidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."admin_module_universidades_IDUniversidad_seq";
       public          postgres    false    214                       0    0 ,   admin_module_universidades_IDUniversidad_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."admin_module_universidades_IDUniversidad_seq" OWNED BY public.admin_module_universidades."IDUniversidad";
          public          postgres    false    215            �            1259    20348    admin_module_usuarios    TABLE     >  CREATE TABLE public.admin_module_usuarios (
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
       public         heap    postgres    false            �            1259    20353 #   admin_module_usuarios_IDUsuario_seq    SEQUENCE     �   CREATE SEQUENCE public."admin_module_usuarios_IDUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."admin_module_usuarios_IDUsuario_seq";
       public          postgres    false    216                       0    0 #   admin_module_usuarios_IDUsuario_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."admin_module_usuarios_IDUsuario_seq" OWNED BY public.admin_module_usuarios."IDUsuario";
          public          postgres    false    217            �            1259    20354    admin_module_usuarios_groups    TABLE     �   CREATE TABLE public.admin_module_usuarios_groups (
    id bigint NOT NULL,
    usuarios_id integer NOT NULL,
    group_id integer NOT NULL
);
 0   DROP TABLE public.admin_module_usuarios_groups;
       public         heap    postgres    false            �            1259    20357 #   admin_module_usuarios_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_module_usuarios_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_module_usuarios_groups_id_seq;
       public          postgres    false    218                       0    0 #   admin_module_usuarios_groups_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_module_usuarios_groups_id_seq OWNED BY public.admin_module_usuarios_groups.id;
          public          postgres    false    219            �            1259    20358 &   admin_module_usuarios_user_permissions    TABLE     �   CREATE TABLE public.admin_module_usuarios_user_permissions (
    id bigint NOT NULL,
    usuarios_id integer NOT NULL,
    permission_id integer NOT NULL
);
 :   DROP TABLE public.admin_module_usuarios_user_permissions;
       public         heap    postgres    false            �            1259    20361 -   admin_module_usuarios_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_module_usuarios_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.admin_module_usuarios_user_permissions_id_seq;
       public          postgres    false    220                        0    0 -   admin_module_usuarios_user_permissions_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.admin_module_usuarios_user_permissions_id_seq OWNED BY public.admin_module_usuarios_user_permissions.id;
          public          postgres    false    221            �            1259    20362 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    20365    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    222            !           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    223            �            1259    20366    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    20369    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    224            "           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    225            �            1259    20370    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    20373    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    226            #           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    227            �            1259    20374    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false                       1259    20786    crena_carreras    TABLE     �   CREATE TABLE public.crena_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 "   DROP TABLE public.crena_carreras;
       public         heap    postgres    false                       1259    20789    crena_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.crena_carreras_idcarrera_seq;
       public          postgres    false    276            $           0    0    crena_carreras_idcarrera_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.crena_carreras_idcarrera_seq OWNED BY public.crena_carreras.idcarrera;
          public          postgres    false    277                       1259    20790    crena_eficiencia_ire    TABLE        CREATE TABLE public.crena_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 (   DROP TABLE public.crena_eficiencia_ire;
       public         heap    postgres    false                       1259    20795    crena_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.crena_eficiencia_ire_ideire_seq;
       public          postgres    false    278            %           0    0    crena_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.crena_eficiencia_ire_ideire_seq OWNED BY public.crena_eficiencia_ire.ideire;
          public          postgres    false    279                       1259    20796    crena_indice_colocacion    TABLE     �   CREATE TABLE public.crena_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 +   DROP TABLE public.crena_indice_colocacion;
       public         heap    postgres    false                       1259    20801     crena_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_indice_colocacion_idic_seq;
       public          postgres    false    280            &           0    0     crena_indice_colocacion_idic_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_indice_colocacion_idic_seq OWNED BY public.crena_indice_colocacion.idic;
          public          postgres    false    281                       1259    20802    crena_indice_ptc    TABLE     �  CREATE TABLE public.crena_indice_ptc (
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
       public         heap    postgres    false                       1259    20805    crena_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.crena_indice_ptc_idiptc_seq;
       public          postgres    false    282            '           0    0    crena_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.crena_indice_ptc_idiptc_seq OWNED BY public.crena_indice_ptc.idiptc;
          public          postgres    false    283                       1259    20806    crena_indice_servicios    TABLE     �  CREATE TABLE public.crena_indice_servicios (
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
       public         heap    postgres    false                       1259    20811    crena_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.crena_indice_servicios_idis_seq;
       public          postgres    false    284            (           0    0    crena_indice_servicios_idis_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.crena_indice_servicios_idis_seq OWNED BY public.crena_indice_servicios.idis;
          public          postgres    false    285                       1259    20812 
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
       public         heap    postgres    false                       1259    20817    crena_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.crena_iseg_idiseg_seq;
       public          postgres    false    286            )           0    0    crena_iseg_idiseg_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.crena_iseg_idiseg_seq OWNED BY public.crena_iseg.idiseg;
          public          postgres    false    287                        1259    20818 
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
       public         heap    postgres    false            !           1259    20823    crena_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.crena_isem_idisem_seq;
       public          postgres    false    288            *           0    0    crena_isem_idisem_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.crena_isem_idisem_seq OWNED BY public.crena_isem.idisem;
          public          postgres    false    289            "           1259    20824    crena_tasa_acreditacion    TABLE       CREATE TABLE public.crena_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 +   DROP TABLE public.crena_tasa_acreditacion;
       public         heap    postgres    false            #           1259    20827     crena_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_acreditacion_idta_seq;
       public          postgres    false    290            +           0    0     crena_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_acreditacion_idta_seq OWNED BY public.crena_tasa_acreditacion.idta;
          public          postgres    false    291            $           1259    20828    crena_tasa_cobertura    TABLE     �   CREATE TABLE public.crena_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 (   DROP TABLE public.crena_tasa_cobertura;
       public         heap    postgres    false            %           1259    20833    crena_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.crena_tasa_cobertura_idtc_seq;
       public          postgres    false    292            ,           0    0    crena_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.crena_tasa_cobertura_idtc_seq OWNED BY public.crena_tasa_cobertura.idtc;
          public          postgres    false    293            &           1259    20834    crena_tasa_docentes    TABLE     �   CREATE TABLE public.crena_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 '   DROP TABLE public.crena_tasa_docentes;
       public         heap    postgres    false            '           1259    20839    crena_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.crena_tasa_docentes_idtd_seq;
       public          postgres    false    294            -           0    0    crena_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.crena_tasa_docentes_idtd_seq OWNED BY public.crena_tasa_docentes.idtd;
          public          postgres    false    295            (           1259    20840    crena_tasa_mov_alumnos    TABLE       CREATE TABLE public.crena_tasa_mov_alumnos (
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
       public         heap    postgres    false            )           1259    20845     crena_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    296            .           0    0     crena_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_mov_alumnos_idtma_seq OWNED BY public.crena_tasa_mov_alumnos.idtma;
          public          postgres    false    297            *           1259    20846    crena_tasa_mov_docentes    TABLE       CREATE TABLE public.crena_tasa_mov_docentes (
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
       public         heap    postgres    false            +           1259    20851 !   crena_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.crena_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    298            /           0    0 !   crena_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.crena_tasa_mov_docentes_idtmd_seq OWNED BY public.crena_tasa_mov_docentes.idtmd;
          public          postgres    false    299            ,           1259    20852    crena_tasa_pe_asat    TABLE     �   CREATE TABLE public.crena_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 &   DROP TABLE public.crena_tasa_pe_asat;
       public         heap    postgres    false            -           1259    20855     crena_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    300            0           0    0     crena_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_pe_asat_idtpeasat_seq OWNED BY public.crena_tasa_pe_asat.idtpeasat;
          public          postgres    false    301            .           1259    20856    crena_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.crena_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 -   DROP TABLE public.crena_tasa_pe_pertinencia;
       public         heap    postgres    false            /           1259    20859 $   crena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.crena_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    302            1           0    0 $   crena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.crena_tasa_pe_pertinencia_idtpep_seq OWNED BY public.crena_tasa_pe_pertinencia.idtpep;
          public          postgres    false    303            0           1259    20860    crena_tasa_puntaje_egel    TABLE     @  CREATE TABLE public.crena_tasa_puntaje_egel (
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
       public         heap    postgres    false            1           1259    20865 $   crena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.crena_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    304            2           0    0 $   crena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.crena_tasa_puntaje_egel_idtpegel_seq OWNED BY public.crena_tasa_puntaje_egel.idtpegel;
          public          postgres    false    305            2           1259    20866    crena_tasa_puntaje_ex    TABLE     <  CREATE TABLE public.crena_tasa_puntaje_ex (
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
       public         heap    postgres    false            3           1259    20871     crena_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.crena_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crena_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    306            3           0    0     crena_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crena_tasa_puntaje_ex_idtpex_seq OWNED BY public.crena_tasa_puntaje_ex.idtpex;
          public          postgres    false    307            �            1259    20377    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    20383    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    229            4           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    230            �            1259    20384    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    20387    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    231            5           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    232            �            1259    20388    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    20393    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    233            6           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    234            �            1259    20394    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            4           1259    20872    ena_carreras    TABLE     �   CREATE TABLE public.ena_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.ena_carreras;
       public         heap    postgres    false            5           1259    20875    ena_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ena_carreras_idcarrera_seq;
       public          postgres    false    308            7           0    0    ena_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ena_carreras_idcarrera_seq OWNED BY public.ena_carreras.idcarrera;
          public          postgres    false    309            6           1259    20876    ena_eficiencia_ire    TABLE     �   CREATE TABLE public.ena_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.ena_eficiencia_ire;
       public         heap    postgres    false            7           1259    20881    ena_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ena_eficiencia_ire_ideire_seq;
       public          postgres    false    310            8           0    0    ena_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ena_eficiencia_ire_ideire_seq OWNED BY public.ena_eficiencia_ire.ideire;
          public          postgres    false    311            8           1259    20882    ena_indice_colocacion    TABLE     �   CREATE TABLE public.ena_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.ena_indice_colocacion;
       public         heap    postgres    false            9           1259    20887    ena_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_indice_colocacion_idic_seq;
       public          postgres    false    312            9           0    0    ena_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_indice_colocacion_idic_seq OWNED BY public.ena_indice_colocacion.idic;
          public          postgres    false    313            :           1259    20888    ena_indice_ptc    TABLE     �  CREATE TABLE public.ena_indice_ptc (
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
       public         heap    postgres    false            ;           1259    20891    ena_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ena_indice_ptc_idiptc_seq;
       public          postgres    false    314            :           0    0    ena_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ena_indice_ptc_idiptc_seq OWNED BY public.ena_indice_ptc.idiptc;
          public          postgres    false    315            <           1259    20892    ena_indice_servicios    TABLE     �  CREATE TABLE public.ena_indice_servicios (
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
       public         heap    postgres    false            =           1259    20897    ena_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ena_indice_servicios_idis_seq;
       public          postgres    false    316            ;           0    0    ena_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ena_indice_servicios_idis_seq OWNED BY public.ena_indice_servicios.idis;
          public          postgres    false    317            >           1259    20898    ena_iseg    TABLE     �  CREATE TABLE public.ena_iseg (
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
       public         heap    postgres    false            ?           1259    20903    ena_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ena_iseg_idiseg_seq;
       public          postgres    false    318            <           0    0    ena_iseg_idiseg_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ena_iseg_idiseg_seq OWNED BY public.ena_iseg.idiseg;
          public          postgres    false    319            @           1259    20904    ena_isem    TABLE     _  CREATE TABLE public.ena_isem (
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
       public         heap    postgres    false            A           1259    20909    ena_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ena_isem_idisem_seq;
       public          postgres    false    320            =           0    0    ena_isem_idisem_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ena_isem_idisem_seq OWNED BY public.ena_isem.idisem;
          public          postgres    false    321            B           1259    20910    ena_tasa_acreditacion    TABLE     �   CREATE TABLE public.ena_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.ena_tasa_acreditacion;
       public         heap    postgres    false            C           1259    20913    ena_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_acreditacion_idta_seq;
       public          postgres    false    322            >           0    0    ena_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_acreditacion_idta_seq OWNED BY public.ena_tasa_acreditacion.idta;
          public          postgres    false    323            D           1259    20914    ena_tasa_cobertura    TABLE     �   CREATE TABLE public.ena_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.ena_tasa_cobertura;
       public         heap    postgres    false            E           1259    20919    ena_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ena_tasa_cobertura_idtc_seq;
       public          postgres    false    324            ?           0    0    ena_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ena_tasa_cobertura_idtc_seq OWNED BY public.ena_tasa_cobertura.idtc;
          public          postgres    false    325            F           1259    20920    ena_tasa_docentes    TABLE     �   CREATE TABLE public.ena_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.ena_tasa_docentes;
       public         heap    postgres    false            G           1259    20925    ena_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ena_tasa_docentes_idtd_seq;
       public          postgres    false    326            @           0    0    ena_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ena_tasa_docentes_idtd_seq OWNED BY public.ena_tasa_docentes.idtd;
          public          postgres    false    327            H           1259    20926    ena_tasa_mov_alumnos    TABLE       CREATE TABLE public.ena_tasa_mov_alumnos (
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
       public         heap    postgres    false            I           1259    20931    ena_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    328            A           0    0    ena_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_mov_alumnos_idtma_seq OWNED BY public.ena_tasa_mov_alumnos.idtma;
          public          postgres    false    329            J           1259    20932    ena_tasa_mov_docentes    TABLE       CREATE TABLE public.ena_tasa_mov_docentes (
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
       public         heap    postgres    false            K           1259    20937    ena_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ena_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    330            B           0    0    ena_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ena_tasa_mov_docentes_idtmd_seq OWNED BY public.ena_tasa_mov_docentes.idtmd;
          public          postgres    false    331            L           1259    20938    ena_tasa_pe_asat    TABLE     �   CREATE TABLE public.ena_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.ena_tasa_pe_asat;
       public         heap    postgres    false            M           1259    20941    ena_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    332            C           0    0    ena_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_pe_asat_idtpeasat_seq OWNED BY public.ena_tasa_pe_asat.idtpeasat;
          public          postgres    false    333            N           1259    20942    ena_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.ena_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.ena_tasa_pe_pertinencia;
       public         heap    postgres    false            O           1259    20945 "   ena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ena_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    334            D           0    0 "   ena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ena_tasa_pe_pertinencia_idtpep_seq OWNED BY public.ena_tasa_pe_pertinencia.idtpep;
          public          postgres    false    335            P           1259    20946    ena_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.ena_tasa_puntaje_egel (
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
       public         heap    postgres    false            Q           1259    20951 "   ena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ena_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    336            E           0    0 "   ena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ena_tasa_puntaje_egel_idtpegel_seq OWNED BY public.ena_tasa_puntaje_egel.idtpegel;
          public          postgres    false    337            R           1259    20952    ena_tasa_puntaje_ex    TABLE     :  CREATE TABLE public.ena_tasa_puntaje_ex (
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
       public         heap    postgres    false            S           1259    20957    ena_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.ena_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ena_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    338            F           0    0    ena_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ena_tasa_puntaje_ex_idtpex_seq OWNED BY public.ena_tasa_puntaje_ex.idtpex;
          public          postgres    false    339            T           1259    20958    enrjsm_carreras    TABLE     �   CREATE TABLE public.enrjsm_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 #   DROP TABLE public.enrjsm_carreras;
       public         heap    postgres    false            U           1259    20961    enrjsm_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.enrjsm_carreras_idcarrera_seq;
       public          postgres    false    340            G           0    0    enrjsm_carreras_idcarrera_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.enrjsm_carreras_idcarrera_seq OWNED BY public.enrjsm_carreras.idcarrera;
          public          postgres    false    341            V           1259    20962    enrjsm_eficiencia_ire    TABLE       CREATE TABLE public.enrjsm_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 )   DROP TABLE public.enrjsm_eficiencia_ire;
       public         heap    postgres    false            W           1259    20967     enrjsm_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.enrjsm_eficiencia_ire_ideire_seq;
       public          postgres    false    342            H           0    0     enrjsm_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.enrjsm_eficiencia_ire_ideire_seq OWNED BY public.enrjsm_eficiencia_ire.ideire;
          public          postgres    false    343            X           1259    20968    enrjsm_indice_colocacion    TABLE     �   CREATE TABLE public.enrjsm_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 ,   DROP TABLE public.enrjsm_indice_colocacion;
       public         heap    postgres    false            Y           1259    20973 !   enrjsm_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_indice_colocacion_idic_seq;
       public          postgres    false    344            I           0    0 !   enrjsm_indice_colocacion_idic_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_indice_colocacion_idic_seq OWNED BY public.enrjsm_indice_colocacion.idic;
          public          postgres    false    345            Z           1259    20974    enrjsm_indice_ptc    TABLE     �  CREATE TABLE public.enrjsm_indice_ptc (
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
       public         heap    postgres    false            [           1259    20977    enrjsm_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.enrjsm_indice_ptc_idiptc_seq;
       public          postgres    false    346            J           0    0    enrjsm_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.enrjsm_indice_ptc_idiptc_seq OWNED BY public.enrjsm_indice_ptc.idiptc;
          public          postgres    false    347            \           1259    20978    enrjsm_indice_servicios    TABLE     �  CREATE TABLE public.enrjsm_indice_servicios (
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
       public         heap    postgres    false            ]           1259    20983     enrjsm_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.enrjsm_indice_servicios_idis_seq;
       public          postgres    false    348            K           0    0     enrjsm_indice_servicios_idis_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.enrjsm_indice_servicios_idis_seq OWNED BY public.enrjsm_indice_servicios.idis;
          public          postgres    false    349            ^           1259    20984    enrjsm_iseg    TABLE     �  CREATE TABLE public.enrjsm_iseg (
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
       public         heap    postgres    false            _           1259    20989    enrjsm_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.enrjsm_iseg_idiseg_seq;
       public          postgres    false    350            L           0    0    enrjsm_iseg_idiseg_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.enrjsm_iseg_idiseg_seq OWNED BY public.enrjsm_iseg.idiseg;
          public          postgres    false    351            `           1259    20990    enrjsm_isem    TABLE     b  CREATE TABLE public.enrjsm_isem (
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
       public         heap    postgres    false            a           1259    20995    enrjsm_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.enrjsm_isem_idisem_seq;
       public          postgres    false    352            M           0    0    enrjsm_isem_idisem_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.enrjsm_isem_idisem_seq OWNED BY public.enrjsm_isem.idisem;
          public          postgres    false    353            b           1259    20996    enrjsm_tasa_acreditacion    TABLE       CREATE TABLE public.enrjsm_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 ,   DROP TABLE public.enrjsm_tasa_acreditacion;
       public         heap    postgres    false            c           1259    20999 !   enrjsm_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_acreditacion_idta_seq;
       public          postgres    false    354            N           0    0 !   enrjsm_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_acreditacion_idta_seq OWNED BY public.enrjsm_tasa_acreditacion.idta;
          public          postgres    false    355            d           1259    21000    enrjsm_tasa_cobertura    TABLE     �   CREATE TABLE public.enrjsm_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 )   DROP TABLE public.enrjsm_tasa_cobertura;
       public         heap    postgres    false            e           1259    21005    enrjsm_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.enrjsm_tasa_cobertura_idtc_seq;
       public          postgres    false    356            O           0    0    enrjsm_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.enrjsm_tasa_cobertura_idtc_seq OWNED BY public.enrjsm_tasa_cobertura.idtc;
          public          postgres    false    357            f           1259    21006    enrjsm_tasa_docentes    TABLE     �   CREATE TABLE public.enrjsm_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 (   DROP TABLE public.enrjsm_tasa_docentes;
       public         heap    postgres    false            g           1259    21011    enrjsm_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.enrjsm_tasa_docentes_idtd_seq;
       public          postgres    false    358            P           0    0    enrjsm_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.enrjsm_tasa_docentes_idtd_seq OWNED BY public.enrjsm_tasa_docentes.idtd;
          public          postgres    false    359            h           1259    21012    enrjsm_tasa_mov_alumnos    TABLE       CREATE TABLE public.enrjsm_tasa_mov_alumnos (
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
       public         heap    postgres    false            i           1259    21017 !   enrjsm_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    360            Q           0    0 !   enrjsm_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_mov_alumnos_idtma_seq OWNED BY public.enrjsm_tasa_mov_alumnos.idtma;
          public          postgres    false    361            j           1259    21018    enrjsm_tasa_mov_docentes    TABLE       CREATE TABLE public.enrjsm_tasa_mov_docentes (
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
       public         heap    postgres    false            k           1259    21023 "   enrjsm_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.enrjsm_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    362            R           0    0 "   enrjsm_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.enrjsm_tasa_mov_docentes_idtmd_seq OWNED BY public.enrjsm_tasa_mov_docentes.idtmd;
          public          postgres    false    363            l           1259    21024    enrjsm_tasa_pe_asat    TABLE     �   CREATE TABLE public.enrjsm_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 '   DROP TABLE public.enrjsm_tasa_pe_asat;
       public         heap    postgres    false            m           1259    21027 !   enrjsm_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    364            S           0    0 !   enrjsm_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_pe_asat_idtpeasat_seq OWNED BY public.enrjsm_tasa_pe_asat.idtpeasat;
          public          postgres    false    365            n           1259    21028    enrjsm_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.enrjsm_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 .   DROP TABLE public.enrjsm_tasa_pe_pertinencia;
       public         heap    postgres    false            o           1259    21031 %   enrjsm_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.enrjsm_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    366            T           0    0 %   enrjsm_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.enrjsm_tasa_pe_pertinencia_idtpep_seq OWNED BY public.enrjsm_tasa_pe_pertinencia.idtpep;
          public          postgres    false    367            p           1259    21032    enrjsm_tasa_puntaje_egel    TABLE     A  CREATE TABLE public.enrjsm_tasa_puntaje_egel (
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
       public         heap    postgres    false            q           1259    21037 %   enrjsm_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.enrjsm_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    368            U           0    0 %   enrjsm_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.enrjsm_tasa_puntaje_egel_idtpegel_seq OWNED BY public.enrjsm_tasa_puntaje_egel.idtpegel;
          public          postgres    false    369            r           1259    21038    enrjsm_tasa_puntaje_ex    TABLE     =  CREATE TABLE public.enrjsm_tasa_puntaje_ex (
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
       public         heap    postgres    false            s           1259    21043 !   enrjsm_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.enrjsm_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrjsm_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    370            V           0    0 !   enrjsm_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrjsm_tasa_puntaje_ex_idtpex_seq OWNED BY public.enrjsm_tasa_puntaje_ex.idtpex;
          public          postgres    false    371            t           1259    21044    enrr_carreras    TABLE     �   CREATE TABLE public.enrr_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 !   DROP TABLE public.enrr_carreras;
       public         heap    postgres    false            u           1259    21047    enrr_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.enrr_carreras_idcarrera_seq;
       public          postgres    false    372            W           0    0    enrr_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.enrr_carreras_idcarrera_seq OWNED BY public.enrr_carreras.idcarrera;
          public          postgres    false    373            v           1259    21048    enrr_eficiencia_ire    TABLE     �   CREATE TABLE public.enrr_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.enrr_eficiencia_ire;
       public         heap    postgres    false            w           1259    21053    enrr_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.enrr_eficiencia_ire_ideire_seq;
       public          postgres    false    374            X           0    0    enrr_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.enrr_eficiencia_ire_ideire_seq OWNED BY public.enrr_eficiencia_ire.ideire;
          public          postgres    false    375            x           1259    21054    enrr_indice_colocacion    TABLE     �   CREATE TABLE public.enrr_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.enrr_indice_colocacion;
       public         heap    postgres    false            y           1259    21059    enrr_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_indice_colocacion_idic_seq;
       public          postgres    false    376            Y           0    0    enrr_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_indice_colocacion_idic_seq OWNED BY public.enrr_indice_colocacion.idic;
          public          postgres    false    377            z           1259    21060    enrr_indice_ptc    TABLE     �  CREATE TABLE public.enrr_indice_ptc (
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
       public         heap    postgres    false            {           1259    21063    enrr_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.enrr_indice_ptc_idiptc_seq;
       public          postgres    false    378            Z           0    0    enrr_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.enrr_indice_ptc_idiptc_seq OWNED BY public.enrr_indice_ptc.idiptc;
          public          postgres    false    379            |           1259    21064    enrr_indice_servicios    TABLE     �  CREATE TABLE public.enrr_indice_servicios (
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
       public         heap    postgres    false            }           1259    21069    enrr_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.enrr_indice_servicios_idis_seq;
       public          postgres    false    380            [           0    0    enrr_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.enrr_indice_servicios_idis_seq OWNED BY public.enrr_indice_servicios.idis;
          public          postgres    false    381            ~           1259    21070 	   enrr_iseg    TABLE     �  CREATE TABLE public.enrr_iseg (
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
       public         heap    postgres    false                       1259    21075    enrr_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.enrr_iseg_idiseg_seq;
       public          postgres    false    382            \           0    0    enrr_iseg_idiseg_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.enrr_iseg_idiseg_seq OWNED BY public.enrr_iseg.idiseg;
          public          postgres    false    383            �           1259    21076 	   enrr_isem    TABLE     `  CREATE TABLE public.enrr_isem (
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
       public         heap    postgres    false            �           1259    21081    enrr_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.enrr_isem_idisem_seq;
       public          postgres    false    384            ]           0    0    enrr_isem_idisem_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.enrr_isem_idisem_seq OWNED BY public.enrr_isem.idisem;
          public          postgres    false    385            �           1259    21082    enrr_tasa_acreditacion    TABLE        CREATE TABLE public.enrr_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.enrr_tasa_acreditacion;
       public         heap    postgres    false            �           1259    21085    enrr_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_acreditacion_idta_seq;
       public          postgres    false    386            ^           0    0    enrr_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_acreditacion_idta_seq OWNED BY public.enrr_tasa_acreditacion.idta;
          public          postgres    false    387            �           1259    21086    enrr_tasa_cobertura    TABLE     �   CREATE TABLE public.enrr_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.enrr_tasa_cobertura;
       public         heap    postgres    false            �           1259    21091    enrr_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.enrr_tasa_cobertura_idtc_seq;
       public          postgres    false    388            _           0    0    enrr_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.enrr_tasa_cobertura_idtc_seq OWNED BY public.enrr_tasa_cobertura.idtc;
          public          postgres    false    389            �           1259    21092    enrr_tasa_docentes    TABLE     �   CREATE TABLE public.enrr_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.enrr_tasa_docentes;
       public         heap    postgres    false            �           1259    21097    enrr_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.enrr_tasa_docentes_idtd_seq;
       public          postgres    false    390            `           0    0    enrr_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.enrr_tasa_docentes_idtd_seq OWNED BY public.enrr_tasa_docentes.idtd;
          public          postgres    false    391            �           1259    21098    enrr_tasa_mov_alumnos    TABLE       CREATE TABLE public.enrr_tasa_mov_alumnos (
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
       public         heap    postgres    false            �           1259    21103    enrr_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    392            a           0    0    enrr_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_mov_alumnos_idtma_seq OWNED BY public.enrr_tasa_mov_alumnos.idtma;
          public          postgres    false    393            �           1259    21104    enrr_tasa_mov_docentes    TABLE       CREATE TABLE public.enrr_tasa_mov_docentes (
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
       public         heap    postgres    false            �           1259    21109     enrr_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.enrr_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    394            b           0    0     enrr_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.enrr_tasa_mov_docentes_idtmd_seq OWNED BY public.enrr_tasa_mov_docentes.idtmd;
          public          postgres    false    395            �           1259    21110    enrr_tasa_pe_asat    TABLE     �   CREATE TABLE public.enrr_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.enrr_tasa_pe_asat;
       public         heap    postgres    false            �           1259    21113    enrr_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    396            c           0    0    enrr_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_pe_asat_idtpeasat_seq OWNED BY public.enrr_tasa_pe_asat.idtpeasat;
          public          postgres    false    397            �           1259    21114    enrr_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.enrr_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.enrr_tasa_pe_pertinencia;
       public         heap    postgres    false            �           1259    21117 #   enrr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.enrr_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    398            d           0    0 #   enrr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.enrr_tasa_pe_pertinencia_idtpep_seq OWNED BY public.enrr_tasa_pe_pertinencia.idtpep;
          public          postgres    false    399            �           1259    21118    enrr_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.enrr_tasa_puntaje_egel (
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
       public         heap    postgres    false            �           1259    21123 #   enrr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.enrr_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    400            e           0    0 #   enrr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.enrr_tasa_puntaje_egel_idtpegel_seq OWNED BY public.enrr_tasa_puntaje_egel.idtpegel;
          public          postgres    false    401            �           1259    21124    enrr_tasa_puntaje_ex    TABLE     ;  CREATE TABLE public.enrr_tasa_puntaje_ex (
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
       public         heap    postgres    false            �           1259    21129    enrr_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.enrr_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.enrr_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    402            f           0    0    enrr_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.enrr_tasa_puntaje_ex_idtpex_seq OWNED BY public.enrr_tasa_puntaje_ex.idtpex;
          public          postgres    false    403            �           1259    21130    ensfa_carreras    TABLE     �   CREATE TABLE public.ensfa_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 "   DROP TABLE public.ensfa_carreras;
       public         heap    postgres    false            �           1259    21133    ensfa_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ensfa_carreras_idcarrera_seq;
       public          postgres    false    404            g           0    0    ensfa_carreras_idcarrera_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ensfa_carreras_idcarrera_seq OWNED BY public.ensfa_carreras.idcarrera;
          public          postgres    false    405            �           1259    21134    ensfa_eficiencia_ire    TABLE        CREATE TABLE public.ensfa_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 (   DROP TABLE public.ensfa_eficiencia_ire;
       public         heap    postgres    false            �           1259    21139    ensfa_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ensfa_eficiencia_ire_ideire_seq;
       public          postgres    false    406            h           0    0    ensfa_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ensfa_eficiencia_ire_ideire_seq OWNED BY public.ensfa_eficiencia_ire.ideire;
          public          postgres    false    407            �           1259    21140    ensfa_indice_colocacion    TABLE     �   CREATE TABLE public.ensfa_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 +   DROP TABLE public.ensfa_indice_colocacion;
       public         heap    postgres    false            �           1259    21145     ensfa_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_indice_colocacion_idic_seq;
       public          postgres    false    408            i           0    0     ensfa_indice_colocacion_idic_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_indice_colocacion_idic_seq OWNED BY public.ensfa_indice_colocacion.idic;
          public          postgres    false    409            �           1259    21146    ensfa_indice_ptc    TABLE     �  CREATE TABLE public.ensfa_indice_ptc (
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
       public         heap    postgres    false            �           1259    21149    ensfa_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ensfa_indice_ptc_idiptc_seq;
       public          postgres    false    410            j           0    0    ensfa_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ensfa_indice_ptc_idiptc_seq OWNED BY public.ensfa_indice_ptc.idiptc;
          public          postgres    false    411            �           1259    21150    ensfa_indice_servicios    TABLE     �  CREATE TABLE public.ensfa_indice_servicios (
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
       public         heap    postgres    false            �           1259    21155    ensfa_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ensfa_indice_servicios_idis_seq;
       public          postgres    false    412            k           0    0    ensfa_indice_servicios_idis_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ensfa_indice_servicios_idis_seq OWNED BY public.ensfa_indice_servicios.idis;
          public          postgres    false    413            �           1259    21156 
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
       public         heap    postgres    false            �           1259    21161    ensfa_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ensfa_iseg_idiseg_seq;
       public          postgres    false    414            l           0    0    ensfa_iseg_idiseg_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ensfa_iseg_idiseg_seq OWNED BY public.ensfa_iseg.idiseg;
          public          postgres    false    415            �           1259    21162 
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
       public         heap    postgres    false            �           1259    21167    ensfa_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ensfa_isem_idisem_seq;
       public          postgres    false    416            m           0    0    ensfa_isem_idisem_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ensfa_isem_idisem_seq OWNED BY public.ensfa_isem.idisem;
          public          postgres    false    417            �           1259    21168    ensfa_tasa_acreditacion    TABLE       CREATE TABLE public.ensfa_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 +   DROP TABLE public.ensfa_tasa_acreditacion;
       public         heap    postgres    false            �           1259    21171     ensfa_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_acreditacion_idta_seq;
       public          postgres    false    418            n           0    0     ensfa_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_acreditacion_idta_seq OWNED BY public.ensfa_tasa_acreditacion.idta;
          public          postgres    false    419            �           1259    21172    ensfa_tasa_cobertura    TABLE     �   CREATE TABLE public.ensfa_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 (   DROP TABLE public.ensfa_tasa_cobertura;
       public         heap    postgres    false            �           1259    21177    ensfa_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ensfa_tasa_cobertura_idtc_seq;
       public          postgres    false    420            o           0    0    ensfa_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ensfa_tasa_cobertura_idtc_seq OWNED BY public.ensfa_tasa_cobertura.idtc;
          public          postgres    false    421            �           1259    21178    ensfa_tasa_docentes    TABLE     �   CREATE TABLE public.ensfa_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 '   DROP TABLE public.ensfa_tasa_docentes;
       public         heap    postgres    false            �           1259    21183    ensfa_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ensfa_tasa_docentes_idtd_seq;
       public          postgres    false    422            p           0    0    ensfa_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ensfa_tasa_docentes_idtd_seq OWNED BY public.ensfa_tasa_docentes.idtd;
          public          postgres    false    423            �           1259    21184    ensfa_tasa_mov_alumnos    TABLE       CREATE TABLE public.ensfa_tasa_mov_alumnos (
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
       public         heap    postgres    false            �           1259    21189     ensfa_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    424            q           0    0     ensfa_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_mov_alumnos_idtma_seq OWNED BY public.ensfa_tasa_mov_alumnos.idtma;
          public          postgres    false    425            �           1259    21190    ensfa_tasa_mov_docentes    TABLE       CREATE TABLE public.ensfa_tasa_mov_docentes (
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
       public         heap    postgres    false            �           1259    21195 !   ensfa_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.ensfa_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    426            r           0    0 !   ensfa_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.ensfa_tasa_mov_docentes_idtmd_seq OWNED BY public.ensfa_tasa_mov_docentes.idtmd;
          public          postgres    false    427            �           1259    21196    ensfa_tasa_pe_asat    TABLE     �   CREATE TABLE public.ensfa_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 &   DROP TABLE public.ensfa_tasa_pe_asat;
       public         heap    postgres    false            �           1259    21199     ensfa_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    428            s           0    0     ensfa_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_pe_asat_idtpeasat_seq OWNED BY public.ensfa_tasa_pe_asat.idtpeasat;
          public          postgres    false    429            �           1259    21200    ensfa_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.ensfa_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 -   DROP TABLE public.ensfa_tasa_pe_pertinencia;
       public         heap    postgres    false            �           1259    21203 $   ensfa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.ensfa_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    430            t           0    0 $   ensfa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.ensfa_tasa_pe_pertinencia_idtpep_seq OWNED BY public.ensfa_tasa_pe_pertinencia.idtpep;
          public          postgres    false    431            �           1259    21204    ensfa_tasa_puntaje_egel    TABLE     @  CREATE TABLE public.ensfa_tasa_puntaje_egel (
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
       public         heap    postgres    false            �           1259    21209 $   ensfa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.ensfa_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    432            u           0    0 $   ensfa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.ensfa_tasa_puntaje_egel_idtpegel_seq OWNED BY public.ensfa_tasa_puntaje_egel.idtpegel;
          public          postgres    false    433            �           1259    21210    ensfa_tasa_puntaje_ex    TABLE     <  CREATE TABLE public.ensfa_tasa_puntaje_ex (
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
       public         heap    postgres    false            �           1259    21215     ensfa_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.ensfa_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ensfa_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    434            v           0    0     ensfa_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ensfa_tasa_puntaje_ex_idtpex_seq OWNED BY public.ensfa_tasa_puntaje_ex.idtpex;
          public          postgres    false    435            �           1259    21220    upa_carreras    TABLE     �   CREATE TABLE public.upa_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.upa_carreras;
       public         heap    postgres    false            �           1259    21223    upa_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.upa_carreras_idcarrera_seq;
       public          postgres    false    436            w           0    0    upa_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.upa_carreras_idcarrera_seq OWNED BY public.upa_carreras.idcarrera;
          public          postgres    false    437            �           1259    21224    upa_eficiencia_ire    TABLE     �   CREATE TABLE public.upa_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.upa_eficiencia_ire;
       public         heap    postgres    false            �           1259    21229    upa_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.upa_eficiencia_ire_ideire_seq;
       public          postgres    false    438            x           0    0    upa_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.upa_eficiencia_ire_ideire_seq OWNED BY public.upa_eficiencia_ire.ideire;
          public          postgres    false    439            �           1259    21230    upa_indice_colocacion    TABLE     �   CREATE TABLE public.upa_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.upa_indice_colocacion;
       public         heap    postgres    false            �           1259    21235    upa_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_indice_colocacion_idic_seq;
       public          postgres    false    440            y           0    0    upa_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_indice_colocacion_idic_seq OWNED BY public.upa_indice_colocacion.idic;
          public          postgres    false    441            �           1259    21236    upa_indice_ptc    TABLE     �  CREATE TABLE public.upa_indice_ptc (
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
       public         heap    postgres    false            �           1259    21239    upa_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.upa_indice_ptc_idiptc_seq;
       public          postgres    false    442            z           0    0    upa_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.upa_indice_ptc_idiptc_seq OWNED BY public.upa_indice_ptc.idiptc;
          public          postgres    false    443            �           1259    21240    upa_indice_servicios    TABLE     �  CREATE TABLE public.upa_indice_servicios (
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
       public         heap    postgres    false            �           1259    21245    upa_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.upa_indice_servicios_idis_seq;
       public          postgres    false    444            {           0    0    upa_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.upa_indice_servicios_idis_seq OWNED BY public.upa_indice_servicios.idis;
          public          postgres    false    445            �           1259    21246    upa_iseg    TABLE     �  CREATE TABLE public.upa_iseg (
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
       public         heap    postgres    false            �           1259    21251    upa_iseg_idiseg_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_iseg_idiseg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.upa_iseg_idiseg_seq;
       public          postgres    false    446            |           0    0    upa_iseg_idiseg_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.upa_iseg_idiseg_seq OWNED BY public.upa_iseg.idiseg;
          public          postgres    false    447            �           1259    21252    upa_isem    TABLE     _  CREATE TABLE public.upa_isem (
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
       public         heap    postgres    false            �           1259    21257    upa_isem_idisem_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_isem_idisem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.upa_isem_idisem_seq;
       public          postgres    false    448            }           0    0    upa_isem_idisem_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.upa_isem_idisem_seq OWNED BY public.upa_isem.idisem;
          public          postgres    false    449            �           1259    21258    upa_tasa_acreditacion    TABLE     �   CREATE TABLE public.upa_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.upa_tasa_acreditacion;
       public         heap    postgres    false            �           1259    21261    upa_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_acreditacion_idta_seq;
       public          postgres    false    450            ~           0    0    upa_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_acreditacion_idta_seq OWNED BY public.upa_tasa_acreditacion.idta;
          public          postgres    false    451            �           1259    21262    upa_tasa_cobertura    TABLE     �   CREATE TABLE public.upa_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.upa_tasa_cobertura;
       public         heap    postgres    false            �           1259    21267    upa_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.upa_tasa_cobertura_idtc_seq;
       public          postgres    false    452                       0    0    upa_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.upa_tasa_cobertura_idtc_seq OWNED BY public.upa_tasa_cobertura.idtc;
          public          postgres    false    453            �           1259    21268    upa_tasa_docentes    TABLE     �   CREATE TABLE public.upa_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.upa_tasa_docentes;
       public         heap    postgres    false            �           1259    21273    upa_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.upa_tasa_docentes_idtd_seq;
       public          postgres    false    454            �           0    0    upa_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.upa_tasa_docentes_idtd_seq OWNED BY public.upa_tasa_docentes.idtd;
          public          postgres    false    455            �           1259    21274    upa_tasa_mov_alumnos    TABLE       CREATE TABLE public.upa_tasa_mov_alumnos (
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
       public         heap    postgres    false            �           1259    21279    upa_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    456            �           0    0    upa_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_mov_alumnos_idtma_seq OWNED BY public.upa_tasa_mov_alumnos.idtma;
          public          postgres    false    457            �           1259    21280    upa_tasa_mov_docentes    TABLE       CREATE TABLE public.upa_tasa_mov_docentes (
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
       public         heap    postgres    false            �           1259    21285    upa_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.upa_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    458            �           0    0    upa_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.upa_tasa_mov_docentes_idtmd_seq OWNED BY public.upa_tasa_mov_docentes.idtmd;
          public          postgres    false    459            �           1259    21286    upa_tasa_pe_asat    TABLE     �   CREATE TABLE public.upa_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.upa_tasa_pe_asat;
       public         heap    postgres    false            �           1259    21289    upa_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    460            �           0    0    upa_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_pe_asat_idtpeasat_seq OWNED BY public.upa_tasa_pe_asat.idtpeasat;
          public          postgres    false    461            �           1259    21290    upa_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.upa_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.upa_tasa_pe_pertinencia;
       public         heap    postgres    false            �           1259    21293 "   upa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upa_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    462            �           0    0 "   upa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upa_tasa_pe_pertinencia_idtpep_seq OWNED BY public.upa_tasa_pe_pertinencia.idtpep;
          public          postgres    false    463            �           1259    21294    upa_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.upa_tasa_puntaje_egel (
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
       public         heap    postgres    false            �           1259    21299 "   upa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upa_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    464            �           0    0 "   upa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upa_tasa_puntaje_egel_idtpegel_seq OWNED BY public.upa_tasa_puntaje_egel.idtpegel;
          public          postgres    false    465            �           1259    21300    upa_tasa_puntaje_ex    TABLE     :  CREATE TABLE public.upa_tasa_puntaje_ex (
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
       public         heap    postgres    false            �           1259    21305    upa_tasa_puntaje_ex_idtpex_seq    SEQUENCE     �   CREATE SEQUENCE public.upa_tasa_puntaje_ex_idtpex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.upa_tasa_puntaje_ex_idtpex_seq;
       public          postgres    false    466            �           0    0    upa_tasa_puntaje_ex_idtpex_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.upa_tasa_puntaje_ex_idtpex_seq OWNED BY public.upa_tasa_puntaje_ex.idtpex;
          public          postgres    false    467            �           1259    21310    uta_carreras    TABLE       CREATE TABLE public.uta_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.uta_carreras;
       public         heap    postgres    false            �           1259    21313    uta_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_carreras_idcarrera_seq;
       public          postgres    false    468            �           0    0    uta_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_carreras_idcarrera_seq OWNED BY public.uta_carreras.idcarrera;
          public          postgres    false    469            �           1259    21314    uta_eficiencia_ire    TABLE     �   CREATE TABLE public.uta_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.uta_eficiencia_ire;
       public         heap    postgres    false            �           1259    21319    uta_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.uta_eficiencia_ire_ideire_seq;
       public          postgres    false    470            �           0    0    uta_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.uta_eficiencia_ire_ideire_seq OWNED BY public.uta_eficiencia_ire.ideire;
          public          postgres    false    471            �           1259    21320    uta_indice_colocacion    TABLE     �   CREATE TABLE public.uta_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.uta_indice_colocacion;
       public         heap    postgres    false            �           1259    21325    uta_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_indice_colocacion_idic_seq;
       public          postgres    false    472            �           0    0    uta_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_indice_colocacion_idic_seq OWNED BY public.uta_indice_colocacion.idic;
          public          postgres    false    473            �           1259    21326    uta_indice_ptc    TABLE     �  CREATE TABLE public.uta_indice_ptc (
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
       public         heap    postgres    false            �           1259    21329    uta_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.uta_indice_ptc_idiptc_seq;
       public          postgres    false    474            �           0    0    uta_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.uta_indice_ptc_idiptc_seq OWNED BY public.uta_indice_ptc.idiptc;
          public          postgres    false    475            �           1259    21330    uta_indice_servicios    TABLE     �  CREATE TABLE public.uta_indice_servicios (
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
       public         heap    postgres    false            �           1259    21335    uta_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.uta_indice_servicios_idis_seq;
       public          postgres    false    476            �           0    0    uta_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.uta_indice_servicios_idis_seq OWNED BY public.uta_indice_servicios.idis;
          public          postgres    false    477            �           1259    21336 
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
       public         heap    postgres    false            �           1259    21341    uta_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.uta_iseg_l_idisegl_seq;
       public          postgres    false    478            �           0    0    uta_iseg_l_idisegl_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.uta_iseg_l_idisegl_seq OWNED BY public.uta_iseg_l.idisegl;
          public          postgres    false    479            �           1259    21342    uta_iseg_tsu    TABLE     �  CREATE TABLE public.uta_iseg_tsu (
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
       public         heap    postgres    false            �           1259    21347    uta_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_iseg_tsu_idisegtsu_seq;
       public          postgres    false    480            �           0    0    uta_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_iseg_tsu_idisegtsu_seq OWNED BY public.uta_iseg_tsu.idisegtsu;
          public          postgres    false    481            �           1259    21348 
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
       public         heap    postgres    false            �           1259    21353    uta_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.uta_isem_l_idiseml_seq;
       public          postgres    false    482            �           0    0    uta_isem_l_idiseml_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.uta_isem_l_idiseml_seq OWNED BY public.uta_isem_l.idiseml;
          public          postgres    false    483            �           1259    21354    uta_isem_tsu    TABLE     f  CREATE TABLE public.uta_isem_tsu (
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
       public         heap    postgres    false            �           1259    21359    uta_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_isem_tsu_idisemtsu_seq;
       public          postgres    false    484            �           0    0    uta_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_isem_tsu_idisemtsu_seq OWNED BY public.uta_isem_tsu.idisemtsu;
          public          postgres    false    485            �           1259    21360    uta_tasa_acreditacion    TABLE     �   CREATE TABLE public.uta_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.uta_tasa_acreditacion;
       public         heap    postgres    false            �           1259    21363    uta_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_tasa_acreditacion_idta_seq;
       public          postgres    false    486            �           0    0    uta_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_tasa_acreditacion_idta_seq OWNED BY public.uta_tasa_acreditacion.idta;
          public          postgres    false    487            �           1259    21364    uta_tasa_cobertura    TABLE     �   CREATE TABLE public.uta_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.uta_tasa_cobertura;
       public         heap    postgres    false            �           1259    21369    uta_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.uta_tasa_cobertura_idtc_seq;
       public          postgres    false    488            �           0    0    uta_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.uta_tasa_cobertura_idtc_seq OWNED BY public.uta_tasa_cobertura.idtc;
          public          postgres    false    489            �           1259    21370    uta_tasa_docentes    TABLE     �   CREATE TABLE public.uta_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.uta_tasa_docentes;
       public         heap    postgres    false            �           1259    21375    uta_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.uta_tasa_docentes_idtd_seq;
       public          postgres    false    490            �           0    0    uta_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.uta_tasa_docentes_idtd_seq OWNED BY public.uta_tasa_docentes.idtd;
          public          postgres    false    491            �           1259    21376    uta_tasa_mov_alumnos    TABLE       CREATE TABLE public.uta_tasa_mov_alumnos (
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
       public         heap    postgres    false            �           1259    21381    uta_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    492            �           0    0    uta_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_tasa_mov_alumnos_idtma_seq OWNED BY public.uta_tasa_mov_alumnos.idtma;
          public          postgres    false    493            �           1259    21382    uta_tasa_mov_docentes    TABLE       CREATE TABLE public.uta_tasa_mov_docentes (
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
       public         heap    postgres    false            �           1259    21387    uta_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.uta_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    494            �           0    0    uta_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.uta_tasa_mov_docentes_idtmd_seq OWNED BY public.uta_tasa_mov_docentes.idtmd;
          public          postgres    false    495            �           1259    21388    uta_tasa_pe_asat    TABLE     �   CREATE TABLE public.uta_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.uta_tasa_pe_asat;
       public         heap    postgres    false            �           1259    21391    uta_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.uta_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    496            �           0    0    uta_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.uta_tasa_pe_asat_idtpeasat_seq OWNED BY public.uta_tasa_pe_asat.idtpeasat;
          public          postgres    false    497            �           1259    21392    uta_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.uta_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.uta_tasa_pe_pertinencia;
       public         heap    postgres    false            �           1259    21395 "   uta_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.uta_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    498            �           0    0 "   uta_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.uta_tasa_pe_pertinencia_idtpep_seq OWNED BY public.uta_tasa_pe_pertinencia.idtpep;
          public          postgres    false    499            �           1259    21396    uta_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.uta_tasa_puntaje_egel (
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
       public         heap    postgres    false            �           1259    21401 "   uta_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.uta_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    500            �           0    0 "   uta_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.uta_tasa_puntaje_egel_idtpegel_seq OWNED BY public.uta_tasa_puntaje_egel.idtpegel;
          public          postgres    false    501            �           1259    21402    uta_tasa_puntaje_egetsu    TABLE     B  CREATE TABLE public.uta_tasa_puntaje_egetsu (
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
       public         heap    postgres    false            �           1259    21407 &   uta_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.uta_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    502            �           0    0 &   uta_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.uta_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.uta_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    503            �           1259    21408    uta_tasa_puntaje_exl    TABLE     <  CREATE TABLE public.uta_tasa_puntaje_exl (
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
       public         heap    postgres    false            �           1259    21413     uta_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.uta_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    504            �           0    0     uta_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.uta_tasa_puntaje_exl_idtpexl_seq OWNED BY public.uta_tasa_puntaje_exl.idtpexl;
          public          postgres    false    505            �           1259    21414    uta_tasa_puntaje_extsu    TABLE     @  CREATE TABLE public.uta_tasa_puntaje_extsu (
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
       public         heap    postgres    false            �           1259    21419 $   uta_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.uta_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.uta_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    506            �           0    0 $   uta_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.uta_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.uta_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    507            �           1259    21420    utc_carreras    TABLE       CREATE TABLE public.utc_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.utc_carreras;
       public         heap    postgres    false            �           1259    21423    utc_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_carreras_idcarrera_seq;
       public          postgres    false    508            �           0    0    utc_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_carreras_idcarrera_seq OWNED BY public.utc_carreras.idcarrera;
          public          postgres    false    509            �           1259    21424    utc_eficiencia_ire    TABLE     �   CREATE TABLE public.utc_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.utc_eficiencia_ire;
       public         heap    postgres    false            �           1259    21429    utc_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utc_eficiencia_ire_ideire_seq;
       public          postgres    false    510            �           0    0    utc_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utc_eficiencia_ire_ideire_seq OWNED BY public.utc_eficiencia_ire.ideire;
          public          postgres    false    511                        1259    21430    utc_indice_colocacion    TABLE     �   CREATE TABLE public.utc_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.utc_indice_colocacion;
       public         heap    postgres    false                       1259    21435    utc_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_indice_colocacion_idic_seq;
       public          postgres    false    512            �           0    0    utc_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_indice_colocacion_idic_seq OWNED BY public.utc_indice_colocacion.idic;
          public          postgres    false    513                       1259    21436    utc_indice_ptc    TABLE     �  CREATE TABLE public.utc_indice_ptc (
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
       public         heap    postgres    false                       1259    21439    utc_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.utc_indice_ptc_idiptc_seq;
       public          postgres    false    514            �           0    0    utc_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.utc_indice_ptc_idiptc_seq OWNED BY public.utc_indice_ptc.idiptc;
          public          postgres    false    515                       1259    21440    utc_indice_servicios    TABLE     �  CREATE TABLE public.utc_indice_servicios (
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
       public         heap    postgres    false                       1259    21445    utc_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utc_indice_servicios_idis_seq;
       public          postgres    false    516            �           0    0    utc_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utc_indice_servicios_idis_seq OWNED BY public.utc_indice_servicios.idis;
          public          postgres    false    517                       1259    21446 
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
       public         heap    postgres    false                       1259    21451    utc_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utc_iseg_l_idisegl_seq;
       public          postgres    false    518            �           0    0    utc_iseg_l_idisegl_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utc_iseg_l_idisegl_seq OWNED BY public.utc_iseg_l.idisegl;
          public          postgres    false    519                       1259    21452    utc_iseg_tsu    TABLE     �  CREATE TABLE public.utc_iseg_tsu (
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
       public         heap    postgres    false            	           1259    21457    utc_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_iseg_tsu_idisegtsu_seq;
       public          postgres    false    520            �           0    0    utc_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_iseg_tsu_idisegtsu_seq OWNED BY public.utc_iseg_tsu.idisegtsu;
          public          postgres    false    521            
           1259    21458 
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
       public         heap    postgres    false                       1259    21463    utc_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utc_isem_l_idiseml_seq;
       public          postgres    false    522            �           0    0    utc_isem_l_idiseml_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utc_isem_l_idiseml_seq OWNED BY public.utc_isem_l.idiseml;
          public          postgres    false    523                       1259    21464    utc_isem_tsu    TABLE     f  CREATE TABLE public.utc_isem_tsu (
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
       public         heap    postgres    false                       1259    21469    utc_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_isem_tsu_idisemtsu_seq;
       public          postgres    false    524            �           0    0    utc_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_isem_tsu_idisemtsu_seq OWNED BY public.utc_isem_tsu.idisemtsu;
          public          postgres    false    525                       1259    21470    utc_tasa_acreditacion    TABLE     �   CREATE TABLE public.utc_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.utc_tasa_acreditacion;
       public         heap    postgres    false                       1259    21473    utc_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_tasa_acreditacion_idta_seq;
       public          postgres    false    526            �           0    0    utc_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_tasa_acreditacion_idta_seq OWNED BY public.utc_tasa_acreditacion.idta;
          public          postgres    false    527                       1259    21474    utc_tasa_cobertura    TABLE     �   CREATE TABLE public.utc_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.utc_tasa_cobertura;
       public         heap    postgres    false                       1259    21479    utc_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utc_tasa_cobertura_idtc_seq;
       public          postgres    false    528            �           0    0    utc_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utc_tasa_cobertura_idtc_seq OWNED BY public.utc_tasa_cobertura.idtc;
          public          postgres    false    529                       1259    21480    utc_tasa_docentes    TABLE     �   CREATE TABLE public.utc_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.utc_tasa_docentes;
       public         heap    postgres    false                       1259    21485    utc_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utc_tasa_docentes_idtd_seq;
       public          postgres    false    530            �           0    0    utc_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utc_tasa_docentes_idtd_seq OWNED BY public.utc_tasa_docentes.idtd;
          public          postgres    false    531                       1259    21486    utc_tasa_mov_alumnos    TABLE       CREATE TABLE public.utc_tasa_mov_alumnos (
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
       public         heap    postgres    false                       1259    21491    utc_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    532            �           0    0    utc_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_tasa_mov_alumnos_idtma_seq OWNED BY public.utc_tasa_mov_alumnos.idtma;
          public          postgres    false    533                       1259    21492    utc_tasa_mov_docentes    TABLE       CREATE TABLE public.utc_tasa_mov_docentes (
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
       public         heap    postgres    false                       1259    21497    utc_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utc_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    534            �           0    0    utc_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utc_tasa_mov_docentes_idtmd_seq OWNED BY public.utc_tasa_mov_docentes.idtmd;
          public          postgres    false    535                       1259    21498    utc_tasa_pe_asat    TABLE     �   CREATE TABLE public.utc_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.utc_tasa_pe_asat;
       public         heap    postgres    false                       1259    21501    utc_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utc_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    536            �           0    0    utc_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utc_tasa_pe_asat_idtpeasat_seq OWNED BY public.utc_tasa_pe_asat.idtpeasat;
          public          postgres    false    537                       1259    21502    utc_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utc_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.utc_tasa_pe_pertinencia;
       public         heap    postgres    false                       1259    21505 "   utc_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utc_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    538            �           0    0 "   utc_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utc_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utc_tasa_pe_pertinencia.idtpep;
          public          postgres    false    539                       1259    21506    utc_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.utc_tasa_puntaje_egel (
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
       public         heap    postgres    false                       1259    21511 "   utc_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utc_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    540            �           0    0 "   utc_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utc_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utc_tasa_puntaje_egel.idtpegel;
          public          postgres    false    541                       1259    21512    utc_tasa_puntaje_egetsu    TABLE     B  CREATE TABLE public.utc_tasa_puntaje_egetsu (
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
       public         heap    postgres    false                       1259    21517 &   utc_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.utc_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    542            �           0    0 &   utc_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.utc_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.utc_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    543                        1259    21518    utc_tasa_puntaje_exl    TABLE     <  CREATE TABLE public.utc_tasa_puntaje_exl (
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
       public         heap    postgres    false            !           1259    21523     utc_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utc_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    544            �           0    0     utc_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utc_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utc_tasa_puntaje_exl.idtpexl;
          public          postgres    false    545            "           1259    21524    utc_tasa_puntaje_extsu    TABLE     @  CREATE TABLE public.utc_tasa_puntaje_extsu (
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
       public         heap    postgres    false            #           1259    21529 $   utc_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utc_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.utc_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    546            �           0    0 $   utc_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.utc_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utc_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    547            $           1259    21530    utma_carreras    TABLE       CREATE TABLE public.utma_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
 !   DROP TABLE public.utma_carreras;
       public         heap    postgres    false            %           1259    21533    utma_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_carreras_idcarrera_seq;
       public          postgres    false    548            �           0    0    utma_carreras_idcarrera_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_carreras_idcarrera_seq OWNED BY public.utma_carreras.idcarrera;
          public          postgres    false    549            &           1259    21534    utma_eficiencia_ire    TABLE     �   CREATE TABLE public.utma_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 '   DROP TABLE public.utma_eficiencia_ire;
       public         heap    postgres    false            '           1259    21539    utma_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utma_eficiencia_ire_ideire_seq;
       public          postgres    false    550            �           0    0    utma_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utma_eficiencia_ire_ideire_seq OWNED BY public.utma_eficiencia_ire.ideire;
          public          postgres    false    551            (           1259    21540    utma_indice_colocacion    TABLE     �   CREATE TABLE public.utma_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 *   DROP TABLE public.utma_indice_colocacion;
       public         heap    postgres    false            )           1259    21545    utma_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_indice_colocacion_idic_seq;
       public          postgres    false    552            �           0    0    utma_indice_colocacion_idic_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_indice_colocacion_idic_seq OWNED BY public.utma_indice_colocacion.idic;
          public          postgres    false    553            *           1259    21546    utma_indice_ptc    TABLE     �  CREATE TABLE public.utma_indice_ptc (
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
       public         heap    postgres    false            +           1259    21549    utma_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utma_indice_ptc_idiptc_seq;
       public          postgres    false    554            �           0    0    utma_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utma_indice_ptc_idiptc_seq OWNED BY public.utma_indice_ptc.idiptc;
          public          postgres    false    555            ,           1259    21550    utma_indice_servicios    TABLE     �  CREATE TABLE public.utma_indice_servicios (
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
       public         heap    postgres    false            -           1259    21555    utma_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utma_indice_servicios_idis_seq;
       public          postgres    false    556            �           0    0    utma_indice_servicios_idis_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utma_indice_servicios_idis_seq OWNED BY public.utma_indice_servicios.idis;
          public          postgres    false    557            .           1259    21556    utma_iseg_l    TABLE     �  CREATE TABLE public.utma_iseg_l (
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
       public         heap    postgres    false            /           1259    21561    utma_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utma_iseg_l_idisegl_seq;
       public          postgres    false    558            �           0    0    utma_iseg_l_idisegl_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utma_iseg_l_idisegl_seq OWNED BY public.utma_iseg_l.idisegl;
          public          postgres    false    559            0           1259    21562    utma_iseg_tsu    TABLE     �  CREATE TABLE public.utma_iseg_tsu (
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
       public         heap    postgres    false            1           1259    21567    utma_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_iseg_tsu_idisegtsu_seq;
       public          postgres    false    560            �           0    0    utma_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_iseg_tsu_idisegtsu_seq OWNED BY public.utma_iseg_tsu.idisegtsu;
          public          postgres    false    561            2           1259    21568    utma_isem_l    TABLE     c  CREATE TABLE public.utma_isem_l (
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
       public         heap    postgres    false            3           1259    21573    utma_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.utma_isem_l_idiseml_seq;
       public          postgres    false    562            �           0    0    utma_isem_l_idiseml_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.utma_isem_l_idiseml_seq OWNED BY public.utma_isem_l.idiseml;
          public          postgres    false    563            4           1259    21574    utma_isem_tsu    TABLE     g  CREATE TABLE public.utma_isem_tsu (
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
       public         heap    postgres    false            5           1259    21579    utma_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_isem_tsu_idisemtsu_seq;
       public          postgres    false    564            �           0    0    utma_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_isem_tsu_idisemtsu_seq OWNED BY public.utma_isem_tsu.idisemtsu;
          public          postgres    false    565            6           1259    21580    utma_tasa_acreditacion    TABLE        CREATE TABLE public.utma_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 *   DROP TABLE public.utma_tasa_acreditacion;
       public         heap    postgres    false            7           1259    21583    utma_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_tasa_acreditacion_idta_seq;
       public          postgres    false    566            �           0    0    utma_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_tasa_acreditacion_idta_seq OWNED BY public.utma_tasa_acreditacion.idta;
          public          postgres    false    567            8           1259    21584    utma_tasa_cobertura    TABLE     �   CREATE TABLE public.utma_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 '   DROP TABLE public.utma_tasa_cobertura;
       public         heap    postgres    false            9           1259    21589    utma_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.utma_tasa_cobertura_idtc_seq;
       public          postgres    false    568            �           0    0    utma_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.utma_tasa_cobertura_idtc_seq OWNED BY public.utma_tasa_cobertura.idtc;
          public          postgres    false    569            :           1259    21590    utma_tasa_docentes    TABLE     �   CREATE TABLE public.utma_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 &   DROP TABLE public.utma_tasa_docentes;
       public         heap    postgres    false            ;           1259    21595    utma_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utma_tasa_docentes_idtd_seq;
       public          postgres    false    570            �           0    0    utma_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utma_tasa_docentes_idtd_seq OWNED BY public.utma_tasa_docentes.idtd;
          public          postgres    false    571            <           1259    21596    utma_tasa_mov_alumnos    TABLE       CREATE TABLE public.utma_tasa_mov_alumnos (
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
       public         heap    postgres    false            =           1259    21601    utma_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    572            �           0    0    utma_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_tasa_mov_alumnos_idtma_seq OWNED BY public.utma_tasa_mov_alumnos.idtma;
          public          postgres    false    573            >           1259    21602    utma_tasa_mov_docentes    TABLE       CREATE TABLE public.utma_tasa_mov_docentes (
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
       public         heap    postgres    false            ?           1259    21607     utma_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utma_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    574            �           0    0     utma_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utma_tasa_mov_docentes_idtmd_seq OWNED BY public.utma_tasa_mov_docentes.idtmd;
          public          postgres    false    575            @           1259    21608    utma_tasa_pe_asat    TABLE     �   CREATE TABLE public.utma_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 %   DROP TABLE public.utma_tasa_pe_asat;
       public         heap    postgres    false            A           1259    21611    utma_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utma_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    576            �           0    0    utma_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utma_tasa_pe_asat_idtpeasat_seq OWNED BY public.utma_tasa_pe_asat.idtpeasat;
          public          postgres    false    577            B           1259    21612    utma_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utma_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 ,   DROP TABLE public.utma_tasa_pe_pertinencia;
       public         heap    postgres    false            C           1259    21615 #   utma_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utma_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    578            �           0    0 #   utma_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utma_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utma_tasa_pe_pertinencia.idtpep;
          public          postgres    false    579            D           1259    21616    utma_tasa_puntaje_egel    TABLE     ?  CREATE TABLE public.utma_tasa_puntaje_egel (
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
       public         heap    postgres    false            E           1259    21621 #   utma_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.utma_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    580            �           0    0 #   utma_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.utma_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utma_tasa_puntaje_egel.idtpegel;
          public          postgres    false    581            F           1259    21622    utma_tasa_puntaje_egetsu    TABLE     C  CREATE TABLE public.utma_tasa_puntaje_egetsu (
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
       public         heap    postgres    false            G           1259    21627 '   utma_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.utma_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    582            �           0    0 '   utma_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.utma_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.utma_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    583            H           1259    21628    utma_tasa_puntaje_exl    TABLE     =  CREATE TABLE public.utma_tasa_puntaje_exl (
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
       public         heap    postgres    false            I           1259    21633 !   utma_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.utma_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    584            �           0    0 !   utma_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.utma_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utma_tasa_puntaje_exl.idtpexl;
          public          postgres    false    585            J           1259    21634    utma_tasa_puntaje_extsu    TABLE     A  CREATE TABLE public.utma_tasa_puntaje_extsu (
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
       public         heap    postgres    false            K           1259    21639 %   utma_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utma_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.utma_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    586            �           0    0 %   utma_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.utma_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utma_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    587            �            1259    20399    utna_module_utna_carreras    TABLE     7  CREATE TABLE public.utna_module_utna_carreras (
    "IDCarrera" integer NOT NULL,
    "Nombre" character varying(100) NOT NULL,
    "Abreviacion" character varying(10) NOT NULL,
    "Modalidad" character varying(15) NOT NULL,
    "Nivel" character varying(15) NOT NULL,
    "Universidad_id" integer NOT NULL
);
 -   DROP TABLE public.utna_module_utna_carreras;
       public         heap    postgres    false            �            1259    20402 '   utna_module_utna_carreras_IDCarrera_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_carreras_IDCarrera_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_carreras_IDCarrera_seq";
       public          postgres    false    236            �           0    0 '   utna_module_utna_carreras_IDCarrera_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_carreras_IDCarrera_seq" OWNED BY public.utna_module_utna_carreras."IDCarrera";
          public          postgres    false    237            �            1259    20403    utna_module_utna_eficiencia_ire    TABLE     9  CREATE TABLE public.utna_module_utna_eficiencia_ire (
    "IDEIRE" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Indice_retencion" numeric(5,2),
    "Indice_desercion" numeric(5,2),
    "Indice_eficiencia_terminal" numeric(5,2),
    "Indice_titulacion" numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 3   DROP TABLE public.utna_module_utna_eficiencia_ire;
       public         heap    postgres    false            �            1259    20406 *   utna_module_utna_eficiencia_ire_IDEIRE_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_eficiencia_ire_IDEIRE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."utna_module_utna_eficiencia_ire_IDEIRE_seq";
       public          postgres    false    238            �           0    0 *   utna_module_utna_eficiencia_ire_IDEIRE_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."utna_module_utna_eficiencia_ire_IDEIRE_seq" OWNED BY public.utna_module_utna_eficiencia_ire."IDEIRE";
          public          postgres    false    239            �            1259    20407 "   utna_module_utna_indice_colocacion    TABLE     �   CREATE TABLE public.utna_module_utna_indice_colocacion (
    "IDIC" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Egresados" integer,
    "Colocados" integer,
    "Indice_colocacion" numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 6   DROP TABLE public.utna_module_utna_indice_colocacion;
       public         heap    postgres    false            �            1259    20410 +   utna_module_utna_indice_colocacion_IDIC_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_indice_colocacion_IDIC_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_indice_colocacion_IDIC_seq";
       public          postgres    false    240            �           0    0 +   utna_module_utna_indice_colocacion_IDIC_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_indice_colocacion_IDIC_seq" OWNED BY public.utna_module_utna_indice_colocacion."IDIC";
          public          postgres    false    241            �            1259    20411    utna_module_utna_indice_ptc    TABLE     �  CREATE TABLE public.utna_module_utna_indice_ptc (
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
       public         heap    postgres    false            �            1259    20414 &   utna_module_utna_indice_ptc_IDIPTC_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_indice_ptc_IDIPTC_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."utna_module_utna_indice_ptc_IDIPTC_seq";
       public          postgres    false    242            �           0    0 &   utna_module_utna_indice_ptc_IDIPTC_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."utna_module_utna_indice_ptc_IDIPTC_seq" OWNED BY public.utna_module_utna_indice_ptc."IDIPTC";
          public          postgres    false    243            �            1259    20415 !   utna_module_utna_indice_servicios    TABLE     V  CREATE TABLE public.utna_module_utna_indice_servicios (
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
       public         heap    postgres    false            �            1259    20418 *   utna_module_utna_indice_servicios_IDIS_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_indice_servicios_IDIS_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."utna_module_utna_indice_servicios_IDIS_seq";
       public          postgres    false    244            �           0    0 *   utna_module_utna_indice_servicios_IDIS_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."utna_module_utna_indice_servicios_IDIS_seq" OWNED BY public.utna_module_utna_indice_servicios."IDIS";
          public          postgres    false    245            �            1259    20419    utna_module_utna_iseg_l    TABLE     C  CREATE TABLE public.utna_module_utna_iseg_l (
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
       public         heap    postgres    false            �            1259    20422 #   utna_module_utna_iseg_l_IDISEGL_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_iseg_l_IDISEGL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."utna_module_utna_iseg_l_IDISEGL_seq";
       public          postgres    false    246            �           0    0 #   utna_module_utna_iseg_l_IDISEGL_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."utna_module_utna_iseg_l_IDISEGL_seq" OWNED BY public.utna_module_utna_iseg_l."IDISEGL";
          public          postgres    false    247            �            1259    20423    utna_module_utna_iseg_tsu    TABLE     5  CREATE TABLE public.utna_module_utna_iseg_tsu (
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
       public         heap    postgres    false            �            1259    20426 '   utna_module_utna_iseg_tsu_IDISEGTSU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_iseg_tsu_IDISEGTSU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_iseg_tsu_IDISEGTSU_seq";
       public          postgres    false    248            �           0    0 '   utna_module_utna_iseg_tsu_IDISEGTSU_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_iseg_tsu_IDISEGTSU_seq" OWNED BY public.utna_module_utna_iseg_tsu."IDISEGTSU";
          public          postgres    false    249            �            1259    20427    utna_module_utna_isem_l    TABLE     �  CREATE TABLE public.utna_module_utna_isem_l (
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
       public         heap    postgres    false            �            1259    20430 #   utna_module_utna_isem_l_IDISEML_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_isem_l_IDISEML_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."utna_module_utna_isem_l_IDISEML_seq";
       public          postgres    false    250            �           0    0 #   utna_module_utna_isem_l_IDISEML_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."utna_module_utna_isem_l_IDISEML_seq" OWNED BY public.utna_module_utna_isem_l."IDISEML";
          public          postgres    false    251            �            1259    20431    utna_module_utna_isem_tsu    TABLE     �  CREATE TABLE public.utna_module_utna_isem_tsu (
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
       public         heap    postgres    false            �            1259    20434 '   utna_module_utna_isem_tsu_IDISEMTSU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_isem_tsu_IDISEMTSU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_isem_tsu_IDISEMTSU_seq";
       public          postgres    false    252            �           0    0 '   utna_module_utna_isem_tsu_IDISEMTSU_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_isem_tsu_IDISEMTSU_seq" OWNED BY public.utna_module_utna_isem_tsu."IDISEMTSU";
          public          postgres    false    253            �            1259    20435 "   utna_module_utna_tasa_acreditacion    TABLE     ,  CREATE TABLE public.utna_module_utna_tasa_acreditacion (
    "IDTA" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Acreditacion" boolean NOT NULL,
    "Tipo_acreditacion" character varying(50),
    "Carrera_id" integer NOT NULL,
    "Fecha_acreditacion" date,
    "Fecha_vencimiento" date
);
 6   DROP TABLE public.utna_module_utna_tasa_acreditacion;
       public         heap    postgres    false            �            1259    20438 +   utna_module_utna_tasa_acreditacion_IDTA_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_acreditacion_IDTA_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_tasa_acreditacion_IDTA_seq";
       public          postgres    false    254            �           0    0 +   utna_module_utna_tasa_acreditacion_IDTA_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_tasa_acreditacion_IDTA_seq" OWNED BY public.utna_module_utna_tasa_acreditacion."IDTA";
          public          postgres    false    255                        1259    20439    utna_module_utna_tasa_cobertura    TABLE     �   CREATE TABLE public.utna_module_utna_tasa_cobertura (
    "IDTC" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Incremento_matricula" numeric(5,2),
    "Carrera_id" integer NOT NULL
);
 3   DROP TABLE public.utna_module_utna_tasa_cobertura;
       public         heap    postgres    false                       1259    20442 (   utna_module_utna_tasa_cobertura_IDTC_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_cobertura_IDTC_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."utna_module_utna_tasa_cobertura_IDTC_seq";
       public          postgres    false    256            �           0    0 (   utna_module_utna_tasa_cobertura_IDTC_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."utna_module_utna_tasa_cobertura_IDTC_seq" OWNED BY public.utna_module_utna_tasa_cobertura."IDTC";
          public          postgres    false    257                       1259    20443    utna_module_utna_tasa_docentes    TABLE       CREATE TABLE public.utna_module_utna_tasa_docentes (
    "IDTD" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "No_docentes" integer,
    "Doc_perfil_adecuado" integer,
    "Tasa_docentes" numeric(5,2),
    "Carrera_id" integer NOT NULL,
    "Exp_Lab_pertinente" integer
);
 2   DROP TABLE public.utna_module_utna_tasa_docentes;
       public         heap    postgres    false                       1259    20446 '   utna_module_utna_tasa_docentes_IDTD_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_docentes_IDTD_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."utna_module_utna_tasa_docentes_IDTD_seq";
       public          postgres    false    258            �           0    0 '   utna_module_utna_tasa_docentes_IDTD_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."utna_module_utna_tasa_docentes_IDTD_seq" OWNED BY public.utna_module_utna_tasa_docentes."IDTD";
          public          postgres    false    259                       1259    20447 !   utna_module_utna_tasa_mov_alumnos    TABLE     A  CREATE TABLE public.utna_module_utna_tasa_mov_alumnos (
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
       public         heap    postgres    false                       1259    20450 +   utna_module_utna_tasa_mov_alumnos_IDTMA_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq";
       public          postgres    false    260            �           0    0 +   utna_module_utna_tasa_mov_alumnos_IDTMA_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq" OWNED BY public.utna_module_utna_tasa_mov_alumnos."IDTMA";
          public          postgres    false    261                       1259    20451 "   utna_module_utna_tasa_mov_docentes    TABLE     A  CREATE TABLE public.utna_module_utna_tasa_mov_docentes (
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
       public         heap    postgres    false                       1259    20454 ,   utna_module_utna_tasa_mov_docentes_IDTMD_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_mov_docentes_IDTMD_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."utna_module_utna_tasa_mov_docentes_IDTMD_seq";
       public          postgres    false    262            �           0    0 ,   utna_module_utna_tasa_mov_docentes_IDTMD_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_mov_docentes_IDTMD_seq" OWNED BY public.utna_module_utna_tasa_mov_docentes."IDTMD";
          public          postgres    false    263                       1259    20455    utna_module_utna_tasa_pe_asat    TABLE     �   CREATE TABLE public.utna_module_utna_tasa_pe_asat (
    "IDTPEASAT" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Realizacion" date,
    "Vencimiento" date,
    "PE_id" integer NOT NULL
);
 1   DROP TABLE public.utna_module_utna_tasa_pe_asat;
       public         heap    postgres    false            	           1259    20458 +   utna_module_utna_tasa_pe_asat_IDTPEASAT_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq";
       public          postgres    false    264            �           0    0 +   utna_module_utna_tasa_pe_asat_IDTPEASAT_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq" OWNED BY public.utna_module_utna_tasa_pe_asat."IDTPEASAT";
          public          postgres    false    265            
           1259    20459 $   utna_module_utna_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utna_module_utna_tasa_pe_pertinencia (
    "IDTPEP" integer NOT NULL,
    "Periodo" integer NOT NULL,
    "Presenta" boolean NOT NULL,
    "Fecha_elaboracion" date,
    "PE_id" integer NOT NULL
);
 8   DROP TABLE public.utna_module_utna_tasa_pe_pertinencia;
       public         heap    postgres    false                       1259    20462 /   utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq";
       public          postgres    false    266            �           0    0 /   utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq" OWNED BY public.utna_module_utna_tasa_pe_pertinencia."IDTPEP";
          public          postgres    false    267                       1259    20463 "   utna_module_utna_tasa_puntaje_egel    TABLE     g  CREATE TABLE public.utna_module_utna_tasa_puntaje_egel (
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
       public         heap    postgres    false                       1259    20466 /   utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq";
       public          postgres    false    268            �           0    0 /   utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq" OWNED BY public.utna_module_utna_tasa_puntaje_egel."IDTPEGEL";
          public          postgres    false    269                       1259    20467 $   utna_module_utna_tasa_puntaje_egetsu    TABLE     k  CREATE TABLE public.utna_module_utna_tasa_puntaje_egetsu (
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
       public         heap    postgres    false                       1259    20470 3   utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq";
       public          postgres    false    270            �           0    0 3   utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq" OWNED BY public.utna_module_utna_tasa_puntaje_egetsu."IDTPEGESTU";
          public          postgres    false    271                       1259    20471 !   utna_module_utna_tasa_puntaje_exl    TABLE     e  CREATE TABLE public.utna_module_utna_tasa_puntaje_exl (
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
       public         heap    postgres    false                       1259    20474 -   utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq";
       public          postgres    false    272            �           0    0 -   utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq" OWNED BY public.utna_module_utna_tasa_puntaje_exl."IDTPEXL";
          public          postgres    false    273                       1259    20475 #   utna_module_utna_tasa_puntaje_extsu    TABLE     i  CREATE TABLE public.utna_module_utna_tasa_puntaje_extsu (
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
       public         heap    postgres    false                       1259    20478 1   utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq    SEQUENCE     �   CREATE SEQUENCE public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq";
       public          postgres    false    274            �           0    0 1   utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq" OWNED BY public.utna_module_utna_tasa_puntaje_extsu."IDTPEXTSU";
          public          postgres    false    275            L           1259    21750    utr_carreras    TABLE       CREATE TABLE public.utr_carreras (
    idcarrera integer NOT NULL,
    universidad integer NOT NULL,
    nombre character varying(100),
    abreviacion character varying(10),
    modalidad character varying(15),
    nivel character varying(15),
    "duración" integer
);
     DROP TABLE public.utr_carreras;
       public         heap    postgres    false            M           1259    21753    utr_carreras_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_carreras_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_carreras_idcarrera_seq;
       public          postgres    false    588            �           0    0    utr_carreras_idcarrera_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_carreras_idcarrera_seq OWNED BY public.utr_carreras.idcarrera;
          public          postgres    false    589            N           1259    21754    utr_eficiencia_ire    TABLE     �   CREATE TABLE public.utr_eficiencia_ire (
    ideire integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    indice_retencion numeric,
    indice_desercion numeric,
    indice_eficiencia_terminal numeric,
    indice_titulacion numeric
);
 &   DROP TABLE public.utr_eficiencia_ire;
       public         heap    postgres    false            O           1259    21759    utr_eficiencia_ire_ideire_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_eficiencia_ire_ideire_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utr_eficiencia_ire_ideire_seq;
       public          postgres    false    590            �           0    0    utr_eficiencia_ire_ideire_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utr_eficiencia_ire_ideire_seq OWNED BY public.utr_eficiencia_ire.ideire;
          public          postgres    false    591            P           1259    21760    utr_indice_colocacion    TABLE     �   CREATE TABLE public.utr_indice_colocacion (
    idic integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    egresados integer,
    colocados integer,
    indice_colocacion numeric
);
 )   DROP TABLE public.utr_indice_colocacion;
       public         heap    postgres    false            Q           1259    21765    utr_indice_colocacion_idic_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_indice_colocacion_idic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_indice_colocacion_idic_seq;
       public          postgres    false    592            �           0    0    utr_indice_colocacion_idic_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_indice_colocacion_idic_seq OWNED BY public.utr_indice_colocacion.idic;
          public          postgres    false    593            R           1259    21766    utr_indice_ptc    TABLE     �  CREATE TABLE public.utr_indice_ptc (
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
       public         heap    postgres    false            S           1259    21769    utr_indice_ptc_idiptc_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_indice_ptc_idiptc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.utr_indice_ptc_idiptc_seq;
       public          postgres    false    594            �           0    0    utr_indice_ptc_idiptc_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.utr_indice_ptc_idiptc_seq OWNED BY public.utr_indice_ptc.idiptc;
          public          postgres    false    595            T           1259    21770    utr_indice_servicios    TABLE     �  CREATE TABLE public.utr_indice_servicios (
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
       public         heap    postgres    false            U           1259    21775    utr_indice_servicios_idis_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_indice_servicios_idis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.utr_indice_servicios_idis_seq;
       public          postgres    false    596            �           0    0    utr_indice_servicios_idis_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.utr_indice_servicios_idis_seq OWNED BY public.utr_indice_servicios.idis;
          public          postgres    false    597            V           1259    21776 
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
       public         heap    postgres    false            W           1259    21781    utr_iseg_l_idisegl_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_iseg_l_idisegl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utr_iseg_l_idisegl_seq;
       public          postgres    false    598            �           0    0    utr_iseg_l_idisegl_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utr_iseg_l_idisegl_seq OWNED BY public.utr_iseg_l.idisegl;
          public          postgres    false    599            X           1259    21782    utr_iseg_tsu    TABLE     �  CREATE TABLE public.utr_iseg_tsu (
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
       public         heap    postgres    false            Y           1259    21787    utr_iseg_tsu_idisegtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_iseg_tsu_idisegtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_iseg_tsu_idisegtsu_seq;
       public          postgres    false    600            �           0    0    utr_iseg_tsu_idisegtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_iseg_tsu_idisegtsu_seq OWNED BY public.utr_iseg_tsu.idisegtsu;
          public          postgres    false    601            Z           1259    21788 
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
       public         heap    postgres    false            [           1259    21793    utr_isem_l_idiseml_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_isem_l_idiseml_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utr_isem_l_idiseml_seq;
       public          postgres    false    602            �           0    0    utr_isem_l_idiseml_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utr_isem_l_idiseml_seq OWNED BY public.utr_isem_l.idiseml;
          public          postgres    false    603            \           1259    21794    utr_isem_tsu    TABLE     f  CREATE TABLE public.utr_isem_tsu (
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
       public         heap    postgres    false            ]           1259    21799    utr_isem_tsu_idisemtsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_isem_tsu_idisemtsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_isem_tsu_idisemtsu_seq;
       public          postgres    false    604            �           0    0    utr_isem_tsu_idisemtsu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_isem_tsu_idisemtsu_seq OWNED BY public.utr_isem_tsu.idisemtsu;
          public          postgres    false    605            ^           1259    21800    utr_tasa_acreditacion    TABLE     �   CREATE TABLE public.utr_tasa_acreditacion (
    idta integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    acreditacion boolean,
    "fecha_acreditación" date,
    fecha_vencimiento date,
    tipo_acreditacion character varying(50)
);
 )   DROP TABLE public.utr_tasa_acreditacion;
       public         heap    postgres    false            _           1259    21803    utr_tasa_acreditacion_idta_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_acreditacion_idta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_tasa_acreditacion_idta_seq;
       public          postgres    false    606            �           0    0    utr_tasa_acreditacion_idta_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_tasa_acreditacion_idta_seq OWNED BY public.utr_tasa_acreditacion.idta;
          public          postgres    false    607            `           1259    21804    utr_tasa_cobertura    TABLE     �   CREATE TABLE public.utr_tasa_cobertura (
    idtc integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    incremento_matricula numeric
);
 &   DROP TABLE public.utr_tasa_cobertura;
       public         heap    postgres    false            a           1259    21809    utr_tasa_cobertura_idtc_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_cobertura_idtc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.utr_tasa_cobertura_idtc_seq;
       public          postgres    false    608            �           0    0    utr_tasa_cobertura_idtc_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.utr_tasa_cobertura_idtc_seq OWNED BY public.utr_tasa_cobertura.idtc;
          public          postgres    false    609            b           1259    21810    utr_tasa_docentes    TABLE     �   CREATE TABLE public.utr_tasa_docentes (
    idtd integer NOT NULL,
    carrera integer NOT NULL,
    periodo integer,
    no_docentes integer,
    doc_perfil_adecuado integer,
    exp_lab_pertinente integer,
    tasa_docentes numeric
);
 %   DROP TABLE public.utr_tasa_docentes;
       public         heap    postgres    false            c           1259    21815    utr_tasa_docentes_idtd_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_docentes_idtd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.utr_tasa_docentes_idtd_seq;
       public          postgres    false    610            �           0    0    utr_tasa_docentes_idtd_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.utr_tasa_docentes_idtd_seq OWNED BY public.utr_tasa_docentes.idtd;
          public          postgres    false    611            d           1259    21816    utr_tasa_mov_alumnos    TABLE       CREATE TABLE public.utr_tasa_mov_alumnos (
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
       public         heap    postgres    false            e           1259    21821    utr_tasa_mov_alumnos_idtma_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_mov_alumnos_idtma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_tasa_mov_alumnos_idtma_seq;
       public          postgres    false    612            �           0    0    utr_tasa_mov_alumnos_idtma_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_tasa_mov_alumnos_idtma_seq OWNED BY public.utr_tasa_mov_alumnos.idtma;
          public          postgres    false    613            f           1259    21822    utr_tasa_mov_docentes    TABLE       CREATE TABLE public.utr_tasa_mov_docentes (
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
       public         heap    postgres    false            g           1259    21827    utr_tasa_mov_docentes_idtmd_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_mov_docentes_idtmd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.utr_tasa_mov_docentes_idtmd_seq;
       public          postgres    false    614            �           0    0    utr_tasa_mov_docentes_idtmd_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.utr_tasa_mov_docentes_idtmd_seq OWNED BY public.utr_tasa_mov_docentes.idtmd;
          public          postgres    false    615            h           1259    21828    utr_tasa_pe_asat    TABLE     �   CREATE TABLE public.utr_tasa_pe_asat (
    idtpeasat integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    realizacion date,
    vencimiento date
);
 $   DROP TABLE public.utr_tasa_pe_asat;
       public         heap    postgres    false            i           1259    21831    utr_tasa_pe_asat_idtpeasat_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_pe_asat_idtpeasat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.utr_tasa_pe_asat_idtpeasat_seq;
       public          postgres    false    616            �           0    0    utr_tasa_pe_asat_idtpeasat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.utr_tasa_pe_asat_idtpeasat_seq OWNED BY public.utr_tasa_pe_asat.idtpeasat;
          public          postgres    false    617            j           1259    21832    utr_tasa_pe_pertinencia    TABLE     �   CREATE TABLE public.utr_tasa_pe_pertinencia (
    idtpep integer NOT NULL,
    pe integer NOT NULL,
    periodo integer,
    presenta boolean,
    fecha_elaboracion date
);
 +   DROP TABLE public.utr_tasa_pe_pertinencia;
       public         heap    postgres    false            k           1259    21835 "   utr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_pe_pertinencia_idtpep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utr_tasa_pe_pertinencia_idtpep_seq;
       public          postgres    false    618            �           0    0 "   utr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utr_tasa_pe_pertinencia_idtpep_seq OWNED BY public.utr_tasa_pe_pertinencia.idtpep;
          public          postgres    false    619            l           1259    21836    utr_tasa_puntaje_egel    TABLE     >  CREATE TABLE public.utr_tasa_puntaje_egel (
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
       public         heap    postgres    false            m           1259    21841 "   utr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_egel_idtpegel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.utr_tasa_puntaje_egel_idtpegel_seq;
       public          postgres    false    620            �           0    0 "   utr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.utr_tasa_puntaje_egel_idtpegel_seq OWNED BY public.utr_tasa_puntaje_egel.idtpegel;
          public          postgres    false    621            n           1259    21842    utr_tasa_puntaje_egetsu    TABLE     B  CREATE TABLE public.utr_tasa_puntaje_egetsu (
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
       public         heap    postgres    false            o           1259    21847 &   utr_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_egetsu_idtpegetsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.utr_tasa_puntaje_egetsu_idtpegetsu_seq;
       public          postgres    false    622            �           0    0 &   utr_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.utr_tasa_puntaje_egetsu_idtpegetsu_seq OWNED BY public.utr_tasa_puntaje_egetsu.idtpegetsu;
          public          postgres    false    623            p           1259    21848    utr_tasa_puntaje_exl    TABLE     <  CREATE TABLE public.utr_tasa_puntaje_exl (
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
       public         heap    postgres    false            q           1259    21853     utr_tasa_puntaje_exl_idtpexl_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_exl_idtpexl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.utr_tasa_puntaje_exl_idtpexl_seq;
       public          postgres    false    624            �           0    0     utr_tasa_puntaje_exl_idtpexl_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.utr_tasa_puntaje_exl_idtpexl_seq OWNED BY public.utr_tasa_puntaje_exl.idtpexl;
          public          postgres    false    625            r           1259    21854    utr_tasa_puntaje_extsu    TABLE     @  CREATE TABLE public.utr_tasa_puntaje_extsu (
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
       public         heap    postgres    false            s           1259    21859 $   utr_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE     �   CREATE SEQUENCE public.utr_tasa_puntaje_extsu_idtpextsu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.utr_tasa_puntaje_extsu_idtpextsu_seq;
       public          postgres    false    626            �           0    0 $   utr_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.utr_tasa_puntaje_extsu_idtpextsu_seq OWNED BY public.utr_tasa_puntaje_extsu.idtpextsu;
          public          postgres    false    627            n           2604    20479 (   admin_module_universidades IDUniversidad    DEFAULT     �   ALTER TABLE ONLY public.admin_module_universidades ALTER COLUMN "IDUniversidad" SET DEFAULT nextval('public."admin_module_universidades_IDUniversidad_seq"'::regclass);
 Y   ALTER TABLE public.admin_module_universidades ALTER COLUMN "IDUniversidad" DROP DEFAULT;
       public          postgres    false    215    214            o           2604    20480    admin_module_usuarios IDUsuario    DEFAULT     �   ALTER TABLE ONLY public.admin_module_usuarios ALTER COLUMN "IDUsuario" SET DEFAULT nextval('public."admin_module_usuarios_IDUsuario_seq"'::regclass);
 P   ALTER TABLE public.admin_module_usuarios ALTER COLUMN "IDUsuario" DROP DEFAULT;
       public          postgres    false    217    216            p           2604    20481    admin_module_usuarios_groups id    DEFAULT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups ALTER COLUMN id SET DEFAULT nextval('public.admin_module_usuarios_groups_id_seq'::regclass);
 N   ALTER TABLE public.admin_module_usuarios_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            q           2604    20482 )   admin_module_usuarios_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_module_usuarios_user_permissions_id_seq'::regclass);
 X   ALTER TABLE public.admin_module_usuarios_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            r           2604    20483    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            s           2604    20484    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            t           2604    20485    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    21860    crena_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.crena_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.crena_carreras_idcarrera_seq'::regclass);
 G   ALTER TABLE public.crena_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    277    276            �           2604    21861    crena_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.crena_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.crena_eficiencia_ire_ideire_seq'::regclass);
 J   ALTER TABLE public.crena_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    279    278            �           2604    21862    crena_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.crena_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.crena_indice_colocacion_idic_seq'::regclass);
 K   ALTER TABLE public.crena_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    281    280            �           2604    21863    crena_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.crena_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.crena_indice_ptc_idiptc_seq'::regclass);
 F   ALTER TABLE public.crena_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    283    282            �           2604    21864    crena_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.crena_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.crena_indice_servicios_idis_seq'::regclass);
 J   ALTER TABLE public.crena_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    285    284            �           2604    21865    crena_iseg idiseg    DEFAULT     v   ALTER TABLE ONLY public.crena_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.crena_iseg_idiseg_seq'::regclass);
 @   ALTER TABLE public.crena_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    287    286            �           2604    21866    crena_isem idisem    DEFAULT     v   ALTER TABLE ONLY public.crena_isem ALTER COLUMN idisem SET DEFAULT nextval('public.crena_isem_idisem_seq'::regclass);
 @   ALTER TABLE public.crena_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    289    288            �           2604    21867    crena_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.crena_tasa_acreditacion_idta_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    291    290            �           2604    21868    crena_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.crena_tasa_cobertura_idtc_seq'::regclass);
 H   ALTER TABLE public.crena_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    293    292            �           2604    21869    crena_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.crena_tasa_docentes_idtd_seq'::regclass);
 G   ALTER TABLE public.crena_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    295    294            �           2604    21870    crena_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.crena_tasa_mov_alumnos_idtma_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    297    296            �           2604    21871    crena_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.crena_tasa_mov_docentes_idtmd_seq'::regclass);
 L   ALTER TABLE public.crena_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    299    298            �           2604    21872    crena_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.crena_tasa_pe_asat_idtpeasat_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    301    300            �           2604    21873     crena_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.crena_tasa_pe_pertinencia_idtpep_seq'::regclass);
 O   ALTER TABLE public.crena_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    303    302            �           2604    21874     crena_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.crena_tasa_puntaje_egel_idtpegel_seq'::regclass);
 O   ALTER TABLE public.crena_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    305    304            �           2604    21875    crena_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.crena_tasa_puntaje_ex_idtpex_seq'::regclass);
 K   ALTER TABLE public.crena_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    307    306            u           2604    20486    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            v           2604    20487    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            w           2604    20488    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    21876    ena_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.ena_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.ena_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.ena_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    309    308            �           2604    21877    ena_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.ena_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.ena_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.ena_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    311    310            �           2604    21878    ena_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.ena_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.ena_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.ena_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    313    312            �           2604    21879    ena_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.ena_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.ena_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.ena_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    315    314            �           2604    21880    ena_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.ena_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.ena_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.ena_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    317    316            �           2604    21881    ena_iseg idiseg    DEFAULT     r   ALTER TABLE ONLY public.ena_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.ena_iseg_idiseg_seq'::regclass);
 >   ALTER TABLE public.ena_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    319    318            �           2604    21882    ena_isem idisem    DEFAULT     r   ALTER TABLE ONLY public.ena_isem ALTER COLUMN idisem SET DEFAULT nextval('public.ena_isem_idisem_seq'::regclass);
 >   ALTER TABLE public.ena_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    321    320            �           2604    21883    ena_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.ena_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    323    322            �           2604    21884    ena_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.ena_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.ena_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    325    324            �           2604    21885    ena_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.ena_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.ena_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    327    326            �           2604    21886    ena_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.ena_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    329    328            �           2604    21887    ena_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.ena_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.ena_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    331    330            �           2604    21888    ena_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.ena_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    333    332            �           2604    21889    ena_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.ena_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.ena_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    335    334            �           2604    21890    ena_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.ena_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.ena_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    337    336            �           2604    21891    ena_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.ena_tasa_puntaje_ex_idtpex_seq'::regclass);
 I   ALTER TABLE public.ena_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    339    338            �           2604    21892    enrjsm_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.enrjsm_carreras_idcarrera_seq'::regclass);
 H   ALTER TABLE public.enrjsm_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    341    340            �           2604    21893    enrjsm_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.enrjsm_eficiencia_ire_ideire_seq'::regclass);
 K   ALTER TABLE public.enrjsm_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    343    342            �           2604    21894    enrjsm_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.enrjsm_indice_colocacion_idic_seq'::regclass);
 L   ALTER TABLE public.enrjsm_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    345    344            �           2604    21895    enrjsm_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.enrjsm_indice_ptc_idiptc_seq'::regclass);
 G   ALTER TABLE public.enrjsm_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    347    346            �           2604    21896    enrjsm_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.enrjsm_indice_servicios_idis_seq'::regclass);
 K   ALTER TABLE public.enrjsm_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    349    348            �           2604    21897    enrjsm_iseg idiseg    DEFAULT     x   ALTER TABLE ONLY public.enrjsm_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.enrjsm_iseg_idiseg_seq'::regclass);
 A   ALTER TABLE public.enrjsm_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    351    350            �           2604    21898    enrjsm_isem idisem    DEFAULT     x   ALTER TABLE ONLY public.enrjsm_isem ALTER COLUMN idisem SET DEFAULT nextval('public.enrjsm_isem_idisem_seq'::regclass);
 A   ALTER TABLE public.enrjsm_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    353    352            �           2604    21899    enrjsm_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.enrjsm_tasa_acreditacion_idta_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    355    354            �           2604    21900    enrjsm_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.enrjsm_tasa_cobertura_idtc_seq'::regclass);
 I   ALTER TABLE public.enrjsm_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    357    356            �           2604    21901    enrjsm_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.enrjsm_tasa_docentes_idtd_seq'::regclass);
 H   ALTER TABLE public.enrjsm_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    359    358            �           2604    21902    enrjsm_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.enrjsm_tasa_mov_alumnos_idtma_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    361    360            �           2604    21903    enrjsm_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.enrjsm_tasa_mov_docentes_idtmd_seq'::regclass);
 M   ALTER TABLE public.enrjsm_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    363    362            �           2604    21904    enrjsm_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.enrjsm_tasa_pe_asat_idtpeasat_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    365    364            �           2604    21905 !   enrjsm_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.enrjsm_tasa_pe_pertinencia_idtpep_seq'::regclass);
 P   ALTER TABLE public.enrjsm_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    367    366            �           2604    21906 !   enrjsm_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.enrjsm_tasa_puntaje_egel_idtpegel_seq'::regclass);
 P   ALTER TABLE public.enrjsm_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    369    368            �           2604    21907    enrjsm_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.enrjsm_tasa_puntaje_ex_idtpex_seq'::regclass);
 L   ALTER TABLE public.enrjsm_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    371    370            �           2604    21908    enrr_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.enrr_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.enrr_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.enrr_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    373    372            �           2604    21909    enrr_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.enrr_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.enrr_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.enrr_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    375    374            �           2604    21910    enrr_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.enrr_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.enrr_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.enrr_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    377    376            �           2604    21911    enrr_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.enrr_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.enrr_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.enrr_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    379    378            �           2604    21912    enrr_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.enrr_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.enrr_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.enrr_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    381    380            �           2604    21913    enrr_iseg idiseg    DEFAULT     t   ALTER TABLE ONLY public.enrr_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.enrr_iseg_idiseg_seq'::regclass);
 ?   ALTER TABLE public.enrr_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    383    382            �           2604    21914    enrr_isem idisem    DEFAULT     t   ALTER TABLE ONLY public.enrr_isem ALTER COLUMN idisem SET DEFAULT nextval('public.enrr_isem_idisem_seq'::regclass);
 ?   ALTER TABLE public.enrr_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    385    384            �           2604    21915    enrr_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.enrr_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    387    386            �           2604    21916    enrr_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.enrr_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.enrr_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    389    388            �           2604    21917    enrr_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.enrr_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.enrr_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    391    390            �           2604    21918    enrr_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.enrr_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    393    392            �           2604    21919    enrr_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.enrr_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.enrr_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    395    394            �           2604    21920    enrr_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.enrr_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    397    396            �           2604    21921    enrr_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.enrr_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.enrr_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    399    398            �           2604    21922    enrr_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.enrr_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.enrr_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    401    400            �           2604    21923    enrr_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.enrr_tasa_puntaje_ex_idtpex_seq'::regclass);
 J   ALTER TABLE public.enrr_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    403    402            �           2604    21924    ensfa_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.ensfa_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.ensfa_carreras_idcarrera_seq'::regclass);
 G   ALTER TABLE public.ensfa_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    405    404            �           2604    21925    ensfa_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.ensfa_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.ensfa_eficiencia_ire_ideire_seq'::regclass);
 J   ALTER TABLE public.ensfa_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    407    406            �           2604    21926    ensfa_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.ensfa_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.ensfa_indice_colocacion_idic_seq'::regclass);
 K   ALTER TABLE public.ensfa_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    409    408            �           2604    21927    ensfa_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.ensfa_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.ensfa_indice_ptc_idiptc_seq'::regclass);
 F   ALTER TABLE public.ensfa_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    411    410            �           2604    21928    ensfa_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.ensfa_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.ensfa_indice_servicios_idis_seq'::regclass);
 J   ALTER TABLE public.ensfa_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    413    412            �           2604    21929    ensfa_iseg idiseg    DEFAULT     v   ALTER TABLE ONLY public.ensfa_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.ensfa_iseg_idiseg_seq'::regclass);
 @   ALTER TABLE public.ensfa_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    415    414            �           2604    21930    ensfa_isem idisem    DEFAULT     v   ALTER TABLE ONLY public.ensfa_isem ALTER COLUMN idisem SET DEFAULT nextval('public.ensfa_isem_idisem_seq'::regclass);
 @   ALTER TABLE public.ensfa_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    417    416            �           2604    21931    ensfa_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.ensfa_tasa_acreditacion_idta_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    419    418            �           2604    21932    ensfa_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.ensfa_tasa_cobertura_idtc_seq'::regclass);
 H   ALTER TABLE public.ensfa_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    421    420            �           2604    21933    ensfa_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.ensfa_tasa_docentes_idtd_seq'::regclass);
 G   ALTER TABLE public.ensfa_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    423    422            �           2604    21934    ensfa_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.ensfa_tasa_mov_alumnos_idtma_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    425    424            �           2604    21935    ensfa_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.ensfa_tasa_mov_docentes_idtmd_seq'::regclass);
 L   ALTER TABLE public.ensfa_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    427    426            �           2604    21936    ensfa_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.ensfa_tasa_pe_asat_idtpeasat_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    429    428            �           2604    21937     ensfa_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.ensfa_tasa_pe_pertinencia_idtpep_seq'::regclass);
 O   ALTER TABLE public.ensfa_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    431    430            �           2604    21938     ensfa_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.ensfa_tasa_puntaje_egel_idtpegel_seq'::regclass);
 O   ALTER TABLE public.ensfa_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    433    432            �           2604    21939    ensfa_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.ensfa_tasa_puntaje_ex_idtpex_seq'::regclass);
 K   ALTER TABLE public.ensfa_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    435    434            �           2604    21941    upa_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.upa_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.upa_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.upa_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    437    436            �           2604    21942    upa_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.upa_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.upa_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.upa_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    439    438            �           2604    21943    upa_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.upa_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.upa_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.upa_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    441    440            �           2604    21944    upa_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.upa_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.upa_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.upa_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    443    442            �           2604    21945    upa_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.upa_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.upa_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.upa_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    445    444            �           2604    21946    upa_iseg idiseg    DEFAULT     r   ALTER TABLE ONLY public.upa_iseg ALTER COLUMN idiseg SET DEFAULT nextval('public.upa_iseg_idiseg_seq'::regclass);
 >   ALTER TABLE public.upa_iseg ALTER COLUMN idiseg DROP DEFAULT;
       public          postgres    false    447    446            �           2604    21947    upa_isem idisem    DEFAULT     r   ALTER TABLE ONLY public.upa_isem ALTER COLUMN idisem SET DEFAULT nextval('public.upa_isem_idisem_seq'::regclass);
 >   ALTER TABLE public.upa_isem ALTER COLUMN idisem DROP DEFAULT;
       public          postgres    false    449    448            �           2604    21948    upa_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.upa_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    451    450            �           2604    21949    upa_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.upa_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.upa_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    453    452            �           2604    21950    upa_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.upa_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.upa_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    455    454            �           2604    21951    upa_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.upa_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    457    456            �           2604    21952    upa_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.upa_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.upa_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    459    458            �           2604    21953    upa_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.upa_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    461    460            �           2604    21954    upa_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.upa_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.upa_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    463    462            �           2604    21955    upa_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.upa_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.upa_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    465    464            �           2604    21956    upa_tasa_puntaje_ex idtpex    DEFAULT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_ex ALTER COLUMN idtpex SET DEFAULT nextval('public.upa_tasa_puntaje_ex_idtpex_seq'::regclass);
 I   ALTER TABLE public.upa_tasa_puntaje_ex ALTER COLUMN idtpex DROP DEFAULT;
       public          postgres    false    467    466            �           2604    21958    uta_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.uta_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.uta_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.uta_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    469    468            �           2604    21959    uta_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.uta_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.uta_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.uta_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    471    470            �           2604    21960    uta_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.uta_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.uta_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.uta_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    473    472            �           2604    21961    uta_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.uta_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.uta_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.uta_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    475    474            �           2604    21962    uta_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.uta_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.uta_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.uta_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    477    476            �           2604    21963    uta_iseg_l idisegl    DEFAULT     x   ALTER TABLE ONLY public.uta_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.uta_iseg_l_idisegl_seq'::regclass);
 A   ALTER TABLE public.uta_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    479    478            �           2604    21964    uta_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.uta_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.uta_iseg_tsu_idisegtsu_seq'::regclass);
 E   ALTER TABLE public.uta_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    481    480            �           2604    21965    uta_isem_l idiseml    DEFAULT     x   ALTER TABLE ONLY public.uta_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.uta_isem_l_idiseml_seq'::regclass);
 A   ALTER TABLE public.uta_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    483    482            �           2604    21966    uta_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.uta_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.uta_isem_tsu_idisemtsu_seq'::regclass);
 E   ALTER TABLE public.uta_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    485    484            �           2604    21967    uta_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.uta_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.uta_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    487    486            �           2604    21968    uta_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.uta_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.uta_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    489    488            �           2604    21969    uta_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.uta_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.uta_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    491    490            �           2604    21970    uta_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.uta_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.uta_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    493    492            �           2604    21971    uta_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.uta_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.uta_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    495    494            �           2604    21972    uta_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.uta_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.uta_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    497    496            �           2604    21973    uta_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.uta_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.uta_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    499    498            �           2604    21974    uta_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.uta_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.uta_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    501    500            �           2604    21975 "   uta_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.uta_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 Q   ALTER TABLE public.uta_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    503    502            �           2604    21976    uta_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.uta_tasa_puntaje_exl_idtpexl_seq'::regclass);
 K   ALTER TABLE public.uta_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    505    504            �           2604    21977     uta_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.uta_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 O   ALTER TABLE public.uta_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    507    506                        2604    21978    utc_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utc_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utc_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.utc_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    509    508                       2604    21979    utc_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utc_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utc_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.utc_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    511    510                       2604    21980    utc_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utc_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utc_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.utc_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    513    512                       2604    21981    utc_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.utc_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utc_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.utc_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    515    514                       2604    21982    utc_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utc_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utc_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.utc_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    517    516                       2604    21983    utc_iseg_l idisegl    DEFAULT     x   ALTER TABLE ONLY public.utc_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utc_iseg_l_idisegl_seq'::regclass);
 A   ALTER TABLE public.utc_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    519    518                       2604    21984    utc_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utc_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utc_iseg_tsu_idisegtsu_seq'::regclass);
 E   ALTER TABLE public.utc_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    521    520                       2604    21985    utc_isem_l idiseml    DEFAULT     x   ALTER TABLE ONLY public.utc_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utc_isem_l_idiseml_seq'::regclass);
 A   ALTER TABLE public.utc_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    523    522                       2604    21986    utc_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utc_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utc_isem_tsu_idisemtsu_seq'::regclass);
 E   ALTER TABLE public.utc_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    525    524            	           2604    21987    utc_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utc_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.utc_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    527    526            
           2604    21988    utc_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utc_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.utc_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    529    528                       2604    21989    utc_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utc_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.utc_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    531    530                       2604    21990    utc_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utc_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.utc_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    533    532                       2604    21991    utc_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utc_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.utc_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    535    534                       2604    21992    utc_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utc_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.utc_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    537    536                       2604    21993    utc_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utc_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.utc_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    539    538                       2604    21994    utc_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utc_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.utc_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    541    540                       2604    21995 "   utc_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.utc_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 Q   ALTER TABLE public.utc_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    543    542                       2604    21996    utc_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utc_tasa_puntaje_exl_idtpexl_seq'::regclass);
 K   ALTER TABLE public.utc_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    545    544                       2604    21997     utc_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utc_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 O   ALTER TABLE public.utc_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    547    546                       2604    21998    utma_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utma_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utma_carreras_idcarrera_seq'::regclass);
 F   ALTER TABLE public.utma_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    549    548                       2604    21999    utma_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utma_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utma_eficiencia_ire_ideire_seq'::regclass);
 I   ALTER TABLE public.utma_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    551    550                       2604    22000    utma_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utma_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utma_indice_colocacion_idic_seq'::regclass);
 J   ALTER TABLE public.utma_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    553    552                       2604    22001    utma_indice_ptc idiptc    DEFAULT     �   ALTER TABLE ONLY public.utma_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utma_indice_ptc_idiptc_seq'::regclass);
 E   ALTER TABLE public.utma_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    555    554                       2604    22002    utma_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utma_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utma_indice_servicios_idis_seq'::regclass);
 I   ALTER TABLE public.utma_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    557    556                       2604    22003    utma_iseg_l idisegl    DEFAULT     z   ALTER TABLE ONLY public.utma_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utma_iseg_l_idisegl_seq'::regclass);
 B   ALTER TABLE public.utma_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    559    558                       2604    22004    utma_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utma_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utma_iseg_tsu_idisegtsu_seq'::regclass);
 F   ALTER TABLE public.utma_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    561    560                       2604    22005    utma_isem_l idiseml    DEFAULT     z   ALTER TABLE ONLY public.utma_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utma_isem_l_idiseml_seq'::regclass);
 B   ALTER TABLE public.utma_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    563    562                       2604    22006    utma_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utma_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utma_isem_tsu_idisemtsu_seq'::regclass);
 F   ALTER TABLE public.utma_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    565    564                       2604    22007    utma_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utma_tasa_acreditacion_idta_seq'::regclass);
 J   ALTER TABLE public.utma_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    567    566                       2604    22008    utma_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utma_tasa_cobertura_idtc_seq'::regclass);
 G   ALTER TABLE public.utma_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    569    568                       2604    22009    utma_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utma_tasa_docentes_idtd_seq'::regclass);
 F   ALTER TABLE public.utma_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    571    570                        2604    22010    utma_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utma_tasa_mov_alumnos_idtma_seq'::regclass);
 J   ALTER TABLE public.utma_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    573    572            !           2604    22011    utma_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utma_tasa_mov_docentes_idtmd_seq'::regclass);
 K   ALTER TABLE public.utma_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    575    574            "           2604    22012    utma_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utma_tasa_pe_asat_idtpeasat_seq'::regclass);
 J   ALTER TABLE public.utma_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    577    576            #           2604    22013    utma_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utma_tasa_pe_pertinencia_idtpep_seq'::regclass);
 N   ALTER TABLE public.utma_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    579    578            $           2604    22014    utma_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utma_tasa_puntaje_egel_idtpegel_seq'::regclass);
 N   ALTER TABLE public.utma_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    581    580            %           2604    22015 #   utma_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.utma_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 R   ALTER TABLE public.utma_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    583    582            &           2604    22016    utma_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utma_tasa_puntaje_exl_idtpexl_seq'::regclass);
 L   ALTER TABLE public.utma_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    585    584            '           2604    22017 !   utma_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utma_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 P   ALTER TABLE public.utma_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    587    586            x           2604    20489 #   utna_module_utna_carreras IDCarrera    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_carreras ALTER COLUMN "IDCarrera" SET DEFAULT nextval('public."utna_module_utna_carreras_IDCarrera_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_carreras ALTER COLUMN "IDCarrera" DROP DEFAULT;
       public          postgres    false    237    236            y           2604    20490 &   utna_module_utna_eficiencia_ire IDEIRE    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire ALTER COLUMN "IDEIRE" SET DEFAULT nextval('public."utna_module_utna_eficiencia_ire_IDEIRE_seq"'::regclass);
 W   ALTER TABLE public.utna_module_utna_eficiencia_ire ALTER COLUMN "IDEIRE" DROP DEFAULT;
       public          postgres    false    239    238            z           2604    20491 '   utna_module_utna_indice_colocacion IDIC    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion ALTER COLUMN "IDIC" SET DEFAULT nextval('public."utna_module_utna_indice_colocacion_IDIC_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_indice_colocacion ALTER COLUMN "IDIC" DROP DEFAULT;
       public          postgres    false    241    240            {           2604    20492 "   utna_module_utna_indice_ptc IDIPTC    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc ALTER COLUMN "IDIPTC" SET DEFAULT nextval('public."utna_module_utna_indice_ptc_IDIPTC_seq"'::regclass);
 S   ALTER TABLE public.utna_module_utna_indice_ptc ALTER COLUMN "IDIPTC" DROP DEFAULT;
       public          postgres    false    243    242            |           2604    20493 &   utna_module_utna_indice_servicios IDIS    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios ALTER COLUMN "IDIS" SET DEFAULT nextval('public."utna_module_utna_indice_servicios_IDIS_seq"'::regclass);
 W   ALTER TABLE public.utna_module_utna_indice_servicios ALTER COLUMN "IDIS" DROP DEFAULT;
       public          postgres    false    245    244            }           2604    20494    utna_module_utna_iseg_l IDISEGL    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_l ALTER COLUMN "IDISEGL" SET DEFAULT nextval('public."utna_module_utna_iseg_l_IDISEGL_seq"'::regclass);
 P   ALTER TABLE public.utna_module_utna_iseg_l ALTER COLUMN "IDISEGL" DROP DEFAULT;
       public          postgres    false    247    246            ~           2604    20495 #   utna_module_utna_iseg_tsu IDISEGTSU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu ALTER COLUMN "IDISEGTSU" SET DEFAULT nextval('public."utna_module_utna_iseg_tsu_IDISEGTSU_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_iseg_tsu ALTER COLUMN "IDISEGTSU" DROP DEFAULT;
       public          postgres    false    249    248                       2604    20496    utna_module_utna_isem_l IDISEML    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_isem_l ALTER COLUMN "IDISEML" SET DEFAULT nextval('public."utna_module_utna_isem_l_IDISEML_seq"'::regclass);
 P   ALTER TABLE public.utna_module_utna_isem_l ALTER COLUMN "IDISEML" DROP DEFAULT;
       public          postgres    false    251    250            �           2604    20497 #   utna_module_utna_isem_tsu IDISEMTSU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_isem_tsu ALTER COLUMN "IDISEMTSU" SET DEFAULT nextval('public."utna_module_utna_isem_tsu_IDISEMTSU_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_isem_tsu ALTER COLUMN "IDISEMTSU" DROP DEFAULT;
       public          postgres    false    253    252            �           2604    20498 '   utna_module_utna_tasa_acreditacion IDTA    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion ALTER COLUMN "IDTA" SET DEFAULT nextval('public."utna_module_utna_tasa_acreditacion_IDTA_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_tasa_acreditacion ALTER COLUMN "IDTA" DROP DEFAULT;
       public          postgres    false    255    254            �           2604    20499 $   utna_module_utna_tasa_cobertura IDTC    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura ALTER COLUMN "IDTC" SET DEFAULT nextval('public."utna_module_utna_tasa_cobertura_IDTC_seq"'::regclass);
 U   ALTER TABLE public.utna_module_utna_tasa_cobertura ALTER COLUMN "IDTC" DROP DEFAULT;
       public          postgres    false    257    256            �           2604    20500 #   utna_module_utna_tasa_docentes IDTD    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes ALTER COLUMN "IDTD" SET DEFAULT nextval('public."utna_module_utna_tasa_docentes_IDTD_seq"'::regclass);
 T   ALTER TABLE public.utna_module_utna_tasa_docentes ALTER COLUMN "IDTD" DROP DEFAULT;
       public          postgres    false    259    258            �           2604    20501 '   utna_module_utna_tasa_mov_alumnos IDTMA    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos ALTER COLUMN "IDTMA" SET DEFAULT nextval('public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_tasa_mov_alumnos ALTER COLUMN "IDTMA" DROP DEFAULT;
       public          postgres    false    261    260            �           2604    20502 (   utna_module_utna_tasa_mov_docentes IDTMD    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes ALTER COLUMN "IDTMD" SET DEFAULT nextval('public."utna_module_utna_tasa_mov_docentes_IDTMD_seq"'::regclass);
 Y   ALTER TABLE public.utna_module_utna_tasa_mov_docentes ALTER COLUMN "IDTMD" DROP DEFAULT;
       public          postgres    false    263    262            �           2604    20503 '   utna_module_utna_tasa_pe_asat IDTPEASAT    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat ALTER COLUMN "IDTPEASAT" SET DEFAULT nextval('public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq"'::regclass);
 X   ALTER TABLE public.utna_module_utna_tasa_pe_asat ALTER COLUMN "IDTPEASAT" DROP DEFAULT;
       public          postgres    false    265    264            �           2604    20504 +   utna_module_utna_tasa_pe_pertinencia IDTPEP    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia ALTER COLUMN "IDTPEP" SET DEFAULT nextval('public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq"'::regclass);
 \   ALTER TABLE public.utna_module_utna_tasa_pe_pertinencia ALTER COLUMN "IDTPEP" DROP DEFAULT;
       public          postgres    false    267    266            �           2604    20505 +   utna_module_utna_tasa_puntaje_egel IDTPEGEL    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel ALTER COLUMN "IDTPEGEL" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq"'::regclass);
 \   ALTER TABLE public.utna_module_utna_tasa_puntaje_egel ALTER COLUMN "IDTPEGEL" DROP DEFAULT;
       public          postgres    false    269    268            �           2604    20506 /   utna_module_utna_tasa_puntaje_egetsu IDTPEGESTU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu ALTER COLUMN "IDTPEGESTU" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq"'::regclass);
 `   ALTER TABLE public.utna_module_utna_tasa_puntaje_egetsu ALTER COLUMN "IDTPEGESTU" DROP DEFAULT;
       public          postgres    false    271    270            �           2604    20507 )   utna_module_utna_tasa_puntaje_exl IDTPEXL    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl ALTER COLUMN "IDTPEXL" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq"'::regclass);
 Z   ALTER TABLE public.utna_module_utna_tasa_puntaje_exl ALTER COLUMN "IDTPEXL" DROP DEFAULT;
       public          postgres    false    273    272            �           2604    20508 -   utna_module_utna_tasa_puntaje_extsu IDTPEXTSU    DEFAULT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu ALTER COLUMN "IDTPEXTSU" SET DEFAULT nextval('public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq"'::regclass);
 ^   ALTER TABLE public.utna_module_utna_tasa_puntaje_extsu ALTER COLUMN "IDTPEXTSU" DROP DEFAULT;
       public          postgres    false    275    274            (           2604    22038    utr_carreras idcarrera    DEFAULT     �   ALTER TABLE ONLY public.utr_carreras ALTER COLUMN idcarrera SET DEFAULT nextval('public.utr_carreras_idcarrera_seq'::regclass);
 E   ALTER TABLE public.utr_carreras ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    589    588            )           2604    22039    utr_eficiencia_ire ideire    DEFAULT     �   ALTER TABLE ONLY public.utr_eficiencia_ire ALTER COLUMN ideire SET DEFAULT nextval('public.utr_eficiencia_ire_ideire_seq'::regclass);
 H   ALTER TABLE public.utr_eficiencia_ire ALTER COLUMN ideire DROP DEFAULT;
       public          postgres    false    591    590            *           2604    22040    utr_indice_colocacion idic    DEFAULT     �   ALTER TABLE ONLY public.utr_indice_colocacion ALTER COLUMN idic SET DEFAULT nextval('public.utr_indice_colocacion_idic_seq'::regclass);
 I   ALTER TABLE public.utr_indice_colocacion ALTER COLUMN idic DROP DEFAULT;
       public          postgres    false    593    592            +           2604    22041    utr_indice_ptc idiptc    DEFAULT     ~   ALTER TABLE ONLY public.utr_indice_ptc ALTER COLUMN idiptc SET DEFAULT nextval('public.utr_indice_ptc_idiptc_seq'::regclass);
 D   ALTER TABLE public.utr_indice_ptc ALTER COLUMN idiptc DROP DEFAULT;
       public          postgres    false    595    594            ,           2604    22042    utr_indice_servicios idis    DEFAULT     �   ALTER TABLE ONLY public.utr_indice_servicios ALTER COLUMN idis SET DEFAULT nextval('public.utr_indice_servicios_idis_seq'::regclass);
 H   ALTER TABLE public.utr_indice_servicios ALTER COLUMN idis DROP DEFAULT;
       public          postgres    false    597    596            -           2604    22043    utr_iseg_l idisegl    DEFAULT     x   ALTER TABLE ONLY public.utr_iseg_l ALTER COLUMN idisegl SET DEFAULT nextval('public.utr_iseg_l_idisegl_seq'::regclass);
 A   ALTER TABLE public.utr_iseg_l ALTER COLUMN idisegl DROP DEFAULT;
       public          postgres    false    599    598            .           2604    22044    utr_iseg_tsu idisegtsu    DEFAULT     �   ALTER TABLE ONLY public.utr_iseg_tsu ALTER COLUMN idisegtsu SET DEFAULT nextval('public.utr_iseg_tsu_idisegtsu_seq'::regclass);
 E   ALTER TABLE public.utr_iseg_tsu ALTER COLUMN idisegtsu DROP DEFAULT;
       public          postgres    false    601    600            /           2604    22045    utr_isem_l idiseml    DEFAULT     x   ALTER TABLE ONLY public.utr_isem_l ALTER COLUMN idiseml SET DEFAULT nextval('public.utr_isem_l_idiseml_seq'::regclass);
 A   ALTER TABLE public.utr_isem_l ALTER COLUMN idiseml DROP DEFAULT;
       public          postgres    false    603    602            0           2604    22046    utr_isem_tsu idisemtsu    DEFAULT     �   ALTER TABLE ONLY public.utr_isem_tsu ALTER COLUMN idisemtsu SET DEFAULT nextval('public.utr_isem_tsu_idisemtsu_seq'::regclass);
 E   ALTER TABLE public.utr_isem_tsu ALTER COLUMN idisemtsu DROP DEFAULT;
       public          postgres    false    605    604            1           2604    22047    utr_tasa_acreditacion idta    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_acreditacion ALTER COLUMN idta SET DEFAULT nextval('public.utr_tasa_acreditacion_idta_seq'::regclass);
 I   ALTER TABLE public.utr_tasa_acreditacion ALTER COLUMN idta DROP DEFAULT;
       public          postgres    false    607    606            2           2604    22048    utr_tasa_cobertura idtc    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_cobertura ALTER COLUMN idtc SET DEFAULT nextval('public.utr_tasa_cobertura_idtc_seq'::regclass);
 F   ALTER TABLE public.utr_tasa_cobertura ALTER COLUMN idtc DROP DEFAULT;
       public          postgres    false    609    608            3           2604    22049    utr_tasa_docentes idtd    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_docentes ALTER COLUMN idtd SET DEFAULT nextval('public.utr_tasa_docentes_idtd_seq'::regclass);
 E   ALTER TABLE public.utr_tasa_docentes ALTER COLUMN idtd DROP DEFAULT;
       public          postgres    false    611    610            4           2604    22050    utr_tasa_mov_alumnos idtma    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_mov_alumnos ALTER COLUMN idtma SET DEFAULT nextval('public.utr_tasa_mov_alumnos_idtma_seq'::regclass);
 I   ALTER TABLE public.utr_tasa_mov_alumnos ALTER COLUMN idtma DROP DEFAULT;
       public          postgres    false    613    612            5           2604    22051    utr_tasa_mov_docentes idtmd    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_mov_docentes ALTER COLUMN idtmd SET DEFAULT nextval('public.utr_tasa_mov_docentes_idtmd_seq'::regclass);
 J   ALTER TABLE public.utr_tasa_mov_docentes ALTER COLUMN idtmd DROP DEFAULT;
       public          postgres    false    615    614            6           2604    22052    utr_tasa_pe_asat idtpeasat    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_pe_asat ALTER COLUMN idtpeasat SET DEFAULT nextval('public.utr_tasa_pe_asat_idtpeasat_seq'::regclass);
 I   ALTER TABLE public.utr_tasa_pe_asat ALTER COLUMN idtpeasat DROP DEFAULT;
       public          postgres    false    617    616            7           2604    22053    utr_tasa_pe_pertinencia idtpep    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia ALTER COLUMN idtpep SET DEFAULT nextval('public.utr_tasa_pe_pertinencia_idtpep_seq'::regclass);
 M   ALTER TABLE public.utr_tasa_pe_pertinencia ALTER COLUMN idtpep DROP DEFAULT;
       public          postgres    false    619    618            8           2604    22054    utr_tasa_puntaje_egel idtpegel    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egel ALTER COLUMN idtpegel SET DEFAULT nextval('public.utr_tasa_puntaje_egel_idtpegel_seq'::regclass);
 M   ALTER TABLE public.utr_tasa_puntaje_egel ALTER COLUMN idtpegel DROP DEFAULT;
       public          postgres    false    621    620            9           2604    22055 "   utr_tasa_puntaje_egetsu idtpegetsu    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu SET DEFAULT nextval('public.utr_tasa_puntaje_egetsu_idtpegetsu_seq'::regclass);
 Q   ALTER TABLE public.utr_tasa_puntaje_egetsu ALTER COLUMN idtpegetsu DROP DEFAULT;
       public          postgres    false    623    622            :           2604    22056    utr_tasa_puntaje_exl idtpexl    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_exl ALTER COLUMN idtpexl SET DEFAULT nextval('public.utr_tasa_puntaje_exl_idtpexl_seq'::regclass);
 K   ALTER TABLE public.utr_tasa_puntaje_exl ALTER COLUMN idtpexl DROP DEFAULT;
       public          postgres    false    625    624            ;           2604    22057     utr_tasa_puntaje_extsu idtpextsu    DEFAULT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu ALTER COLUMN idtpextsu SET DEFAULT nextval('public.utr_tasa_puntaje_extsu_idtpextsu_seq'::regclass);
 O   ALTER TABLE public.utr_tasa_puntaje_extsu ALTER COLUMN idtpextsu DROP DEFAULT;
       public          postgres    false    627    626            y          0    20344    admin_module_universidades 
   TABLE DATA           o   COPY public.admin_module_universidades ("IDUniversidad", "Abreviacion", "Nombre", "Plan_estudios") FROM stdin;
    public          postgres    false    214   ~^	      {          0    20348    admin_module_usuarios 
   TABLE DATA           �   COPY public.admin_module_usuarios (password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, "IDUsuario", "Cargo", "Universidad_id") FROM stdin;
    public          postgres    false    216   �_	      }          0    20354    admin_module_usuarios_groups 
   TABLE DATA           Q   COPY public.admin_module_usuarios_groups (id, usuarios_id, group_id) FROM stdin;
    public          postgres    false    218   �g	                0    20358 &   admin_module_usuarios_user_permissions 
   TABLE DATA           `   COPY public.admin_module_usuarios_user_permissions (id, usuarios_id, permission_id) FROM stdin;
    public          postgres    false    220   �g	      �          0    20362 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    222   �g	      �          0    20366    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    224   �g	      �          0    20370    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    226   h	      �          0    20374    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    228   �l	      �          0    20786    crena_carreras 
   TABLE DATA           g   COPY public.crena_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    276   m	      �          0    20790    crena_eficiencia_ire 
   TABLE DATA           �   COPY public.crena_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    278   hm	      �          0    20796    crena_indice_colocacion 
   TABLE DATA           r   COPY public.crena_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    280   �m	      �          0    20802    crena_indice_ptc 
   TABLE DATA           �   COPY public.crena_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    282   �m	      �          0    20806    crena_indice_servicios 
   TABLE DATA           �  COPY public.crena_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    284   �m	      �          0    20812 
   crena_iseg 
   TABLE DATA           
  COPY public.crena_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    286   �m	      �          0    20818 
   crena_isem 
   TABLE DATA           �   COPY public.crena_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    288   �m	      �          0    20824    crena_tasa_acreditacion 
   TABLE DATA           �   COPY public.crena_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    290   n	      �          0    20828    crena_tasa_cobertura 
   TABLE DATA           \   COPY public.crena_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    292   3n	      �          0    20834    crena_tasa_docentes 
   TABLE DATA           �   COPY public.crena_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    294   Pn	      �          0    20840    crena_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.crena_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    296   mn	      �          0    20846    crena_tasa_mov_docentes 
   TABLE DATA           �   COPY public.crena_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    298   �n	      �          0    20852    crena_tasa_pe_asat 
   TABLE DATA           ^   COPY public.crena_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    300   �n	      �          0    20856    crena_tasa_pe_pertinencia 
   TABLE DATA           e   COPY public.crena_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    302   �n	      �          0    20860    crena_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.crena_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    304   �n	      �          0    20866    crena_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.crena_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    306   �n	      �          0    20377    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    229   o	      �          0    20384    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    231   �o	      �          0    20388    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    233   �p	      �          0    20394    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    235   �s	      �          0    20872    ena_carreras 
   TABLE DATA           e   COPY public.ena_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    308   �v	      �          0    20876    ena_eficiencia_ire 
   TABLE DATA           �   COPY public.ena_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    310   w	      �          0    20882    ena_indice_colocacion 
   TABLE DATA           p   COPY public.ena_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    312   9w	      �          0    20888    ena_indice_ptc 
   TABLE DATA           �   COPY public.ena_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    314   Vw	      �          0    20892    ena_indice_servicios 
   TABLE DATA           �  COPY public.ena_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    316   sw	      �          0    20898    ena_iseg 
   TABLE DATA             COPY public.ena_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    318   �w	      �          0    20904    ena_isem 
   TABLE DATA           �   COPY public.ena_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    320   �w	      �          0    20910    ena_tasa_acreditacion 
   TABLE DATA           �   COPY public.ena_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    322   �w	      �          0    20914    ena_tasa_cobertura 
   TABLE DATA           Z   COPY public.ena_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    324   �w	      �          0    20920    ena_tasa_docentes 
   TABLE DATA           �   COPY public.ena_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    326   x	      �          0    20926    ena_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.ena_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    328   !x	      �          0    20932    ena_tasa_mov_docentes 
   TABLE DATA           �   COPY public.ena_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    330   >x	      �          0    20938    ena_tasa_pe_asat 
   TABLE DATA           \   COPY public.ena_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    332   [x	      �          0    20942    ena_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.ena_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    334   xx	      �          0    20946    ena_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.ena_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    336   �x	      �          0    20952    ena_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.ena_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    338   �x	      �          0    20958    enrjsm_carreras 
   TABLE DATA           h   COPY public.enrjsm_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    340   �x	      �          0    20962    enrjsm_eficiencia_ire 
   TABLE DATA           �   COPY public.enrjsm_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    342   y	      �          0    20968    enrjsm_indice_colocacion 
   TABLE DATA           s   COPY public.enrjsm_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    344   <y	      �          0    20974    enrjsm_indice_ptc 
   TABLE DATA           �   COPY public.enrjsm_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    346   Yy	      �          0    20978    enrjsm_indice_servicios 
   TABLE DATA           �  COPY public.enrjsm_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    348   vy	                0    20984    enrjsm_iseg 
   TABLE DATA             COPY public.enrjsm_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    350   �y	                0    20990    enrjsm_isem 
   TABLE DATA           �   COPY public.enrjsm_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    352   �y	                0    20996    enrjsm_tasa_acreditacion 
   TABLE DATA           �   COPY public.enrjsm_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    354   �y	                0    21000    enrjsm_tasa_cobertura 
   TABLE DATA           ]   COPY public.enrjsm_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    356   �y	      	          0    21006    enrjsm_tasa_docentes 
   TABLE DATA           �   COPY public.enrjsm_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    358   z	                0    21012    enrjsm_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.enrjsm_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    360   $z	                0    21018    enrjsm_tasa_mov_docentes 
   TABLE DATA           �   COPY public.enrjsm_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    362   Az	                0    21024    enrjsm_tasa_pe_asat 
   TABLE DATA           _   COPY public.enrjsm_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    364   ^z	                0    21028    enrjsm_tasa_pe_pertinencia 
   TABLE DATA           f   COPY public.enrjsm_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    366   {z	                0    21032    enrjsm_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.enrjsm_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    368   �z	                0    21038    enrjsm_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.enrjsm_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    370   �z	                0    21044    enrr_carreras 
   TABLE DATA           f   COPY public.enrr_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    372   �z	                0    21048    enrr_eficiencia_ire 
   TABLE DATA           �   COPY public.enrr_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    374   /{	                0    21054    enrr_indice_colocacion 
   TABLE DATA           q   COPY public.enrr_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    376   L{	                0    21060    enrr_indice_ptc 
   TABLE DATA           �   COPY public.enrr_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    378   i{	                0    21064    enrr_indice_servicios 
   TABLE DATA           �  COPY public.enrr_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    380   �{	      !          0    21070 	   enrr_iseg 
   TABLE DATA           	  COPY public.enrr_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    382   �{	      #          0    21076 	   enrr_isem 
   TABLE DATA           �   COPY public.enrr_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    384   �{	      %          0    21082    enrr_tasa_acreditacion 
   TABLE DATA           �   COPY public.enrr_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    386   �{	      '          0    21086    enrr_tasa_cobertura 
   TABLE DATA           [   COPY public.enrr_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    388   �{	      )          0    21092    enrr_tasa_docentes 
   TABLE DATA           �   COPY public.enrr_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    390   |	      +          0    21098    enrr_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.enrr_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    392   4|	      -          0    21104    enrr_tasa_mov_docentes 
   TABLE DATA           �   COPY public.enrr_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    394   Q|	      /          0    21110    enrr_tasa_pe_asat 
   TABLE DATA           ]   COPY public.enrr_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    396   n|	      1          0    21114    enrr_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.enrr_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    398   �|	      3          0    21118    enrr_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.enrr_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    400   �|	      5          0    21124    enrr_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.enrr_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    402   �|	      7          0    21130    ensfa_carreras 
   TABLE DATA           g   COPY public.ensfa_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    404   �|	      9          0    21134    ensfa_eficiencia_ire 
   TABLE DATA           �   COPY public.ensfa_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    406   �}	      ;          0    21140    ensfa_indice_colocacion 
   TABLE DATA           r   COPY public.ensfa_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    408   �}	      =          0    21146    ensfa_indice_ptc 
   TABLE DATA           �   COPY public.ensfa_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    410   ~	      ?          0    21150    ensfa_indice_servicios 
   TABLE DATA           �  COPY public.ensfa_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    412   2~	      A          0    21156 
   ensfa_iseg 
   TABLE DATA           
  COPY public.ensfa_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    414   O~	      C          0    21162 
   ensfa_isem 
   TABLE DATA           �   COPY public.ensfa_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    416   l~	      E          0    21168    ensfa_tasa_acreditacion 
   TABLE DATA           �   COPY public.ensfa_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    418   �~	      G          0    21172    ensfa_tasa_cobertura 
   TABLE DATA           \   COPY public.ensfa_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    420   �~	      I          0    21178    ensfa_tasa_docentes 
   TABLE DATA           �   COPY public.ensfa_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    422   �~	      K          0    21184    ensfa_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.ensfa_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    424   �~	      M          0    21190    ensfa_tasa_mov_docentes 
   TABLE DATA           �   COPY public.ensfa_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    426   �~	      O          0    21196    ensfa_tasa_pe_asat 
   TABLE DATA           ^   COPY public.ensfa_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    428   	      Q          0    21200    ensfa_tasa_pe_pertinencia 
   TABLE DATA           e   COPY public.ensfa_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    430   7	      S          0    21204    ensfa_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.ensfa_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    432   T	      U          0    21210    ensfa_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.ensfa_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    434   q	      W          0    21220    upa_carreras 
   TABLE DATA           e   COPY public.upa_carreras (idcarrera, universidad, nombre, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    436   �	      Y          0    21224    upa_eficiencia_ire 
   TABLE DATA           �   COPY public.upa_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    438   |�	      [          0    21230    upa_indice_colocacion 
   TABLE DATA           p   COPY public.upa_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    440   ��	      ]          0    21236    upa_indice_ptc 
   TABLE DATA           �   COPY public.upa_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    442   &�	      _          0    21240    upa_indice_servicios 
   TABLE DATA           �  COPY public.upa_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    444   C�	      a          0    21246    upa_iseg 
   TABLE DATA             COPY public.upa_iseg (idiseg, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    446   `�	      c          0    21252    upa_isem 
   TABLE DATA           �   COPY public.upa_isem (idisem, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    448   �	      e          0    21258    upa_tasa_acreditacion 
   TABLE DATA           �   COPY public.upa_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    450   ��	      g          0    21262    upa_tasa_cobertura 
   TABLE DATA           Z   COPY public.upa_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    452   ��	      i          0    21268    upa_tasa_docentes 
   TABLE DATA           �   COPY public.upa_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    454   ă	      k          0    21274    upa_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.upa_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    456   �	      m          0    21280    upa_tasa_mov_docentes 
   TABLE DATA           �   COPY public.upa_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    458   ��	      o          0    21286    upa_tasa_pe_asat 
   TABLE DATA           \   COPY public.upa_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    460   ��	      q          0    21290    upa_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.upa_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    462   ΅	      s          0    21294    upa_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.upa_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    464   �	      u          0    21300    upa_tasa_puntaje_ex 
   TABLE DATA           �   COPY public.upa_tasa_puntaje_ex (idtpex, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    466   <�	      w          0    21310    uta_carreras 
   TABLE DATA           r   COPY public.uta_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    468   Y�	      y          0    21314    uta_eficiencia_ire 
   TABLE DATA           �   COPY public.uta_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    470   Ј	      {          0    21320    uta_indice_colocacion 
   TABLE DATA           p   COPY public.uta_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    472   �	      }          0    21326    uta_indice_ptc 
   TABLE DATA           �   COPY public.uta_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    474   �	                0    21330    uta_indice_servicios 
   TABLE DATA           �  COPY public.uta_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    476   ��	      �          0    21336 
   uta_iseg_l 
   TABLE DATA             COPY public.uta_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, esperiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    478   ��	      �          0    21342    uta_iseg_tsu 
   TABLE DATA             COPY public.uta_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    480   ��	      �          0    21348 
   uta_isem_l 
   TABLE DATA           �   COPY public.uta_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    482   �	      �          0    21354    uta_isem_tsu 
   TABLE DATA           �   COPY public.uta_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    484   ��	      �          0    21360    uta_tasa_acreditacion 
   TABLE DATA           �   COPY public.uta_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    486   a�	      �          0    21364    uta_tasa_cobertura 
   TABLE DATA           Z   COPY public.uta_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    488   ~�	      �          0    21370    uta_tasa_docentes 
   TABLE DATA           �   COPY public.uta_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    490   ��	      �          0    21376    uta_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.uta_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    492   ��	      �          0    21382    uta_tasa_mov_docentes 
   TABLE DATA           �   COPY public.uta_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    494   ��	      �          0    21388    uta_tasa_pe_asat 
   TABLE DATA           \   COPY public.uta_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    496   Ж	      �          0    21392    uta_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.uta_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    498   �	      �          0    21396    uta_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    500   s�	      �          0    21402    uta_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    502   ��	      �          0    21408    uta_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    504   ��	      �          0    21414    uta_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.uta_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    506   K�	      �          0    21420    utc_carreras 
   TABLE DATA           r   COPY public.utc_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    508   �	      �          0    21424    utc_eficiencia_ire 
   TABLE DATA           �   COPY public.utc_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    510   o�	      �          0    21430    utc_indice_colocacion 
   TABLE DATA           p   COPY public.utc_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    512   ��	      �          0    21436    utc_indice_ptc 
   TABLE DATA           �   COPY public.utc_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    514   �	      �          0    21440    utc_indice_servicios 
   TABLE DATA           �  COPY public.utc_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    516   �	      �          0    21446 
   utc_iseg_l 
   TABLE DATA             COPY public.utc_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    518   �	      �          0    21452    utc_iseg_tsu 
   TABLE DATA             COPY public.utc_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    520   ,�	      �          0    21458 
   utc_isem_l 
   TABLE DATA           �   COPY public.utc_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    522   I�	      �          0    21464    utc_isem_tsu 
   TABLE DATA           �   COPY public.utc_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    524   f�	      �          0    21470    utc_tasa_acreditacion 
   TABLE DATA           �   COPY public.utc_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    526   ��	      �          0    21474    utc_tasa_cobertura 
   TABLE DATA           Z   COPY public.utc_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    528   ��	      �          0    21480    utc_tasa_docentes 
   TABLE DATA           �   COPY public.utc_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    530   ��	      �          0    21486    utc_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utc_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    532   ڝ	      �          0    21492    utc_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utc_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    534   ��	      �          0    21498    utc_tasa_pe_asat 
   TABLE DATA           \   COPY public.utc_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    536   ��	      �          0    21502    utc_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.utc_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    538   ۟	      �          0    21506    utc_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    540   2�	      �          0    21512    utc_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    542   O�	      �          0    21518    utc_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    544   l�	      �          0    21524    utc_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utc_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    546   ��	      �          0    21530    utma_carreras 
   TABLE DATA           s   COPY public.utma_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    548   ��	      �          0    21534    utma_eficiencia_ire 
   TABLE DATA           �   COPY public.utma_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    550   �	      �          0    21540    utma_indice_colocacion 
   TABLE DATA           q   COPY public.utma_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    552   1�	      �          0    21546    utma_indice_ptc 
   TABLE DATA           �   COPY public.utma_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    554   բ	      �          0    21550    utma_indice_servicios 
   TABLE DATA           �  COPY public.utma_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    556   ��	      �          0    21556    utma_iseg_l 
   TABLE DATA             COPY public.utma_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    558   ��	      �          0    21562    utma_iseg_tsu 
   TABLE DATA             COPY public.utma_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    560   ��	      �          0    21568    utma_isem_l 
   TABLE DATA           �   COPY public.utma_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    562   x�	      �          0    21574    utma_isem_tsu 
   TABLE DATA           �   COPY public.utma_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    564   ��	      �          0    21580    utma_tasa_acreditacion 
   TABLE DATA           �   COPY public.utma_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    566   �	      �          0    21584    utma_tasa_cobertura 
   TABLE DATA           [   COPY public.utma_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    568   4�	      �          0    21590    utma_tasa_docentes 
   TABLE DATA           �   COPY public.utma_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    570   Q�	      �          0    21596    utma_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utma_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    572   n�	      �          0    21602    utma_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utma_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    574   ]�	      �          0    21608    utma_tasa_pe_asat 
   TABLE DATA           ]   COPY public.utma_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    576   z�	      �          0    21612    utma_tasa_pe_pertinencia 
   TABLE DATA           d   COPY public.utma_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    578   ��	      �          0    21616    utma_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    580   ۦ	      �          0    21622    utma_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    582   ��	      �          0    21628    utma_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    584   �	      �          0    21634    utma_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utma_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    586   2�	      �          0    20399    utna_module_utna_carreras 
   TABLE DATA           �   COPY public.utna_module_utna_carreras ("IDCarrera", "Nombre", "Abreviacion", "Modalidad", "Nivel", "Universidad_id") FROM stdin;
    public          postgres    false    236   O�	      �          0    20403    utna_module_utna_eficiencia_ire 
   TABLE DATA           �   COPY public.utna_module_utna_eficiencia_ire ("IDEIRE", "Periodo", "Indice_retencion", "Indice_desercion", "Indice_eficiencia_terminal", "Indice_titulacion", "Carrera_id") FROM stdin;
    public          postgres    false    238   ۩	      �          0    20407 "   utna_module_utna_indice_colocacion 
   TABLE DATA           �   COPY public.utna_module_utna_indice_colocacion ("IDIC", "Periodo", "Egresados", "Colocados", "Indice_colocacion", "Carrera_id") FROM stdin;
    public          postgres    false    240   ��	      �          0    20411    utna_module_utna_indice_ptc 
   TABLE DATA           �   COPY public.utna_module_utna_indice_ptc ("IDIPTC", "Periodo", "Nombre_profesor", "Nombre_investigacion", "Tipo_profesor", "Estado_investigacion", "Carrera_id", "PE_Pertenecientes_id", "Participación_CA", "Perfil_PRODEPT") FROM stdin;
    public          postgres    false    242   ��	      �          0    20415 !   utna_module_utna_indice_servicios 
   TABLE DATA           �  COPY public.utna_module_utna_indice_servicios ("IDIS", "Periodo", "Salud_externa", "Bolsa_trabajo", "Salud_interna", "Asesoria_academica", "Actividades_crecimiento", "Tutoria", "Orientacion", "Espacio_expresion", "Estimulos_desempeno", "Seguridad", "Instalaciones", "Actividades_arte", "Traslado", "Fomento_salud", "Alimentos", "Indice_satisfaccion", "Carrera_id", "Bibliteca", "Conectivida", "Laboratorio_computo", "Laboratorio_practica") FROM stdin;
    public          postgres    false    244   "�	      �          0    20419    utna_module_utna_iseg_l 
   TABLE DATA           8  COPY public.utna_module_utna_iseg_l ("IDISEGL", "Periodo", "Bolsa_trabajo", "Op_estadia", "Experiencia_practica", "Laboratorios_talleres", "Infraestructura", "Dominio_prob_lab", "Conocimiento_prof", "Calificacion_MEB5", "Op_preparacion", "Indice_satisfaccion", "Carrera_id", "Trabaja_lugar_estadia") FROM stdin;
    public          postgres    false    246   ?�	      �          0    20423    utna_module_utna_iseg_tsu 
   TABLE DATA           <  COPY public.utna_module_utna_iseg_tsu ("IDISEGTSU", "Periodo", "Bolsa_trabajo", "Op_estadia", "Experiencia_practica", "Laboratorios_talleres", "Infraestructura", "Dominio_prob_lab", "Conocimiento_prof", "Calificacion_MEB5", "Op_preparacion", "Indice_satisfaccion", "Carrera_id", "Trabaja_lugar_estadia") FROM stdin;
    public          postgres    false    248   ;�	      �          0    20427    utna_module_utna_isem_l 
   TABLE DATA           �   COPY public.utna_module_utna_isem_l ("IDISEML", "Periodo", "Op_grado", "Creatividad", "Manejo_equipo", "Solucion_prob", "Op_trabajo", "Capacidad", "Cumple_req", "Calificacion_trabajo", "Indice_satisfaccion", "Carrera_id") FROM stdin;
    public          postgres    false    250   ��	      �          0    20431    utna_module_utna_isem_tsu 
   TABLE DATA           �   COPY public.utna_module_utna_isem_tsu ("IDISEMTSU", "Periodo", "Op_grado", "Creatividad", "Manejo_equipo", "Solucion_prob", "Op_trabajo", "Capacidad", "Cumple_req", "Calificacion_trabajo", "Indice_satisfaccion", "Carrera_id") FROM stdin;
    public          postgres    false    252   ��	      �          0    20435 "   utna_module_utna_tasa_acreditacion 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_acreditacion ("IDTA", "Periodo", "Acreditacion", "Tipo_acreditacion", "Carrera_id", "Fecha_acreditacion", "Fecha_vencimiento") FROM stdin;
    public          postgres    false    254   t�	      �          0    20439    utna_module_utna_tasa_cobertura 
   TABLE DATA           r   COPY public.utna_module_utna_tasa_cobertura ("IDTC", "Periodo", "Incremento_matricula", "Carrera_id") FROM stdin;
    public          postgres    false    256   ��	      �          0    20443    utna_module_utna_tasa_docentes 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_docentes ("IDTD", "Periodo", "No_docentes", "Doc_perfil_adecuado", "Tasa_docentes", "Carrera_id", "Exp_Lab_pertinente") FROM stdin;
    public          postgres    false    258   ��	      �          0    20447 !   utna_module_utna_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_mov_alumnos ("IDTMA", "Periodo", "Matricula", "No_alum_viajaron", "Paises", "Tasa_movilidad", "Carrera_id", "Estado") FROM stdin;
    public          postgres    false    260   ˻	      �          0    20451 "   utna_module_utna_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_mov_docentes ("IDTMD", "Periodo", "Matricula", "No_doc_viajaron", "Paises", "Tasa_movilidad", "Carrera_id", "Estado") FROM stdin;
    public          postgres    false    262   	�	      �          0    20455    utna_module_utna_tasa_pe_asat 
   TABLE DATA           v   COPY public.utna_module_utna_tasa_pe_asat ("IDTPEASAT", "Periodo", "Realizacion", "Vencimiento", "PE_id") FROM stdin;
    public          postgres    false    264   &�	      �          0    20459 $   utna_module_utna_tasa_pe_pertinencia 
   TABLE DATA           }   COPY public.utna_module_utna_tasa_pe_pertinencia ("IDTPEP", "Periodo", "Presenta", "Fecha_elaboracion", "PE_id") FROM stdin;
    public          postgres    false    266   ,�	      �          0    20463 "   utna_module_utna_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_egel ("IDTPEGEL", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    268   �	      �          0    20467 $   utna_module_utna_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_egetsu ("IDTPEGESTU", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    270   ��	      �          0    20471 !   utna_module_utna_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_exl ("IDTPEXL", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    272   ��	      �          0    20475 #   utna_module_utna_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utna_module_utna_tasa_puntaje_extsu ("IDTPEXTSU", "Periodo", p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente, "Carrera_id") FROM stdin;
    public          postgres    false    274   �	      �          0    21750    utr_carreras 
   TABLE DATA           r   COPY public.utr_carreras (idcarrera, universidad, nombre, abreviacion, modalidad, nivel, "duración") FROM stdin;
    public          postgres    false    588   !�	      �          0    21754    utr_eficiencia_ire 
   TABLE DATA           �   COPY public.utr_eficiencia_ire (ideire, carrera, periodo, indice_retencion, indice_desercion, indice_eficiencia_terminal, indice_titulacion) FROM stdin;
    public          postgres    false    590   ��	      �          0    21760    utr_indice_colocacion 
   TABLE DATA           p   COPY public.utr_indice_colocacion (idic, carrera, periodo, egresados, colocados, indice_colocacion) FROM stdin;
    public          postgres    false    592   ��	      �          0    21766    utr_indice_ptc 
   TABLE DATA           �   COPY public.utr_indice_ptc (idiptc, carrera, periodo, nombre_profesor, nombre_investigacion, pe_perteneciente, tipo_profesor, "estado_investigación", perfil_prodept, "participación_ca") FROM stdin;
    public          postgres    false    594   k�	      �          0    21770    utr_indice_servicios 
   TABLE DATA           �  COPY public.utr_indice_servicios (idis, carrera, periodo, salud_externa, bolsa_trabajo, salud_interna, asesoria_academica, actividades_crecimiento, tutoria, orientacion, espacio_expresion, "estimulos_desempeño", seguridad, instalaciones, actividades_arte, traslado, fomento_salud, alimentos, biblioteca, conectividad, laboratorio_computo, laboratorio_practica, indice_satisfaccion) FROM stdin;
    public          postgres    false    596   ��	      �          0    21776 
   utr_iseg_l 
   TABLE DATA             COPY public.utr_iseg_l (idisegl, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_mea5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    598   ��	      �          0    21782    utr_iseg_tsu 
   TABLE DATA             COPY public.utr_iseg_tsu (idisegtsu, carrera, periodo, bolsa_trabajo, op_estadia, trabaja_lugar_estadia, experiencia_practica, laboratorios_talleres, infraestructura, dominio_prob_lab, conocimiento_prof, calificaion_meb5, op_preparacion, indice_satisfaccion) FROM stdin;
    public          postgres    false    600   0�	      �          0    21788 
   utr_isem_l 
   TABLE DATA           �   COPY public.utr_isem_l (idiseml, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    602   ��	      �          0    21794    utr_isem_tsu 
   TABLE DATA           �   COPY public.utr_isem_tsu (idisemtsu, carrera, periodo, op_grado, creatividad, manejo_equipo, solucion_prob, op_trabajo, capacidad, cumple_req, calificaion_trabajo, indice_satisfaccion) FROM stdin;
    public          postgres    false    604   5�	                0    21800    utr_tasa_acreditacion 
   TABLE DATA           �   COPY public.utr_tasa_acreditacion (idta, carrera, periodo, acreditacion, "fecha_acreditación", fecha_vencimiento, tipo_acreditacion) FROM stdin;
    public          postgres    false    606   ��	                0    21804    utr_tasa_cobertura 
   TABLE DATA           Z   COPY public.utr_tasa_cobertura (idtc, carrera, periodo, incremento_matricula) FROM stdin;
    public          postgres    false    608   ��	                0    21810    utr_tasa_docentes 
   TABLE DATA           �   COPY public.utr_tasa_docentes (idtd, carrera, periodo, no_docentes, doc_perfil_adecuado, exp_lab_pertinente, tasa_docentes) FROM stdin;
    public          postgres    false    610   ��	                0    21816    utr_tasa_mov_alumnos 
   TABLE DATA           �   COPY public.utr_tasa_mov_alumnos (idtma, carrera, periodo, matricula, no_alum_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    612   ��	      	          0    21822    utr_tasa_mov_docentes 
   TABLE DATA           �   COPY public.utr_tasa_mov_docentes (idtmd, carrera, periodo, matricula, no_doc_viajaron, estados, paises, tasa_movilidad) FROM stdin;
    public          postgres    false    614   �	                0    21828    utr_tasa_pe_asat 
   TABLE DATA           \   COPY public.utr_tasa_pe_asat (idtpeasat, pe, periodo, realizacion, vencimiento) FROM stdin;
    public          postgres    false    616   )�	                0    21832    utr_tasa_pe_pertinencia 
   TABLE DATA           c   COPY public.utr_tasa_pe_pertinencia (idtpep, pe, periodo, presenta, fecha_elaboracion) FROM stdin;
    public          postgres    false    618   F�	                0    21836    utr_tasa_puntaje_egel 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_egel (idtpegel, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    620   c�	                0    21842    utr_tasa_puntaje_egetsu 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_egetsu (idtpegetsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    622   ��	                0    21848    utr_tasa_puntaje_exl 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_exl (idtpexl, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    624   ��	                0    21854    utr_tasa_puntaje_extsu 
   TABLE DATA           �   COPY public.utr_tasa_puntaje_extsu (idtpextsu, carrera, periodo, p_700_800, p_801_900, p_901_1000, p_1001_1200, p_1201_1300, puntaje_satisfactorio, puntaje_sobresaliente) FROM stdin;
    public          postgres    false    626   ��	      �           0    0 ,   admin_module_universidades_IDUniversidad_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."admin_module_universidades_IDUniversidad_seq"', 11, true);
          public          postgres    false    215            �           0    0 #   admin_module_usuarios_IDUsuario_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."admin_module_usuarios_IDUsuario_seq"', 24, true);
          public          postgres    false    217            �           0    0 #   admin_module_usuarios_groups_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.admin_module_usuarios_groups_id_seq', 1, false);
          public          postgres    false    219            �           0    0 -   admin_module_usuarios_user_permissions_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.admin_module_usuarios_user_permissions_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    223            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    225            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 116, true);
          public          postgres    false    227            �           0    0    crena_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.crena_carreras_idcarrera_seq', 6, true);
          public          postgres    false    277            �           0    0    crena_eficiencia_ire_ideire_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.crena_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    279            �           0    0     crena_indice_colocacion_idic_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    281            �           0    0    crena_indice_ptc_idiptc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.crena_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    283            �           0    0    crena_indice_servicios_idis_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.crena_indice_servicios_idis_seq', 1, false);
          public          postgres    false    285            �           0    0    crena_iseg_idiseg_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.crena_iseg_idiseg_seq', 1, false);
          public          postgres    false    287            �           0    0    crena_isem_idisem_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.crena_isem_idisem_seq', 1, false);
          public          postgres    false    289            �           0    0     crena_tasa_acreditacion_idta_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    291            �           0    0    crena_tasa_cobertura_idtc_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.crena_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    293            �           0    0    crena_tasa_docentes_idtd_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.crena_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    295            �           0    0     crena_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    297            �           0    0 !   crena_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.crena_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    299            �           0    0     crena_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    301            �           0    0 $   crena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.crena_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    303                        0    0 $   crena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.crena_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    305                       0    0     crena_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crena_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    307                       0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);
          public          postgres    false    230                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 29, true);
          public          postgres    false    232                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);
          public          postgres    false    234                       0    0    ena_carreras_idcarrera_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ena_carreras_idcarrera_seq', 3, true);
          public          postgres    false    309                       0    0    ena_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ena_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    311                       0    0    ena_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    313                       0    0    ena_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ena_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    315            	           0    0    ena_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ena_indice_servicios_idis_seq', 1, false);
          public          postgres    false    317            
           0    0    ena_iseg_idiseg_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ena_iseg_idiseg_seq', 1, false);
          public          postgres    false    319                       0    0    ena_isem_idisem_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ena_isem_idisem_seq', 1, false);
          public          postgres    false    321                       0    0    ena_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    323                       0    0    ena_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ena_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    325                       0    0    ena_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ena_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    327                       0    0    ena_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    329                       0    0    ena_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ena_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    331                       0    0    ena_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    333                       0    0 "   ena_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ena_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    335                       0    0 "   ena_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ena_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    337                       0    0    ena_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ena_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    339                       0    0    enrjsm_carreras_idcarrera_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enrjsm_carreras_idcarrera_seq', 1, true);
          public          postgres    false    341                       0    0     enrjsm_eficiencia_ire_ideire_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.enrjsm_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    343                       0    0 !   enrjsm_indice_colocacion_idic_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    345                       0    0    enrjsm_indice_ptc_idiptc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enrjsm_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    347                       0    0     enrjsm_indice_servicios_idis_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.enrjsm_indice_servicios_idis_seq', 1, false);
          public          postgres    false    349                       0    0    enrjsm_iseg_idiseg_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.enrjsm_iseg_idiseg_seq', 1, false);
          public          postgres    false    351                       0    0    enrjsm_isem_idisem_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.enrjsm_isem_idisem_seq', 1, false);
          public          postgres    false    353                       0    0 !   enrjsm_tasa_acreditacion_idta_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    355                       0    0    enrjsm_tasa_cobertura_idtc_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.enrjsm_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    357                       0    0    enrjsm_tasa_docentes_idtd_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.enrjsm_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    359                       0    0 !   enrjsm_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    361                        0    0 "   enrjsm_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.enrjsm_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    363            !           0    0 !   enrjsm_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    365            "           0    0 %   enrjsm_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.enrjsm_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    367            #           0    0 %   enrjsm_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.enrjsm_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    369            $           0    0 !   enrjsm_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrjsm_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    371            %           0    0    enrr_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.enrr_carreras_idcarrera_seq', 2, true);
          public          postgres    false    373            &           0    0    enrr_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.enrr_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    375            '           0    0    enrr_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    377            (           0    0    enrr_indice_ptc_idiptc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.enrr_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    379            )           0    0    enrr_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.enrr_indice_servicios_idis_seq', 1, false);
          public          postgres    false    381            *           0    0    enrr_iseg_idiseg_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.enrr_iseg_idiseg_seq', 1, false);
          public          postgres    false    383            +           0    0    enrr_isem_idisem_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.enrr_isem_idisem_seq', 1, false);
          public          postgres    false    385            ,           0    0    enrr_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    387            -           0    0    enrr_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enrr_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    389            .           0    0    enrr_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.enrr_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    391            /           0    0    enrr_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    393            0           0    0     enrr_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.enrr_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    395            1           0    0    enrr_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    397            2           0    0 #   enrr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.enrr_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    399            3           0    0 #   enrr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.enrr_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    401            4           0    0    enrr_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.enrr_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    403            5           0    0    ensfa_carreras_idcarrera_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ensfa_carreras_idcarrera_seq', 10, true);
          public          postgres    false    405            6           0    0    ensfa_eficiencia_ire_ideire_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ensfa_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    407            7           0    0     ensfa_indice_colocacion_idic_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_indice_colocacion_idic_seq', 1, false);
          public          postgres    false    409            8           0    0    ensfa_indice_ptc_idiptc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ensfa_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    411            9           0    0    ensfa_indice_servicios_idis_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ensfa_indice_servicios_idis_seq', 1, false);
          public          postgres    false    413            :           0    0    ensfa_iseg_idiseg_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ensfa_iseg_idiseg_seq', 1, false);
          public          postgres    false    415            ;           0    0    ensfa_isem_idisem_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ensfa_isem_idisem_seq', 1, false);
          public          postgres    false    417            <           0    0     ensfa_tasa_acreditacion_idta_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    419            =           0    0    ensfa_tasa_cobertura_idtc_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ensfa_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    421            >           0    0    ensfa_tasa_docentes_idtd_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ensfa_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    423            ?           0    0     ensfa_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_mov_alumnos_idtma_seq', 1, false);
          public          postgres    false    425            @           0    0 !   ensfa_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.ensfa_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    427            A           0    0     ensfa_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    429            B           0    0 $   ensfa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.ensfa_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    431            C           0    0 $   ensfa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.ensfa_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    433            D           0    0     ensfa_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ensfa_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    435            E           0    0    upa_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.upa_carreras_idcarrera_seq', 10, true);
          public          postgres    false    437            F           0    0    upa_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.upa_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    439            G           0    0    upa_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_indice_colocacion_idic_seq', 80, true);
          public          postgres    false    441            H           0    0    upa_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.upa_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    443            I           0    0    upa_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.upa_indice_servicios_idis_seq', 1, false);
          public          postgres    false    445            J           0    0    upa_iseg_idiseg_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.upa_iseg_idiseg_seq', 10, true);
          public          postgres    false    447            K           0    0    upa_isem_idisem_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.upa_isem_idisem_seq', 10, true);
          public          postgres    false    449            L           0    0    upa_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    451            M           0    0    upa_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.upa_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    453            N           0    0    upa_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.upa_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    455            O           0    0    upa_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_mov_alumnos_idtma_seq', 30, true);
          public          postgres    false    457            P           0    0    upa_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.upa_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    459            Q           0    0    upa_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    461            R           0    0 "   upa_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upa_tasa_pe_pertinencia_idtpep_seq', 10, true);
          public          postgres    false    463            S           0    0 "   upa_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upa_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    465            T           0    0    upa_tasa_puntaje_ex_idtpex_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.upa_tasa_puntaje_ex_idtpex_seq', 1, false);
          public          postgres    false    467            U           0    0    uta_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_carreras_idcarrera_seq', 24, true);
          public          postgres    false    469            V           0    0    uta_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.uta_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    471            W           0    0    uta_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.uta_indice_colocacion_idic_seq', 120, true);
          public          postgres    false    473            X           0    0    uta_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.uta_indice_ptc_idiptc_seq', 10, true);
          public          postgres    false    475            Y           0    0    uta_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.uta_indice_servicios_idis_seq', 1, false);
          public          postgres    false    477            Z           0    0    uta_iseg_l_idisegl_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.uta_iseg_l_idisegl_seq', 11, true);
          public          postgres    false    479            [           0    0    uta_iseg_tsu_idisegtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_iseg_tsu_idisegtsu_seq', 13, true);
          public          postgres    false    481            \           0    0    uta_isem_l_idiseml_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.uta_isem_l_idiseml_seq', 11, true);
          public          postgres    false    483            ]           0    0    uta_isem_tsu_idisemtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_isem_tsu_idisemtsu_seq', 13, true);
          public          postgres    false    485            ^           0    0    uta_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.uta_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    487            _           0    0    uta_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.uta_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    489            `           0    0    uta_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.uta_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    491            a           0    0    uta_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.uta_tasa_mov_alumnos_idtma_seq', 120, true);
          public          postgres    false    493            b           0    0    uta_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.uta_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    495            c           0    0    uta_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.uta_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    497            d           0    0 "   uta_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.uta_tasa_pe_pertinencia_idtpep_seq', 24, true);
          public          postgres    false    499            e           0    0 "   uta_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.uta_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    501            f           0    0 &   uta_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.uta_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    503            g           0    0     uta_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.uta_tasa_puntaje_exl_idtpexl_seq', 11, true);
          public          postgres    false    505            h           0    0 $   uta_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.uta_tasa_puntaje_extsu_idtpextsu_seq', 13, true);
          public          postgres    false    507            i           0    0    utc_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_carreras_idcarrera_seq', 12, true);
          public          postgres    false    509            j           0    0    utc_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utc_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    511            k           0    0    utc_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_indice_colocacion_idic_seq', 60, true);
          public          postgres    false    513            l           0    0    utc_indice_ptc_idiptc_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.utc_indice_ptc_idiptc_seq', 3, true);
          public          postgres    false    515            m           0    0    utc_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utc_indice_servicios_idis_seq', 1, false);
          public          postgres    false    517            n           0    0    utc_iseg_l_idisegl_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utc_iseg_l_idisegl_seq', 1, false);
          public          postgres    false    519            o           0    0    utc_iseg_tsu_idisegtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_iseg_tsu_idisegtsu_seq', 1, false);
          public          postgres    false    521            p           0    0    utc_isem_l_idiseml_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utc_isem_l_idiseml_seq', 1, false);
          public          postgres    false    523            q           0    0    utc_isem_tsu_idisemtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_isem_tsu_idisemtsu_seq', 1, false);
          public          postgres    false    525            r           0    0    utc_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    527            s           0    0    utc_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utc_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    529            t           0    0    utc_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utc_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    531            u           0    0    utc_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_tasa_mov_alumnos_idtma_seq', 60, true);
          public          postgres    false    533            v           0    0    utc_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utc_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    535            w           0    0    utc_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utc_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    537            x           0    0 "   utc_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utc_tasa_pe_pertinencia_idtpep_seq', 12, true);
          public          postgres    false    539            y           0    0 "   utc_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utc_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    541            z           0    0 &   utc_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.utc_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    543            {           0    0     utc_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utc_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    545            |           0    0 $   utc_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.utc_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    547            }           0    0    utma_carreras_idcarrera_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utma_carreras_idcarrera_seq', 12, true);
          public          postgres    false    549            ~           0    0    utma_eficiencia_ire_ideire_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utma_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    551                       0    0    utma_indice_colocacion_idic_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_indice_colocacion_idic_seq', 24, true);
          public          postgres    false    553            �           0    0    utma_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.utma_indice_ptc_idiptc_seq', 1, true);
          public          postgres    false    555            �           0    0    utma_indice_servicios_idis_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utma_indice_servicios_idis_seq', 1, false);
          public          postgres    false    557            �           0    0    utma_iseg_l_idisegl_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utma_iseg_l_idisegl_seq', 2, true);
          public          postgres    false    559            �           0    0    utma_iseg_tsu_idisegtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utma_iseg_tsu_idisegtsu_seq', 4, true);
          public          postgres    false    561            �           0    0    utma_isem_l_idiseml_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utma_isem_l_idiseml_seq', 2, true);
          public          postgres    false    563            �           0    0    utma_isem_tsu_idisemtsu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utma_isem_tsu_idisemtsu_seq', 4, true);
          public          postgres    false    565            �           0    0    utma_tasa_acreditacion_idta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    567            �           0    0    utma_tasa_cobertura_idtc_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.utma_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    569            �           0    0    utma_tasa_docentes_idtd_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utma_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    571            �           0    0    utma_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_tasa_mov_alumnos_idtma_seq', 30, true);
          public          postgres    false    573            �           0    0     utma_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utma_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    575            �           0    0    utma_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utma_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    577            �           0    0 #   utma_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utma_tasa_pe_pertinencia_idtpep_seq', 6, true);
          public          postgres    false    579            �           0    0 #   utma_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.utma_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    581            �           0    0 '   utma_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.utma_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    583            �           0    0 !   utma_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.utma_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    585            �           0    0 %   utma_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.utma_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    587            �           0    0 '   utna_module_utna_carreras_IDCarrera_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."utna_module_utna_carreras_IDCarrera_seq"', 29, true);
          public          postgres    false    237            �           0    0 *   utna_module_utna_eficiencia_ire_IDEIRE_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."utna_module_utna_eficiencia_ire_IDEIRE_seq"', 1, false);
          public          postgres    false    239            �           0    0 +   utna_module_utna_indice_colocacion_IDIC_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."utna_module_utna_indice_colocacion_IDIC_seq"', 140, true);
          public          postgres    false    241            �           0    0 &   utna_module_utna_indice_ptc_IDIPTC_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."utna_module_utna_indice_ptc_IDIPTC_seq"', 103, true);
          public          postgres    false    243            �           0    0 *   utna_module_utna_indice_servicios_IDIS_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."utna_module_utna_indice_servicios_IDIS_seq"', 1, false);
          public          postgres    false    245            �           0    0 #   utna_module_utna_iseg_l_IDISEGL_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."utna_module_utna_iseg_l_IDISEGL_seq"', 12, true);
          public          postgres    false    247            �           0    0 '   utna_module_utna_iseg_tsu_IDISEGTSU_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."utna_module_utna_iseg_tsu_IDISEGTSU_seq"', 17, true);
          public          postgres    false    249            �           0    0 #   utna_module_utna_isem_l_IDISEML_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."utna_module_utna_isem_l_IDISEML_seq"', 12, true);
          public          postgres    false    251            �           0    0 '   utna_module_utna_isem_tsu_IDISEMTSU_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."utna_module_utna_isem_tsu_IDISEMTSU_seq"', 17, true);
          public          postgres    false    253            �           0    0 +   utna_module_utna_tasa_acreditacion_IDTA_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."utna_module_utna_tasa_acreditacion_IDTA_seq"', 1, false);
          public          postgres    false    255            �           0    0 (   utna_module_utna_tasa_cobertura_IDTC_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."utna_module_utna_tasa_cobertura_IDTC_seq"', 1, false);
          public          postgres    false    257            �           0    0 '   utna_module_utna_tasa_docentes_IDTD_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."utna_module_utna_tasa_docentes_IDTD_seq"', 1, false);
          public          postgres    false    259            �           0    0 +   utna_module_utna_tasa_mov_alumnos_IDTMA_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."utna_module_utna_tasa_mov_alumnos_IDTMA_seq"', 145, true);
          public          postgres    false    261            �           0    0 ,   utna_module_utna_tasa_mov_docentes_IDTMD_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."utna_module_utna_tasa_mov_docentes_IDTMD_seq"', 1, false);
          public          postgres    false    263            �           0    0 +   utna_module_utna_tasa_pe_asat_IDTPEASAT_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."utna_module_utna_tasa_pe_asat_IDTPEASAT_seq"', 29, true);
          public          postgres    false    265            �           0    0 /   utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."utna_module_utna_tasa_pe_pertinencia_IDTPEP_seq"', 29, true);
          public          postgres    false    267            �           0    0 /   utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."utna_module_utna_tasa_puntaje_egel_IDTPEGEL_seq"', 12, true);
          public          postgres    false    269            �           0    0 3   utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public."utna_module_utna_tasa_puntaje_egetsu_IDTPEGESTU_seq"', 17, true);
          public          postgres    false    271            �           0    0 -   utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."utna_module_utna_tasa_puntaje_exl_IDTPEXL_seq"', 1, false);
          public          postgres    false    273            �           0    0 1   utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."utna_module_utna_tasa_puntaje_extsu_IDTPEXTSU_seq"', 1, false);
          public          postgres    false    275            �           0    0    utr_carreras_idcarrera_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utr_carreras_idcarrera_seq', 13, true);
          public          postgres    false    589            �           0    0    utr_eficiencia_ire_ideire_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utr_eficiencia_ire_ideire_seq', 1, false);
          public          postgres    false    591            �           0    0    utr_indice_colocacion_idic_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_indice_colocacion_idic_seq', 60, true);
          public          postgres    false    593            �           0    0    utr_indice_ptc_idiptc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.utr_indice_ptc_idiptc_seq', 1, false);
          public          postgres    false    595            �           0    0    utr_indice_servicios_idis_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.utr_indice_servicios_idis_seq', 1, false);
          public          postgres    false    597            �           0    0    utr_iseg_l_idisegl_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.utr_iseg_l_idisegl_seq', 5, true);
          public          postgres    false    599            �           0    0    utr_iseg_tsu_idisegtsu_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.utr_iseg_tsu_idisegtsu_seq', 7, true);
          public          postgres    false    601            �           0    0    utr_isem_l_idiseml_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.utr_isem_l_idiseml_seq', 5, true);
          public          postgres    false    603            �           0    0    utr_isem_tsu_idisemtsu_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.utr_isem_tsu_idisemtsu_seq', 7, true);
          public          postgres    false    605            �           0    0    utr_tasa_acreditacion_idta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_tasa_acreditacion_idta_seq', 1, false);
          public          postgres    false    607            �           0    0    utr_tasa_cobertura_idtc_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.utr_tasa_cobertura_idtc_seq', 1, false);
          public          postgres    false    609            �           0    0    utr_tasa_docentes_idtd_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utr_tasa_docentes_idtd_seq', 1, false);
          public          postgres    false    611            �           0    0    utr_tasa_mov_alumnos_idtma_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_tasa_mov_alumnos_idtma_seq', 60, true);
          public          postgres    false    613            �           0    0    utr_tasa_mov_docentes_idtmd_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.utr_tasa_mov_docentes_idtmd_seq', 1, false);
          public          postgres    false    615            �           0    0    utr_tasa_pe_asat_idtpeasat_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.utr_tasa_pe_asat_idtpeasat_seq', 1, false);
          public          postgres    false    617            �           0    0 "   utr_tasa_pe_pertinencia_idtpep_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utr_tasa_pe_pertinencia_idtpep_seq', 1, false);
          public          postgres    false    619            �           0    0 "   utr_tasa_puntaje_egel_idtpegel_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.utr_tasa_puntaje_egel_idtpegel_seq', 1, false);
          public          postgres    false    621            �           0    0 &   utr_tasa_puntaje_egetsu_idtpegetsu_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.utr_tasa_puntaje_egetsu_idtpegetsu_seq', 1, false);
          public          postgres    false    623            �           0    0     utr_tasa_puntaje_exl_idtpexl_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.utr_tasa_puntaje_exl_idtpexl_seq', 1, false);
          public          postgres    false    625            �           0    0 $   utr_tasa_puntaje_extsu_idtpextsu_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.utr_tasa_puntaje_extsu_idtpextsu_seq', 1, false);
          public          postgres    false    627            >           2606    20510 :   admin_module_universidades admin_module_universidades_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_universidades
    ADD CONSTRAINT admin_module_universidades_pkey PRIMARY KEY ("IDUniversidad");
 d   ALTER TABLE ONLY public.admin_module_universidades DROP CONSTRAINT admin_module_universidades_pkey;
       public            postgres    false    214            G           2606    20512 >   admin_module_usuarios_groups admin_module_usuarios_groups_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuarios_groups_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuarios_groups_pkey;
       public            postgres    false    218            J           2606    20514 \   admin_module_usuarios_groups admin_module_usuarios_groups_usuarios_id_group_id_aadc0b82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuarios_groups_usuarios_id_group_id_aadc0b82_uniq UNIQUE (usuarios_id, group_id);
 �   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuarios_groups_usuarios_id_group_id_aadc0b82_uniq;
       public            postgres    false    218    218            A           2606    20516 0   admin_module_usuarios admin_module_usuarios_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.admin_module_usuarios
    ADD CONSTRAINT admin_module_usuarios_pkey PRIMARY KEY ("IDUsuario");
 Z   ALTER TABLE ONLY public.admin_module_usuarios DROP CONSTRAINT admin_module_usuarios_pkey;
       public            postgres    false    216            L           2606    20518 f   admin_module_usuarios_user_permissions admin_module_usuarios_us_usuarios_id_permission_i_e5ef4523_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuarios_us_usuarios_id_permission_i_e5ef4523_uniq UNIQUE (usuarios_id, permission_id);
 �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuarios_us_usuarios_id_permission_i_e5ef4523_uniq;
       public            postgres    false    220    220            O           2606    20520 R   admin_module_usuarios_user_permissions admin_module_usuarios_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuarios_user_permissions_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuarios_user_permissions_pkey;
       public            postgres    false    220            D           2606    20522 8   admin_module_usuarios admin_module_usuarios_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.admin_module_usuarios
    ADD CONSTRAINT admin_module_usuarios_username_key UNIQUE (username);
 b   ALTER TABLE ONLY public.admin_module_usuarios DROP CONSTRAINT admin_module_usuarios_username_key;
       public            postgres    false    216            S           2606    20524    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    222            X           2606    20526 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    224    224            [           2606    20528 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    224            U           2606    20530    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    222            ^           2606    20532 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    226    226            `           2606    20534 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    226            c           2606    20536 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    228            e           2606    20538 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    228            �           2606    22059 "   crena_carreras crena_carreras_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.crena_carreras
    ADD CONSTRAINT crena_carreras_pkey PRIMARY KEY (idcarrera);
 L   ALTER TABLE ONLY public.crena_carreras DROP CONSTRAINT crena_carreras_pkey;
       public            postgres    false    276            �           2606    22061 .   crena_eficiencia_ire crena_eficiencia_ire_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.crena_eficiencia_ire
    ADD CONSTRAINT crena_eficiencia_ire_pkey PRIMARY KEY (ideire);
 X   ALTER TABLE ONLY public.crena_eficiencia_ire DROP CONSTRAINT crena_eficiencia_ire_pkey;
       public            postgres    false    278            �           2606    22063 4   crena_indice_colocacion crena_indice_colocacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.crena_indice_colocacion
    ADD CONSTRAINT crena_indice_colocacion_pkey PRIMARY KEY (idic);
 ^   ALTER TABLE ONLY public.crena_indice_colocacion DROP CONSTRAINT crena_indice_colocacion_pkey;
       public            postgres    false    280            �           2606    22065 &   crena_indice_ptc crena_indice_ptc_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.crena_indice_ptc
    ADD CONSTRAINT crena_indice_ptc_pkey PRIMARY KEY (idiptc);
 P   ALTER TABLE ONLY public.crena_indice_ptc DROP CONSTRAINT crena_indice_ptc_pkey;
       public            postgres    false    282            �           2606    22067 2   crena_indice_servicios crena_indice_servicios_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.crena_indice_servicios
    ADD CONSTRAINT crena_indice_servicios_pkey PRIMARY KEY (idis);
 \   ALTER TABLE ONLY public.crena_indice_servicios DROP CONSTRAINT crena_indice_servicios_pkey;
       public            postgres    false    284            �           2606    22069    crena_iseg crena_iseg_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.crena_iseg
    ADD CONSTRAINT crena_iseg_pkey PRIMARY KEY (idiseg);
 D   ALTER TABLE ONLY public.crena_iseg DROP CONSTRAINT crena_iseg_pkey;
       public            postgres    false    286            �           2606    22071    crena_isem crena_isem_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.crena_isem
    ADD CONSTRAINT crena_isem_pkey PRIMARY KEY (idisem);
 D   ALTER TABLE ONLY public.crena_isem DROP CONSTRAINT crena_isem_pkey;
       public            postgres    false    288            �           2606    22073 4   crena_tasa_acreditacion crena_tasa_acreditacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.crena_tasa_acreditacion
    ADD CONSTRAINT crena_tasa_acreditacion_pkey PRIMARY KEY (idta);
 ^   ALTER TABLE ONLY public.crena_tasa_acreditacion DROP CONSTRAINT crena_tasa_acreditacion_pkey;
       public            postgres    false    290            �           2606    22075 .   crena_tasa_cobertura crena_tasa_cobertura_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.crena_tasa_cobertura
    ADD CONSTRAINT crena_tasa_cobertura_pkey PRIMARY KEY (idtc);
 X   ALTER TABLE ONLY public.crena_tasa_cobertura DROP CONSTRAINT crena_tasa_cobertura_pkey;
       public            postgres    false    292            �           2606    22077 ,   crena_tasa_docentes crena_tasa_docentes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.crena_tasa_docentes
    ADD CONSTRAINT crena_tasa_docentes_pkey PRIMARY KEY (idtd);
 V   ALTER TABLE ONLY public.crena_tasa_docentes DROP CONSTRAINT crena_tasa_docentes_pkey;
       public            postgres    false    294            �           2606    22079 2   crena_tasa_mov_alumnos crena_tasa_mov_alumnos_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.crena_tasa_mov_alumnos
    ADD CONSTRAINT crena_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 \   ALTER TABLE ONLY public.crena_tasa_mov_alumnos DROP CONSTRAINT crena_tasa_mov_alumnos_pkey;
       public            postgres    false    296            �           2606    22081 4   crena_tasa_mov_docentes crena_tasa_mov_docentes_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.crena_tasa_mov_docentes
    ADD CONSTRAINT crena_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 ^   ALTER TABLE ONLY public.crena_tasa_mov_docentes DROP CONSTRAINT crena_tasa_mov_docentes_pkey;
       public            postgres    false    298            �           2606    22083 *   crena_tasa_pe_asat crena_tasa_pe_asat_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.crena_tasa_pe_asat
    ADD CONSTRAINT crena_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 T   ALTER TABLE ONLY public.crena_tasa_pe_asat DROP CONSTRAINT crena_tasa_pe_asat_pkey;
       public            postgres    false    300            �           2606    22085 8   crena_tasa_pe_pertinencia crena_tasa_pe_pertinencia_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia
    ADD CONSTRAINT crena_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 b   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia DROP CONSTRAINT crena_tasa_pe_pertinencia_pkey;
       public            postgres    false    302            �           2606    22087 4   crena_tasa_puntaje_egel crena_tasa_puntaje_egel_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.crena_tasa_puntaje_egel
    ADD CONSTRAINT crena_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 ^   ALTER TABLE ONLY public.crena_tasa_puntaje_egel DROP CONSTRAINT crena_tasa_puntaje_egel_pkey;
       public            postgres    false    304            �           2606    22089 0   crena_tasa_puntaje_ex crena_tasa_puntaje_ex_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.crena_tasa_puntaje_ex
    ADD CONSTRAINT crena_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 Z   ALTER TABLE ONLY public.crena_tasa_puntaje_ex DROP CONSTRAINT crena_tasa_puntaje_ex_pkey;
       public            postgres    false    306            h           2606    20540 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    229            k           2606    20542 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    231    231            m           2606    20544 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    231            o           2606    20546 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    233            r           2606    20548 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    235            �           2606    22091    ena_carreras ena_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.ena_carreras
    ADD CONSTRAINT ena_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.ena_carreras DROP CONSTRAINT ena_carreras_pkey;
       public            postgres    false    308            �           2606    22093 *   ena_eficiencia_ire ena_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ena_eficiencia_ire
    ADD CONSTRAINT ena_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.ena_eficiencia_ire DROP CONSTRAINT ena_eficiencia_ire_pkey;
       public            postgres    false    310            �           2606    22095 0   ena_indice_colocacion ena_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ena_indice_colocacion
    ADD CONSTRAINT ena_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.ena_indice_colocacion DROP CONSTRAINT ena_indice_colocacion_pkey;
       public            postgres    false    312            �           2606    22097 "   ena_indice_ptc ena_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ena_indice_ptc
    ADD CONSTRAINT ena_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.ena_indice_ptc DROP CONSTRAINT ena_indice_ptc_pkey;
       public            postgres    false    314            �           2606    22099 .   ena_indice_servicios ena_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.ena_indice_servicios
    ADD CONSTRAINT ena_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.ena_indice_servicios DROP CONSTRAINT ena_indice_servicios_pkey;
       public            postgres    false    316            �           2606    22101    ena_iseg ena_iseg_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ena_iseg
    ADD CONSTRAINT ena_iseg_pkey PRIMARY KEY (idiseg);
 @   ALTER TABLE ONLY public.ena_iseg DROP CONSTRAINT ena_iseg_pkey;
       public            postgres    false    318            �           2606    22103    ena_isem ena_isem_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ena_isem
    ADD CONSTRAINT ena_isem_pkey PRIMARY KEY (idisem);
 @   ALTER TABLE ONLY public.ena_isem DROP CONSTRAINT ena_isem_pkey;
       public            postgres    false    320            �           2606    22105 0   ena_tasa_acreditacion ena_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ena_tasa_acreditacion
    ADD CONSTRAINT ena_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.ena_tasa_acreditacion DROP CONSTRAINT ena_tasa_acreditacion_pkey;
       public            postgres    false    322            �           2606    22107 *   ena_tasa_cobertura ena_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ena_tasa_cobertura
    ADD CONSTRAINT ena_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.ena_tasa_cobertura DROP CONSTRAINT ena_tasa_cobertura_pkey;
       public            postgres    false    324            �           2606    22109 (   ena_tasa_docentes ena_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ena_tasa_docentes
    ADD CONSTRAINT ena_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.ena_tasa_docentes DROP CONSTRAINT ena_tasa_docentes_pkey;
       public            postgres    false    326            �           2606    22111 .   ena_tasa_mov_alumnos ena_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.ena_tasa_mov_alumnos
    ADD CONSTRAINT ena_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.ena_tasa_mov_alumnos DROP CONSTRAINT ena_tasa_mov_alumnos_pkey;
       public            postgres    false    328            �           2606    22113 0   ena_tasa_mov_docentes ena_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.ena_tasa_mov_docentes
    ADD CONSTRAINT ena_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.ena_tasa_mov_docentes DROP CONSTRAINT ena_tasa_mov_docentes_pkey;
       public            postgres    false    330            �           2606    22115 &   ena_tasa_pe_asat ena_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.ena_tasa_pe_asat
    ADD CONSTRAINT ena_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.ena_tasa_pe_asat DROP CONSTRAINT ena_tasa_pe_asat_pkey;
       public            postgres    false    332            �           2606    22117 4   ena_tasa_pe_pertinencia ena_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia
    ADD CONSTRAINT ena_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia DROP CONSTRAINT ena_tasa_pe_pertinencia_pkey;
       public            postgres    false    334            �           2606    22119 0   ena_tasa_puntaje_egel ena_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ena_tasa_puntaje_egel
    ADD CONSTRAINT ena_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.ena_tasa_puntaje_egel DROP CONSTRAINT ena_tasa_puntaje_egel_pkey;
       public            postgres    false    336            �           2606    22121 ,   ena_tasa_puntaje_ex ena_tasa_puntaje_ex_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.ena_tasa_puntaje_ex
    ADD CONSTRAINT ena_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 V   ALTER TABLE ONLY public.ena_tasa_puntaje_ex DROP CONSTRAINT ena_tasa_puntaje_ex_pkey;
       public            postgres    false    338            �           2606    22123 $   enrjsm_carreras enrjsm_carreras_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.enrjsm_carreras
    ADD CONSTRAINT enrjsm_carreras_pkey PRIMARY KEY (idcarrera);
 N   ALTER TABLE ONLY public.enrjsm_carreras DROP CONSTRAINT enrjsm_carreras_pkey;
       public            postgres    false    340            �           2606    22125 0   enrjsm_eficiencia_ire enrjsm_eficiencia_ire_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.enrjsm_eficiencia_ire
    ADD CONSTRAINT enrjsm_eficiencia_ire_pkey PRIMARY KEY (ideire);
 Z   ALTER TABLE ONLY public.enrjsm_eficiencia_ire DROP CONSTRAINT enrjsm_eficiencia_ire_pkey;
       public            postgres    false    342            �           2606    22127 6   enrjsm_indice_colocacion enrjsm_indice_colocacion_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.enrjsm_indice_colocacion
    ADD CONSTRAINT enrjsm_indice_colocacion_pkey PRIMARY KEY (idic);
 `   ALTER TABLE ONLY public.enrjsm_indice_colocacion DROP CONSTRAINT enrjsm_indice_colocacion_pkey;
       public            postgres    false    344            �           2606    22129 (   enrjsm_indice_ptc enrjsm_indice_ptc_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.enrjsm_indice_ptc
    ADD CONSTRAINT enrjsm_indice_ptc_pkey PRIMARY KEY (idiptc);
 R   ALTER TABLE ONLY public.enrjsm_indice_ptc DROP CONSTRAINT enrjsm_indice_ptc_pkey;
       public            postgres    false    346            �           2606    22131 4   enrjsm_indice_servicios enrjsm_indice_servicios_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.enrjsm_indice_servicios
    ADD CONSTRAINT enrjsm_indice_servicios_pkey PRIMARY KEY (idis);
 ^   ALTER TABLE ONLY public.enrjsm_indice_servicios DROP CONSTRAINT enrjsm_indice_servicios_pkey;
       public            postgres    false    348            �           2606    22133    enrjsm_iseg enrjsm_iseg_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.enrjsm_iseg
    ADD CONSTRAINT enrjsm_iseg_pkey PRIMARY KEY (idiseg);
 F   ALTER TABLE ONLY public.enrjsm_iseg DROP CONSTRAINT enrjsm_iseg_pkey;
       public            postgres    false    350            �           2606    22135    enrjsm_isem enrjsm_isem_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.enrjsm_isem
    ADD CONSTRAINT enrjsm_isem_pkey PRIMARY KEY (idisem);
 F   ALTER TABLE ONLY public.enrjsm_isem DROP CONSTRAINT enrjsm_isem_pkey;
       public            postgres    false    352                        2606    22137 6   enrjsm_tasa_acreditacion enrjsm_tasa_acreditacion_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion
    ADD CONSTRAINT enrjsm_tasa_acreditacion_pkey PRIMARY KEY (idta);
 `   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion DROP CONSTRAINT enrjsm_tasa_acreditacion_pkey;
       public            postgres    false    354                       2606    22139 0   enrjsm_tasa_cobertura enrjsm_tasa_cobertura_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.enrjsm_tasa_cobertura
    ADD CONSTRAINT enrjsm_tasa_cobertura_pkey PRIMARY KEY (idtc);
 Z   ALTER TABLE ONLY public.enrjsm_tasa_cobertura DROP CONSTRAINT enrjsm_tasa_cobertura_pkey;
       public            postgres    false    356                       2606    22141 .   enrjsm_tasa_docentes enrjsm_tasa_docentes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.enrjsm_tasa_docentes
    ADD CONSTRAINT enrjsm_tasa_docentes_pkey PRIMARY KEY (idtd);
 X   ALTER TABLE ONLY public.enrjsm_tasa_docentes DROP CONSTRAINT enrjsm_tasa_docentes_pkey;
       public            postgres    false    358                       2606    22143 4   enrjsm_tasa_mov_alumnos enrjsm_tasa_mov_alumnos_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos
    ADD CONSTRAINT enrjsm_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 ^   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos DROP CONSTRAINT enrjsm_tasa_mov_alumnos_pkey;
       public            postgres    false    360                       2606    22145 6   enrjsm_tasa_mov_docentes enrjsm_tasa_mov_docentes_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes
    ADD CONSTRAINT enrjsm_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 `   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes DROP CONSTRAINT enrjsm_tasa_mov_docentes_pkey;
       public            postgres    false    362            
           2606    22147 ,   enrjsm_tasa_pe_asat enrjsm_tasa_pe_asat_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat
    ADD CONSTRAINT enrjsm_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 V   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat DROP CONSTRAINT enrjsm_tasa_pe_asat_pkey;
       public            postgres    false    364                       2606    22149 :   enrjsm_tasa_pe_pertinencia enrjsm_tasa_pe_pertinencia_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia
    ADD CONSTRAINT enrjsm_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 d   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia DROP CONSTRAINT enrjsm_tasa_pe_pertinencia_pkey;
       public            postgres    false    366                       2606    22151 6   enrjsm_tasa_puntaje_egel enrjsm_tasa_puntaje_egel_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel
    ADD CONSTRAINT enrjsm_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 `   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel DROP CONSTRAINT enrjsm_tasa_puntaje_egel_pkey;
       public            postgres    false    368                       2606    22153 2   enrjsm_tasa_puntaje_ex enrjsm_tasa_puntaje_ex_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex
    ADD CONSTRAINT enrjsm_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 \   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex DROP CONSTRAINT enrjsm_tasa_puntaje_ex_pkey;
       public            postgres    false    370                       2606    22155     enrr_carreras enrr_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.enrr_carreras
    ADD CONSTRAINT enrr_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.enrr_carreras DROP CONSTRAINT enrr_carreras_pkey;
       public            postgres    false    372                       2606    22157 ,   enrr_eficiencia_ire enrr_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.enrr_eficiencia_ire
    ADD CONSTRAINT enrr_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.enrr_eficiencia_ire DROP CONSTRAINT enrr_eficiencia_ire_pkey;
       public            postgres    false    374                       2606    22159 2   enrr_indice_colocacion enrr_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.enrr_indice_colocacion
    ADD CONSTRAINT enrr_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.enrr_indice_colocacion DROP CONSTRAINT enrr_indice_colocacion_pkey;
       public            postgres    false    376                       2606    22161 $   enrr_indice_ptc enrr_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.enrr_indice_ptc
    ADD CONSTRAINT enrr_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.enrr_indice_ptc DROP CONSTRAINT enrr_indice_ptc_pkey;
       public            postgres    false    378                       2606    22163 0   enrr_indice_servicios enrr_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.enrr_indice_servicios
    ADD CONSTRAINT enrr_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.enrr_indice_servicios DROP CONSTRAINT enrr_indice_servicios_pkey;
       public            postgres    false    380                       2606    22165    enrr_iseg enrr_iseg_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.enrr_iseg
    ADD CONSTRAINT enrr_iseg_pkey PRIMARY KEY (idiseg);
 B   ALTER TABLE ONLY public.enrr_iseg DROP CONSTRAINT enrr_iseg_pkey;
       public            postgres    false    382                       2606    22167    enrr_isem enrr_isem_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.enrr_isem
    ADD CONSTRAINT enrr_isem_pkey PRIMARY KEY (idisem);
 B   ALTER TABLE ONLY public.enrr_isem DROP CONSTRAINT enrr_isem_pkey;
       public            postgres    false    384                        2606    22169 2   enrr_tasa_acreditacion enrr_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.enrr_tasa_acreditacion
    ADD CONSTRAINT enrr_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.enrr_tasa_acreditacion DROP CONSTRAINT enrr_tasa_acreditacion_pkey;
       public            postgres    false    386            "           2606    22171 ,   enrr_tasa_cobertura enrr_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.enrr_tasa_cobertura
    ADD CONSTRAINT enrr_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.enrr_tasa_cobertura DROP CONSTRAINT enrr_tasa_cobertura_pkey;
       public            postgres    false    388            $           2606    22173 *   enrr_tasa_docentes enrr_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.enrr_tasa_docentes
    ADD CONSTRAINT enrr_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.enrr_tasa_docentes DROP CONSTRAINT enrr_tasa_docentes_pkey;
       public            postgres    false    390            &           2606    22175 0   enrr_tasa_mov_alumnos enrr_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos
    ADD CONSTRAINT enrr_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos DROP CONSTRAINT enrr_tasa_mov_alumnos_pkey;
       public            postgres    false    392            (           2606    22177 2   enrr_tasa_mov_docentes enrr_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.enrr_tasa_mov_docentes
    ADD CONSTRAINT enrr_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.enrr_tasa_mov_docentes DROP CONSTRAINT enrr_tasa_mov_docentes_pkey;
       public            postgres    false    394            *           2606    22179 (   enrr_tasa_pe_asat enrr_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.enrr_tasa_pe_asat
    ADD CONSTRAINT enrr_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.enrr_tasa_pe_asat DROP CONSTRAINT enrr_tasa_pe_asat_pkey;
       public            postgres    false    396            ,           2606    22181 6   enrr_tasa_pe_pertinencia enrr_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia
    ADD CONSTRAINT enrr_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia DROP CONSTRAINT enrr_tasa_pe_pertinencia_pkey;
       public            postgres    false    398            .           2606    22183 2   enrr_tasa_puntaje_egel enrr_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel
    ADD CONSTRAINT enrr_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel DROP CONSTRAINT enrr_tasa_puntaje_egel_pkey;
       public            postgres    false    400            0           2606    22185 .   enrr_tasa_puntaje_ex enrr_tasa_puntaje_ex_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex
    ADD CONSTRAINT enrr_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 X   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex DROP CONSTRAINT enrr_tasa_puntaje_ex_pkey;
       public            postgres    false    402            2           2606    22187 "   ensfa_carreras ensfa_carreras_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.ensfa_carreras
    ADD CONSTRAINT ensfa_carreras_pkey PRIMARY KEY (idcarrera);
 L   ALTER TABLE ONLY public.ensfa_carreras DROP CONSTRAINT ensfa_carreras_pkey;
       public            postgres    false    404            4           2606    22189 .   ensfa_eficiencia_ire ensfa_eficiencia_ire_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ensfa_eficiencia_ire
    ADD CONSTRAINT ensfa_eficiencia_ire_pkey PRIMARY KEY (ideire);
 X   ALTER TABLE ONLY public.ensfa_eficiencia_ire DROP CONSTRAINT ensfa_eficiencia_ire_pkey;
       public            postgres    false    406            6           2606    22191 4   ensfa_indice_colocacion ensfa_indice_colocacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ensfa_indice_colocacion
    ADD CONSTRAINT ensfa_indice_colocacion_pkey PRIMARY KEY (idic);
 ^   ALTER TABLE ONLY public.ensfa_indice_colocacion DROP CONSTRAINT ensfa_indice_colocacion_pkey;
       public            postgres    false    408            8           2606    22193 &   ensfa_indice_ptc ensfa_indice_ptc_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ensfa_indice_ptc
    ADD CONSTRAINT ensfa_indice_ptc_pkey PRIMARY KEY (idiptc);
 P   ALTER TABLE ONLY public.ensfa_indice_ptc DROP CONSTRAINT ensfa_indice_ptc_pkey;
       public            postgres    false    410            :           2606    22195 2   ensfa_indice_servicios ensfa_indice_servicios_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ensfa_indice_servicios
    ADD CONSTRAINT ensfa_indice_servicios_pkey PRIMARY KEY (idis);
 \   ALTER TABLE ONLY public.ensfa_indice_servicios DROP CONSTRAINT ensfa_indice_servicios_pkey;
       public            postgres    false    412            <           2606    22197    ensfa_iseg ensfa_iseg_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ensfa_iseg
    ADD CONSTRAINT ensfa_iseg_pkey PRIMARY KEY (idiseg);
 D   ALTER TABLE ONLY public.ensfa_iseg DROP CONSTRAINT ensfa_iseg_pkey;
       public            postgres    false    414            >           2606    22199    ensfa_isem ensfa_isem_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ensfa_isem
    ADD CONSTRAINT ensfa_isem_pkey PRIMARY KEY (idisem);
 D   ALTER TABLE ONLY public.ensfa_isem DROP CONSTRAINT ensfa_isem_pkey;
       public            postgres    false    416            @           2606    22201 4   ensfa_tasa_acreditacion ensfa_tasa_acreditacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ensfa_tasa_acreditacion
    ADD CONSTRAINT ensfa_tasa_acreditacion_pkey PRIMARY KEY (idta);
 ^   ALTER TABLE ONLY public.ensfa_tasa_acreditacion DROP CONSTRAINT ensfa_tasa_acreditacion_pkey;
       public            postgres    false    418            B           2606    22203 .   ensfa_tasa_cobertura ensfa_tasa_cobertura_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.ensfa_tasa_cobertura
    ADD CONSTRAINT ensfa_tasa_cobertura_pkey PRIMARY KEY (idtc);
 X   ALTER TABLE ONLY public.ensfa_tasa_cobertura DROP CONSTRAINT ensfa_tasa_cobertura_pkey;
       public            postgres    false    420            D           2606    22205 ,   ensfa_tasa_docentes ensfa_tasa_docentes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ensfa_tasa_docentes
    ADD CONSTRAINT ensfa_tasa_docentes_pkey PRIMARY KEY (idtd);
 V   ALTER TABLE ONLY public.ensfa_tasa_docentes DROP CONSTRAINT ensfa_tasa_docentes_pkey;
       public            postgres    false    422            F           2606    22207 2   ensfa_tasa_mov_alumnos ensfa_tasa_mov_alumnos_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos
    ADD CONSTRAINT ensfa_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 \   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos DROP CONSTRAINT ensfa_tasa_mov_alumnos_pkey;
       public            postgres    false    424            H           2606    22209 4   ensfa_tasa_mov_docentes ensfa_tasa_mov_docentes_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes
    ADD CONSTRAINT ensfa_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 ^   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes DROP CONSTRAINT ensfa_tasa_mov_docentes_pkey;
       public            postgres    false    426            J           2606    22211 *   ensfa_tasa_pe_asat ensfa_tasa_pe_asat_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.ensfa_tasa_pe_asat
    ADD CONSTRAINT ensfa_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 T   ALTER TABLE ONLY public.ensfa_tasa_pe_asat DROP CONSTRAINT ensfa_tasa_pe_asat_pkey;
       public            postgres    false    428            L           2606    22213 8   ensfa_tasa_pe_pertinencia ensfa_tasa_pe_pertinencia_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia
    ADD CONSTRAINT ensfa_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 b   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia DROP CONSTRAINT ensfa_tasa_pe_pertinencia_pkey;
       public            postgres    false    430            N           2606    22215 4   ensfa_tasa_puntaje_egel ensfa_tasa_puntaje_egel_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel
    ADD CONSTRAINT ensfa_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 ^   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel DROP CONSTRAINT ensfa_tasa_puntaje_egel_pkey;
       public            postgres    false    432            P           2606    22217 0   ensfa_tasa_puntaje_ex ensfa_tasa_puntaje_ex_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex
    ADD CONSTRAINT ensfa_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 Z   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex DROP CONSTRAINT ensfa_tasa_puntaje_ex_pkey;
       public            postgres    false    434            R           2606    22221    upa_carreras upa_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.upa_carreras
    ADD CONSTRAINT upa_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.upa_carreras DROP CONSTRAINT upa_carreras_pkey;
       public            postgres    false    436            T           2606    22223 *   upa_eficiencia_ire upa_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.upa_eficiencia_ire
    ADD CONSTRAINT upa_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.upa_eficiencia_ire DROP CONSTRAINT upa_eficiencia_ire_pkey;
       public            postgres    false    438            V           2606    22225 0   upa_indice_colocacion upa_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.upa_indice_colocacion
    ADD CONSTRAINT upa_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.upa_indice_colocacion DROP CONSTRAINT upa_indice_colocacion_pkey;
       public            postgres    false    440            X           2606    22227 "   upa_indice_ptc upa_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.upa_indice_ptc
    ADD CONSTRAINT upa_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.upa_indice_ptc DROP CONSTRAINT upa_indice_ptc_pkey;
       public            postgres    false    442            Z           2606    22229 .   upa_indice_servicios upa_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.upa_indice_servicios
    ADD CONSTRAINT upa_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.upa_indice_servicios DROP CONSTRAINT upa_indice_servicios_pkey;
       public            postgres    false    444            \           2606    22231    upa_iseg upa_iseg_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.upa_iseg
    ADD CONSTRAINT upa_iseg_pkey PRIMARY KEY (idiseg);
 @   ALTER TABLE ONLY public.upa_iseg DROP CONSTRAINT upa_iseg_pkey;
       public            postgres    false    446            ^           2606    22233    upa_isem upa_isem_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.upa_isem
    ADD CONSTRAINT upa_isem_pkey PRIMARY KEY (idisem);
 @   ALTER TABLE ONLY public.upa_isem DROP CONSTRAINT upa_isem_pkey;
       public            postgres    false    448            `           2606    22235 0   upa_tasa_acreditacion upa_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.upa_tasa_acreditacion
    ADD CONSTRAINT upa_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.upa_tasa_acreditacion DROP CONSTRAINT upa_tasa_acreditacion_pkey;
       public            postgres    false    450            b           2606    22237 *   upa_tasa_cobertura upa_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.upa_tasa_cobertura
    ADD CONSTRAINT upa_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.upa_tasa_cobertura DROP CONSTRAINT upa_tasa_cobertura_pkey;
       public            postgres    false    452            d           2606    22239 (   upa_tasa_docentes upa_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.upa_tasa_docentes
    ADD CONSTRAINT upa_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.upa_tasa_docentes DROP CONSTRAINT upa_tasa_docentes_pkey;
       public            postgres    false    454            f           2606    22241 .   upa_tasa_mov_alumnos upa_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.upa_tasa_mov_alumnos
    ADD CONSTRAINT upa_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.upa_tasa_mov_alumnos DROP CONSTRAINT upa_tasa_mov_alumnos_pkey;
       public            postgres    false    456            h           2606    22243 0   upa_tasa_mov_docentes upa_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.upa_tasa_mov_docentes
    ADD CONSTRAINT upa_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.upa_tasa_mov_docentes DROP CONSTRAINT upa_tasa_mov_docentes_pkey;
       public            postgres    false    458            j           2606    22245 &   upa_tasa_pe_asat upa_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.upa_tasa_pe_asat
    ADD CONSTRAINT upa_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.upa_tasa_pe_asat DROP CONSTRAINT upa_tasa_pe_asat_pkey;
       public            postgres    false    460            l           2606    22247 4   upa_tasa_pe_pertinencia upa_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia
    ADD CONSTRAINT upa_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia DROP CONSTRAINT upa_tasa_pe_pertinencia_pkey;
       public            postgres    false    462            n           2606    22249 0   upa_tasa_puntaje_egel upa_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.upa_tasa_puntaje_egel
    ADD CONSTRAINT upa_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.upa_tasa_puntaje_egel DROP CONSTRAINT upa_tasa_puntaje_egel_pkey;
       public            postgres    false    464            p           2606    22251 ,   upa_tasa_puntaje_ex upa_tasa_puntaje_ex_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.upa_tasa_puntaje_ex
    ADD CONSTRAINT upa_tasa_puntaje_ex_pkey PRIMARY KEY (idtpex);
 V   ALTER TABLE ONLY public.upa_tasa_puntaje_ex DROP CONSTRAINT upa_tasa_puntaje_ex_pkey;
       public            postgres    false    466            r           2606    22255    uta_carreras uta_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.uta_carreras
    ADD CONSTRAINT uta_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.uta_carreras DROP CONSTRAINT uta_carreras_pkey;
       public            postgres    false    468            t           2606    22257 *   uta_eficiencia_ire uta_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.uta_eficiencia_ire
    ADD CONSTRAINT uta_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.uta_eficiencia_ire DROP CONSTRAINT uta_eficiencia_ire_pkey;
       public            postgres    false    470            v           2606    22259 0   uta_indice_colocacion uta_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.uta_indice_colocacion
    ADD CONSTRAINT uta_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.uta_indice_colocacion DROP CONSTRAINT uta_indice_colocacion_pkey;
       public            postgres    false    472            x           2606    22261 "   uta_indice_ptc uta_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.uta_indice_ptc
    ADD CONSTRAINT uta_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.uta_indice_ptc DROP CONSTRAINT uta_indice_ptc_pkey;
       public            postgres    false    474            z           2606    22263 .   uta_indice_servicios uta_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.uta_indice_servicios
    ADD CONSTRAINT uta_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.uta_indice_servicios DROP CONSTRAINT uta_indice_servicios_pkey;
       public            postgres    false    476            |           2606    22265    uta_iseg_l uta_iseg_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.uta_iseg_l
    ADD CONSTRAINT uta_iseg_l_pkey PRIMARY KEY (idisegl);
 D   ALTER TABLE ONLY public.uta_iseg_l DROP CONSTRAINT uta_iseg_l_pkey;
       public            postgres    false    478            ~           2606    22267    uta_iseg_tsu uta_iseg_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.uta_iseg_tsu
    ADD CONSTRAINT uta_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 H   ALTER TABLE ONLY public.uta_iseg_tsu DROP CONSTRAINT uta_iseg_tsu_pkey;
       public            postgres    false    480            �           2606    22269    uta_isem_l uta_isem_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.uta_isem_l
    ADD CONSTRAINT uta_isem_l_pkey PRIMARY KEY (idiseml);
 D   ALTER TABLE ONLY public.uta_isem_l DROP CONSTRAINT uta_isem_l_pkey;
       public            postgres    false    482            �           2606    22271    uta_isem_tsu uta_isem_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.uta_isem_tsu
    ADD CONSTRAINT uta_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 H   ALTER TABLE ONLY public.uta_isem_tsu DROP CONSTRAINT uta_isem_tsu_pkey;
       public            postgres    false    484            �           2606    22273 0   uta_tasa_acreditacion uta_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.uta_tasa_acreditacion
    ADD CONSTRAINT uta_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.uta_tasa_acreditacion DROP CONSTRAINT uta_tasa_acreditacion_pkey;
       public            postgres    false    486            �           2606    22275 *   uta_tasa_cobertura uta_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.uta_tasa_cobertura
    ADD CONSTRAINT uta_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.uta_tasa_cobertura DROP CONSTRAINT uta_tasa_cobertura_pkey;
       public            postgres    false    488            �           2606    22277 (   uta_tasa_docentes uta_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.uta_tasa_docentes
    ADD CONSTRAINT uta_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.uta_tasa_docentes DROP CONSTRAINT uta_tasa_docentes_pkey;
       public            postgres    false    490            �           2606    22279 .   uta_tasa_mov_alumnos uta_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.uta_tasa_mov_alumnos
    ADD CONSTRAINT uta_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.uta_tasa_mov_alumnos DROP CONSTRAINT uta_tasa_mov_alumnos_pkey;
       public            postgres    false    492            �           2606    22281 0   uta_tasa_mov_docentes uta_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.uta_tasa_mov_docentes
    ADD CONSTRAINT uta_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.uta_tasa_mov_docentes DROP CONSTRAINT uta_tasa_mov_docentes_pkey;
       public            postgres    false    494            �           2606    22283 &   uta_tasa_pe_asat uta_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.uta_tasa_pe_asat
    ADD CONSTRAINT uta_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.uta_tasa_pe_asat DROP CONSTRAINT uta_tasa_pe_asat_pkey;
       public            postgres    false    496            �           2606    22285 4   uta_tasa_pe_pertinencia uta_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia
    ADD CONSTRAINT uta_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia DROP CONSTRAINT uta_tasa_pe_pertinencia_pkey;
       public            postgres    false    498            �           2606    22287 0   uta_tasa_puntaje_egel uta_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.uta_tasa_puntaje_egel
    ADD CONSTRAINT uta_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.uta_tasa_puntaje_egel DROP CONSTRAINT uta_tasa_puntaje_egel_pkey;
       public            postgres    false    500            �           2606    22289 4   uta_tasa_puntaje_egetsu uta_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu
    ADD CONSTRAINT uta_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 ^   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu DROP CONSTRAINT uta_tasa_puntaje_egetsu_pkey;
       public            postgres    false    502            �           2606    22291 .   uta_tasa_puntaje_exl uta_tasa_puntaje_exl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.uta_tasa_puntaje_exl
    ADD CONSTRAINT uta_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 X   ALTER TABLE ONLY public.uta_tasa_puntaje_exl DROP CONSTRAINT uta_tasa_puntaje_exl_pkey;
       public            postgres    false    504            �           2606    22293 2   uta_tasa_puntaje_extsu uta_tasa_puntaje_extsu_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu
    ADD CONSTRAINT uta_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 \   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu DROP CONSTRAINT uta_tasa_puntaje_extsu_pkey;
       public            postgres    false    506            �           2606    22295    utc_carreras utc_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utc_carreras
    ADD CONSTRAINT utc_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.utc_carreras DROP CONSTRAINT utc_carreras_pkey;
       public            postgres    false    508            �           2606    22297 *   utc_eficiencia_ire utc_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utc_eficiencia_ire
    ADD CONSTRAINT utc_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.utc_eficiencia_ire DROP CONSTRAINT utc_eficiencia_ire_pkey;
       public            postgres    false    510            �           2606    22299 0   utc_indice_colocacion utc_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utc_indice_colocacion
    ADD CONSTRAINT utc_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.utc_indice_colocacion DROP CONSTRAINT utc_indice_colocacion_pkey;
       public            postgres    false    512            �           2606    22301 "   utc_indice_ptc utc_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.utc_indice_ptc
    ADD CONSTRAINT utc_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.utc_indice_ptc DROP CONSTRAINT utc_indice_ptc_pkey;
       public            postgres    false    514            �           2606    22303 .   utc_indice_servicios utc_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utc_indice_servicios
    ADD CONSTRAINT utc_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.utc_indice_servicios DROP CONSTRAINT utc_indice_servicios_pkey;
       public            postgres    false    516            �           2606    22305    utc_iseg_l utc_iseg_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utc_iseg_l
    ADD CONSTRAINT utc_iseg_l_pkey PRIMARY KEY (idisegl);
 D   ALTER TABLE ONLY public.utc_iseg_l DROP CONSTRAINT utc_iseg_l_pkey;
       public            postgres    false    518            �           2606    22307    utc_iseg_tsu utc_iseg_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utc_iseg_tsu
    ADD CONSTRAINT utc_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 H   ALTER TABLE ONLY public.utc_iseg_tsu DROP CONSTRAINT utc_iseg_tsu_pkey;
       public            postgres    false    520            �           2606    22309    utc_isem_l utc_isem_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utc_isem_l
    ADD CONSTRAINT utc_isem_l_pkey PRIMARY KEY (idiseml);
 D   ALTER TABLE ONLY public.utc_isem_l DROP CONSTRAINT utc_isem_l_pkey;
       public            postgres    false    522            �           2606    22311    utc_isem_tsu utc_isem_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utc_isem_tsu
    ADD CONSTRAINT utc_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 H   ALTER TABLE ONLY public.utc_isem_tsu DROP CONSTRAINT utc_isem_tsu_pkey;
       public            postgres    false    524            �           2606    22313 0   utc_tasa_acreditacion utc_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utc_tasa_acreditacion
    ADD CONSTRAINT utc_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.utc_tasa_acreditacion DROP CONSTRAINT utc_tasa_acreditacion_pkey;
       public            postgres    false    526            �           2606    22315 *   utc_tasa_cobertura utc_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utc_tasa_cobertura
    ADD CONSTRAINT utc_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.utc_tasa_cobertura DROP CONSTRAINT utc_tasa_cobertura_pkey;
       public            postgres    false    528            �           2606    22317 (   utc_tasa_docentes utc_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.utc_tasa_docentes
    ADD CONSTRAINT utc_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.utc_tasa_docentes DROP CONSTRAINT utc_tasa_docentes_pkey;
       public            postgres    false    530            �           2606    22319 .   utc_tasa_mov_alumnos utc_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.utc_tasa_mov_alumnos
    ADD CONSTRAINT utc_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.utc_tasa_mov_alumnos DROP CONSTRAINT utc_tasa_mov_alumnos_pkey;
       public            postgres    false    532            �           2606    22321 0   utc_tasa_mov_docentes utc_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utc_tasa_mov_docentes
    ADD CONSTRAINT utc_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.utc_tasa_mov_docentes DROP CONSTRAINT utc_tasa_mov_docentes_pkey;
       public            postgres    false    534            �           2606    22323 &   utc_tasa_pe_asat utc_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.utc_tasa_pe_asat
    ADD CONSTRAINT utc_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.utc_tasa_pe_asat DROP CONSTRAINT utc_tasa_pe_asat_pkey;
       public            postgres    false    536            �           2606    22325 4   utc_tasa_pe_pertinencia utc_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia
    ADD CONSTRAINT utc_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia DROP CONSTRAINT utc_tasa_pe_pertinencia_pkey;
       public            postgres    false    538            �           2606    22327 0   utc_tasa_puntaje_egel utc_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.utc_tasa_puntaje_egel
    ADD CONSTRAINT utc_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.utc_tasa_puntaje_egel DROP CONSTRAINT utc_tasa_puntaje_egel_pkey;
       public            postgres    false    540            �           2606    22329 4   utc_tasa_puntaje_egetsu utc_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu
    ADD CONSTRAINT utc_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 ^   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu DROP CONSTRAINT utc_tasa_puntaje_egetsu_pkey;
       public            postgres    false    542            �           2606    22331 .   utc_tasa_puntaje_exl utc_tasa_puntaje_exl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utc_tasa_puntaje_exl
    ADD CONSTRAINT utc_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 X   ALTER TABLE ONLY public.utc_tasa_puntaje_exl DROP CONSTRAINT utc_tasa_puntaje_exl_pkey;
       public            postgres    false    544            �           2606    22333 2   utc_tasa_puntaje_extsu utc_tasa_puntaje_extsu_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu
    ADD CONSTRAINT utc_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 \   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu DROP CONSTRAINT utc_tasa_puntaje_extsu_pkey;
       public            postgres    false    546            �           2606    22335     utma_carreras utma_carreras_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utma_carreras
    ADD CONSTRAINT utma_carreras_pkey PRIMARY KEY (idcarrera);
 J   ALTER TABLE ONLY public.utma_carreras DROP CONSTRAINT utma_carreras_pkey;
       public            postgres    false    548            �           2606    22337 ,   utma_eficiencia_ire utma_eficiencia_ire_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utma_eficiencia_ire
    ADD CONSTRAINT utma_eficiencia_ire_pkey PRIMARY KEY (ideire);
 V   ALTER TABLE ONLY public.utma_eficiencia_ire DROP CONSTRAINT utma_eficiencia_ire_pkey;
       public            postgres    false    550            �           2606    22339 2   utma_indice_colocacion utma_indice_colocacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utma_indice_colocacion
    ADD CONSTRAINT utma_indice_colocacion_pkey PRIMARY KEY (idic);
 \   ALTER TABLE ONLY public.utma_indice_colocacion DROP CONSTRAINT utma_indice_colocacion_pkey;
       public            postgres    false    552            �           2606    22341 $   utma_indice_ptc utma_indice_ptc_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.utma_indice_ptc
    ADD CONSTRAINT utma_indice_ptc_pkey PRIMARY KEY (idiptc);
 N   ALTER TABLE ONLY public.utma_indice_ptc DROP CONSTRAINT utma_indice_ptc_pkey;
       public            postgres    false    554            �           2606    22343 0   utma_indice_servicios utma_indice_servicios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utma_indice_servicios
    ADD CONSTRAINT utma_indice_servicios_pkey PRIMARY KEY (idis);
 Z   ALTER TABLE ONLY public.utma_indice_servicios DROP CONSTRAINT utma_indice_servicios_pkey;
       public            postgres    false    556            �           2606    22345    utma_iseg_l utma_iseg_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utma_iseg_l
    ADD CONSTRAINT utma_iseg_l_pkey PRIMARY KEY (idisegl);
 F   ALTER TABLE ONLY public.utma_iseg_l DROP CONSTRAINT utma_iseg_l_pkey;
       public            postgres    false    558            �           2606    22347     utma_iseg_tsu utma_iseg_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utma_iseg_tsu
    ADD CONSTRAINT utma_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 J   ALTER TABLE ONLY public.utma_iseg_tsu DROP CONSTRAINT utma_iseg_tsu_pkey;
       public            postgres    false    560            �           2606    22349    utma_isem_l utma_isem_l_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.utma_isem_l
    ADD CONSTRAINT utma_isem_l_pkey PRIMARY KEY (idiseml);
 F   ALTER TABLE ONLY public.utma_isem_l DROP CONSTRAINT utma_isem_l_pkey;
       public            postgres    false    562            �           2606    22351     utma_isem_tsu utma_isem_tsu_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.utma_isem_tsu
    ADD CONSTRAINT utma_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 J   ALTER TABLE ONLY public.utma_isem_tsu DROP CONSTRAINT utma_isem_tsu_pkey;
       public            postgres    false    564            �           2606    22353 2   utma_tasa_acreditacion utma_tasa_acreditacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.utma_tasa_acreditacion
    ADD CONSTRAINT utma_tasa_acreditacion_pkey PRIMARY KEY (idta);
 \   ALTER TABLE ONLY public.utma_tasa_acreditacion DROP CONSTRAINT utma_tasa_acreditacion_pkey;
       public            postgres    false    566            �           2606    22355 ,   utma_tasa_cobertura utma_tasa_cobertura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utma_tasa_cobertura
    ADD CONSTRAINT utma_tasa_cobertura_pkey PRIMARY KEY (idtc);
 V   ALTER TABLE ONLY public.utma_tasa_cobertura DROP CONSTRAINT utma_tasa_cobertura_pkey;
       public            postgres    false    568            �           2606    22357 *   utma_tasa_docentes utma_tasa_docentes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utma_tasa_docentes
    ADD CONSTRAINT utma_tasa_docentes_pkey PRIMARY KEY (idtd);
 T   ALTER TABLE ONLY public.utma_tasa_docentes DROP CONSTRAINT utma_tasa_docentes_pkey;
       public            postgres    false    570            �           2606    22359 0   utma_tasa_mov_alumnos utma_tasa_mov_alumnos_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utma_tasa_mov_alumnos
    ADD CONSTRAINT utma_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 Z   ALTER TABLE ONLY public.utma_tasa_mov_alumnos DROP CONSTRAINT utma_tasa_mov_alumnos_pkey;
       public            postgres    false    572            �           2606    22361 2   utma_tasa_mov_docentes utma_tasa_mov_docentes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utma_tasa_mov_docentes
    ADD CONSTRAINT utma_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 \   ALTER TABLE ONLY public.utma_tasa_mov_docentes DROP CONSTRAINT utma_tasa_mov_docentes_pkey;
       public            postgres    false    574            �           2606    22363 (   utma_tasa_pe_asat utma_tasa_pe_asat_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.utma_tasa_pe_asat
    ADD CONSTRAINT utma_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 R   ALTER TABLE ONLY public.utma_tasa_pe_asat DROP CONSTRAINT utma_tasa_pe_asat_pkey;
       public            postgres    false    576            �           2606    22365 6   utma_tasa_pe_pertinencia utma_tasa_pe_pertinencia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia
    ADD CONSTRAINT utma_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 `   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia DROP CONSTRAINT utma_tasa_pe_pertinencia_pkey;
       public            postgres    false    578            �           2606    22367 2   utma_tasa_puntaje_egel utma_tasa_puntaje_egel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utma_tasa_puntaje_egel
    ADD CONSTRAINT utma_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 \   ALTER TABLE ONLY public.utma_tasa_puntaje_egel DROP CONSTRAINT utma_tasa_puntaje_egel_pkey;
       public            postgres    false    580            �           2606    22369 6   utma_tasa_puntaje_egetsu utma_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu
    ADD CONSTRAINT utma_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 `   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu DROP CONSTRAINT utma_tasa_puntaje_egetsu_pkey;
       public            postgres    false    582            �           2606    22371 0   utma_tasa_puntaje_exl utma_tasa_puntaje_exl_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.utma_tasa_puntaje_exl
    ADD CONSTRAINT utma_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 Z   ALTER TABLE ONLY public.utma_tasa_puntaje_exl DROP CONSTRAINT utma_tasa_puntaje_exl_pkey;
       public            postgres    false    584            �           2606    22373 4   utma_tasa_puntaje_extsu utma_tasa_puntaje_extsu_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu
    ADD CONSTRAINT utma_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 ^   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu DROP CONSTRAINT utma_tasa_puntaje_extsu_pkey;
       public            postgres    false    586            v           2606    20550 8   utna_module_utna_carreras utna_module_utna_carreras_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.utna_module_utna_carreras
    ADD CONSTRAINT utna_module_utna_carreras_pkey PRIMARY KEY ("IDCarrera");
 b   ALTER TABLE ONLY public.utna_module_utna_carreras DROP CONSTRAINT utna_module_utna_carreras_pkey;
       public            postgres    false    236            y           2606    20552 D   utna_module_utna_eficiencia_ire utna_module_utna_eficiencia_ire_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire
    ADD CONSTRAINT utna_module_utna_eficiencia_ire_pkey PRIMARY KEY ("IDEIRE");
 n   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire DROP CONSTRAINT utna_module_utna_eficiencia_ire_pkey;
       public            postgres    false    238            |           2606    20554 J   utna_module_utna_indice_colocacion utna_module_utna_indice_colocacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion
    ADD CONSTRAINT utna_module_utna_indice_colocacion_pkey PRIMARY KEY ("IDIC");
 t   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion DROP CONSTRAINT utna_module_utna_indice_colocacion_pkey;
       public            postgres    false    240            �           2606    20556 <   utna_module_utna_indice_ptc utna_module_utna_indice_ptc_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc
    ADD CONSTRAINT utna_module_utna_indice_ptc_pkey PRIMARY KEY ("IDIPTC");
 f   ALTER TABLE ONLY public.utna_module_utna_indice_ptc DROP CONSTRAINT utna_module_utna_indice_ptc_pkey;
       public            postgres    false    242            �           2606    20558 H   utna_module_utna_indice_servicios utna_module_utna_indice_servicios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios
    ADD CONSTRAINT utna_module_utna_indice_servicios_pkey PRIMARY KEY ("IDIS");
 r   ALTER TABLE ONLY public.utna_module_utna_indice_servicios DROP CONSTRAINT utna_module_utna_indice_servicios_pkey;
       public            postgres    false    244            �           2606    20560 4   utna_module_utna_iseg_l utna_module_utna_iseg_l_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utna_module_utna_iseg_l
    ADD CONSTRAINT utna_module_utna_iseg_l_pkey PRIMARY KEY ("IDISEGL");
 ^   ALTER TABLE ONLY public.utna_module_utna_iseg_l DROP CONSTRAINT utna_module_utna_iseg_l_pkey;
       public            postgres    false    246            �           2606    20562 8   utna_module_utna_iseg_tsu utna_module_utna_iseg_tsu_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.utna_module_utna_iseg_tsu
    ADD CONSTRAINT utna_module_utna_iseg_tsu_pkey PRIMARY KEY ("IDISEGTSU");
 b   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu DROP CONSTRAINT utna_module_utna_iseg_tsu_pkey;
       public            postgres    false    248            �           2606    20564 4   utna_module_utna_isem_l utna_module_utna_isem_l_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.utna_module_utna_isem_l
    ADD CONSTRAINT utna_module_utna_isem_l_pkey PRIMARY KEY ("IDISEML");
 ^   ALTER TABLE ONLY public.utna_module_utna_isem_l DROP CONSTRAINT utna_module_utna_isem_l_pkey;
       public            postgres    false    250            �           2606    20566 8   utna_module_utna_isem_tsu utna_module_utna_isem_tsu_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.utna_module_utna_isem_tsu
    ADD CONSTRAINT utna_module_utna_isem_tsu_pkey PRIMARY KEY ("IDISEMTSU");
 b   ALTER TABLE ONLY public.utna_module_utna_isem_tsu DROP CONSTRAINT utna_module_utna_isem_tsu_pkey;
       public            postgres    false    252            �           2606    20568 J   utna_module_utna_tasa_acreditacion utna_module_utna_tasa_acreditacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion
    ADD CONSTRAINT utna_module_utna_tasa_acreditacion_pkey PRIMARY KEY ("IDTA");
 t   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion DROP CONSTRAINT utna_module_utna_tasa_acreditacion_pkey;
       public            postgres    false    254            �           2606    20570 D   utna_module_utna_tasa_cobertura utna_module_utna_tasa_cobertura_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura
    ADD CONSTRAINT utna_module_utna_tasa_cobertura_pkey PRIMARY KEY ("IDTC");
 n   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura DROP CONSTRAINT utna_module_utna_tasa_cobertura_pkey;
       public            postgres    false    256            �           2606    20572 B   utna_module_utna_tasa_docentes utna_module_utna_tasa_docentes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes
    ADD CONSTRAINT utna_module_utna_tasa_docentes_pkey PRIMARY KEY ("IDTD");
 l   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes DROP CONSTRAINT utna_module_utna_tasa_docentes_pkey;
       public            postgres    false    258            �           2606    20574 H   utna_module_utna_tasa_mov_alumnos utna_module_utna_tasa_mov_alumnos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos
    ADD CONSTRAINT utna_module_utna_tasa_mov_alumnos_pkey PRIMARY KEY ("IDTMA");
 r   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos DROP CONSTRAINT utna_module_utna_tasa_mov_alumnos_pkey;
       public            postgres    false    260            �           2606    20576 J   utna_module_utna_tasa_mov_docentes utna_module_utna_tasa_mov_docentes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes
    ADD CONSTRAINT utna_module_utna_tasa_mov_docentes_pkey PRIMARY KEY ("IDTMD");
 t   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes DROP CONSTRAINT utna_module_utna_tasa_mov_docentes_pkey;
       public            postgres    false    262            �           2606    20578 @   utna_module_utna_tasa_pe_asat utna_module_utna_tasa_pe_asat_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat
    ADD CONSTRAINT utna_module_utna_tasa_pe_asat_pkey PRIMARY KEY ("IDTPEASAT");
 j   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat DROP CONSTRAINT utna_module_utna_tasa_pe_asat_pkey;
       public            postgres    false    264            �           2606    20580 N   utna_module_utna_tasa_pe_pertinencia utna_module_utna_tasa_pe_pertinencia_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia
    ADD CONSTRAINT utna_module_utna_tasa_pe_pertinencia_pkey PRIMARY KEY ("IDTPEP");
 x   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia DROP CONSTRAINT utna_module_utna_tasa_pe_pertinencia_pkey;
       public            postgres    false    266            �           2606    20582 J   utna_module_utna_tasa_puntaje_egel utna_module_utna_tasa_puntaje_egel_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_egel_pkey PRIMARY KEY ("IDTPEGEL");
 t   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel DROP CONSTRAINT utna_module_utna_tasa_puntaje_egel_pkey;
       public            postgres    false    268            �           2606    20584 N   utna_module_utna_tasa_puntaje_egetsu utna_module_utna_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_egetsu_pkey PRIMARY KEY ("IDTPEGESTU");
 x   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu DROP CONSTRAINT utna_module_utna_tasa_puntaje_egetsu_pkey;
       public            postgres    false    270            �           2606    20586 H   utna_module_utna_tasa_puntaje_exl utna_module_utna_tasa_puntaje_exl_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_exl_pkey PRIMARY KEY ("IDTPEXL");
 r   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl DROP CONSTRAINT utna_module_utna_tasa_puntaje_exl_pkey;
       public            postgres    false    272            �           2606    20588 L   utna_module_utna_tasa_puntaje_extsu utna_module_utna_tasa_puntaje_extsu_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu
    ADD CONSTRAINT utna_module_utna_tasa_puntaje_extsu_pkey PRIMARY KEY ("IDTPEXTSU");
 v   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu DROP CONSTRAINT utna_module_utna_tasa_puntaje_extsu_pkey;
       public            postgres    false    274            �           2606    22415    utr_carreras utr_carreras_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utr_carreras
    ADD CONSTRAINT utr_carreras_pkey PRIMARY KEY (idcarrera);
 H   ALTER TABLE ONLY public.utr_carreras DROP CONSTRAINT utr_carreras_pkey;
       public            postgres    false    588            �           2606    22417 *   utr_eficiencia_ire utr_eficiencia_ire_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.utr_eficiencia_ire
    ADD CONSTRAINT utr_eficiencia_ire_pkey PRIMARY KEY (ideire);
 T   ALTER TABLE ONLY public.utr_eficiencia_ire DROP CONSTRAINT utr_eficiencia_ire_pkey;
       public            postgres    false    590            �           2606    22419 0   utr_indice_colocacion utr_indice_colocacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utr_indice_colocacion
    ADD CONSTRAINT utr_indice_colocacion_pkey PRIMARY KEY (idic);
 Z   ALTER TABLE ONLY public.utr_indice_colocacion DROP CONSTRAINT utr_indice_colocacion_pkey;
       public            postgres    false    592            �           2606    22421 "   utr_indice_ptc utr_indice_ptc_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.utr_indice_ptc
    ADD CONSTRAINT utr_indice_ptc_pkey PRIMARY KEY (idiptc);
 L   ALTER TABLE ONLY public.utr_indice_ptc DROP CONSTRAINT utr_indice_ptc_pkey;
       public            postgres    false    594            �           2606    22423 .   utr_indice_servicios utr_indice_servicios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.utr_indice_servicios
    ADD CONSTRAINT utr_indice_servicios_pkey PRIMARY KEY (idis);
 X   ALTER TABLE ONLY public.utr_indice_servicios DROP CONSTRAINT utr_indice_servicios_pkey;
       public            postgres    false    596            �           2606    22425    utr_iseg_l utr_iseg_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utr_iseg_l
    ADD CONSTRAINT utr_iseg_l_pkey PRIMARY KEY (idisegl);
 D   ALTER TABLE ONLY public.utr_iseg_l DROP CONSTRAINT utr_iseg_l_pkey;
       public            postgres    false    598            �           2606    22427    utr_iseg_tsu utr_iseg_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utr_iseg_tsu
    ADD CONSTRAINT utr_iseg_tsu_pkey PRIMARY KEY (idisegtsu);
 H   ALTER TABLE ONLY public.utr_iseg_tsu DROP CONSTRAINT utr_iseg_tsu_pkey;
       public            postgres    false    600            �           2606    22429    utr_isem_l utr_isem_l_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utr_isem_l
    ADD CONSTRAINT utr_isem_l_pkey PRIMARY KEY (idiseml);
 D   ALTER TABLE ONLY public.utr_isem_l DROP CONSTRAINT utr_isem_l_pkey;
       public            postgres    false    602            �           2606    22431    utr_isem_tsu utr_isem_tsu_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.utr_isem_tsu
    ADD CONSTRAINT utr_isem_tsu_pkey PRIMARY KEY (idisemtsu);
 H   ALTER TABLE ONLY public.utr_isem_tsu DROP CONSTRAINT utr_isem_tsu_pkey;
       public            postgres    false    604            �           2606    22433 0   utr_tasa_acreditacion utr_tasa_acreditacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.utr_tasa_acreditacion
    ADD CONSTRAINT utr_tasa_acreditacion_pkey PRIMARY KEY (idta);
 Z   ALTER TABLE ONLY public.utr_tasa_acreditacion DROP CONSTRAINT utr_tasa_acreditacion_pkey;
       public            postgres    false    606            �           2606    22435 *   utr_tasa_cobertura utr_tasa_cobertura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.utr_tasa_cobertura
    ADD CONSTRAINT utr_tasa_cobertura_pkey PRIMARY KEY (idtc);
 T   ALTER TABLE ONLY public.utr_tasa_cobertura DROP CONSTRAINT utr_tasa_cobertura_pkey;
       public            postgres    false    608                        2606    22437 (   utr_tasa_docentes utr_tasa_docentes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.utr_tasa_docentes
    ADD CONSTRAINT utr_tasa_docentes_pkey PRIMARY KEY (idtd);
 R   ALTER TABLE ONLY public.utr_tasa_docentes DROP CONSTRAINT utr_tasa_docentes_pkey;
       public            postgres    false    610                       2606    22439 .   utr_tasa_mov_alumnos utr_tasa_mov_alumnos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.utr_tasa_mov_alumnos
    ADD CONSTRAINT utr_tasa_mov_alumnos_pkey PRIMARY KEY (idtma);
 X   ALTER TABLE ONLY public.utr_tasa_mov_alumnos DROP CONSTRAINT utr_tasa_mov_alumnos_pkey;
       public            postgres    false    612                       2606    22441 0   utr_tasa_mov_docentes utr_tasa_mov_docentes_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utr_tasa_mov_docentes
    ADD CONSTRAINT utr_tasa_mov_docentes_pkey PRIMARY KEY (idtmd);
 Z   ALTER TABLE ONLY public.utr_tasa_mov_docentes DROP CONSTRAINT utr_tasa_mov_docentes_pkey;
       public            postgres    false    614                       2606    22443 &   utr_tasa_pe_asat utr_tasa_pe_asat_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.utr_tasa_pe_asat
    ADD CONSTRAINT utr_tasa_pe_asat_pkey PRIMARY KEY (idtpeasat);
 P   ALTER TABLE ONLY public.utr_tasa_pe_asat DROP CONSTRAINT utr_tasa_pe_asat_pkey;
       public            postgres    false    616                       2606    22445 4   utr_tasa_pe_pertinencia utr_tasa_pe_pertinencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia
    ADD CONSTRAINT utr_tasa_pe_pertinencia_pkey PRIMARY KEY (idtpep);
 ^   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia DROP CONSTRAINT utr_tasa_pe_pertinencia_pkey;
       public            postgres    false    618            
           2606    22447 0   utr_tasa_puntaje_egel utr_tasa_puntaje_egel_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.utr_tasa_puntaje_egel
    ADD CONSTRAINT utr_tasa_puntaje_egel_pkey PRIMARY KEY (idtpegel);
 Z   ALTER TABLE ONLY public.utr_tasa_puntaje_egel DROP CONSTRAINT utr_tasa_puntaje_egel_pkey;
       public            postgres    false    620                       2606    22449 4   utr_tasa_puntaje_egetsu utr_tasa_puntaje_egetsu_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu
    ADD CONSTRAINT utr_tasa_puntaje_egetsu_pkey PRIMARY KEY (idtpegetsu);
 ^   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu DROP CONSTRAINT utr_tasa_puntaje_egetsu_pkey;
       public            postgres    false    622                       2606    22451 .   utr_tasa_puntaje_exl utr_tasa_puntaje_exl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.utr_tasa_puntaje_exl
    ADD CONSTRAINT utr_tasa_puntaje_exl_pkey PRIMARY KEY (idtpexl);
 X   ALTER TABLE ONLY public.utr_tasa_puntaje_exl DROP CONSTRAINT utr_tasa_puntaje_exl_pkey;
       public            postgres    false    624                       2606    22453 2   utr_tasa_puntaje_extsu utr_tasa_puntaje_extsu_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu
    ADD CONSTRAINT utr_tasa_puntaje_extsu_pkey PRIMARY KEY (idtpextsu);
 \   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu DROP CONSTRAINT utr_tasa_puntaje_extsu_pkey;
       public            postgres    false    626            ?           1259    20589 -   admin_module_usuarios_Universidad_id_839997f7    INDEX     }   CREATE INDEX "admin_module_usuarios_Universidad_id_839997f7" ON public.admin_module_usuarios USING btree ("Universidad_id");
 C   DROP INDEX public."admin_module_usuarios_Universidad_id_839997f7";
       public            postgres    false    216            E           1259    20590 .   admin_module_usuarios_groups_group_id_c4db1625    INDEX     {   CREATE INDEX admin_module_usuarios_groups_group_id_c4db1625 ON public.admin_module_usuarios_groups USING btree (group_id);
 B   DROP INDEX public.admin_module_usuarios_groups_group_id_c4db1625;
       public            postgres    false    218            H           1259    20591 1   admin_module_usuarios_groups_usuarios_id_bf9b452f    INDEX     �   CREATE INDEX admin_module_usuarios_groups_usuarios_id_bf9b452f ON public.admin_module_usuarios_groups USING btree (usuarios_id);
 E   DROP INDEX public.admin_module_usuarios_groups_usuarios_id_bf9b452f;
       public            postgres    false    218            M           1259    20592 =   admin_module_usuarios_user_permissions_permission_id_4cf14b49    INDEX     �   CREATE INDEX admin_module_usuarios_user_permissions_permission_id_4cf14b49 ON public.admin_module_usuarios_user_permissions USING btree (permission_id);
 Q   DROP INDEX public.admin_module_usuarios_user_permissions_permission_id_4cf14b49;
       public            postgres    false    220            P           1259    20593 ;   admin_module_usuarios_user_permissions_usuarios_id_1087d62c    INDEX     �   CREATE INDEX admin_module_usuarios_user_permissions_usuarios_id_1087d62c ON public.admin_module_usuarios_user_permissions USING btree (usuarios_id);
 O   DROP INDEX public.admin_module_usuarios_user_permissions_usuarios_id_1087d62c;
       public            postgres    false    220            B           1259    20594 ,   admin_module_usuarios_username_4aba3709_like    INDEX     �   CREATE INDEX admin_module_usuarios_username_4aba3709_like ON public.admin_module_usuarios USING btree (username varchar_pattern_ops);
 @   DROP INDEX public.admin_module_usuarios_username_4aba3709_like;
       public            postgres    false    216            Q           1259    20595    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    222            V           1259    20596 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    224            Y           1259    20597 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    224            \           1259    20598 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    226            a           1259    20599 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    228            f           1259    20600 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    229            i           1259    20601 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    229            p           1259    20602 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    235            s           1259    20603 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    235            t           1259    20604 1   utna_module_utna_carreras_Universidad_id_5259bb1d    INDEX     �   CREATE INDEX "utna_module_utna_carreras_Universidad_id_5259bb1d" ON public.utna_module_utna_carreras USING btree ("Universidad_id");
 G   DROP INDEX public."utna_module_utna_carreras_Universidad_id_5259bb1d";
       public            postgres    false    236            w           1259    20605 3   utna_module_utna_eficiencia_ire_Carrera_id_e1a3efef    INDEX     �   CREATE INDEX "utna_module_utna_eficiencia_ire_Carrera_id_e1a3efef" ON public.utna_module_utna_eficiencia_ire USING btree ("Carrera_id");
 I   DROP INDEX public."utna_module_utna_eficiencia_ire_Carrera_id_e1a3efef";
       public            postgres    false    238            z           1259    20606 6   utna_module_utna_indice_colocacion_Carrera_id_2d3cd102    INDEX     �   CREATE INDEX "utna_module_utna_indice_colocacion_Carrera_id_2d3cd102" ON public.utna_module_utna_indice_colocacion USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_indice_colocacion_Carrera_id_2d3cd102";
       public            postgres    false    240            }           1259    20607 /   utna_module_utna_indice_ptc_Carrera_id_fa143864    INDEX     �   CREATE INDEX "utna_module_utna_indice_ptc_Carrera_id_fa143864" ON public.utna_module_utna_indice_ptc USING btree ("Carrera_id");
 E   DROP INDEX public."utna_module_utna_indice_ptc_Carrera_id_fa143864";
       public            postgres    false    242            ~           1259    20608 9   utna_module_utna_indice_ptc_PE_Pertenecientes_id_03ec3eea    INDEX     �   CREATE INDEX "utna_module_utna_indice_ptc_PE_Pertenecientes_id_03ec3eea" ON public.utna_module_utna_indice_ptc USING btree ("PE_Pertenecientes_id");
 O   DROP INDEX public."utna_module_utna_indice_ptc_PE_Pertenecientes_id_03ec3eea";
       public            postgres    false    242            �           1259    20609 5   utna_module_utna_indice_servicios_Carrera_id_f85c6d0a    INDEX     �   CREATE INDEX "utna_module_utna_indice_servicios_Carrera_id_f85c6d0a" ON public.utna_module_utna_indice_servicios USING btree ("Carrera_id");
 K   DROP INDEX public."utna_module_utna_indice_servicios_Carrera_id_f85c6d0a";
       public            postgres    false    244            �           1259    20610 +   utna_module_utna_iseg_l_Carrera_id_6038bc21    INDEX     y   CREATE INDEX "utna_module_utna_iseg_l_Carrera_id_6038bc21" ON public.utna_module_utna_iseg_l USING btree ("Carrera_id");
 A   DROP INDEX public."utna_module_utna_iseg_l_Carrera_id_6038bc21";
       public            postgres    false    246            �           1259    20611 -   utna_module_utna_iseg_tsu_Carrera_id_c254dc59    INDEX     }   CREATE INDEX "utna_module_utna_iseg_tsu_Carrera_id_c254dc59" ON public.utna_module_utna_iseg_tsu USING btree ("Carrera_id");
 C   DROP INDEX public."utna_module_utna_iseg_tsu_Carrera_id_c254dc59";
       public            postgres    false    248            �           1259    20612 +   utna_module_utna_isem_l_Carrera_id_e6ccdd20    INDEX     y   CREATE INDEX "utna_module_utna_isem_l_Carrera_id_e6ccdd20" ON public.utna_module_utna_isem_l USING btree ("Carrera_id");
 A   DROP INDEX public."utna_module_utna_isem_l_Carrera_id_e6ccdd20";
       public            postgres    false    250            �           1259    20613 -   utna_module_utna_isem_tsu_Carrera_id_b028db55    INDEX     }   CREATE INDEX "utna_module_utna_isem_tsu_Carrera_id_b028db55" ON public.utna_module_utna_isem_tsu USING btree ("Carrera_id");
 C   DROP INDEX public."utna_module_utna_isem_tsu_Carrera_id_b028db55";
       public            postgres    false    252            �           1259    20614 6   utna_module_utna_tasa_acreditacion_Carrera_id_f0f67dad    INDEX     �   CREATE INDEX "utna_module_utna_tasa_acreditacion_Carrera_id_f0f67dad" ON public.utna_module_utna_tasa_acreditacion USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_tasa_acreditacion_Carrera_id_f0f67dad";
       public            postgres    false    254            �           1259    20615 3   utna_module_utna_tasa_cobertura_Carrera_id_f1f71131    INDEX     �   CREATE INDEX "utna_module_utna_tasa_cobertura_Carrera_id_f1f71131" ON public.utna_module_utna_tasa_cobertura USING btree ("Carrera_id");
 I   DROP INDEX public."utna_module_utna_tasa_cobertura_Carrera_id_f1f71131";
       public            postgres    false    256            �           1259    20616 2   utna_module_utna_tasa_docentes_Carrera_id_b50d6d4e    INDEX     �   CREATE INDEX "utna_module_utna_tasa_docentes_Carrera_id_b50d6d4e" ON public.utna_module_utna_tasa_docentes USING btree ("Carrera_id");
 H   DROP INDEX public."utna_module_utna_tasa_docentes_Carrera_id_b50d6d4e";
       public            postgres    false    258            �           1259    20617 5   utna_module_utna_tasa_mov_alumnos_Carrera_id_8af85fe9    INDEX     �   CREATE INDEX "utna_module_utna_tasa_mov_alumnos_Carrera_id_8af85fe9" ON public.utna_module_utna_tasa_mov_alumnos USING btree ("Carrera_id");
 K   DROP INDEX public."utna_module_utna_tasa_mov_alumnos_Carrera_id_8af85fe9";
       public            postgres    false    260            �           1259    20618 6   utna_module_utna_tasa_mov_docentes_Carrera_id_641d558f    INDEX     �   CREATE INDEX "utna_module_utna_tasa_mov_docentes_Carrera_id_641d558f" ON public.utna_module_utna_tasa_mov_docentes USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_tasa_mov_docentes_Carrera_id_641d558f";
       public            postgres    false    262            �           1259    20619 ,   utna_module_utna_tasa_pe_asat_PE_id_82792736    INDEX     {   CREATE INDEX "utna_module_utna_tasa_pe_asat_PE_id_82792736" ON public.utna_module_utna_tasa_pe_asat USING btree ("PE_id");
 B   DROP INDEX public."utna_module_utna_tasa_pe_asat_PE_id_82792736";
       public            postgres    false    264            �           1259    20620 8   utna_module_utna_tasa_pe_pertinencia_Carrera_id_e3afaf73    INDEX     �   CREATE INDEX "utna_module_utna_tasa_pe_pertinencia_Carrera_id_e3afaf73" ON public.utna_module_utna_tasa_pe_pertinencia USING btree ("PE_id");
 N   DROP INDEX public."utna_module_utna_tasa_pe_pertinencia_Carrera_id_e3afaf73";
       public            postgres    false    266            �           1259    20621 6   utna_module_utna_tasa_puntaje_egel_Carrera_id_58649386    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_egel_Carrera_id_58649386" ON public.utna_module_utna_tasa_puntaje_egel USING btree ("Carrera_id");
 L   DROP INDEX public."utna_module_utna_tasa_puntaje_egel_Carrera_id_58649386";
       public            postgres    false    268            �           1259    20622 8   utna_module_utna_tasa_puntaje_egetsu_Carrera_id_1aa960eb    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_egetsu_Carrera_id_1aa960eb" ON public.utna_module_utna_tasa_puntaje_egetsu USING btree ("Carrera_id");
 N   DROP INDEX public."utna_module_utna_tasa_puntaje_egetsu_Carrera_id_1aa960eb";
       public            postgres    false    270            �           1259    20623 5   utna_module_utna_tasa_puntaje_exl_Carrera_id_869e1045    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_exl_Carrera_id_869e1045" ON public.utna_module_utna_tasa_puntaje_exl USING btree ("Carrera_id");
 K   DROP INDEX public."utna_module_utna_tasa_puntaje_exl_Carrera_id_869e1045";
       public            postgres    false    272            �           1259    20624 7   utna_module_utna_tasa_puntaje_extsu_Carrera_id_b7e02192    INDEX     �   CREATE INDEX "utna_module_utna_tasa_puntaje_extsu_Carrera_id_b7e02192" ON public.utna_module_utna_tasa_puntaje_extsu USING btree ("Carrera_id");
 M   DROP INDEX public."utna_module_utna_tasa_puntaje_extsu_Carrera_id_b7e02192";
       public            postgres    false    274                       2606    20625 O   admin_module_usuarios admin_module_usuario_Universidad_id_839997f7_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios
    ADD CONSTRAINT "admin_module_usuario_Universidad_id_839997f7_fk_admin_mod" FOREIGN KEY ("Universidad_id") REFERENCES public.admin_module_universidades("IDUniversidad") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.admin_module_usuarios DROP CONSTRAINT "admin_module_usuario_Universidad_id_839997f7_fk_admin_mod";
       public          postgres    false    216    4414    214                       2606    20630 _   admin_module_usuarios_user_permissions admin_module_usuario_permission_id_4cf14b49_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuario_permission_id_4cf14b49_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuario_permission_id_4cf14b49_fk_auth_perm;
       public          postgres    false    220    4448    226                       2606    20635 ]   admin_module_usuarios_user_permissions admin_module_usuario_usuarios_id_1087d62c_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions
    ADD CONSTRAINT admin_module_usuario_usuarios_id_1087d62c_fk_admin_mod FOREIGN KEY (usuarios_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.admin_module_usuarios_user_permissions DROP CONSTRAINT admin_module_usuario_usuarios_id_1087d62c_fk_admin_mod;
       public          postgres    false    216    220    4417                       2606    20640 S   admin_module_usuarios_groups admin_module_usuario_usuarios_id_bf9b452f_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuario_usuarios_id_bf9b452f_fk_admin_mod FOREIGN KEY (usuarios_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuario_usuarios_id_bf9b452f_fk_admin_mod;
       public          postgres    false    218    4417    216                       2606    20645 \   admin_module_usuarios_groups admin_module_usuarios_groups_group_id_c4db1625_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_module_usuarios_groups
    ADD CONSTRAINT admin_module_usuarios_groups_group_id_c4db1625_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.admin_module_usuarios_groups DROP CONSTRAINT admin_module_usuarios_groups_group_id_c4db1625_fk_auth_group_id;
       public          postgres    false    218    222    4437                       2606    20650 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    224    226    4448                       2606    20655 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    224    222    4437                       2606    20660 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    226    231    4461                       2606    20665 =   authtoken_token authtoken_token_user_id_35299eff_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_admin_mod FOREIGN KEY (user_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_admin_mod;
       public          postgres    false    216    4417    228            :           2606    22539    crena_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.crena_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    276    292    4530            2           2606    22544    crena_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.crena_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    4530    278    276            @           2606    22549    crena_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    4530    304    276            A           2606    22554    crena_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.crena_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    4530    306    276            6           2606    22559    crena_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 H   ALTER TABLE ONLY public.crena_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4530    284    276            7           2606    22564    crena_iseg carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 <   ALTER TABLE ONLY public.crena_iseg DROP CONSTRAINT carrera;
       public          postgres    false    4530    286    276            8           2606    22569    crena_isem carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 <   ALTER TABLE ONLY public.crena_isem DROP CONSTRAINT carrera;
       public          postgres    false    288    4530    276            ;           2606    22574    crena_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 E   ALTER TABLE ONLY public.crena_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    276    294    4530            4           2606    22579    crena_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 B   ALTER TABLE ONLY public.crena_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    282    4530    276            3           2606    22584    crena_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    280    4530    276            <           2606    22589    crena_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 H   ALTER TABLE ONLY public.crena_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    296    276    4530            =           2606    22594    crena_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    276    298    4530            9           2606    22599    crena_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.crena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.crena_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    290    4530    276            \           2606    22604    enrjsm_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrjsm_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    356    340    4594            T           2606    22609    enrjsm_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrjsm_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    342    340    4594            b           2606    22614     enrjsm_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    4594    340    368            X           2606    22619    enrjsm_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 I   ALTER TABLE ONLY public.enrjsm_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4594    348    340            Y           2606    22624    enrjsm_iseg carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 =   ALTER TABLE ONLY public.enrjsm_iseg DROP CONSTRAINT carrera;
       public          postgres    false    350    4594    340            Z           2606    22629    enrjsm_isem carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 =   ALTER TABLE ONLY public.enrjsm_isem DROP CONSTRAINT carrera;
       public          postgres    false    340    352    4594            ]           2606    22634    enrjsm_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 F   ALTER TABLE ONLY public.enrjsm_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4594    340    358            V           2606    22639    enrjsm_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 C   ALTER TABLE ONLY public.enrjsm_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    346    340    4594            U           2606    22644     enrjsm_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    344    340    4594            ^           2606    22649    enrjsm_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 I   ALTER TABLE ONLY public.enrjsm_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    360    340    4594            _           2606    22654     enrjsm_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    340    4594    362            [           2606    22659     enrjsm_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrjsm_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    354    4594    340            c           2606    22664    enrjsm_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrjsm_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrjsm_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    370    340    4594            m           2606    22669    enrr_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 E   ALTER TABLE ONLY public.enrr_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    388    4626    372            e           2606    22674    enrr_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 E   ALTER TABLE ONLY public.enrr_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    374    4626    372            s           2606    22679    enrr_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    400    4626    372            i           2606    22684    enrr_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrr_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    380    4626    372            j           2606    22689    enrr_iseg carrera    FK CONSTRAINT        ALTER TABLE ONLY public.enrr_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 ;   ALTER TABLE ONLY public.enrr_iseg DROP CONSTRAINT carrera;
       public          postgres    false    382    4626    372            k           2606    22694    enrr_isem carrera    FK CONSTRAINT        ALTER TABLE ONLY public.enrr_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 ;   ALTER TABLE ONLY public.enrr_isem DROP CONSTRAINT carrera;
       public          postgres    false    384    4626    372            n           2606    22699    enrr_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.enrr_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    390    4626    372            g           2606    22704    enrr_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 A   ALTER TABLE ONLY public.enrr_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    4626    378    372            f           2606    22709    enrr_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    376    4626    372            o           2606    22714    enrr_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrr_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    392    4626    372            p           2606    22719    enrr_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    394    4626    372            l           2606    22724    enrr_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.enrr_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    386    4626    372            t           2606    22729    enrr_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.enrr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.enrr_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    402    4626    372            ~           2606    22734    ensfa_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ensfa_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    420    4658    404            v           2606    22739    ensfa_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ensfa_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    406    4658    404            �           2606    22744    ensfa_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    432    404    4658            z           2606    22749    ensfa_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 H   ALTER TABLE ONLY public.ensfa_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    412    4658    404            {           2606    22754    ensfa_iseg carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 <   ALTER TABLE ONLY public.ensfa_iseg DROP CONSTRAINT carrera;
       public          postgres    false    414    4658    404            |           2606    22759    ensfa_isem carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 <   ALTER TABLE ONLY public.ensfa_isem DROP CONSTRAINT carrera;
       public          postgres    false    416    4658    404                       2606    22764    ensfa_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 E   ALTER TABLE ONLY public.ensfa_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    422    4658    404            x           2606    22769    ensfa_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 B   ALTER TABLE ONLY public.ensfa_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    410    4658    404            w           2606    22774    ensfa_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    408    4658    404            �           2606    22779    ensfa_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 H   ALTER TABLE ONLY public.ensfa_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    404    424    4658            �           2606    22784    ensfa_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4658    426    404            }           2606    22789    ensfa_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ensfa_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4658    418    404            �           2606    22794    ensfa_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ensfa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ensfa_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    404    4658    434            �           2606    22799    upa_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 D   ALTER TABLE ONLY public.upa_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4690    452    436            �           2606    22804    upa_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 D   ALTER TABLE ONLY public.upa_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    438    4690    436            �           2606    22809    upa_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    4690    436    464            �           2606    22814    upa_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.upa_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4690    436    444            �           2606    22819    upa_iseg carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.upa_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 :   ALTER TABLE ONLY public.upa_iseg DROP CONSTRAINT carrera;
       public          postgres    false    436    4690    446            �           2606    22824    upa_isem carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.upa_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 :   ALTER TABLE ONLY public.upa_isem DROP CONSTRAINT carrera;
       public          postgres    false    436    448    4690            �           2606    22829    upa_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 C   ALTER TABLE ONLY public.upa_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4690    454    436            �           2606    22834    upa_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 @   ALTER TABLE ONLY public.upa_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    4690    442    436            �           2606    22839    upa_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    440    436    4690            �           2606    22844    upa_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    458    4690    436            �           2606    22849    upa_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 G   ALTER TABLE ONLY public.upa_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    450    4690    436            �           2606    22854    upa_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 E   ALTER TABLE ONLY public.upa_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    4690    466    436            �           2606    22859    uta_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 D   ALTER TABLE ONLY public.uta_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    488    4722    468            �           2606    22864    uta_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 D   ALTER TABLE ONLY public.uta_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    4722    470    468            �           2606    22869    uta_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 I   ALTER TABLE ONLY public.uta_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    468    4722    502            �           2606    22874    uta_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    500    4722    468            �           2606    22879    uta_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 F   ALTER TABLE ONLY public.uta_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    504    468    4722            �           2606    22884    uta_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 F   ALTER TABLE ONLY public.uta_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    468    476    4722            �           2606    22889    uta_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 >   ALTER TABLE ONLY public.uta_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    4722    480    468            �           2606    22894    uta_iseg_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.uta_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 <   ALTER TABLE ONLY public.uta_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    468    478    4722            �           2606    22899    uta_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 >   ALTER TABLE ONLY public.uta_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    468    484    4722            �           2606    22904    uta_isem_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.uta_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 <   ALTER TABLE ONLY public.uta_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    482    468    4722            �           2606    22909    uta_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 C   ALTER TABLE ONLY public.uta_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    490    4722    468            �           2606    22914    uta_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 @   ALTER TABLE ONLY public.uta_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    468    4722    474            �           2606    22919    uta_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    472    468    4722            �           2606    22924    uta_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 F   ALTER TABLE ONLY public.uta_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    492    468    4722            �           2606    22929    uta_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    468    494    4722            �           2606    22934    uta_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 G   ALTER TABLE ONLY public.uta_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4722    468    486            �           2606    22939    utc_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utc_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4762    528    508            �           2606    22944    utc_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utc_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    4762    510    508            �           2606    22949    utc_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utc_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    508    4762    542            �           2606    22954    utc_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    508    4762    540            �           2606    22959    utc_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utc_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    508    4762    546            �           2606    22964    utc_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utc_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    4762    508    544            �           2606    22969    utc_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utc_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    508    516    4762            �           2606    22974    utc_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utc_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    508    4762    520            �           2606    22979    utc_iseg_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utc_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utc_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    518    4762    508            �           2606    22984    utc_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utc_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    524    4762    508            �           2606    22989    utc_isem_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utc_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utc_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    522    508    4762            �           2606    22994    utc_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 C   ALTER TABLE ONLY public.utc_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    508    4762    530            �           2606    22999    utc_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 @   ALTER TABLE ONLY public.utc_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    514    4762    508            �           2606    23004    utc_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    508    512    4762            �           2606    23009    utc_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utc_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    508    4762    532            �           2606    23014    utc_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4762    534    508            �           2606    23019    utc_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utc_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utc_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    526    4762    508            �           2606    23024    utma_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utma_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    568    548    4802            �           2606    23029    utma_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utma_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    550    4802    548            �           2606    23034     utma_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utma_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    4802    548    582            �           2606    23039    utma_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utma_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    548    586    4802            �           2606    23044    utma_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utma_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    548    584    4802            �           2606    23049    utma_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    580    4802    548            �           2606    23054    utma_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utma_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    548    4802    556            �           2606    23059    utma_iseg_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utma_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    558    548    4802            �           2606    23064    utma_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utma_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    4802    564    548            �           2606    23069    utma_isem_l carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utma_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    548    4802    562            �           2606    23074    utma_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utma_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4802    570    548            �           2606    23079    utma_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 A   ALTER TABLE ONLY public.utma_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    548    4802    554            �           2606    23084    utma_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    552    548    4802            �           2606    23089    utma_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utma_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    572    4802    548            �           2606    23094    utma_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    548    574    4802            �           2606    23099    utma_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utma_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4802    566    548            �           2606    23104    utr_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utr_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4842    608    588            �           2606    23109    utr_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utr_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    4842    590    588            �           2606    23114    utr_tasa_puntaje_egetsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utr_tasa_puntaje_egetsu DROP CONSTRAINT carrera;
       public          postgres    false    4842    622    588            �           2606    23119    utr_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    4842    588    620            �           2606    23124    utr_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 H   ALTER TABLE ONLY public.utr_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    4842    626    588            �           2606    23129    utr_tasa_puntaje_exl carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_puntaje_exl
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utr_tasa_puntaje_exl DROP CONSTRAINT carrera;
       public          postgres    false    4842    624    588            �           2606    23134    utr_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utr_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    4842    588    596            �           2606    23139    utr_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utr_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    588    600    4842            �           2606    23144    utr_iseg_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utr_iseg_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utr_iseg_l DROP CONSTRAINT carrera;
       public          postgres    false    598    588    4842            �           2606    23149    utr_isem_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_isem_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utr_isem_tsu DROP CONSTRAINT carrera;
       public          postgres    false    588    604    4842            �           2606    23154    utr_isem_l carrera    FK CONSTRAINT        ALTER TABLE ONLY public.utr_isem_l
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 <   ALTER TABLE ONLY public.utr_isem_l DROP CONSTRAINT carrera;
       public          postgres    false    588    602    4842            �           2606    23159    utr_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 C   ALTER TABLE ONLY public.utr_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    588    610    4842            �           2606    23164    utr_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 @   ALTER TABLE ONLY public.utr_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    588    4842    594            �           2606    23169    utr_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    592    4842    588            �           2606    23174    utr_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 F   ALTER TABLE ONLY public.utr_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    588    4842    612            �           2606    23179    utr_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    588    4842    614            �           2606    23184    utr_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utr_carreras(idcarrera);
 G   ALTER TABLE ONLY public.utr_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    4842    606    588            K           2606    23189    ena_tasa_cobertura carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_cobertura
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 D   ALTER TABLE ONLY public.ena_tasa_cobertura DROP CONSTRAINT carrera;
       public          postgres    false    4562    324    308            C           2606    23194    ena_eficiencia_ire carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_eficiencia_ire
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 D   ALTER TABLE ONLY public.ena_eficiencia_ire DROP CONSTRAINT carrera;
       public          postgres    false    310    308    4562            Q           2606    23199    ena_tasa_puntaje_egel carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_egel
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_tasa_puntaje_egel DROP CONSTRAINT carrera;
       public          postgres    false    308    336    4562            R           2606    23204    ena_tasa_puntaje_ex carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_puntaje_ex
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 E   ALTER TABLE ONLY public.ena_tasa_puntaje_ex DROP CONSTRAINT carrera;
       public          postgres    false    4562    308    338            G           2606    23209    ena_indice_servicios carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_servicios
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ena_indice_servicios DROP CONSTRAINT carrera;
       public          postgres    false    316    4562    308            H           2606    23214    ena_iseg carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.ena_iseg
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 :   ALTER TABLE ONLY public.ena_iseg DROP CONSTRAINT carrera;
       public          postgres    false    318    4562    308            I           2606    23219    ena_isem carrera    FK CONSTRAINT     }   ALTER TABLE ONLY public.ena_isem
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 :   ALTER TABLE ONLY public.ena_isem DROP CONSTRAINT carrera;
       public          postgres    false    4562    320    308            L           2606    23224    ena_tasa_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 C   ALTER TABLE ONLY public.ena_tasa_docentes DROP CONSTRAINT carrera;
       public          postgres    false    326    308    4562            E           2606    23229    ena_indice_ptc carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_ptc
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 @   ALTER TABLE ONLY public.ena_indice_ptc DROP CONSTRAINT carrera;
       public          postgres    false    308    314    4562            D           2606    23234    ena_indice_colocacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_colocacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_indice_colocacion DROP CONSTRAINT carrera;
       public          postgres    false    4562    312    308            M           2606    23239    ena_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ena_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4562    328    308            N           2606    23244    ena_tasa_mov_docentes carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_mov_docentes
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_tasa_mov_docentes DROP CONSTRAINT carrera;
       public          postgres    false    4562    330    308            J           2606    23249    ena_tasa_acreditacion carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_acreditacion
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.ena_carreras(idcarrera);
 G   ALTER TABLE ONLY public.ena_tasa_acreditacion DROP CONSTRAINT carrera;
       public          postgres    false    308    4562    322            �           2606    23254    upa_tasa_mov_alumnos carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_mov_alumnos
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.upa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.upa_tasa_mov_alumnos DROP CONSTRAINT carrera;
       public          postgres    false    4690    436    456            �           2606    23259    utma_iseg_tsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_iseg_tsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.utma_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.utma_iseg_tsu DROP CONSTRAINT carrera;
       public          postgres    false    4802    560    548            �           2606    23264    uta_tasa_puntaje_extsu carrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu
    ADD CONSTRAINT carrera FOREIGN KEY (carrera) REFERENCES public.uta_carreras(idcarrera);
 H   ALTER TABLE ONLY public.uta_tasa_puntaje_extsu DROP CONSTRAINT carrera;
       public          postgres    false    506    4722    468                       2606    20670 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    229    231    4461                       2606    20675 ?   django_admin_log django_admin_log_user_id_c564eba6_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_admin_mod FOREIGN KEY (user_id) REFERENCES public.admin_module_usuarios("IDUsuario") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_admin_mod;
       public          postgres    false    4417    216    229            >           2606    23279    crena_tasa_pe_asat pe    FK CONSTRAINT        ALTER TABLE ONLY public.crena_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.crena_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.crena_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    300    276    4530            ?           2606    23284    crena_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.crena_carreras(idcarrera);
 F   ALTER TABLE ONLY public.crena_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    276    4530    302            `           2606    23289    enrjsm_tasa_pe_asat pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrjsm_carreras(idcarrera);
 @   ALTER TABLE ONLY public.enrjsm_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    364    340    4594            a           2606    23294    enrjsm_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrjsm_carreras(idcarrera);
 G   ALTER TABLE ONLY public.enrjsm_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    366    340    4594            q           2606    23299    enrr_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.enrr_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrr_carreras(idcarrera);
 >   ALTER TABLE ONLY public.enrr_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    396    372    4626            r           2606    23304    enrr_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.enrr_carreras(idcarrera);
 E   ALTER TABLE ONLY public.enrr_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    372    4626    398            �           2606    23309    ensfa_tasa_pe_asat pe    FK CONSTRAINT        ALTER TABLE ONLY public.ensfa_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ensfa_carreras(idcarrera);
 ?   ALTER TABLE ONLY public.ensfa_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    428    404    4658            �           2606    23314    ensfa_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ensfa_carreras(idcarrera);
 F   ALTER TABLE ONLY public.ensfa_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    4658    404    430            �           2606    23319    upa_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.upa_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.upa_carreras(idcarrera);
 =   ALTER TABLE ONLY public.upa_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    4690    436    460            �           2606    23324    upa_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.upa_carreras(idcarrera);
 D   ALTER TABLE ONLY public.upa_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    436    4690    462            �           2606    23329    uta_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.uta_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.uta_carreras(idcarrera);
 =   ALTER TABLE ONLY public.uta_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    468    4722    496            �           2606    23334    uta_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.uta_carreras(idcarrera);
 D   ALTER TABLE ONLY public.uta_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    498    468    4722            �           2606    23339    utc_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.utc_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utc_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utc_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    4762    508    536            �           2606    23344    utc_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utc_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utc_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    508    538    4762            �           2606    23349    utma_tasa_pe_asat pe    FK CONSTRAINT     }   ALTER TABLE ONLY public.utma_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utma_carreras(idcarrera);
 >   ALTER TABLE ONLY public.utma_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    576    548    4802            �           2606    23354    utma_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utma_carreras(idcarrera);
 E   ALTER TABLE ONLY public.utma_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    578    548    4802            �           2606    23359    utr_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.utr_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utr_carreras(idcarrera);
 =   ALTER TABLE ONLY public.utr_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    4842    616    588            �           2606    23364    utr_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.utr_carreras(idcarrera);
 D   ALTER TABLE ONLY public.utr_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    4842    618    588            O           2606    23369    ena_tasa_pe_asat pe    FK CONSTRAINT     {   ALTER TABLE ONLY public.ena_tasa_pe_asat
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ena_carreras(idcarrera);
 =   ALTER TABLE ONLY public.ena_tasa_pe_asat DROP CONSTRAINT pe;
       public          postgres    false    308    4562    332            P           2606    23374    ena_tasa_pe_pertinencia pe    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia
    ADD CONSTRAINT pe FOREIGN KEY (pe) REFERENCES public.ena_carreras(idcarrera);
 D   ALTER TABLE ONLY public.ena_tasa_pe_pertinencia DROP CONSTRAINT pe;
       public          postgres    false    4562    308    334            5           2606    23384 !   crena_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.crena_carreras(idcarrera);
 K   ALTER TABLE ONLY public.crena_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    276    4530    282            W           2606    23389 "   enrjsm_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.enrjsm_carreras(idcarrera);
 L   ALTER TABLE ONLY public.enrjsm_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    340    346    4594            h           2606    23394     enrr_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.enrr_carreras(idcarrera);
 J   ALTER TABLE ONLY public.enrr_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    372    4626    378            y           2606    23399 !   ensfa_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.ensfa_carreras(idcarrera);
 K   ALTER TABLE ONLY public.ensfa_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    404    410    4658            �           2606    23404    upa_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.upa_carreras(idcarrera);
 I   ALTER TABLE ONLY public.upa_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    442    436    4690            �           2606    23409    uta_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.uta_carreras(idcarrera);
 I   ALTER TABLE ONLY public.uta_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    4722    468    474            �           2606    23414    utc_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utc_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utc_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    4762    508    514            �           2606    23419     utma_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utma_carreras(idcarrera);
 J   ALTER TABLE ONLY public.utma_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    554    4802    548            �           2606    23424    utr_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.utr_carreras(idcarrera);
 I   ALTER TABLE ONLY public.utr_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    4842    594    588            F           2606    23429    ena_indice_ptc pe_perteneciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_indice_ptc
    ADD CONSTRAINT pe_perteneciente FOREIGN KEY (pe_perteneciente) REFERENCES public.ena_carreras(idcarrera);
 I   ALTER TABLE ONLY public.ena_indice_ptc DROP CONSTRAINT pe_perteneciente;
       public          postgres    false    314    4562    308            1           2606    23500    crena_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.crena_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.admin_module_universidades("IDUniversidad") NOT VALID;
 D   ALTER TABLE ONLY public.crena_carreras DROP CONSTRAINT universidad;
       public          postgres    false    276    4414    214            B           2606    23505    ena_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.ena_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.admin_module_universidades("IDUniversidad") NOT VALID;
 B   ALTER TABLE ONLY public.ena_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4414    308    214            S           2606    23510    enrjsm_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrjsm_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.admin_module_universidades("IDUniversidad") NOT VALID;
 E   ALTER TABLE ONLY public.enrjsm_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4414    340    214            d           2606    23515    enrr_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrr_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.admin_module_universidades("IDUniversidad") NOT VALID;
 C   ALTER TABLE ONLY public.enrr_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4414    214    372            u           2606    23520    ensfa_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.ensfa_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.admin_module_universidades("IDUniversidad") NOT VALID;
 D   ALTER TABLE ONLY public.ensfa_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4414    404    214            �           2606    23525    upa_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.upa_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.admin_module_universidades("IDUniversidad") NOT VALID;
 B   ALTER TABLE ONLY public.upa_carreras DROP CONSTRAINT universidad;
       public          postgres    false    436    214    4414            �           2606    23530    uta_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.uta_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.admin_module_universidades("IDUniversidad") NOT VALID;
 B   ALTER TABLE ONLY public.uta_carreras DROP CONSTRAINT universidad;
       public          postgres    false    468    4414    214            �           2606    23535    utc_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utc_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.admin_module_universidades("IDUniversidad") NOT VALID;
 B   ALTER TABLE ONLY public.utc_carreras DROP CONSTRAINT universidad;
       public          postgres    false    214    4414    508            �           2606    23540    utma_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utma_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.admin_module_universidades("IDUniversidad") NOT VALID;
 C   ALTER TABLE ONLY public.utma_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4414    214    548            �           2606    23545    utr_carreras universidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.utr_carreras
    ADD CONSTRAINT universidad FOREIGN KEY (universidad) REFERENCES public.admin_module_universidades("IDUniversidad") NOT VALID;
 B   ALTER TABLE ONLY public.utr_carreras DROP CONSTRAINT universidad;
       public          postgres    false    4414    214    588                       2606    20680 S   utna_module_utna_carreras utna_module_utna_car_Universidad_id_5259bb1d_fk_admin_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_carreras
    ADD CONSTRAINT "utna_module_utna_car_Universidad_id_5259bb1d_fk_admin_mod" FOREIGN KEY ("Universidad_id") REFERENCES public.admin_module_universidades("IDUniversidad") DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.utna_module_utna_carreras DROP CONSTRAINT "utna_module_utna_car_Universidad_id_5259bb1d_fk_admin_mod";
       public          postgres    false    4414    214    236                       2606    20685 U   utna_module_utna_eficiencia_ire utna_module_utna_efi_Carrera_id_e1a3efef_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire
    ADD CONSTRAINT "utna_module_utna_efi_Carrera_id_e1a3efef_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_eficiencia_ire DROP CONSTRAINT "utna_module_utna_efi_Carrera_id_e1a3efef_fk_utna_modu";
       public          postgres    false    4470    236    238                       2606    20690 X   utna_module_utna_indice_colocacion utna_module_utna_ind_Carrera_id_2d3cd102_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion
    ADD CONSTRAINT "utna_module_utna_ind_Carrera_id_2d3cd102_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_indice_colocacion DROP CONSTRAINT "utna_module_utna_ind_Carrera_id_2d3cd102_fk_utna_modu";
       public          postgres    false    236    4470    240            !           2606    20695 W   utna_module_utna_indice_servicios utna_module_utna_ind_Carrera_id_f85c6d0a_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios
    ADD CONSTRAINT "utna_module_utna_ind_Carrera_id_f85c6d0a_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_indice_servicios DROP CONSTRAINT "utna_module_utna_ind_Carrera_id_f85c6d0a_fk_utna_modu";
       public          postgres    false    4470    244    236                       2606    20700 Q   utna_module_utna_indice_ptc utna_module_utna_ind_Carrera_id_fa143864_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc
    ADD CONSTRAINT "utna_module_utna_ind_Carrera_id_fa143864_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.utna_module_utna_indice_ptc DROP CONSTRAINT "utna_module_utna_ind_Carrera_id_fa143864_fk_utna_modu";
       public          postgres    false    236    242    4470                        2606    20705 [   utna_module_utna_indice_ptc utna_module_utna_ind_PE_Pertenecientes_id_03ec3eea_fk_utna_modu    FK CONSTRAINT       ALTER TABLE ONLY public.utna_module_utna_indice_ptc
    ADD CONSTRAINT "utna_module_utna_ind_PE_Pertenecientes_id_03ec3eea_fk_utna_modu" FOREIGN KEY ("PE_Pertenecientes_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_indice_ptc DROP CONSTRAINT "utna_module_utna_ind_PE_Pertenecientes_id_03ec3eea_fk_utna_modu";
       public          postgres    false    4470    242    236            "           2606    20710 M   utna_module_utna_iseg_l utna_module_utna_ise_Carrera_id_6038bc21_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_l
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_6038bc21_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.utna_module_utna_iseg_l DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_6038bc21_fk_utna_modu";
       public          postgres    false    4470    246    236            %           2606    20715 O   utna_module_utna_isem_tsu utna_module_utna_ise_Carrera_id_b028db55_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_isem_tsu
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_b028db55_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.utna_module_utna_isem_tsu DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_b028db55_fk_utna_modu";
       public          postgres    false    4470    236    252            #           2606    20720 O   utna_module_utna_iseg_tsu utna_module_utna_ise_Carrera_id_c254dc59_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_c254dc59_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.utna_module_utna_iseg_tsu DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_c254dc59_fk_utna_modu";
       public          postgres    false    4470    236    248            $           2606    20725 M   utna_module_utna_isem_l utna_module_utna_ise_Carrera_id_e6ccdd20_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_isem_l
    ADD CONSTRAINT "utna_module_utna_ise_Carrera_id_e6ccdd20_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.utna_module_utna_isem_l DROP CONSTRAINT "utna_module_utna_ise_Carrera_id_e6ccdd20_fk_utna_modu";
       public          postgres    false    4470    236    250            .           2606    20730 Z   utna_module_utna_tasa_puntaje_egetsu utna_module_utna_tas_Carrera_id_1aa960eb_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_1aa960eb_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egetsu DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_1aa960eb_fk_utna_modu";
       public          postgres    false    270    4470    236            -           2606    20735 X   utna_module_utna_tasa_puntaje_egel utna_module_utna_tas_Carrera_id_58649386_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_58649386_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_egel DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_58649386_fk_utna_modu";
       public          postgres    false    4470    268    236            *           2606    20740 X   utna_module_utna_tasa_mov_docentes utna_module_utna_tas_Carrera_id_641d558f_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_641d558f_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_docentes DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_641d558f_fk_utna_modu";
       public          postgres    false    4470    236    262            /           2606    20745 W   utna_module_utna_tasa_puntaje_exl utna_module_utna_tas_Carrera_id_869e1045_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_869e1045_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_exl DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_869e1045_fk_utna_modu";
       public          postgres    false    4470    236    272            )           2606    20750 W   utna_module_utna_tasa_mov_alumnos utna_module_utna_tas_Carrera_id_8af85fe9_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_8af85fe9_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_mov_alumnos DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_8af85fe9_fk_utna_modu";
       public          postgres    false    4470    236    260            (           2606    20755 T   utna_module_utna_tasa_docentes utna_module_utna_tas_Carrera_id_b50d6d4e_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_b50d6d4e_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_docentes DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_b50d6d4e_fk_utna_modu";
       public          postgres    false    4470    236    258            0           2606    20760 Y   utna_module_utna_tasa_puntaje_extsu utna_module_utna_tas_Carrera_id_b7e02192_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_b7e02192_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_puntaje_extsu DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_b7e02192_fk_utna_modu";
       public          postgres    false    4470    236    274            &           2606    20765 X   utna_module_utna_tasa_acreditacion utna_module_utna_tas_Carrera_id_f0f67dad_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_f0f67dad_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_acreditacion DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_f0f67dad_fk_utna_modu";
       public          postgres    false    4470    236    254            '           2606    20770 U   utna_module_utna_tasa_cobertura utna_module_utna_tas_Carrera_id_f1f71131_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura
    ADD CONSTRAINT "utna_module_utna_tas_Carrera_id_f1f71131_fk_utna_modu" FOREIGN KEY ("Carrera_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_cobertura DROP CONSTRAINT "utna_module_utna_tas_Carrera_id_f1f71131_fk_utna_modu";
       public          postgres    false    256    4470    236            ,           2606    20775 U   utna_module_utna_tasa_pe_pertinencia utna_module_utna_tas_PE_id_3d5adf8a_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia
    ADD CONSTRAINT "utna_module_utna_tas_PE_id_3d5adf8a_fk_utna_modu" FOREIGN KEY ("PE_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_pertinencia DROP CONSTRAINT "utna_module_utna_tas_PE_id_3d5adf8a_fk_utna_modu";
       public          postgres    false    266    4470    236            +           2606    20780 N   utna_module_utna_tasa_pe_asat utna_module_utna_tas_PE_id_82792736_fk_utna_modu    FK CONSTRAINT     �   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat
    ADD CONSTRAINT "utna_module_utna_tas_PE_id_82792736_fk_utna_modu" FOREIGN KEY ("PE_id") REFERENCES public.utna_module_utna_carreras("IDCarrera") DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.utna_module_utna_tasa_pe_asat DROP CONSTRAINT "utna_module_utna_tas_PE_id_82792736_fk_utna_modu";
       public          postgres    false    236    264    4470            y   >  x���Mn�0���)|T��%J��誛�3 K���Q]T����Mi`�����=�֫I��z��t�X��d�a���dۂS`4Z�.+Z�t����/��^C=�&���9z�����qm��F,�=�5�E��_T!�S���������|蔽��B�qA�b�V����n(6Mh��d����)�j��%�S䬚���S1k�'Qid�o:[��<�J�<�'�U�r����x摐���S��S�Zi,^�A>���h���T�Y�)�ȧ��%�&��ȅNT`}LS��x��(��/��d      {   �  x�u�I�����q�_��̶VCkr ���JNr��҃`��+֮�P��<����*v���W�h#�x�&Ar�<�A&>!��3��_ )�-���b�ԞsT�<���u�������� ���!5x��! "v ����w/����~�*�1�!;���!�,ER�Wዾ�U��4��_�W��t7��o���t��֘1��L���n�
��x��
��	3��h��cY�W]hb)����o�_l�7��ōY�����oF���$�<�bJcK3_�ϲ������=�XϡZ/��9�	����MZ���R?Vas�b��l�`��"y�`}���鉗9dzdhDrC�$�:�5\�nR���Y�56 1��"; R�d��@�t�\'U�jZ6-��N>��j���z{a��n�u�����IY���t�{7�#[���Lҕo9�B��XJr">�k�b�<�嚡�i�53��k>w.d��NT��zR}ʺn)iR=2�q{Y`:��[�.���/��
��_9�X'0S��9=e��vCjF��Z���T־OgQ��2F3��)����#�,G>y�{8�3M�pV!�����c%����D�[L�}�^ST�m��}�s�4J�H�)W����a�f�кr8X=4v�!��Ȏ�~-��gA]�n��A�9ܜ�����$�bq00�3�w�$��٤U��iZ>��p>���,)v�ˣ�!�`>7��3m�C������9���qR߉��M��AU�P�bi/݄���%�77�h��p<+`��֕C4�и���z�{�q�k��5ϱ"z"��.��BNn����>�d�V�z/Jau�MR�Z�(˃y{��i��g9�7�IG � 3$d��u���3M��y^7�����k-w�V ��9i�QL}�
4��u��[���J��J�vUn�O�3�^����R�� ��r=���0�7��o�H>ND鴶e���|��d.Z�L�w�:�+�?{ !�6�N��1�y��C'r�Ã��0M!��}��g-�����������hU�'�S��Z޸��0�A]Xz�Q��K�(���4��֕�T�����!) ��~�=��W��&�7K2ݥ�\�&�&�C�p����T��{��e�3{Wbk����عn=�@��76%����@�� �d�4CA���zg�1?��̉Yv؜�4��X���(�"��v`jӮ�ߤ�Y�۴pm+�
��3�S�+�������P�z����D���x�i+MB[˜Hϊ7�_�v~8��P:�W٥
��̌D����RI�������z f��<F�Bȡ�%�|�c{vb	�t7�v��'�[�*�3A����Mfmp��S��.�=>gyq��* T��� }�"�i��QKr�c{ԣ�f��[�۠����X`�F�2O�[k���" ��E�J���XW'�s^�$u���gG������9_)]=��n�B
!�߇N�3���Q�����#���g�" �`��a�#�9كj2��iJ۹� L���ƻ5�DR�����`z|h�!F4~ۑѷ��#Lcє�x)���0��ah�!$�?�ۭMm��qq<I��=F4��YX>_Y�;��~��]?+��~|�i�9j��AO�{do� ��8V�z�D�����y@7��oW~v�l�z����a�='�+~I'��]���^��妇Gv<0o�}}����Q���*|�n��ŪD!�Aa��zP2'3�ԩ�,��b�
js�|�Ϋ��>|��s������K�����/�z��O��S[HdQ�N�k:䛒�����P�l����;�r�[UX:vVM%�c~���髯hA����d��w����g��m�F긵Ē������D'�_��y����K���m���B:@d�b�鞿������d��D���s�}�"/�=Fb��#�8�C��0�|P@�9F�;������]�      }      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �   �  x��XK��8\K����z��ˉp�X�a����ۏz?�{SU�23�e��s�g3��^�㣰�2�TF��7�ڿԥ���4��"�v����mo܎������@�� ������>�y��A��Z:�'h�;�=C�%YDH�஻��4���������x|���"$�	�2Y� �"\W��v�]��|ZU{#�h=Ѧ�v8�B�#�F��"�Q��~����������@�	|�+��`�^���d-���bvG����N�ϲ��K����K���?B�� �}x�:=��@����4~�w"z�#�8��G�p�)��d(`��Z��[�6�d�fV�ϝ6�x�+��sF0KH�]�I�9!����1���,��~>_���ko�a����i*��uUf�ఢ�Q�;�3�N,��R�F�9�2�^�fˆ����;y�w	9������������p�L>'b�d�����K7ء�e���{]��x$)�Q�rIj<&�V�AIZ4+�ț�~/ʔ<��Bקw�D��F?��#ҥ6�%@$��7*k���?o�}l�g�������u��G�>32,�$ujF����x�ftH0X%Ӿ^��_��4j!�p����"b4�N�u��̮�k\�"Ĳkd�6�z$��@�-�,�$�oW(�2�N�V�t2|"�mڎ�]��&�0'2�~�O�Et6:Pȶ&R`��LS">��v,�v��ni�uC5g� �էlO2�6&by`�Lw2�-�ͅ�����g7o��,4&���KhGĂ�&kB�Ic%m���v�+���g�� ���B���1Xg<��д�V�Ï[���6�PI�Bf,���̱�.�|��q6B�JCf��Eh gs8��(��fp�  O�;4k�n�w�[�f;}v�3��T�v���/D4���B�A#3��ȁI�}+@�K�ʊE��Uگ0M��3�}
3��=��O��f�,�/�|ڱۭK˚M�n�UZ�dah($mL����+�,�"�"lg��'���u�U%ؙ�JK��8���5q�Q0�7q�� �˛��]��_�oA�@��f��:4��%I忩��F%�忮��v%i徳�̦�\��U+��N#�j1�79�J�]�)��hU�-[L'�Ϫ:t�>�4w���6�2�Z�P�mƈ�nNJ�c,MJ�&"З�3B�a��_ʹ~Z���w]�E�	�,�6[��Z���E�U      �      x������ � �      �   V   x�3�4�tM)MNL�<�9O��� 5931�ӵ89?'�(�*1%��'395(\RZ��i�e��'�(5��.ct]��@��x���qqq ��8�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ~   x��1
�0 �99�ǵ(�W�d�N:�B�G!c��G�^�noyZ�ºT]�j@m�i���u�>�Z��8����=Y��]L!-��,Ӻ�-�����q�|��^X"���~����]I)��l"�      �   4  x���mn� @��L�~�e�����T��GI�NlR����ωh'���Ϡ��.f���肇ղ3p�3��	>4�g�?o`#"Ռ���mMMᓼ�g�=��Ng؋�<�)�<Ҳ6�L��c	#�9���i�3������QTNΓ7A�>W.	�L�m0�
E��?(��C�6���m�0����� h��Kh.��.Ҥ����A5��P�T�i���F�3�#�ѕ�"���+4'���6af�L5$�[yA��vL�zo_ȩ��3y�Jc��ǹQ����h˼��!3�՗' ��Dy      �   �  x����r�0�����}'�y��hP�R��$2�s��b����k�����V���5�%�R�M� ���&��? � �7�}�� �D`�."�
f�oF_��F9=�m�Ђ�;=��[��P"y	 K R�O&�ф��h��	ՠ�Uo\���IbLbQPtA�#j��bm���%,�@�9�\�i���6A��|A�sD�cR��l�k�e� 
�
D,�{�k�aiF�*�]aP�Iaȅ��yӽmu�!*ݶʄ��L��3�eA��'�`��MinH��j�B�
݅"���>QQ]��x�r&���B��1Kd���Ǚ���x6`e,V�輪g�-�sF�D���v�N|;���<!.�Q\6�ގ���jX�O!�X4�,||��\�/n�f�,��W� �)6�M*����N5/�6W�������$�t�>�F��obR֖ p�����tv����Os���	���!�5�Z" @�)�	�DPD9�S���m��P���d�ѹ7M)`�j��nJN��<^fQ�9![G"UX�枫15j�!�Ǝ��~�,�Ү�a�������
�k���U
燧�,�{31�.g�n.��$�l��_'6�#���$IG�B�	�:�[~n�i0{P����6��_�2�)N�ϷUgQ����\�垏j�*U����T����� i6��]��,����t�W)�'��U?u:xcҭ��dA����a���@��       �   �  x���ێ�H ��������((�;EDQ�&��ID��O�f���
���|`I�PK0~Dq7b(N,��ޞ,�5K��-��˹�H��z�M<R݉$��硚���s�<�H��KTFo"�Y���`�{��]lS�[���%��������$\N��9�ha�:���9e�VDU��ޙ�޹�(ɔ�ި��C��vQ%e�/K�^�ap,s��a�RbQ�!��LAr
�jnX�^]q���Ԅ��x���_ ����J2�2�fX�@����-Ǉ�!��g;<�#���^���G�X�c1����ƿuz�!�7�_���9߬2�}}u�I��~�����>Yٶe�y�ܹT��r��[��[ox��cc��ؒ���̞�ZT�0�͖H��"?�[G�?���iD�\�&�����~\	_B\c��/�5��d-���(]��l�=�������qc3�R�������_!�	D�2D3(��D��K����u< �Cۅ͔�1����p��}����k"����&Ֆ��l��S�Zɰ+m;��_"�	�2/�x� ��D����2����,���VB�Ȼ�'^d�NN+��5vtk�P�i�K_���4\SO�EV
OC8y��H� ���������.AQ�m� ���QR4��(��~"��8�<�;t�/���,�XE'�z�+g=�tN$-
�Lm��J��'B�'_>2&3*BL�7ѿ�����6Y�I      �   U   x�3��tM)MNL�<�9O�3/3931�ӵ89?'�(�*1%��'395(\RZ��i�e��%�(5��.ct]��@��x���qqq E�8d      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   @   x�3��tM)MNL�<�9O!�(37�(3�ӵ89?ȪJL����LN�K�L,)-J������� H9      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      	      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �         M   x�3�44�tM)MNL�<�9O�������DN�����Ģ̪Ĕ|N���Լ��ĒҢDN.#4=E��@��5��qqq � &            x������ � �            x������ � �            x������ � �            x������ � �      !      x������ � �      #      x������ � �      %      x������ � �      '      x������ � �      )      x������ � �      +      x������ � �      -      x������ � �      /      x������ � �      1      x������ � �      3      x������ � �      5      x������ � �      7   �   x���=N�0��9Ŝ ����U��@lI3��hV�xe�����Xq_l��X�z���Ԫ�U#��	e@8����pO`,�#;��4"�@c�F��W��t��T���8�q�5�f�G���M8`:9[�2Jl�X�V�����b�w?[G�p4hPJݛ��\���>��3���Ie����Hk)Ư�xÞ��3_�Թ���{LcW�i�����iQ�i�UU�1$i�      9      x������ � �      ;      x������ � �      =      x������ � �      ?      x������ � �      A      x������ � �      C      x������ � �      E      x������ � �      G      x������ � �      I      x������ � �      K      x������ � �      M      x������ � �      O      x������ � �      Q      x������ � �      S      x������ � �      U      x������ � �      W   �   x���=N�0Fk�>�j�� e�RDZhhiF��� ��m��؊#�bL�Y!0�����y�ٛ�p9�DL������'d�P�`�us�p?�K���_�f�ô�k�V�G�	=D{'�%'p$3ƪ������6��hG�?K����uf�1� �\E��GWN����I��u�J7_��ڭ�8��zB����8�Cv)�O�]_���=1-U~H�]~Z5M�Z���      Y      x������ � �      [   }  x�M�Q��0D�a1V�$������5B�S�ұ��OT!�Cm����Y)J�c�S�2�5�(O�}�>>�+�@��y�*Ͱ�>�N�?nԥb�}<��3��`�_�Hg��B2��t��eU��J�?,�NS�3Y� ~����%�P�ߔ�2d�tBl
���ҹX�:�1�Gf��YU:nUQ�9YqW�����kx2Z�a#�ւ�8gF�'+�oHA�Z�� R��xv�i�9�B���q\����[��-�;��fx��X3�r��$h�Bh�$~���̀x��mr�f(�v��s^͉{$��l�U͠/�����A	Mmu�f��N>4��l%�����ߌf@V,8s3g3��1�����a���p�      ]      x������ � �      _      x������ � �      a   u   x�}���0C�f�K���$�*�HO`�P�����e�2����ۃ����Cm�l�vsRA��o��|&U����|�PC�Kݑ�]~�nB~��:}5n��ߦ���
�/�      c   �   x�u�Q!��0]�.��9��`7M��f�g�.4d���	Vg;�٪�~|���/Ǥ]�,YP'Y]�Dr?�+�R-w����E����[jUC5��b8]����x�#v�S����?�D�+�
/����32Zr���Wc�7}�=      e      x������ � �      g      x������ � �      i      x������ � �      k   �  x�m�MN�0�דS� ��q�,*�(;6� R�@����tɂg��g��mP+%�y��sP��Ab�p7�+[�U��ĳ���~�$��ٲ��C[|Z���{����"R�qQ+���z�!I��R
�^R��fἏ*M1X�3N4-�[�I|��jY٨-�mR� ��A��싘@W��K[�����2�{\v��s������ݾ"9:�� D�*�%�:]vH?o�����7��U����΂);�<	�4ՓL�����}�/�<�(��y#w�ư�!�8S&m�����5��L��L��SB�w�|�#vd�Ne�ŉ��(�d椥��)�#M����:�n�F�����+!��HY�6y��	/Ez�d�LX���G�e��m|"���c��JO�u�Iy�>]DQ��[�Q      m      x������ � �      o      x������ � �      q   A   x�M͹ !��X.fۜMl�A��_"9^��a�,Q2E�!jtQ��U4I���܅�3�~{�      s      x������ � �      u      x������ � �      w   g  x����n�0���S�	��m��h�n*��8����l @�
Yʖ��@;{��ب$MO3v�L~���d�R�u��rp�������EHrx�T��{ІeY���AV~�ΰu����n�	x0���t�K�-(��0i�١pf �C��з�΍v�y��	,_Ǣ�(���5J��^��i�S5ZA�����eV�0s�n�j��'����_IY���6��'Le(rpR���j����)zw��Q�BԠj�K�Μ(\w�2%(Vg<��1d� g��o�gޙE���u���?��[�{j
�Ou�g�[�W�7I-
��~����l�B���5�֧i��F�@��=����[Y������k��(sԐ�U�k���+c^��5��+Xz�WN�(pp�`k�m����v�I_�����\oHU<�y>K�)}�1��d��H-JXO&_����b�J�OG�$�Oh�x+;�_�|lv6��y����f2��h���=��������MpO!�������A�i*�jlv	9���6��fss�Q�MY-ƛrL���aD���}U�e=M�;N�i��JnO+�I�j�r������Бz���=p��������U�/�f���@�      y      x������ � �      {   �  x�U�A�$!D�z����e��� 2+��,�(�bI�YF�S:��Qd|?�"�����<M�*�#8��i�T-7bذ�E���r2����m[5��1E�ŠhE�o�[4��Y���+ʬ�1g�-����_�Y��3*[��C����be�It7�6���:��F�o�8�'p��߉�����X$)���M��������S��5+O���0���Z�G֟�8����X���@�*��[�����o@�L����A�;�.m�:%�޲'�Q`�`/s��`9g�u�eEl��Jٽ٩SK���(N���
��ڇ$�dU���!=TU!�y5��af����e�D�$Q������L���w���S�]}\Uզ�.M�����/�j�){T�/)�Բa�U�I�����Yo���r�X�����ÕExv�ެ;�R�N��ԋ�G;ȼ;�
�Ý`U�μ���i�`;v���Ҷ��9v����@�cϕ#�����tnݽdkh ]Zo�����ë���a�����������2����w��BuI� 
�1op����G�:�,��(^mj���gr~�B�L���.��s�L����Um'v�٠6� �v)1Gp���w��1���np�[���9%���#/([�V�wr����2�.m`�,�͊����Q�*OoBZX�&��lMz��B1&�	�W���`�%xa^����$~�Z����fcn�r��9�cyj�J�A|�g�����9.Ѡ1�L?��֭􃰉�I�aM?�v����pw���n��IX6Oځʿ�~қv~��"�{�/�08|Y6�.a����Gb����K���Y� ׉�
KDI�ms��'�R����0�)06�a+�!����.3��=
��ޅ�-�"��<����7��U!��p��{�D|�1���|���rq(�F��\oqMs����O�_(@.�WW��X�c<?(8�SA�<:h�����|ɑ��Ԏ�B��<�����g-�>      }   �  x�͔;o1����h��y��g;ح�K����3Yr�H��6;x(�u�/V�9���n�(���{�Q���g��) >UP8�ɻl��Z�d�B��d�	JYs��6�q�bO*:�6`�ű;n&�55f^&
����:tcz]d��ʤz�1��,_���7A_o�j4I.�9-�2QS4n��ec�z�(�6��I��r�Zr�\�=������+�����%���nE�d`�,+^��;�.CLZ��a!A�Z>�O��s���\I|I1�[K�� �Qv�,�r���d�ߓAWht���<\��O*k�{gL+��lX�x��t��k��߭R�G���x�Y�w���+g�V���~�5�
�T��~Γ����bp�"���pN��V��ۂ���~�z�;ҙ��������y��7R��o�z��c�;����ݡ(�a=ɋ�2��˥��UĹ!���Q-[s���� nha��V�&#��aƶ�11���.:-���� �dG��P��f/�i�;�a^����waFjZ܈�K��qB�4f��rR�^%�R��+��f�e�Eϋ�!�r��������WK�wP���e0��.���g;I�h�$@\z��%��ӳ�a*���%���l���00JU���+Y��y��t: H�HT            x������ � �      �   �   x�MQ�� ��a|�Uq������iA�Q�=Ը5����V]��Z7��F��bW6<P��V��bt9
8�����La��q5l�����g���5�e���(�i=>c�0��$ٷd@���凧ħ,�})$l�C��9�]lq�߉Σ�V��_~��/`E\�����V�����M8�
Io��K,����E�}{��j)�_�U�      �   g   x����	�0C��0�v~�.�����C�B1��B��pu��F招&]���(*f?O�\X���pC0��4�*�3x�ܐ?[��R�GP�Y��3�c�W��Ff      �   �   x�}�[!E�a1up/��:JEǪic�@<<D@(�B%�+F�n�
F�b���y?�5�z�ks��1;��^F8�R�7��J�%Mlr��Q;-����@�_� e�ʑ`Tgp�)��U�f��r���! i�0*����!��H�      �   �   x��Q[� ��ØA[�w���cQ�-m�l� ���D1��A�t\ I�`�%��Dwsh���遫��j�
`�S��׾>p&���Pm*7m�X����.����;��6����K�����XYn�U�3�
c��~�����	���aU:      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�m�]nAǟ'��*4��y,H� ��7^�6*����@�3�b�kob�FB���~3�� �ࡹ �e����?��v�Z����n�̦���밾�>ί�����"�J:�`g*�yr��J<�cd�v8��=;�f��	�<g,���g��:��R�.�+��E5�qڥ�KS��m7��{��ns�I
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
]�BG�j����X�0R8f��)����*j�IL���2�X>3\ԝ�+L�iGu2H6�9��a���������$��n�$�%���ڔI�Ɠ.z	l�,x���&���V�0l��B�c��ņta,����&���Ǉ�j�|/D�      �      x������ � �      �      x������ � �      �   v   x�U��C! k3L��}`�L��L���4G�N���V[�Gϻ4��l�!W����Kt��͡4u�Ry-
-b��In�o�<��#��2yʓ�Q�A��])7��4�E��{^��R@�      �      x������ � �      �      x������ � �      �   �   x�=�K!C��0S��]��瘠vo��3$�a�.��TYQ��vP��+l�L$�U���&�-6!�1��_HMz����{�A:�����%ң�Xp�h�p]�3U���NB��p�~���ڨ4�_h�t?M��+��<)      �   �   x�E�[�D!D���� W|������BGM��*�}01Cx�q����"L�^5�u|b��:*�&KY}����{�+ɠ�_I�,��C��?�L�c��Ƌ���%{��xJ��2�������:i]Q�P~�-?��_k��d.|      �   r  x�}�An�0E��)r���BۥE*�DP���nF΀,9d;Tt���r�NҨ�������?S!�Z[���o�_!^�^0����r��^��?�"QobM� ��F���kL���=8G�P\a��)M~���S,���ld6�yd�xY���~�)g������hsR[5l�`D&�1眝�#������ߦ`�-��8y:��3J�B�v����n��\}q�ˣ��0���@��!�T&���nT㴯i�Q�F�"M@g!�yQ�$�c��\	�y���;�"�ԧv��E׽�,��wo�>��*4�5Z/�k��
��П�	�s��<lO�Cu�����z�ZK����e;^m�n�����(�~ ���      �      x������ � �      �   r  x�U�kr�0��a:�%Yw���Q`��Lf�������;�+�hk����Nkޯ�A{��z���794�����\�u*�
!�/C�L��ͅŀp�!��a� Dn���S����Hcø�q�Z��3m�i闖!y�ǰ!yI���H�5�$s��!�I�����F���׻Y�1�%cNä�+$خ��4^!�;��b�8�6༆�58���7�m�����n���9��N_���t�Fs��<��gP�����xd�qϣcx��:SQ�5D�}ה��A���&!̍id6�qH:��! RB�P��_��0�h�I]}�48=�y�<:<��'�X�`����i��)��)��@�D>e��f��Ӑ      �   �   x���Kj1 е�:Aif �,:%��U6�-��#M�L��M�E���U0�l[�B��m�&���F�vEH�a�6���Ү�?��9kx�OΜ0Q��F��g,�1����#�`��^�8�z�Lǅڏgh���/xbQ��8�`q��}f�HE���_ׇa>J�F�eu&?O*�]2տ7��Cخ�=%�5��(|�K������f��?�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�u��N�0�g�S� ŉ�6#�1�������3�b8�#��;�JU����.SN�Ғ(��}��.S���B
��Q�
Z�Q��J�J�bu=|ގ�[ZH�����K؈�%5�W����
��@�z\��QU�����}xy��k)����jZ��v�BP��y��F�۴�V`�gE�7�ӗ�<�<���͞�%䵰ǜ`oCy���������2n���8�u��u��y�%D/�[�4��e���܆��s�4�u�<�!�c_�2f�@�l,+�V.���;�/���T^a�7s�`��S�SA�r�!��6%C
�F�@�U3,�b߆ߥ�bY�pK�V,>��L+�G�s`SӮuԠ&���&��U��N��G4��jrܕ
�XŐD�&�3��>�?��~����Ǹ�~u�~����YC����&������n��k��Y      �      x������ � �      �      x������ � �      �   G   x�Mι�0���W���k5�
T���/�p��B�R��E���ԙ��2M^Ӣ���6*Ƅ<Kȇ2n�y"�@�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ^  x���An�0E��)|��@)�2
�D"鮛!�%c#ۨjw=PW!�8��4�.Q����̀�X�x,�Qf[�?,O����б��S��J���w�+�g6���X���Q��L�̺>zzgi�����=Z(���xbvh�f�ɑ���Gǅ��9�dY$q&��w�\ZS�k��༽4��y܁��:/)sxV�P���-E�ϒ.������(������1!��[�T���ˍ�X!bw������k�R&���ƿ�E���{"L���kB�.$o�{8�����6-4��h)Gd�jI%�u�6�H�<�ta;ڿ����c�W��DZ��߫�D���Z"&���^n�(��'*d      �      x������ � �      �   �   x�U��� ��Ŝ�ͳ��_�lH�#�A0��#�A��B�Q�X�����ݼ{D�޽�����~2G�$�_��_���祘Dm׈˒H�W꒜�\r@w��%�����4۝�lP%[5��z� ��b?�����9T<?"�p�6�      �   �   x�=�A
�0E��)�b�хH+(���A�dR�#���#�b�.��ϼ��3���j��Օb��3dJ8"�<1���'z���q���AƔ'3z���n�P �G�ԇ�{%�K{���@O	=	$h�NxKQ$qv�����zG�Hʳ��V��IP]SFw���H�      �      x������ � �      �   >   x�]��  C�eҒu��C �<���	"� �3}>�Go����~:�~��?nf��^      �   l   x�E��� C��0��ݥ��Q���a�<0Nd�` �"���V`]����I0��D�+��P/#�mN
��uv�[�^=����^�kk����'�?��L6��l��D� |j �      �   5   x�3�44�4202�4��3b0mh�g�	����!LX�@R���� CJ�      �   J   x�����0��0��(���������8?��9���"�c��%Ā/�e���ņ���ð�m�eb�ٻ���,�      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�e�;�0k|�	�2Mʜ �'U��$T {��~"``�����?�(h�D$(&X@���*]i��
�Q�p0����i`�izؒH<ENX�	#P�kS*�-߈�P�����pq��K�5t�3�p�j^��7/u������5
!o��19�|�k�2���d��4��x'���㳆��;p�ѥ}��Z�6u| �N����m�$Jm�      �      x������ � �      �      x������ � �      �   4   x�3�4�4202�,���2�4D�s#�L8͐x����J�8��1z\\\ ���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   |  x��TKr�@]7��	R�cK�*�Pf�Mg4��j�q�fH�.G��H�\,-��$�1K������ua���ܙ�+������x�\�*{�A�a�J� ��*8�2�	>�2�w[T�ɽ�� =�f�d�kLw(]���`i��3�gӥ�w ���u�������-߈!̼��k�U�kaŎT��r�����h��R�
|���EŒr���L	�h��8����ᵰ��i�9WXf���d���#HQ��$GW��I�(!�}�1�d������o<tVo5�{�e��ݛ�ԓ{Bv��2���v!���[�u�ʦ����֐cZ0���h%HW������͗o�(�]�;�I�S�=�/Kg^��h�Z�|#������7]��'�U#w�g��X�Q��핅�d�h'ka�;.dve$6���*M׋�[���ˏJ�?^�&��sK~5�)yN�`\1�Gc��1�9]N '��Z�$���"I�A�ҙ��׆w!VJ��9Vk� ���$ng@���(��&p����.�IA���Cr��U\���2V�?�h�}�6�ӥ���uQ��1�U�I�I�;��r���B�Eİq��|u�����I���h�]dõ��9�&׷/�N��u�t      �      x������ � �      �   �  x�m�Qr-!D��Ťu/o��x����J���0ʑ�GK�����嫔'Ķ��H��oq�G!Z�C?����Y$�Z����tF"@�Q�2���~.�dr�%�-U��-��m�.�r3{��b� `�%�R�d�Ԥ�%a�vIaqkض�ZH%M���3ֹ)>'Nd��X��ĉ�_r%�Zu�j�7P�7���T��ͤU�f�"z3���[þ?�CV}M�l�@�à��`�����nu`?�^��̶�5˫�^2�r�
�o3Yc�zt�s@�l��:W����~���agӶ��������/d���p��%��]�~k.�n-��=?�愣�@=��('Pí�'
� �Q�H�rc4L�n(���T0U��`�vc�T�Ƃ�Z��M&�	d���UmP-�tc۪ͭ�:�4���>��l�����*tˈD��m�X�T�/m��� �JWEc�6��Uv4?���p�O�� .�dK�H8d �h�X���ugvo�N�te��-��9����_�d8P\�0���e���:�p�����K[0��Ǜ.|��W'^^�w�Q�z��]6�4\6�֊�.~kC�"�y�9�|�l�Vq�&�-�V�F����u�Xf�lL.P��zl����4�fʬ�9��݅ǦR^��9	�Id���T�N�l�#�I6|�Z:=6�M-�qN���g�7�d�[Q�]�5�e�S7gb9ps����xy+���h,�C��)�rfc! ,�m�h�CB8�1�ZNהh�f�%�}q{����j���4ڭ��:�'�S��Zb�s��<!��V���y��^���4_]OD�"_o�OɭGȧ�	ĥ�z��ˌ�%�j=A~b�� �!"����!f=>>EHo���aR�aPu�ar�_0xä����H����Ǚ��@h�clZX�Ȅ��V��U#W�jf��06���4�/�k���`FD|�#9������A��V���U�(�6�:�U������ྗ��<����ڊɿ/��z�A      �   
  x��Y�n۸^�O�e4E�ܻ�8n.�n��-0@7�D�l)RCJn��p��"�,�(����d�d���_Z's0i���:�����O�n7����ƅ���auy�c1e}c�p�<�>�_
���b"4í8sE&�X���$g��3�D�a9>y*���]�X#u\��J��͝aoe�8��2k"�L����+܏vw� �!9:��:7����qy���L�����`\a�����"�F�لe"���g��P[I�]��n�[^}�����7+8�ܚ�(�s��Sq�S�������F�t ����3��+��L��Ǻ奅��e��2io�5T�sP�s�8ˀ���"2��I�T��� _�Y`yf\��ɶq
{D�	�iPxQ^)�����։gP�db�hCz�+�<��&�=�r��`���z`*����v��HE�c�_ha��&� ����d̝G�6:REy����t�^H;c���X�/�Z����Pr�r�ri�ʛ���r ��5��R����ds�2Z�����+���Cࠎ��.��
8gc����.."�D��i@4�J�����Ϝ���q��"}�����cS|��K]`GBL��(���*�zoX2��� �<��9�Qs4+�]n#O�0ш��mf��U��۬��P2�2ױa�FO�K�wE,�G��@��љ��W�1��������d�G�;�0���:
q`��);��Tx�Bn�	�Z�[���⪼Ķm��k��<Y��=\��V��;9��@�H �=l�q �R2��؄k�>ǆ������#�s�.�Q��eWQ��)m����-8ǮY��Aך��W�h��N�ȁ�\�Qn�HB�߂�T!� /*������ޏ�9�U����;��͚e8������yəL�|q�U���S^#�B,Si���;�]�ú/F�F2��s_����F�s����ߟ��H`�9,K�vf�,ǣ6
a�y?�IX'E�F0L%%�����e��[�~a;���ő}���6Ή;���Z�ˊ�+�q�L� W�w/i�I���;*��⅀a�P�|b,ob�xeP1�<S��h8<R�ciyETW�n�Iw��<Y���HnT�.Ll%e|Pe-M)���yy=e�DbE.�i�5��ڊ�=��|db�/�I���ya�N��J�����a��t�Ϋ����'b��M�Uk����P���؍z�����wA���4m��J&T}¦\*|D�P,��fz���@/vy�P�����=*���H˪�|��.[�tWl�7�Ul^��%#8�������E�/ɭ{���^� �Y�>�*�y�i��̴�5��	�n�2�BM�ѽj�z*yL/]��&��q&"PZ�͇�nk�� ���A��}>�}I�KL�n�	U-/��:���Z~�{J<H9���/L'�n)�To�Є���Z�;�Ͽ�����ħHΐC��8/C�C*�L#��@�X駎@�����c�򯐴�7�%Ƞ�TJ_.|����~���hc�}���a
�`#�>����
U��JP�O�|�t>����R�i�TR�=��sל&��T,��¡�\!�&��+��$�3�OW��l(�R�����q!����>�U	MNΌi��TD��11F�ǧ��Jw� 5P��{�Qy{�"��O�x���^�9H�U���&�ڷ#Wk|�"�tL�h������b-+W�(-�	f M���~�(ώ�qn�3��R���/�òc[���)5�A�(EQ�5Y�4�	��kj�C�ͦSB'�@�<��:��(���st�y�KE�W"%H>P���p�En墼!5/Q�gl?

/<�.����<d�$U����[+���~f�}4 T�p�ul6��U]j������9B�VN��|�A�Bg^l���#�S��ʹ�<�P�~FC�/����64L������MM�N�`��َ���P��wbÍ��WV�-�l��N��P��|��R旮hi�y/d�U���F��NTjƾ�@bvl@a��]!�.w@�#9K9��T�r��w�'M�,>KЗ~_����+�XiH(T�
ʀg�� ?0�0�|A�7��U���� .$}t�������R^���AU}0;���o��p"uL�»�?��҉ _*=��m,��Z:�@�D.���A���b1�S��g]v���Ɋ�=�+ه�s�b�낆���3�7�F�Ϳ��n�� �s$?t��&�.:[�>��z`���L�'�[tͻ	|��yt�w�;�xoS4��@�jL����H!-&�I�R���=<:���B��ۖ��p��ʡ���B"(i�;=�"�L�}N��ᅟg�#K' 4s*�dn@�Ꭼ��Yq�õu�����r\����nfxT� ��>J�����lmn֙�+U>:��g��6	��$a�!v���@�4��ш6���ֿ���0���bB�?Qi����D�c#Ô��?c_�	K��X̥�j�fF-�˖�9��q1M�K:+�BݏM���� : x)�@*n�ܳEw�n{��v?P♣��٣G���+�T      �      x������ � �      �   �   x���K�!D��a�/w���cP���Eo2(�W	H��#1��)�'�ј��̯��d��� MH�)8�d��E��ށ�����)�PТ(� ��#چ��n�L �8/�y�X��m@��%<�O������-��#qE:�n��r�����I.�kުJ�&I!��p3�f�P�Я��F��j�zua~|'�{ ~�q=�5������6��'=��RL      �   9  x�mS��� |�b2�F��뿎#aA����.�`-�j-�f2�)<zM}MK�Rx�W;�����w����:�ވ?x-���:�i���ET��W�޺�U)��O�[��'n��ŝ�$��G�C,$��DA<�D/��*��d�<~=�(�_#��|n��JH��,���1?N���'�3��h��!Jj��Ԕ�c5��C�U��K�̬�5 �!��I����u�bl!�ce'��d����r."�"|ZԄ<i� z+�&b��A�Ei�ΰ��.��vBW�d�g`ٚ�|�7��cE-`ۀ��s_��E��      �   `   x�����0�w<L�)$�K���IG��B��?p����i''�N4��Gϸ��O�N6��+��(,
�H�-,�%��X(���J[���H����N ��m�      �   p   x���� !�޸Ąp���ױ��|,��G$�D�(��v���0���o���rj{�5J���5H�J�a�iX�eX�mX���%�G�$���)� '5�D�DV&9�h"'-�
�Ջ��      �      x������ � �      �      x������ � �      �      x������ � �      �   .  x�m�M�7��5����H�/�^z�]6�00�`&��|_������Z���b�����S�p|�p�[��=�*��ĩDU��y��'���MHS�ت�M��(�oV�RU�	u
���6���8���9c�ҞI��bߑ$U��mR%��x_D��"V��F��a��I� ���8H� b2c���J�X��B��x���I𼘈{,a�,�s�
i�b��W/�h|�b���W�J��d;��rP$�,��9��w�R1���B�C1a�dX)Cb�z,*��rq5VDλ�b^l�(���՗�器'�an�Ҟ`F�#�/�̆�{�K39�	~�˪���G6[�!	�4�8����	�x�S�P$�7���Xqϋ��_V�=Ð������S�3R6�T�32fӟ4DdܻC>�+3�<S���/A��g��bJ"�*�Jmg�K�A��ȗɼ!bR�*5��KQ���ȗ�����T��_`E��
+L;�+�0��_��x�0#�{]f��x��*B���v�^��W�ၯ��)�-�������M�p8�ֺJ��Q�A�ĨN��|F�3*��Z��B9�֓Jš�3�zF����%zU�����D����	O�p &�@+/�\)���&�2�<l�&²�;�(��0O���#�l��#B�݌/���yf�ي�T{��?
�u�ȭk�O��/Åj~� ��FX��$#��r9SN2h�e�5N�Qkj��q&�Ɵ^�8�LZC2Qj�8��f(U�e���ބ�
D�jb�n޺5#u�Դ@2��]�q�b�%��4�u�/�}�u�3ŏaM�X�� G�>��{���~�m�QrjCW���C���0+��}<ô���L�C�	k|���������y�s�mNW���� :>�ܿ��|��V�y�jU�:��ѓ��#����wkK�͋��Ry�x:�x��>[�Y ��U�4���������jthe?yQY\|[��N�_l�"�#
'���O��'	�ؑY�Ii���%dX}g�~�k�'Ί��/�9g8�k�w�6�
�Q���qdޞ��~�%�      �      x������ � �      �   �   x�}�ٍ!C�ǹ���Nb#���j�p}��j=a�2ŗ�����)?����k��Wfu>�y�cB��a�e`DړW�:�w$�.'�cF����*�W��j�WEۣ�Jޑ���7�@��@�%g	���ú:��=����X�O2���ɱ��3d�����c�i�|�,�e[���Цj{JU���9�W�tD�X#p��`��E:�R��1�uu/ϱ��.{�0@icԣK�_"� >�ϐ�      �   �   x�m�Mn!���]�b\�'x�w��_͌Z���
�J�� M�j?q�o��}T��V\VQS�,^K-��U�����p���QD�0�C�|����F1��������o��禺OW7VPgט�-0Gc�^Ԍ�p�M ���I��_������!8oxx+�kB���X~�5��c�k�حi@�'����A����?��n���v�
�?�f�uh=�x}�,Ql�      �   �   x�U��q�0���0\ �.����i�^.�c�$�_��H�sS���x���y�6vk;"�
��₡aFl���[���K2J��������-d�Z�MU%�6���*��S�u��p��������O��P����l9�[��+^�tQ�2���ҟ��UpF����Q�#�� rR�Q�I&_*"�WX;�      �   �   x�UQ[��0�6�A�#w���cI33m���2�Q�Pŀ��;0x�ɢ0�/�K1a�f��H8�/|�$��/�$yN� l�U%�a��vǾ��&o)��آ�9A�T�T{=W �=�T7�51T�'�����(��g�"������?�pd�������NG.�,Ĩ����ή��=]n�K��v�����-�9z�9��t��~ŏ�ud:I���x	�|�d�ą��H�c"��Q�      �      x������ � �      �      x������ � �      �   �  x�}�MN�0���)rD���R,%ݤ���4ɱ�c��@,G�Ř4��*�Β�}3��M�T�UK������囏���Dl~�Zp^HY܉Yg��@��bYߋ���3�
s�w��"Zj�?"��_VJj9�:g��B�������'V�G4�@����0=�:�|�\Q��b�KG���PJ��0eq��I����iD��
/��B10���Hѷ�r�S���W�|l��w���5���_��"��1�5�l����| ۯ���ݻ���_��-�HO"lb�U=�������9vq���	������DGx:1�&�]-�
&,�ieZ�Z��f�w�'����GL.ǌ�*�(��O�B ��L=+�C��j���ɻ�};l��Q��I�e?rc=�      �      x������ � �      �   z  x�]�ɑCAC��T��2��1b1U�������B�t�%�$�t��LG�.me#IC7mR�IV=����?���!���+BPEr� ++�'�p���ˏ^5�O>�
���?%�e�g����(��� �&#~���lʲꑍ؝e'��Ѱ�vE�<�s:\z	�b�\�I��嬒d�g�Ȍ}F-���ۣ@�Y�2��EW�a����i�Xf:��x�W��w���[��_�y�y�e��TRlG/���a������Wm⑏m&�[�}�q��_ 1F�yT\�'餞/����_�}�I�Z���&QkK�ֳh�X��zI�8ڸE��K-�F2��dh���ڒ��L��+Z�bh�$C�[m�b�{����a�?���n      �      x������ � �      �      x������ � �      �   {   x�=N��0{�b �G/�+;aX��a�:�:ah�Ȝ��h�Z0	�W�4��(HN�;��&)+��<p�!��vX�ž�¤���Rnc�T�~j�����M7���^�����yP�����&�      �   �   x�EO�!;�bx�ௗ�����3&
*��1�����:V�S�����[�lI�W]uMf��͛<(��H���d�����s-����3LyRU�-I��M&*S������Я��<��'p��-�*v��&k���L~*"65�      �   N   x��LQ
�P�����zt����E5�(�7��B(bgf�c��.�K���x���D~�8�ۑ�s��(}��n5�b0"�      �   A   x�3�4�4202�44�3 �0�2�4!U�1�!D�:�2�4&�4SN3\��q��j�9�.�b���� 9�)�            x������ � �            x������ � �            x������ � �           x���Mn�0���)� �B���AТ����h�v����@9@O������L���HS%1EǅJ"v���?�Zo~>>o'}���<?�[��A�Y�q�'�ʮ��\!��{���x���}���jV���H���_�L֜ua��kx�~&3�4z��tw�^�z<�54�RE�����m����E��\�^m��CW�V����X��*e��c	3Ң,C,c���, _�>V���9�X�Vk߂C��O�Li��P~ߪ*����,:O-��������K�іԀ���0ɍ���7'��0��(�FЊ��w��1�27nV�aN������p�� �eK^���X7�|h��xhؙ>��G`S]3=���?�!�V:�2��ؖ�*V*�E����(X�2^C���){V!tVl�Bx�U�`�=����)r�]7�>�;5�Oy(�����P�N���\ƁE:��G:����Nk�Q@'��A�@'+�9ujZܿMMgV��Nm��M�����w/n��v���N��6��ݲ, �#c�      	      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     