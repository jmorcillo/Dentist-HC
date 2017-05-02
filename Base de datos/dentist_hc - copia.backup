--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: HC_anamnesis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_anamnesis" (
    id integer NOT NULL,
    motivo_consulta character varying(100) NOT NULL,
    antecedentes character varying(100) NOT NULL,
    medicamentos_en_uso character varying(60) NOT NULL,
    alergias character varying(60) NOT NULL,
    id_paciente_id integer NOT NULL
);


ALTER TABLE "HC_anamnesis" OWNER TO postgres;

--
-- Name: HC_anamnesis_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_anamnesis_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_anamnesis_id_seq" OWNER TO postgres;

--
-- Name: HC_anamnesis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_anamnesis_id_seq" OWNED BY "HC_anamnesis".id;


--
-- Name: HC_asistente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_asistente" (
    id integer NOT NULL,
    identificacion character varying(20) NOT NULL,
    tipo_identificacion character varying(2) NOT NULL,
    direccion text NOT NULL,
    telefono_fijo character varying(12) NOT NULL,
    telefono_celular character varying(12) NOT NULL,
    fecha_nacimiento date NOT NULL,
    edad integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE "HC_asistente" OWNER TO postgres;

--
-- Name: HC_asistente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_asistente_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_asistente_id_seq" OWNER TO postgres;

--
-- Name: HC_asistente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_asistente_id_seq" OWNED BY "HC_asistente".id;


--
-- Name: HC_cita; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_cita" (
    id integer NOT NULL,
    fecha date NOT NULL,
    hora_inicio timestamp with time zone NOT NULL,
    hora_fin timestamp with time zone NOT NULL,
    actividad text NOT NULL,
    observacion text NOT NULL,
    id_doctor_id integer NOT NULL,
    id_paciente_id integer NOT NULL
);


ALTER TABLE "HC_cita" OWNER TO postgres;

--
-- Name: HC_cita_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_cita_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_cita_id_seq" OWNER TO postgres;

--
-- Name: HC_cita_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_cita_id_seq" OWNED BY "HC_cita".id;


--
-- Name: HC_diagnostico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_diagnostico" (
    id integer NOT NULL,
    descripcion character varying(30) NOT NULL,
    num_diente integer NOT NULL
);


ALTER TABLE "HC_diagnostico" OWNER TO postgres;

--
-- Name: HC_diagnostico_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_diagnostico_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_diagnostico_id_seq" OWNER TO postgres;

--
-- Name: HC_diagnostico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_diagnostico_id_seq" OWNED BY "HC_diagnostico".id;


--
-- Name: HC_diente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_diente" (
    id integer NOT NULL,
    num_diente integer NOT NULL,
    "CaraDiente1" character varying(2) NOT NULL,
    "CaraDiente2" character varying(2) NOT NULL,
    "CaraDiente3" character varying(2) NOT NULL,
    "CaraDiente4" character varying(2) NOT NULL,
    "CaraDiente5" character varying(2) NOT NULL,
    id_diagnostico_id integer,
    id_paciente_id integer,
    id_tratamiento_id integer
);


ALTER TABLE "HC_diente" OWNER TO postgres;

--
-- Name: HC_diente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_diente_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_diente_id_seq" OWNER TO postgres;

--
-- Name: HC_diente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_diente_id_seq" OWNED BY "HC_diente".id;


--
-- Name: HC_doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_doctor" (
    id integer NOT NULL,
    identificacion character varying(20) NOT NULL,
    tipo_identificacion character varying(2) NOT NULL,
    resolucion integer NOT NULL,
    direccion text NOT NULL,
    telefono_fijo character varying(12) NOT NULL,
    telefono_celular character varying(12) NOT NULL,
    fecha_nacimiento date NOT NULL,
    edad integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE "HC_doctor" OWNER TO postgres;

--
-- Name: HC_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_doctor_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_doctor_id_seq" OWNER TO postgres;

--
-- Name: HC_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_doctor_id_seq" OWNED BY "HC_doctor".id;


--
-- Name: HC_especialidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_especialidad" (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL,
    id_tratamiento_id integer
);


ALTER TABLE "HC_especialidad" OWNER TO postgres;

--
-- Name: HC_especialidad_id_doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_especialidad_id_doctor" (
    id integer NOT NULL,
    especialidad_id integer NOT NULL,
    doctor_id integer NOT NULL
);


ALTER TABLE "HC_especialidad_id_doctor" OWNER TO postgres;

--
-- Name: HC_especialidad_id_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_especialidad_id_doctor_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_especialidad_id_doctor_id_seq" OWNER TO postgres;

