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