--
-- Name: HC_especialidad_id_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_especialidad_id_doctor_id_seq" OWNED BY "HC_especialidad_id_doctor".id;


--
-- Name: HC_especialidad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_especialidad_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_especialidad_id_seq" OWNER TO postgres;

--
-- Name: HC_especialidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_especialidad_id_seq" OWNED BY "HC_especialidad".id;


--
-- Name: HC_evolucion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_evolucion" (
    id integer NOT NULL,
    observacion text NOT NULL,
    id_diente_id integer,
    id_paciente_id integer
);


ALTER TABLE "HC_evolucion" OWNER TO postgres;

--
-- Name: HC_evolucion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_evolucion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_evolucion_id_seq" OWNER TO postgres;

--
-- Name: HC_evolucion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_evolucion_id_seq" OWNED BY "HC_evolucion".id;


--
-- Name: HC_horarionodisponible; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_horarionodisponible" (
    id integer NOT NULL,
    hora_inicio date NOT NULL,
    hora_fin date NOT NULL,
    dia_semana character varying(2) NOT NULL,
    id_doctor_id integer
);


ALTER TABLE "HC_horarionodisponible" OWNER TO postgres;

--
-- Name: HC_horarionodisponible_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_horarionodisponible_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_horarionodisponible_id_seq" OWNER TO postgres;

--
-- Name: HC_horarionodisponible_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_horarionodisponible_id_seq" OWNED BY "HC_horarionodisponible".id;


--
-- Name: HC_paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_paciente" (
    id integer NOT NULL,
    identificacion character varying(20) NOT NULL,
    tipo_identificacion character varying(2) NOT NULL,
    direccion text NOT NULL,
    telefono_fijo character varying(12) NOT NULL,
    telefono_celular character varying(12) NOT NULL,
    departamento character varying(2) NOT NULL,
    ciudad character varying(2) NOT NULL,
    sexo character varying(1) NOT NULL,
    fecha_nacimiento date NOT NULL,
    edad integer NOT NULL,
    nacionalidad character varying(30) NOT NULL,
    rh character varying(2) NOT NULL,
    nombres_acuediente character varying(50) NOT NULL,
    telefono_acuediente character varying(20) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE "HC_paciente" OWNER TO postgres;

--
-- Name: HC_paciente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_paciente_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_paciente_id_seq" OWNER TO postgres;

--
-- Name: HC_paciente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_paciente_id_seq" OWNED BY "HC_paciente".id;


--
-- Name: HC_sede; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_sede" (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL,
    telefono character varying(15) NOT NULL,
    correo character varying(254) NOT NULL,
    direccion character varying(30) NOT NULL
);


ALTER TABLE "HC_sede" OWNER TO postgres;

--
-- Name: HC_sede_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_sede_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_sede_id_seq" OWNER TO postgres;

--
-- Name: HC_sede_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_sede_id_seq" OWNED BY "HC_sede".id;


--
-- Name: HC_sede_id_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_sede_id_user" (
    id integer NOT NULL,
    sede_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE "HC_sede_id_user" OWNER TO postgres;

--
-- Name: HC_sede_id_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_sede_id_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_sede_id_user_id_seq" OWNER TO postgres;

--
-- Name: HC_sede_id_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_sede_id_user_id_seq" OWNED BY "HC_sede_id_user".id;


--
-- Name: HC_tratamiento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HC_tratamiento" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(100) NOT NULL,
    precio integer NOT NULL
);


ALTER TABLE "HC_tratamiento" OWNER TO postgres;

--
-- Name: HC_tratamiento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HC_tratamiento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "HC_tratamiento_id_seq" OWNER TO postgres;

--
-- Name: HC_tratamiento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HC_tratamiento_id_seq" OWNED BY "HC_tratamiento".id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_anamnesis" ALTER COLUMN id SET DEFAULT nextval('"HC_anamnesis_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_asistente" ALTER COLUMN id SET DEFAULT nextval('"HC_asistente_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_cita" ALTER COLUMN id SET DEFAULT nextval('"HC_cita_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_diagnostico" ALTER COLUMN id SET DEFAULT nextval('"HC_diagnostico_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_diente" ALTER COLUMN id SET DEFAULT nextval('"HC_diente_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_doctor" ALTER COLUMN id SET DEFAULT nextval('"HC_doctor_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_especialidad" ALTER COLUMN id SET DEFAULT nextval('"HC_especialidad_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_especialidad_id_doctor" ALTER COLUMN id SET DEFAULT nextval('"HC_especialidad_id_doctor_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_evolucion" ALTER COLUMN id SET DEFAULT nextval('"HC_evolucion_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_horarionodisponible" ALTER COLUMN id SET DEFAULT nextval('"HC_horarionodisponible_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_paciente" ALTER COLUMN id SET DEFAULT nextval('"HC_paciente_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_sede" ALTER COLUMN id SET DEFAULT nextval('"HC_sede_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_sede_id_user" ALTER COLUMN id SET DEFAULT nextval('"HC_sede_id_user_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_tratamiento" ALTER COLUMN id SET DEFAULT nextval('"HC_tratamiento_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: HC_anamnesis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_anamnesis" (id, motivo_consulta, antecedentes, medicamentos_en_uso, alergias, id_paciente_id) FROM stdin;
2					2
3					3
1	dssfsdfsdfaaaaaaaaaaaaaaaaaaaa	sdfsdfsdfsdf	dfdsfsdfsdf	sdfsdfsdfsdfaaaaaaaaaaaaaaaaaa	1
4	fgdfgdfgfdgdfgdfg	fklndfkjsdbfsdjkfb	dfjhsfsdklmfsdjfkbsdiofnsdhkfbsdfnsdhfbsdfsdkjbfjksdnfjk	sjdfnsdlkfdskfnjsdfksdnfjksdbfkj	4
5	sfdsfgsdfsdfsdfgsdgggdg	fsdfsdfdsgsdgds	sdgdsgsdgsdgsdgsdg	sddsgsdgsdgdsgsdg	5
\.


--
-- Name: HC_anamnesis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_anamnesis_id_seq"', 5, true);


--
-- Data for Name: HC_asistente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_asistente" (id, identificacion, tipo_identificacion, direccion, telefono_fijo, telefono_celular, fecha_nacimiento, edad, user_id) FROM stdin;
\.


--
-- Name: HC_asistente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_asistente_id_seq"', 1, false);


--
-- Data for Name: HC_cita; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_cita" (id, fecha, hora_inicio, hora_fin, actividad, observacion, id_doctor_id, id_paciente_id) FROM stdin;
1	2017-04-28	2017-04-28 10:00:00+00	2017-04-28 11:00:00+00	Rehabilitación	Prueba de visualización de las citas en fullcalendar	1	2
2	2017-04-30	2017-04-30 12:00:00+00	2017-04-30 14:00:00+00	Prueba de citas	prueba de citas	1	3
\.


--
-- Name: HC_cita_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_cita_id_seq"', 2, true);


--
-- Data for Name: HC_diagnostico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_diagnostico" (id, descripcion, num_diente) FROM stdin;
\.


--
-- Name: HC_diagnostico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_diagnostico_id_seq"', 1, false);


--
-- Data for Name: HC_diente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_diente" (id, num_diente, "CaraDiente1", "CaraDiente2", "CaraDiente3", "CaraDiente4", "CaraDiente5", id_diagnostico_id, id_paciente_id, id_tratamiento_id) FROM stdin;
1	11	OC	DI	ME	LI	GI	\N	4	\N
2	12	OC	DI	ME	LI	GI	\N	4	\N
3	13	OC	DI	ME	LI	GI	\N	4	\N
4	14	OC	DI	ME	LI	GI	\N	4	\N
5	15	OC	DI	ME	LI	GI	\N	4	\N
6	16	OC	DI	ME	LI	GI	\N	4	\N
7	17	OC	DI	ME	LI	GI	\N	4	\N
8	18	OC	DI	ME	LI	GI	\N	4	\N
9	21	OC	DI	ME	LI	GI	\N	4	\N
10	22	OC	DI	ME	LI	GI	\N	4	\N
11	23	OC	DI	ME	LI	GI	\N	4	\N
12	24	OC	DI	ME	LI	GI	\N	4	\N
13	25	OC	DI	ME	LI	GI	\N	4	\N
14	26	OC	DI	ME	LI	GI	\N	4	\N
15	27	OC	DI	ME	LI	GI	\N	4	\N
16	28	OC	DI	ME	LI	GI	\N	4	\N
17	31	OC	DI	ME	LI	GI	\N	4	\N
18	32	OC	DI	ME	LI	GI	\N	4	\N
19	33	OC	DI	ME	LI	GI	\N	4	\N
20	34	OC	DI	ME	LI	GI	\N	4	\N
21	35	OC	DI	ME	LI	GI	\N	4	\N
22	36	OC	DI	ME	LI	GI	\N	4	\N
23	37	OC	DI	ME	LI	GI	\N	4	\N
24	37	OC	DI	ME	LI	GI	\N	4	\N
25	41	OC	DI	ME	LI	GI	\N	4	\N
26	42	OC	DI	ME	LI	GI	\N	4	\N
27	43	OC	DI	ME	LI	GI	\N	4	\N
28	44	OC	DI	ME	LI	GI	\N	4	\N
29	45	OC	DI	ME	LI	GI	\N	4	\N
30	46	OC	DI	ME	LI	GI	\N	4	\N
31	47	OC	DI	ME	LI	GI	\N	4	\N
32	48	OC	DI	ME	LI	GI	\N	4	\N
33	51	OC	DI	ME	LI	GI	\N	4	\N
34	52	OC	DI	ME	LI	GI	\N	4	\N
35	53	OC	DI	ME	LI	GI	\N	4	\N
36	54	OC	DI	ME	LI	GI	\N	4	\N
37	55	OC	DI	ME	LI	GI	\N	4	\N
38	61	OC	DI	ME	LI	GI	\N	4	\N
39	62	OC	DI	ME	LI	GI	\N	4	\N
40	63	OC	DI	ME	LI	GI	\N	4	\N
41	64	OC	DI	ME	LI	GI	\N	4	\N
42	65	OC	DI	ME	LI	GI	\N	4	\N
43	71	OC	DI	ME	LI	GI	\N	4	\N
44	72	OC	DI	ME	LI	GI	\N	4	\N
45	73	OC	DI	ME	LI	GI	\N	4	\N
46	74	OC	DI	ME	LI	GI	\N	4	\N
47	75	OC	DI	ME	LI	GI	\N	4	\N
48	81	OC	DI	ME	LI	GI	\N	4	\N
49	82	OC	DI	ME	LI	GI	\N	4	\N
50	83	OC	DI	ME	LI	GI	\N	4	\N
51	84	OC	DI	ME	LI	GI	\N	4	\N
52	85	OC	DI	ME	LI	GI	\N	4	\N
\.


--
-- Name: HC_diente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_diente_id_seq"', 52, true);


--
-- Data for Name: HC_doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_doctor" (id, identificacion, tipo_identificacion, resolucion, direccion, telefono_fijo, telefono_celular, fecha_nacimiento, edad, user_id) FROM stdin;
1	23456789	CC	1234	fgdfgsdgdfgdfg	2345678	3213893167	1992-03-20	23	6
\.


--
-- Name: HC_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_doctor_id_seq"', 1, true);


--
-- Data for Name: HC_especialidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_especialidad" (id, nombre, id_tratamiento_id) FROM stdin;
\.


--
-- Data for Name: HC_especialidad_id_doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_especialidad_id_doctor" (id, especialidad_id, doctor_id) FROM stdin;
\.


--
-- Name: HC_especialidad_id_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_especialidad_id_doctor_id_seq"', 1, false);


--
-- Name: HC_especialidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_especialidad_id_seq"', 1, false);


--
-- Data for Name: HC_evolucion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_evolucion" (id, observacion, id_diente_id, id_paciente_id) FROM stdin;
\.


--
-- Name: HC_evolucion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_evolucion_id_seq"', 1, false);


--
-- Data for Name: HC_horarionodisponible; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_horarionodisponible" (id, hora_inicio, hora_fin, dia_semana, id_doctor_id) FROM stdin;
\.


--
-- Name: HC_horarionodisponible_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_horarionodisponible_id_seq"', 1, false);


--
-- Data for Name: HC_paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_paciente" (id, identificacion, tipo_identificacion, direccion, telefono_fijo, telefono_celular, departamento, ciudad, sexo, fecha_nacimiento, edad, nacionalidad, rh, nombres_acuediente, telefono_acuediente, user_id) FROM stdin;
1	1016016381	CC	werrsdfsdfsdfsdfsd	NO TIENE	32009874532	CU	BO	M	1957-09-12	22	Colombiano	O+	Josefa Bedoya	3126789031	2
2	1016043911	CC	sdfdsgsdgdsgsdgsdgsdg	6081037	3213893167	CU	BO	M	1990-09-24	23	Venezolano	O+	Sixta Gamboa	6081037	3
3	51678911	CC	sdfdsgsdgdsgsdgsdgsdg	6081037	3213893167	CU	BO	M	1990-09-24	23	Venezolano	O+	Sixta Gamboa	6081037	4
4	51678910	CC	sdfdsgsdgdsgsdgsdgsdg	6081037	3213893167	CU	BO	M	1990-09-24	23	Venezolano	O+	Sixta Gamboa	6081037	5
5	10907654310	CC	Calle 107 # 43 - 78	2908765	32009874532	CU	BO	M	1957-09-12	33	Ecuatoriano	O-	David Valenzuela	3126789031	7
\.


--
-- Name: HC_paciente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_paciente_id_seq"', 5, true);


--
-- Data for Name: HC_sede; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_sede" (id, nombre, telefono, correo, direccion) FROM stdin;
\.


--
-- Name: HC_sede_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_sede_id_seq"', 1, false);


--
-- Data for Name: HC_sede_id_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_sede_id_user" (id, sede_id, user_id) FROM stdin;
\.


--
-- Name: HC_sede_id_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_sede_id_user_id_seq"', 1, false);


--
-- Data for Name: HC_tratamiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HC_tratamiento" (id, nombre, descripcion, precio) FROM stdin;
\.


--
-- Name: HC_tratamiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HC_tratamiento_id_seq"', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add permission	3	add_permission
8	Can change permission	3	change_permission
9	Can delete permission	3	delete_permission
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add tratamiento	7	add_tratamiento
20	Can change tratamiento	7	change_tratamiento
21	Can delete tratamiento	7	delete_tratamiento
22	Can add paciente	8	add_paciente
23	Can change paciente	8	change_paciente
24	Can delete paciente	8	delete_paciente
25	Can add sede	9	add_sede
26	Can change sede	9	change_sede
27	Can delete sede	9	delete_sede
28	Can add asistente	10	add_asistente
29	Can change asistente	10	change_asistente
30	Can delete asistente	10	delete_asistente
31	Can add cita	11	add_cita
32	Can change cita	11	change_cita
33	Can delete cita	11	delete_cita
34	Can add doctor	12	add_doctor
35	Can change doctor	12	change_doctor
36	Can delete doctor	12	delete_doctor
37	Can add anamnesis	13	add_anamnesis
38	Can change anamnesis	13	change_anamnesis
39	Can delete anamnesis	13	delete_anamnesis
40	Can add especialidad	14	add_especialidad
41	Can change especialidad	14	change_especialidad
42	Can delete especialidad	14	delete_especialidad
43	Can add diente	15	add_diente
44	Can change diente	15	change_diente
45	Can delete diente	15	delete_diente
46	Can add diagnostico	16	add_diagnostico
47	Can change diagnostico	16	change_diagnostico
48	Can delete diagnostico	16	delete_diagnostico
49	Can add horario no disponible	17	add_horarionodisponible
50	Can change horario no disponible	17	change_horarionodisponible
51	Can delete horario no disponible	17	delete_horarionodisponible
52	Can add evolucion	18	add_evolucion
53	Can change evolucion	18	change_evolucion
54	Can delete evolucion	18	delete_evolucion
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 54, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$30000$3CVtllxzOs4R$VldplXFtzsG2gIRiQRaXy/gporLxVzDr7jC01DrV62w=	\N	f	paciente1	Luis Andrés	Saenz Bedoya	luis@gmail.com	f	t	2017-04-14 17:07:32.225915+00
3	pbkdf2_sha256$30000$edcj8zZ3y4TO$HO1MESBuz95B4LlidUpnX7+1yLsn16crO+9stE6Fmvo=	\N	f	paciente2	Iván David	Estrada Gamboa	ivan.david.estrada@gmail.com	f	t	2017-04-14 21:40:55.499041+00
4	pbkdf2_sha256$30000$sQCfpBSP4hve$PNbVcm98hYJCcaOWTf+URtEzgtTFq5/F44gcY4DPDow=	2017-04-20 17:53:36.99132+00	f	paciente3	Iván David	Estrada Gamboa	ivan.david.estrada@gmail.com	f	t	2017-04-14 21:45:01.851502+00
5	pbkdf2_sha256$30000$3WCfyzBSR8c7$LYvfFV41Yt1/WZNJ1cKxFfNSqT+KVwyGkKCCme+0DR8=	2017-04-20 17:55:08.675321+00	f	paciente4	Jose	Perez	ivan.david.estrada@gmail.com	f	t	2017-04-14 21:51:44+00
7	pbkdf2_sha256$30000$Wstwuhra7fNU$gpAWFxDhkkRv6V0yswaRbMiWDup3RFBO0X9eWFqSEUE=	\N	f	paciente10	Julian David	Rodriguez Valencia	david@gmail.com	f	t	2017-04-22 16:29:55.952873+00
1	pbkdf2_sha256$30000$9jFVDDLE3qlL$S6PxccTqPFpCdudmrYMgdteTqM+hjrh+8vlH1zt0fRU=	2017-04-30 16:15:05.084361+00	t	admin			a@a.com	t	t	2017-04-14 17:00:29.613721+00
6	pbkdf2_sha256$30000$7JAngdurrO9I$7wugthcBdYqE9ASrErUoFG7ET347e4f5A+knEQqr2Qc=	2017-04-30 16:16:23.653281+00	f	doctor1	Iván David	Estrada Gamboa	ivan.david.estrada@gmail.com	f	t	2017-04-15 15:03:01+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 7, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-04-14 17:32:48.03155+00	1	dssfsdfsdf	1	[{"added": {}}]	13	1
2	2017-04-15 15:03:01.521832+00	6	doctor1	1	[{"added": {}}]	4	1
3	2017-04-15 15:03:46.53482+00	1	23456789	1	[{"added": {}}]	12	1
4	2017-04-15 15:04:18.729665+00	6	doctor1	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	1
5	2017-04-20 17:54:43.685267+00	5	paciente4	2	[{"changed": {"fields": ["first_name", "last_name"]}}]	4	1
6	2017-04-28 17:13:28.578698+00	1	2017-04-28	1	[{"added": {}}]	11	1
7	2017-04-30 16:16:11.359494+00	2	2017-04-30	1	[{"added": {}}]	11	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 7, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	HC	tratamiento
8	HC	paciente
9	HC	sede
10	HC	asistente
11	HC	cita
12	HC	doctor
13	HC	anamnesis
14	HC	especialidad
15	HC	diente
16	HC	diagnostico
17	HC	horarionodisponible
18	HC	evolucion
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 18, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-04-14 16:59:14.668981+00
2	auth	0001_initial	2017-04-14 16:59:14.776202+00
3	HC	0001_initial	2017-04-14 16:59:15.214282+00
4	admin	0001_initial	2017-04-14 16:59:15.260486+00
5	admin	0002_logentry_remove_auto_add	2017-04-14 16:59:15.2898+00
6	contenttypes	0002_remove_content_type_name	2017-04-14 16:59:15.370481+00
7	auth	0002_alter_permission_name_max_length	2017-04-14 16:59:15.399647+00
8	auth	0003_alter_user_email_max_length	2017-04-14 16:59:15.428396+00
9	auth	0004_alter_user_username_opts	2017-04-14 16:59:15.458185+00
10	auth	0005_alter_user_last_login_null	2017-04-14 16:59:15.49226+00
11	auth	0006_require_contenttypes_0002	2017-04-14 16:59:15.494547+00
12	auth	0007_alter_validators_add_error_messages	2017-04-14 16:59:15.523871+00
13	auth	0008_alter_user_username_max_length	2017-04-14 16:59:15.557417+00
14	sessions	0001_initial	2017-04-14 16:59:15.590134+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 14, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
5bjw6h78s5m0pukcpyr48dykimxl8elf	ODQ5MDYyMmQ4ODc5ODU0YjRiNjkyNThkZDAyZWU4Y2EzZDMyM2ZiNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjcyZTU0MGMxY2FlYTZjZTE1MjE1MzQ2NTJjMGQyNDg5NDhhOGUyMzgiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-05-09 15:00:50.51032+00
1foval2ltkm6oqi9o3mn3uym88vrm733	YmI5N2YwNWI5OGFlNjIxMDkzODhkNTM2MWRhNTk2Y2Q2MjQ1NTBhNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjcyZTU0MGMxY2FlYTZjZTE1MjE1MzQ2NTJjMGQyNDg5NDhhOGUyMzgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=	2017-05-14 16:16:23.655681+00
\.


--
-- Name: HC_anamnesis_id_paciente_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_anamnesis"
    ADD CONSTRAINT "HC_anamnesis_id_paciente_id_key" UNIQUE (id_paciente_id);


--
-- Name: HC_anamnesis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_anamnesis"
    ADD CONSTRAINT "HC_anamnesis_pkey" PRIMARY KEY (id);


--
-- Name: HC_asistente_identificacion_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_asistente"
    ADD CONSTRAINT "HC_asistente_identificacion_key" UNIQUE (identificacion);


--
-- Name: HC_asistente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_asistente"
    ADD CONSTRAINT "HC_asistente_pkey" PRIMARY KEY (id);


--
-- Name: HC_asistente_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_asistente"
    ADD CONSTRAINT "HC_asistente_user_id_key" UNIQUE (user_id);


--
-- Name: HC_cita_id_paciente_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_cita"
    ADD CONSTRAINT "HC_cita_id_paciente_id_key" UNIQUE (id_paciente_id);


--
-- Name: HC_cita_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_cita"
    ADD CONSTRAINT "HC_cita_pkey" PRIMARY KEY (id);


--
-- Name: HC_diagnostico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_diagnostico"
    ADD CONSTRAINT "HC_diagnostico_pkey" PRIMARY KEY (id);


--
-- Name: HC_diente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_diente"
    ADD CONSTRAINT "HC_diente_pkey" PRIMARY KEY (id);


--
-- Name: HC_doctor_identificacion_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_doctor"
    ADD CONSTRAINT "HC_doctor_identificacion_key" UNIQUE (identificacion);


--
-- Name: HC_doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_doctor"
    ADD CONSTRAINT "HC_doctor_pkey" PRIMARY KEY (id);


--
-- Name: HC_doctor_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_doctor"
    ADD CONSTRAINT "HC_doctor_user_id_key" UNIQUE (user_id);


--
-- Name: HC_especialidad_id_doctor_especialidad_id_580051c9_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_especialidad_id_doctor"
    ADD CONSTRAINT "HC_especialidad_id_doctor_especialidad_id_580051c9_uniq" UNIQUE (especialidad_id, doctor_id);


--
-- Name: HC_especialidad_id_doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_especialidad_id_doctor"
    ADD CONSTRAINT "HC_especialidad_id_doctor_pkey" PRIMARY KEY (id);


--
-- Name: HC_especialidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_especialidad"
    ADD CONSTRAINT "HC_especialidad_pkey" PRIMARY KEY (id);


--
-- Name: HC_evolucion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_evolucion"
    ADD CONSTRAINT "HC_evolucion_pkey" PRIMARY KEY (id);


--
-- Name: HC_horarionodisponible_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_horarionodisponible"
    ADD CONSTRAINT "HC_horarionodisponible_pkey" PRIMARY KEY (id);


--
-- Name: HC_paciente_identificacion_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_paciente"
    ADD CONSTRAINT "HC_paciente_identificacion_key" UNIQUE (identificacion);


--
-- Name: HC_paciente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_paciente"
    ADD CONSTRAINT "HC_paciente_pkey" PRIMARY KEY (id);


--
-- Name: HC_paciente_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_paciente"
    ADD CONSTRAINT "HC_paciente_user_id_key" UNIQUE (user_id);


--
-- Name: HC_sede_id_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_sede_id_user"
    ADD CONSTRAINT "HC_sede_id_user_pkey" PRIMARY KEY (id);


--
-- Name: HC_sede_id_user_sede_id_885eae81_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_sede_id_user"
    ADD CONSTRAINT "HC_sede_id_user_sede_id_885eae81_uniq" UNIQUE (sede_id, user_id);


--
-- Name: HC_sede_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_sede"
    ADD CONSTRAINT "HC_sede_pkey" PRIMARY KEY (id);


--
-- Name: HC_tratamiento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_tratamiento"
    ADD CONSTRAINT "HC_tratamiento_pkey" PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: HC_asistente_identificacion_d3109f0d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_asistente_identificacion_d3109f0d_like" ON "HC_asistente" USING btree (identificacion varchar_pattern_ops);


--
-- Name: HC_cita_6d289ece; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_cita_6d289ece" ON "HC_cita" USING btree (id_doctor_id);


--
-- Name: HC_diente_03b2debd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_diente_03b2debd" ON "HC_diente" USING btree (id_diagnostico_id);


--
-- Name: HC_diente_2e597146; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_diente_2e597146" ON "HC_diente" USING btree (id_tratamiento_id);


--
-- Name: HC_diente_f726a878; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_diente_f726a878" ON "HC_diente" USING btree (id_paciente_id);


--
-- Name: HC_doctor_identificacion_204c0d41_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_doctor_identificacion_204c0d41_like" ON "HC_doctor" USING btree (identificacion varchar_pattern_ops);


--
-- Name: HC_especialidad_2e597146; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_especialidad_2e597146" ON "HC_especialidad" USING btree (id_tratamiento_id);


--
-- Name: HC_especialidad_id_doctor_8a03056c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_especialidad_id_doctor_8a03056c" ON "HC_especialidad_id_doctor" USING btree (especialidad_id);


--
-- Name: HC_especialidad_id_doctor_d4d6bd50; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_especialidad_id_doctor_d4d6bd50" ON "HC_especialidad_id_doctor" USING btree (doctor_id);


--
-- Name: HC_evolucion_6039228a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_evolucion_6039228a" ON "HC_evolucion" USING btree (id_diente_id);


--
-- Name: HC_evolucion_f726a878; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_evolucion_f726a878" ON "HC_evolucion" USING btree (id_paciente_id);


--
-- Name: HC_horarionodisponible_6d289ece; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_horarionodisponible_6d289ece" ON "HC_horarionodisponible" USING btree (id_doctor_id);


--
-- Name: HC_paciente_identificacion_77c9a864_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_paciente_identificacion_77c9a864_like" ON "HC_paciente" USING btree (identificacion varchar_pattern_ops);


--
-- Name: HC_sede_id_user_0687f864; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_sede_id_user_0687f864" ON "HC_sede_id_user" USING btree (sede_id);


--
-- Name: HC_sede_id_user_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HC_sede_id_user_e8701ad4" ON "HC_sede_id_user" USING btree (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: HC_anamnesis_id_paciente_id_2acbd3a3_fk_HC_paciente_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_anamnesis"
    ADD CONSTRAINT "HC_anamnesis_id_paciente_id_2acbd3a3_fk_HC_paciente_id" FOREIGN KEY (id_paciente_id) REFERENCES "HC_paciente"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_asistente_user_id_61577e49_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_asistente"
    ADD CONSTRAINT "HC_asistente_user_id_61577e49_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_cita_id_doctor_id_b90246e5_fk_HC_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_cita"
    ADD CONSTRAINT "HC_cita_id_doctor_id_b90246e5_fk_HC_doctor_id" FOREIGN KEY (id_doctor_id) REFERENCES "HC_doctor"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_cita_id_paciente_id_b2ff28b4_fk_HC_paciente_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_cita"
    ADD CONSTRAINT "HC_cita_id_paciente_id_b2ff28b4_fk_HC_paciente_id" FOREIGN KEY (id_paciente_id) REFERENCES "HC_paciente"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_diente_id_diagnostico_id_f37991ed_fk_HC_diagnostico_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_diente"
    ADD CONSTRAINT "HC_diente_id_diagnostico_id_f37991ed_fk_HC_diagnostico_id" FOREIGN KEY (id_diagnostico_id) REFERENCES "HC_diagnostico"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_diente_id_paciente_id_1db2b856_fk_HC_paciente_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_diente"
    ADD CONSTRAINT "HC_diente_id_paciente_id_1db2b856_fk_HC_paciente_id" FOREIGN KEY (id_paciente_id) REFERENCES "HC_paciente"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_diente_id_tratamiento_id_9a369259_fk_HC_tratamiento_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_diente"
    ADD CONSTRAINT "HC_diente_id_tratamiento_id_9a369259_fk_HC_tratamiento_id" FOREIGN KEY (id_tratamiento_id) REFERENCES "HC_tratamiento"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_doctor_user_id_f56ef822_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_doctor"
    ADD CONSTRAINT "HC_doctor_user_id_f56ef822_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_especialidad__especialidad_id_32aec86e_fk_HC_especialidad_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_especialidad_id_doctor"
    ADD CONSTRAINT "HC_especialidad__especialidad_id_32aec86e_fk_HC_especialidad_id" FOREIGN KEY (especialidad_id) REFERENCES "HC_especialidad"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_especialidad_id_doctor_doctor_id_daf6af9f_fk_HC_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_especialidad_id_doctor"
    ADD CONSTRAINT "HC_especialidad_id_doctor_doctor_id_daf6af9f_fk_HC_doctor_id" FOREIGN KEY (doctor_id) REFERENCES "HC_doctor"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_especialidad_id_tratamiento_id_7ae5fddb_fk_HC_tratamiento_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_especialidad"
    ADD CONSTRAINT "HC_especialidad_id_tratamiento_id_7ae5fddb_fk_HC_tratamiento_id" FOREIGN KEY (id_tratamiento_id) REFERENCES "HC_tratamiento"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_evolucion_id_diente_id_feb814e6_fk_HC_diente_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_evolucion"
    ADD CONSTRAINT "HC_evolucion_id_diente_id_feb814e6_fk_HC_diente_id" FOREIGN KEY (id_diente_id) REFERENCES "HC_diente"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_evolucion_id_paciente_id_8faeaa11_fk_HC_paciente_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_evolucion"
    ADD CONSTRAINT "HC_evolucion_id_paciente_id_8faeaa11_fk_HC_paciente_id" FOREIGN KEY (id_paciente_id) REFERENCES "HC_paciente"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_horarionodisponible_id_doctor_id_2630ec56_fk_HC_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_horarionodisponible"
    ADD CONSTRAINT "HC_horarionodisponible_id_doctor_id_2630ec56_fk_HC_doctor_id" FOREIGN KEY (id_doctor_id) REFERENCES "HC_doctor"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_paciente_user_id_e23f1e40_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_paciente"
    ADD CONSTRAINT "HC_paciente_user_id_e23f1e40_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_sede_id_user_sede_id_7b636f35_fk_HC_sede_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_sede_id_user"
    ADD CONSTRAINT "HC_sede_id_user_sede_id_7b636f35_fk_HC_sede_id" FOREIGN KEY (sede_id) REFERENCES "HC_sede"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HC_sede_id_user_user_id_737c2c8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HC_sede_id_user"
    ADD CONSTRAINT "HC_sede_id_user_user_id_737c2c8b_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

