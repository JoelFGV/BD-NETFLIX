--
-- PostgreSQL database dump
--

\restrict hnWP2kU46uSFeR3d7corcbdlPjKB91NwORxDAgZqBnwC0OR4P338AkcJZwZkLal

-- Dumped from database version 15.18
-- Dumped by pg_dump version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.temporada DROP CONSTRAINT temporada_idserie_fkey;
ALTER TABLE ONLY public.serie DROP CONSTRAINT serie_idobra_fkey;
ALTER TABLE ONLY public.perfilcatalogo DROP CONSTRAINT perfilcatalogo_idperfil_fkey;
ALTER TABLE ONLY public.perfilcatalogo DROP CONSTRAINT perfilcatalogo_idcatalogo_fkey;
ALTER TABLE ONLY public.perfil DROP CONSTRAINT perfil_idconta_fkey;
ALTER TABLE ONLY public.obracatalogo DROP CONSTRAINT obracatalogo_idobra_fkey;
ALTER TABLE ONLY public.obracatalogo DROP CONSTRAINT obracatalogo_idcatalogo_fkey;
ALTER TABLE ONLY public.historico DROP CONSTRAINT historico_idperfil_fkey;
ALTER TABLE ONLY public.historico DROP CONSTRAINT historico_idobra_fkey;
ALTER TABLE ONLY public.generoobra DROP CONSTRAINT generoobra_idobra_fkey;
ALTER TABLE ONLY public.generoobra DROP CONSTRAINT generoobra_idgenero_fkey;
ALTER TABLE ONLY public.filme DROP CONSTRAINT filme_idobra_fkey;
ALTER TABLE ONLY public.episodio DROP CONSTRAINT episodio_idtemporada_fkey;
ALTER TABLE ONLY public.elenco DROP CONSTRAINT elenco_idobra_fkey;
ALTER TABLE ONLY public.conta DROP CONSTRAINT conta_idendereco_fkey;
ALTER TABLE ONLY public.atoreelenco DROP CONSTRAINT atoreelenco_idelenco_fkey;
ALTER TABLE ONLY public.atoreelenco DROP CONSTRAINT atoreelenco_idator_fkey;
ALTER TABLE ONLY public.assinatura DROP CONSTRAINT assinatura_idplano_fkey;
ALTER TABLE ONLY public.assinatura DROP CONSTRAINT assinatura_idconta_fkey;
ALTER TABLE ONLY public.temporada DROP CONSTRAINT temporada_pkey;
ALTER TABLE ONLY public.serie DROP CONSTRAINT serie_pkey;
ALTER TABLE ONLY public.serie DROP CONSTRAINT serie_idobra_key;
ALTER TABLE ONLY public.plano DROP CONSTRAINT plano_pkey;
ALTER TABLE ONLY public.perfilcatalogo DROP CONSTRAINT perfilcatalogo_pkey;
ALTER TABLE ONLY public.perfil DROP CONSTRAINT perfil_pkey;
ALTER TABLE ONLY public.obracatalogo DROP CONSTRAINT obracatalogo_pkey;
ALTER TABLE ONLY public.obra DROP CONSTRAINT obra_pkey;
ALTER TABLE ONLY public.historico DROP CONSTRAINT historico_pkey;
ALTER TABLE ONLY public.generoobra DROP CONSTRAINT generoobra_pkey;
ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
ALTER TABLE ONLY public.filme DROP CONSTRAINT filme_pkey;
ALTER TABLE ONLY public.filme DROP CONSTRAINT filme_idobra_key;
ALTER TABLE ONLY public.episodio DROP CONSTRAINT episodio_pkey;
ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
ALTER TABLE ONLY public.elenco DROP CONSTRAINT elenco_pkey;
ALTER TABLE ONLY public.conta DROP CONSTRAINT conta_pkey;
ALTER TABLE ONLY public.conta DROP CONSTRAINT conta_email_key;
ALTER TABLE ONLY public.catalogo DROP CONSTRAINT catalogo_pkey;
ALTER TABLE ONLY public.atoreelenco DROP CONSTRAINT atoreelenco_pkey;
ALTER TABLE ONLY public.ator DROP CONSTRAINT ator_pkey;
ALTER TABLE ONLY public.assinatura DROP CONSTRAINT assinatura_pkey;
ALTER TABLE public.temporada ALTER COLUMN idtemporada DROP DEFAULT;
ALTER TABLE public.serie ALTER COLUMN idserie DROP DEFAULT;
ALTER TABLE public.plano ALTER COLUMN idplano DROP DEFAULT;
ALTER TABLE public.perfilcatalogo ALTER COLUMN idperfilcatalogo DROP DEFAULT;
ALTER TABLE public.perfil ALTER COLUMN idperfil DROP DEFAULT;
ALTER TABLE public.obracatalogo ALTER COLUMN idobracatalogo DROP DEFAULT;
ALTER TABLE public.obra ALTER COLUMN idobra DROP DEFAULT;
ALTER TABLE public.historico ALTER COLUMN idhistorico DROP DEFAULT;
ALTER TABLE public.generoobra ALTER COLUMN idgeneroobra DROP DEFAULT;
ALTER TABLE public.genero ALTER COLUMN idgenero DROP DEFAULT;
ALTER TABLE public.filme ALTER COLUMN idfilme DROP DEFAULT;
ALTER TABLE public.episodio ALTER COLUMN idepisodio DROP DEFAULT;
ALTER TABLE public.endereco ALTER COLUMN idendereco DROP DEFAULT;
ALTER TABLE public.elenco ALTER COLUMN idelenco DROP DEFAULT;
ALTER TABLE public.conta ALTER COLUMN idconta DROP DEFAULT;
ALTER TABLE public.catalogo ALTER COLUMN idcatalogo DROP DEFAULT;
ALTER TABLE public.atoreelenco ALTER COLUMN idatoreelenco DROP DEFAULT;
ALTER TABLE public.ator ALTER COLUMN idator DROP DEFAULT;
ALTER TABLE public.assinatura ALTER COLUMN idassinatura DROP DEFAULT;
DROP SEQUENCE public.temporada_idtemporada_seq;
DROP TABLE public.temporada;
DROP SEQUENCE public.serie_idserie_seq;
DROP TABLE public.serie;
DROP SEQUENCE public.plano_idplano_seq;
DROP TABLE public.plano;
DROP SEQUENCE public.perfilcatalogo_idperfilcatalogo_seq;
DROP TABLE public.perfilcatalogo;
DROP SEQUENCE public.perfil_idperfil_seq;
DROP TABLE public.perfil;
DROP SEQUENCE public.obracatalogo_idobracatalogo_seq;
DROP TABLE public.obracatalogo;
DROP SEQUENCE public.obra_idobra_seq;
DROP TABLE public.obra;
DROP SEQUENCE public.historico_idhistorico_seq;
DROP TABLE public.historico;
DROP SEQUENCE public.generoobra_idgeneroobra_seq;
DROP TABLE public.generoobra;
DROP SEQUENCE public.genero_idgenero_seq;
DROP TABLE public.genero;
DROP SEQUENCE public.filme_idfilme_seq;
DROP TABLE public.filme;
DROP SEQUENCE public.episodio_idepisodio_seq;
DROP TABLE public.episodio;
DROP SEQUENCE public.endereco_idendereco_seq;
DROP TABLE public.endereco;
DROP SEQUENCE public.elenco_idelenco_seq;
DROP TABLE public.elenco;
DROP SEQUENCE public.conta_idconta_seq;
DROP TABLE public.conta;
DROP SEQUENCE public.catalogo_idcatalogo_seq;
DROP TABLE public.catalogo;
DROP SEQUENCE public.atoreelenco_idatoreelenco_seq;
DROP TABLE public.atoreelenco;
DROP SEQUENCE public.ator_idator_seq;
DROP TABLE public.ator;
DROP SEQUENCE public.assinatura_idassinatura_seq;
DROP TABLE public.assinatura;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: assinatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assinatura (
    idassinatura integer NOT NULL,
    datainicio date NOT NULL,
    datafim date,
    idplano integer NOT NULL,
    idconta integer NOT NULL
);


ALTER TABLE public.assinatura OWNER TO postgres;

--
-- Name: assinatura_idassinatura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.assinatura_idassinatura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.assinatura_idassinatura_seq OWNER TO postgres;

--
-- Name: assinatura_idassinatura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.assinatura_idassinatura_seq OWNED BY public.assinatura.idassinatura;


--
-- Name: ator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ator (
    idator integer NOT NULL,
    nome character varying(150) NOT NULL,
    nacionalidade character varying(100)
);


ALTER TABLE public.ator OWNER TO postgres;

--
-- Name: ator_idator_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ator_idator_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ator_idator_seq OWNER TO postgres;

--
-- Name: ator_idator_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ator_idator_seq OWNED BY public.ator.idator;


--
-- Name: atoreelenco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.atoreelenco (
    idatoreelenco integer NOT NULL,
    nomepersonagem character varying(150),
    idelenco integer NOT NULL,
    idator integer NOT NULL
);


ALTER TABLE public.atoreelenco OWNER TO postgres;

--
-- Name: atoreelenco_idatoreelenco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.atoreelenco_idatoreelenco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.atoreelenco_idatoreelenco_seq OWNER TO postgres;

--
-- Name: atoreelenco_idatoreelenco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.atoreelenco_idatoreelenco_seq OWNED BY public.atoreelenco.idatoreelenco;


--
-- Name: catalogo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalogo (
    idcatalogo integer NOT NULL
);


ALTER TABLE public.catalogo OWNER TO postgres;

--
-- Name: catalogo_idcatalogo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalogo_idcatalogo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.catalogo_idcatalogo_seq OWNER TO postgres;

--
-- Name: catalogo_idcatalogo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalogo_idcatalogo_seq OWNED BY public.catalogo.idcatalogo;


--
-- Name: conta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conta (
    idconta integer NOT NULL,
    email character varying(200) NOT NULL,
    senha character varying(250) NOT NULL,
    idendereco integer NOT NULL
);


ALTER TABLE public.conta OWNER TO postgres;

--
-- Name: conta_idconta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conta_idconta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.conta_idconta_seq OWNER TO postgres;

--
-- Name: conta_idconta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conta_idconta_seq OWNED BY public.conta.idconta;


--
-- Name: elenco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.elenco (
    idelenco integer NOT NULL,
    idobra integer NOT NULL
);


ALTER TABLE public.elenco OWNER TO postgres;

--
-- Name: elenco_idelenco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.elenco_idelenco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.elenco_idelenco_seq OWNER TO postgres;

--
-- Name: elenco_idelenco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.elenco_idelenco_seq OWNED BY public.elenco.idelenco;


--
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco (
    idendereco integer NOT NULL,
    pais character varying(100) NOT NULL,
    estado character varying(100) NOT NULL,
    cidade character varying(100) NOT NULL
);


ALTER TABLE public.endereco OWNER TO postgres;

--
-- Name: endereco_idendereco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.endereco_idendereco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.endereco_idendereco_seq OWNER TO postgres;

--
-- Name: endereco_idendereco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.endereco_idendereco_seq OWNED BY public.endereco.idendereco;


--
-- Name: episodio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.episodio (
    idepisodio integer NOT NULL,
    idtemporada integer NOT NULL,
    titulo character varying(250) NOT NULL,
    duracaominutos integer NOT NULL,
    sinopse text
);


ALTER TABLE public.episodio OWNER TO postgres;

--
-- Name: episodio_idepisodio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.episodio_idepisodio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.episodio_idepisodio_seq OWNER TO postgres;

--
-- Name: episodio_idepisodio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.episodio_idepisodio_seq OWNED BY public.episodio.idepisodio;


--
-- Name: filme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filme (
    idfilme integer NOT NULL,
    duracaominutos integer NOT NULL,
    anolancamento integer,
    idobra integer NOT NULL
);


ALTER TABLE public.filme OWNER TO postgres;

--
-- Name: filme_idfilme_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filme_idfilme_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.filme_idfilme_seq OWNER TO postgres;

--
-- Name: filme_idfilme_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filme_idfilme_seq OWNED BY public.filme.idfilme;


--
-- Name: genero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genero (
    idgenero integer NOT NULL,
    nomegenero character varying(50) NOT NULL
);


ALTER TABLE public.genero OWNER TO postgres;

--
-- Name: genero_idgenero_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genero_idgenero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genero_idgenero_seq OWNER TO postgres;

--
-- Name: genero_idgenero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genero_idgenero_seq OWNED BY public.genero.idgenero;


--
-- Name: generoobra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.generoobra (
    idgeneroobra integer NOT NULL,
    idgenero integer NOT NULL,
    idobra integer NOT NULL
);


ALTER TABLE public.generoobra OWNER TO postgres;

--
-- Name: generoobra_idgeneroobra_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.generoobra_idgeneroobra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.generoobra_idgeneroobra_seq OWNER TO postgres;

--
-- Name: generoobra_idgeneroobra_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.generoobra_idgeneroobra_seq OWNED BY public.generoobra.idgeneroobra;


--
-- Name: historico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historico (
    idhistorico integer NOT NULL,
    datahora timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    idperfil integer NOT NULL,
    idobra integer NOT NULL
);


ALTER TABLE public.historico OWNER TO postgres;

--
-- Name: historico_idhistorico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.historico_idhistorico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.historico_idhistorico_seq OWNER TO postgres;

--
-- Name: historico_idhistorico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.historico_idhistorico_seq OWNED BY public.historico.idhistorico;


--
-- Name: obra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.obra (
    idobra integer NOT NULL,
    titulo character varying(250) NOT NULL,
    sinopse text,
    classetaria character varying(10),
    tipoobra character varying(50)
);


ALTER TABLE public.obra OWNER TO postgres;

--
-- Name: obra_idobra_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.obra_idobra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.obra_idobra_seq OWNER TO postgres;

--
-- Name: obra_idobra_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.obra_idobra_seq OWNED BY public.obra.idobra;


--
-- Name: obracatalogo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.obracatalogo (
    idobracatalogo integer NOT NULL,
    idobra integer NOT NULL,
    idcatalogo integer NOT NULL
);


ALTER TABLE public.obracatalogo OWNER TO postgres;

--
-- Name: obracatalogo_idobracatalogo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.obracatalogo_idobracatalogo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.obracatalogo_idobracatalogo_seq OWNER TO postgres;

--
-- Name: obracatalogo_idobracatalogo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.obracatalogo_idobracatalogo_seq OWNED BY public.obracatalogo.idobracatalogo;


--
-- Name: perfil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.perfil (
    idperfil integer NOT NULL,
    nome character varying(150) NOT NULL,
    avatar character varying(80),
    idconta integer NOT NULL
);


ALTER TABLE public.perfil OWNER TO postgres;

--
-- Name: perfil_idperfil_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.perfil_idperfil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.perfil_idperfil_seq OWNER TO postgres;

--
-- Name: perfil_idperfil_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.perfil_idperfil_seq OWNED BY public.perfil.idperfil;


--
-- Name: perfilcatalogo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.perfilcatalogo (
    idperfilcatalogo integer NOT NULL,
    idcatalogo integer NOT NULL,
    idperfil integer NOT NULL
);


ALTER TABLE public.perfilcatalogo OWNER TO postgres;

--
-- Name: perfilcatalogo_idperfilcatalogo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.perfilcatalogo_idperfilcatalogo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.perfilcatalogo_idperfilcatalogo_seq OWNER TO postgres;

--
-- Name: perfilcatalogo_idperfilcatalogo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.perfilcatalogo_idperfilcatalogo_seq OWNED BY public.perfilcatalogo.idperfilcatalogo;


--
-- Name: plano; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plano (
    idplano integer NOT NULL,
    nome character varying(100) NOT NULL,
    valor numeric(10,2) NOT NULL,
    duracaomeses integer NOT NULL,
    beneficios text
);


ALTER TABLE public.plano OWNER TO postgres;

--
-- Name: plano_idplano_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.plano_idplano_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.plano_idplano_seq OWNER TO postgres;

--
-- Name: plano_idplano_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.plano_idplano_seq OWNED BY public.plano.idplano;


--
-- Name: serie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.serie (
    idserie integer NOT NULL,
    qtdtemporadas integer,
    idobra integer NOT NULL
);


ALTER TABLE public.serie OWNER TO postgres;

--
-- Name: serie_idserie_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.serie_idserie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.serie_idserie_seq OWNER TO postgres;

--
-- Name: serie_idserie_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.serie_idserie_seq OWNED BY public.serie.idserie;


--
-- Name: temporada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temporada (
    idtemporada integer NOT NULL,
    numtemporada integer NOT NULL,
    qtdepisodios integer,
    anolancamento integer,
    idserie integer NOT NULL
);


ALTER TABLE public.temporada OWNER TO postgres;

--
-- Name: temporada_idtemporada_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.temporada_idtemporada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.temporada_idtemporada_seq OWNER TO postgres;

--
-- Name: temporada_idtemporada_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.temporada_idtemporada_seq OWNED BY public.temporada.idtemporada;


--
-- Name: assinatura idassinatura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assinatura ALTER COLUMN idassinatura SET DEFAULT nextval('public.assinatura_idassinatura_seq'::regclass);


--
-- Name: ator idator; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ator ALTER COLUMN idator SET DEFAULT nextval('public.ator_idator_seq'::regclass);


--
-- Name: atoreelenco idatoreelenco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atoreelenco ALTER COLUMN idatoreelenco SET DEFAULT nextval('public.atoreelenco_idatoreelenco_seq'::regclass);


--
-- Name: catalogo idcatalogo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogo ALTER COLUMN idcatalogo SET DEFAULT nextval('public.catalogo_idcatalogo_seq'::regclass);


--
-- Name: conta idconta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta ALTER COLUMN idconta SET DEFAULT nextval('public.conta_idconta_seq'::regclass);


--
-- Name: elenco idelenco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elenco ALTER COLUMN idelenco SET DEFAULT nextval('public.elenco_idelenco_seq'::regclass);


--
-- Name: endereco idendereco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco ALTER COLUMN idendereco SET DEFAULT nextval('public.endereco_idendereco_seq'::regclass);


--
-- Name: episodio idepisodio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodio ALTER COLUMN idepisodio SET DEFAULT nextval('public.episodio_idepisodio_seq'::regclass);


--
-- Name: filme idfilme; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme ALTER COLUMN idfilme SET DEFAULT nextval('public.filme_idfilme_seq'::regclass);


--
-- Name: genero idgenero; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genero ALTER COLUMN idgenero SET DEFAULT nextval('public.genero_idgenero_seq'::regclass);


--
-- Name: generoobra idgeneroobra; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generoobra ALTER COLUMN idgeneroobra SET DEFAULT nextval('public.generoobra_idgeneroobra_seq'::regclass);


--
-- Name: historico idhistorico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico ALTER COLUMN idhistorico SET DEFAULT nextval('public.historico_idhistorico_seq'::regclass);


--
-- Name: obra idobra; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.obra ALTER COLUMN idobra SET DEFAULT nextval('public.obra_idobra_seq'::regclass);


--
-- Name: obracatalogo idobracatalogo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.obracatalogo ALTER COLUMN idobracatalogo SET DEFAULT nextval('public.obracatalogo_idobracatalogo_seq'::regclass);


--
-- Name: perfil idperfil; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perfil ALTER COLUMN idperfil SET DEFAULT nextval('public.perfil_idperfil_seq'::regclass);


--
-- Name: perfilcatalogo idperfilcatalogo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perfilcatalogo ALTER COLUMN idperfilcatalogo SET DEFAULT nextval('public.perfilcatalogo_idperfilcatalogo_seq'::regclass);


--
-- Name: plano idplano; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plano ALTER COLUMN idplano SET DEFAULT nextval('public.plano_idplano_seq'::regclass);


--
-- Name: serie idserie; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serie ALTER COLUMN idserie SET DEFAULT nextval('public.serie_idserie_seq'::regclass);


--
-- Name: temporada idtemporada; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temporada ALTER COLUMN idtemporada SET DEFAULT nextval('public.temporada_idtemporada_seq'::regclass);


--
-- Data for Name: assinatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.assinatura (idassinatura, datainicio, datafim, idplano, idconta) VALUES (1, '2025-10-01', '2025-11-01', 1, 1);
INSERT INTO public.assinatura (idassinatura, datainicio, datafim, idplano, idconta) VALUES (2, '2025-11-01', '2025-12-01', 2, 1);
INSERT INTO public.assinatura (idassinatura, datainicio, datafim, idplano, idconta) VALUES (3, '2025-12-01', '2026-01-01', 3, 1);
INSERT INTO public.assinatura (idassinatura, datainicio, datafim, idplano, idconta) VALUES (4, '2026-02-01', '2026-03-01', 3, 1);
INSERT INTO public.assinatura (idassinatura, datainicio, datafim, idplano, idconta) VALUES (5, '2026-03-03', '2026-04-03', 2, 2);
INSERT INTO public.assinatura (idassinatura, datainicio, datafim, idplano, idconta) VALUES (6, '2026-03-15', '2026-04-15', 2, 3);
INSERT INTO public.assinatura (idassinatura, datainicio, datafim, idplano, idconta) VALUES (7, '2026-04-01', '2026-05-01', 3, 1);
INSERT INTO public.assinatura (idassinatura, datainicio, datafim, idplano, idconta) VALUES (8, '2026-04-01', '2026-05-01', 1, 4);
INSERT INTO public.assinatura (idassinatura, datainicio, datafim, idplano, idconta) VALUES (9, '2026-04-02', '2026-05-02', 2, 5);
INSERT INTO public.assinatura (idassinatura, datainicio, datafim, idplano, idconta) VALUES (10, '2026-04-04', '2026-05-04', 1, 2);


--
-- Data for Name: ator; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ator (idator, nome, nacionalidade) VALUES (1, 'Mason Thames', 'Americano');
INSERT INTO public.ator (idator, nome, nacionalidade) VALUES (2, 'Nico Parker', 'Britânica');
INSERT INTO public.ator (idator, nome, nacionalidade) VALUES (3, 'Matthew McConaughey', 'Americano');
INSERT INTO public.ator (idator, nome, nacionalidade) VALUES (4, 'Wes Bentley', 'Americano');
INSERT INTO public.ator (idator, nome, nacionalidade) VALUES (5, 'Bryan Cranston', 'Americano');
INSERT INTO public.ator (idator, nome, nacionalidade) VALUES (6, 'Giancarlo Esposito', 'Americano');
INSERT INTO public.ator (idator, nome, nacionalidade) VALUES (7, 'Jennifer Lawrence', 'Americano');
INSERT INTO public.ator (idator, nome, nacionalidade) VALUES (8, 'Dylan OBrien', 'Americano');


--
-- Data for Name: atoreelenco; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (1, 'Soluço', 1, 1);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (2, 'Astrid', 1, 2);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (3, 'Cooper', 2, 3);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (4, 'Doyle', 2, 4);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (5, 'Walter White', 3, 5);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (6, 'Gus Fring', 3, 6);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (7, 'Katniss Everdeen', 4, 7);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (8, 'Seneca Crane', 4, 4);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (9, 'Thomas', 5, 8);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (10, 'Jorge', 5, 6);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (11, 'Gus Fring', 6, 6);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (12, 'Moff Gideon', 7, 6);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (13, 'Stan Edgar', 8, 6);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (14, 'Frank Dawson', 9, 6);
INSERT INTO public.atoreelenco (idatoreelenco, nomepersonagem, idelenco, idator) VALUES (15, 'Tom Neville', 10, 6);


--
-- Data for Name: catalogo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.catalogo (idcatalogo) VALUES (1);
INSERT INTO public.catalogo (idcatalogo) VALUES (2);
INSERT INTO public.catalogo (idcatalogo) VALUES (3);
INSERT INTO public.catalogo (idcatalogo) VALUES (4);
INSERT INTO public.catalogo (idcatalogo) VALUES (5);


--
-- Data for Name: conta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.conta (idconta, email, senha, idendereco) VALUES (1, 'ana@gmail.com', 'Ana123', 1);
INSERT INTO public.conta (idconta, email, senha, idendereco) VALUES (2, 'bruno@gmail.com', 'Bruno321', 2);
INSERT INTO public.conta (idconta, email, senha, idendereco) VALUES (3, 'caio@gmail.com', '0C_20', 3);
INSERT INTO public.conta (idconta, email, senha, idendereco) VALUES (4, 'diana@gmail.com', 'Diana951', 4);
INSERT INTO public.conta (idconta, email, senha, idendereco) VALUES (5, 'edna@gmail.com', 'Edna123', 5);


--
-- Data for Name: elenco; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.elenco (idelenco, idobra) VALUES (1, 1);
INSERT INTO public.elenco (idelenco, idobra) VALUES (2, 2);
INSERT INTO public.elenco (idelenco, idobra) VALUES (3, 3);
INSERT INTO public.elenco (idelenco, idobra) VALUES (4, 4);
INSERT INTO public.elenco (idelenco, idobra) VALUES (5, 5);
INSERT INTO public.elenco (idelenco, idobra) VALUES (6, 6);
INSERT INTO public.elenco (idelenco, idobra) VALUES (7, 7);
INSERT INTO public.elenco (idelenco, idobra) VALUES (8, 8);
INSERT INTO public.elenco (idelenco, idobra) VALUES (9, 9);
INSERT INTO public.elenco (idelenco, idobra) VALUES (10, 10);


--
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.endereco (idendereco, pais, estado, cidade) VALUES (1, 'Brasil', 'São Paulo', 'São Paulo');
INSERT INTO public.endereco (idendereco, pais, estado, cidade) VALUES (2, 'Brasil', 'Rio de Janeiro', 'Niterói');
INSERT INTO public.endereco (idendereco, pais, estado, cidade) VALUES (3, 'Portugal', 'Lisboa', 'Lisboa');
INSERT INTO public.endereco (idendereco, pais, estado, cidade) VALUES (4, 'Brasil', 'Minas Gerais', 'Belo Horizonte');
INSERT INTO public.endereco (idendereco, pais, estado, cidade) VALUES (5, 'Canadá', 'Ontário', 'Toronto');


--
-- Data for Name: episodio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (1, 1, 'Piloto', 58, ' Professor com câncer começa a fabricar metanfetamina no deserto.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (2, 1, 'O Gato está no Saco...', 48, 'Walt e Jesse lidam com dois traficantes no porão.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (3, 2, 'Sete Trinta e Sete', 47, 'Tuco sequestra Walt e Jesse após o negócio falhar.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (4, 2, 'Na Grelha', 47, 'Walt e Jesse tentam escapar da casa do tio de Tuco.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (5, 3, 'No Más', 47, 'Walt lida com o divórcio enquanto Skyler descobre segredos.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (6, 3, 'Cavalo sem Nome', 47, 'Walt tenta se reconciliar com a família após o acidente.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (7, 4, 'Estilete', 47, 'Gus mata um capanga brutalmente para enviar um aviso.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (8, 4, 'Trinta e Oito Cano Curto', 47, 'Walt compra uma arma ilegal para tentar matar Gus.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (9, 5, 'Viver Livre ou Morrer', 43, 'Walt usa um superímã para destruir provas da polícia.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (10, 5, 'Madrigal', 47, 'Mike e Walt formam uma nova parceria para o tráfico.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (11, 6, 'Uno', 50, 'Advogado trapaceiro Jimmy McGill transforma-se no icônico e polêmico Saul.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (12, 7, 'The Mandalorian', 40, 'Caçador de recompensas protege criança misteriosa em uma galáxia perigosa.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (13, 8, 'The Name of The Game', 55, 'Vigilantes enfrentam super-heróis corruptos que abusam de seus poderes especiais.');
INSERT INTO public.episodio (idepisodio, idtemporada, titulo, duracaominutos, sinopse) VALUES (14, 9, 'Piloto', 42, 'Sobreviventes buscam respostas em mundo onde toda eletricidade parou misteriosamente.');


--
-- Data for Name: filme; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.filme (idfilme, duracaominutos, anolancamento, idobra) VALUES (1, 125, 2025, 1);
INSERT INTO public.filme (idfilme, duracaominutos, anolancamento, idobra) VALUES (2, 169, 2014, 2);
INSERT INTO public.filme (idfilme, duracaominutos, anolancamento, idobra) VALUES (3, 144, 2012, 4);
INSERT INTO public.filme (idfilme, duracaominutos, anolancamento, idobra) VALUES (4, 113, 2014, 5);
INSERT INTO public.filme (idfilme, duracaominutos, anolancamento, idobra) VALUES (5, 120, 2017, 9);


--
-- Data for Name: genero; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.genero (idgenero, nomegenero) VALUES (1, 'Fantasia');
INSERT INTO public.genero (idgenero, nomegenero) VALUES (2, 'Aventura');
INSERT INTO public.genero (idgenero, nomegenero) VALUES (3, 'Comédia');
INSERT INTO public.genero (idgenero, nomegenero) VALUES (4, 'Ação');
INSERT INTO public.genero (idgenero, nomegenero) VALUES (5, 'Drama');
INSERT INTO public.genero (idgenero, nomegenero) VALUES (6, 'Ficção Científica');
INSERT INTO public.genero (idgenero, nomegenero) VALUES (7, 'Suspense');


--
-- Data for Name: generoobra; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (1, 1, 1);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (2, 2, 1);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (3, 3, 1);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (4, 6, 2);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (5, 5, 2);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (6, 5, 3);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (7, 7, 3);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (8, 4, 4);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (9, 6, 4);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (10, 4, 5);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (11, 7, 5);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (12, 3, 6);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (13, 4, 7);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (14, 2, 8);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (15, 7, 9);
INSERT INTO public.generoobra (idgeneroobra, idgenero, idobra) VALUES (16, 5, 10);


--
-- Data for Name: historico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.historico (idhistorico, datahora, idperfil, idobra) VALUES (1, '2026-03-25 08:45:12', 7, 4);
INSERT INTO public.historico (idhistorico, datahora, idperfil, idobra) VALUES (2, '2026-03-30 10:00:05', 8, 5);
INSERT INTO public.historico (idhistorico, datahora, idperfil, idobra) VALUES (3, '2026-04-01 15:20:33', 8, 2);
INSERT INTO public.historico (idhistorico, datahora, idperfil, idobra) VALUES (4, '2026-04-03 23:59:59', 2, 1);
INSERT INTO public.historico (idhistorico, datahora, idperfil, idobra) VALUES (5, '2026-04-04 09:12:11', 2, 3);
INSERT INTO public.historico (idhistorico, datahora, idperfil, idobra) VALUES (6, '2026-04-05 18:05:42', 6, 2);
INSERT INTO public.historico (idhistorico, datahora, idperfil, idobra) VALUES (7, '2026-04-05 22:15:08', 4, 4);
INSERT INTO public.historico (idhistorico, datahora, idperfil, idobra) VALUES (8, '2026-04-06 12:30:00', 6, 4);
INSERT INTO public.historico (idhistorico, datahora, idperfil, idobra) VALUES (9, '2026-04-06 14:40:00', 5, 2);
INSERT INTO public.historico (idhistorico, datahora, idperfil, idobra) VALUES (10, '2026-04-06 14:44:52', 3, 2);


--
-- Data for Name: obra; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.obra (idobra, titulo, sinopse, classetaria, tipoobra) VALUES (1, 'Como Treinar o Seu Dragão', 'Soluço é um jovem viking que não tem capacidade para lutar contra os dragões, como é a tradição local. Sua vida muda quando ele ajuda um dragão que lhe mostra toda a verdade. Juntos, eles tentam provar que dragões e humanos podem ser amigos.', '10', 'Filme');
INSERT INTO public.obra (idobra, titulo, sinopse, classetaria, tipoobra) VALUES (2, 'Interestelar', 'As reservas naturais da Terra estão chegando ao fim e um grupo de astronautas recebe a missão de verificar possíveis planetas para receberem a população mundial, possibilitando a continuação da espécie. Cooper é chamado para liderar o grupo e aceita a missão sabendo que pode nunca mais ver os filhos. Ao lado de Brand, Jenkins e Doyle, ele seguirá em busca de um novo lar.', '10', 'Filme');
INSERT INTO public.obra (idobra, titulo, sinopse, classetaria, tipoobra) VALUES (3, 'Breaking Bad', 'narra a transformação de Walter White (Bryan Cranston), um professor de química frustrado e com câncer terminal, em um impiedoso produtor de metanfetamina. Para garantir o futuro financeiro de sua família, ele se alia ao ex-aluno Jesse Pinkman (Aaron Paul), mergulhando no perigoso mundo do crime em Albuquerque.', '16', 'Série');
INSERT INTO public.obra (idobra, titulo, sinopse, classetaria, tipoobra) VALUES (4, 'Jogos Vorazes', 'Na região antigamente conhecida como América do Norte, a Capital de Panem controla 12 distritos e os força a escolher um garoto e uma garota, conhecidos como tributos, para competir em um evento anual televisionado. Todos os cidadãos assistem aos temidos jogos, no qual os jovens lutam até a morte, de modo que apenas um saia vitorioso. A jovem Katniss Everdeen, do Distrito 12, confia na habilidade de caça e na destreza com o arco, além dos instintos aguçados, nesta competição mortal.', '14', 'Filme');
INSERT INTO public.obra (idobra, titulo, sinopse, classetaria, tipoobra) VALUES (5, 'Maze Runner', 'Em um futuro apocalíptico, o jovem Thomas é escolhido para enfrentar o sistema. Ele acorda num escuro elevador em movimento e não consegue se lembrar nem de seu nome. Na comunidade isolada em que foi abandonado, Thomas conhece outros garotos que passaram pela mesma situação. Para conseguir escapar, ele precisa descobrir os sombrios segredos guardados in sua mente e correr muito.', '14', 'Filme');
INSERT INTO public.obra (idobra, titulo, sinopse, classetaria, tipoobra) VALUES (6, 'Better Call Saul', 'Advogado trapaceiro Jimmy McGill transforma-se no icônico e polêmico Saul.', '14', 'Série');
INSERT INTO public.obra (idobra, titulo, sinopse, classetaria, tipoobra) VALUES (7, 'The Mandalorian', 'Caçador de recompensas protege criança misteriosa em uma galáxia perigosa.', '12', 'Série');
INSERT INTO public.obra (idobra, titulo, sinopse, classetaria, tipoobra) VALUES (8, 'The Boys', 'Vigilantes enfrentam super-heróis corruptos que abusam de seus poderes especiais.', '18', 'Série');
INSERT INTO public.obra (idobra, titulo, sinopse, classetaria, tipoobra) VALUES (9, 'Okja', 'Menina luta para salvar criatura gigante de uma corporação cruel.', '10', 'Filme');
INSERT INTO public.obra (idobra, titulo, sinopse, classetaria, tipoobra) VALUES (10, 'Revolution', 'Sobreviventes buscam respostas em mundo onde toda eletricidade parou misteriosamente.', '10', 'Série');


--
-- Data for Name: obracatalogo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (1, 1, 1);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (2, 2, 1);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (3, 3, 1);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (4, 4, 1);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (5, 5, 1);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (6, 2, 2);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (7, 3, 2);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (8, 4, 2);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (9, 5, 2);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (10, 2, 3);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (11, 4, 3);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (12, 1, 4);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (13, 1, 5);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (14, 3, 5);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (15, 5, 5);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (16, 6, 1);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (17, 7, 1);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (18, 8, 1);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (19, 9, 1);
INSERT INTO public.obracatalogo (idobracatalogo, idobra, idcatalogo) VALUES (20, 10, 1);


--
-- Data for Name: perfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.perfil (idperfil, nome, avatar, idconta) VALUES (1, 'Ana', 'Red_3', 1);
INSERT INTO public.perfil (idperfil, nome, avatar, idconta) VALUES (2, 'Bruno', 'Cavaleiro_2', 2);
INSERT INTO public.perfil (idperfil, nome, avatar, idconta) VALUES (3, 'Caio', 'Dragao_5', 3);
INSERT INTO public.perfil (idperfil, nome, avatar, idconta) VALUES (4, 'Diana', 'Princesa_1', 4);
INSERT INTO public.perfil (idperfil, nome, avatar, idconta) VALUES (5, 'Edna', 'Green_4', 5);
INSERT INTO public.perfil (idperfil, nome, avatar, idconta) VALUES (6, 'Fernando', 'Red_3', 4);
INSERT INTO public.perfil (idperfil, nome, avatar, idconta) VALUES (7, 'Visitas', 'Divertidamente_3', 2);
INSERT INTO public.perfil (idperfil, nome, avatar, idconta) VALUES (8, 'Maria', 'Princesa_1', 3);
INSERT INTO public.perfil (idperfil, nome, avatar, idconta) VALUES (9, 'Gabriel', 'Marvel_2', 2);


--
-- Data for Name: perfilcatalogo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.perfilcatalogo (idperfilcatalogo, idcatalogo, idperfil) VALUES (1, 1, 1);
INSERT INTO public.perfilcatalogo (idperfilcatalogo, idcatalogo, idperfil) VALUES (2, 5, 2);
INSERT INTO public.perfilcatalogo (idperfilcatalogo, idcatalogo, idperfil) VALUES (3, 1, 3);
INSERT INTO public.perfilcatalogo (idperfilcatalogo, idcatalogo, idperfil) VALUES (4, 3, 4);
INSERT INTO public.perfilcatalogo (idperfilcatalogo, idcatalogo, idperfil) VALUES (5, 1, 5);
INSERT INTO public.perfilcatalogo (idperfilcatalogo, idcatalogo, idperfil) VALUES (6, 3, 6);
INSERT INTO public.perfilcatalogo (idperfilcatalogo, idcatalogo, idperfil) VALUES (7, 1, 7);
INSERT INTO public.perfilcatalogo (idperfilcatalogo, idcatalogo, idperfil) VALUES (8, 2, 8);
INSERT INTO public.perfilcatalogo (idperfilcatalogo, idcatalogo, idperfil) VALUES (9, 1, 9);


--
-- Data for Name: plano; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.plano (idplano, nome, valor, duracaomeses, beneficios) VALUES (1, 'Padrão com anuncios', 20.90, 1, 'Veja filme em qualidade FHD com anuncios!');
INSERT INTO public.plano (idplano, nome, valor, duracaomeses, beneficios) VALUES (2, 'Padrão', 44.90, 1, 'Veja filmes em qualidade FHD!');
INSERT INTO public.plano (idplano, nome, valor, duracaomeses, beneficios) VALUES (3, 'Premium', 59.90, 1, 'Veja filmes em qualidade UHD e com HDR!');


--
-- Data for Name: serie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.serie (idserie, qtdtemporadas, idobra) VALUES (1, 5, 3);
INSERT INTO public.serie (idserie, qtdtemporadas, idobra) VALUES (2, 1, 6);
INSERT INTO public.serie (idserie, qtdtemporadas, idobra) VALUES (3, 1, 7);
INSERT INTO public.serie (idserie, qtdtemporadas, idobra) VALUES (4, 1, 8);
INSERT INTO public.serie (idserie, qtdtemporadas, idobra) VALUES (5, 1, 10);


--
-- Data for Name: temporada; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.temporada (idtemporada, numtemporada, qtdepisodios, anolancamento, idserie) VALUES (1, 1, 2, 2008, 1);
INSERT INTO public.temporada (idtemporada, numtemporada, qtdepisodios, anolancamento, idserie) VALUES (2, 2, 2, 2009, 1);
INSERT INTO public.temporada (idtemporada, numtemporada, qtdepisodios, anolancamento, idserie) VALUES (3, 3, 2, 2010, 1);
INSERT INTO public.temporada (idtemporada, numtemporada, qtdepisodios, anolancamento, idserie) VALUES (4, 4, 2, 2011, 1);
INSERT INTO public.temporada (idtemporada, numtemporada, qtdepisodios, anolancamento, idserie) VALUES (5, 5, 2, 2012, 1);
INSERT INTO public.temporada (idtemporada, numtemporada, qtdepisodios, anolancamento, idserie) VALUES (6, 1, 1, 2015, 2);
INSERT INTO public.temporada (idtemporada, numtemporada, qtdepisodios, anolancamento, idserie) VALUES (7, 1, 1, 2019, 3);
INSERT INTO public.temporada (idtemporada, numtemporada, qtdepisodios, anolancamento, idserie) VALUES (8, 1, 1, 2019, 4);
INSERT INTO public.temporada (idtemporada, numtemporada, qtdepisodios, anolancamento, idserie) VALUES (9, 1, 1, 2012, 5);


--
-- Name: assinatura_idassinatura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.assinatura_idassinatura_seq', 10, true);


--
-- Name: ator_idator_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ator_idator_seq', 8, true);


--
-- Name: atoreelenco_idatoreelenco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.atoreelenco_idatoreelenco_seq', 15, true);


--
-- Name: catalogo_idcatalogo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalogo_idcatalogo_seq', 5, true);


--
-- Name: conta_idconta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conta_idconta_seq', 5, true);


--
-- Name: elenco_idelenco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.elenco_idelenco_seq', 10, true);


--
-- Name: endereco_idendereco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_idendereco_seq', 5, true);


--
-- Name: episodio_idepisodio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.episodio_idepisodio_seq', 14, true);


--
-- Name: filme_idfilme_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filme_idfilme_seq', 5, true);


--
-- Name: genero_idgenero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genero_idgenero_seq', 7, true);


--
-- Name: generoobra_idgeneroobra_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.generoobra_idgeneroobra_seq', 16, true);


--
-- Name: historico_idhistorico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.historico_idhistorico_seq', 10, true);


--
-- Name: obra_idobra_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.obra_idobra_seq', 10, true);


--
-- Name: obracatalogo_idobracatalogo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.obracatalogo_idobracatalogo_seq', 20, true);


--
-- Name: perfil_idperfil_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.perfil_idperfil_seq', 9, true);


--
-- Name: perfilcatalogo_idperfilcatalogo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.perfilcatalogo_idperfilcatalogo_seq', 9, true);


--
-- Name: plano_idplano_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.plano_idplano_seq', 3, true);


--
-- Name: serie_idserie_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.serie_idserie_seq', 5, true);


--
-- Name: temporada_idtemporada_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.temporada_idtemporada_seq', 9, true);


--
-- Name: assinatura assinatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assinatura
    ADD CONSTRAINT assinatura_pkey PRIMARY KEY (idassinatura);


--
-- Name: ator ator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ator
    ADD CONSTRAINT ator_pkey PRIMARY KEY (idator);


--
-- Name: atoreelenco atoreelenco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atoreelenco
    ADD CONSTRAINT atoreelenco_pkey PRIMARY KEY (idatoreelenco);


--
-- Name: catalogo catalogo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogo
    ADD CONSTRAINT catalogo_pkey PRIMARY KEY (idcatalogo);


--
-- Name: conta conta_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta
    ADD CONSTRAINT conta_email_key UNIQUE (email);


--
-- Name: conta conta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta
    ADD CONSTRAINT conta_pkey PRIMARY KEY (idconta);


--
-- Name: elenco elenco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elenco
    ADD CONSTRAINT elenco_pkey PRIMARY KEY (idelenco);


--
-- Name: endereco endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (idendereco);


--
-- Name: episodio episodio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodio
    ADD CONSTRAINT episodio_pkey PRIMARY KEY (idepisodio);


--
-- Name: filme filme_idobra_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_idobra_key UNIQUE (idobra);


--
-- Name: filme filme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_pkey PRIMARY KEY (idfilme);


--
-- Name: genero genero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (idgenero);


--
-- Name: generoobra generoobra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generoobra
    ADD CONSTRAINT generoobra_pkey PRIMARY KEY (idgeneroobra);


--
-- Name: historico historico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico
    ADD CONSTRAINT historico_pkey PRIMARY KEY (idhistorico);


--
-- Name: obra obra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.obra
    ADD CONSTRAINT obra_pkey PRIMARY KEY (idobra);


--
-- Name: obracatalogo obracatalogo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.obracatalogo
    ADD CONSTRAINT obracatalogo_pkey PRIMARY KEY (idobracatalogo);


--
-- Name: perfil perfil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perfil
    ADD CONSTRAINT perfil_pkey PRIMARY KEY (idperfil);


--
-- Name: perfilcatalogo perfilcatalogo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perfilcatalogo
    ADD CONSTRAINT perfilcatalogo_pkey PRIMARY KEY (idperfilcatalogo);


--
-- Name: plano plano_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plano
    ADD CONSTRAINT plano_pkey PRIMARY KEY (idplano);


--
-- Name: serie serie_idobra_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serie
    ADD CONSTRAINT serie_idobra_key UNIQUE (idobra);


--
-- Name: serie serie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serie
    ADD CONSTRAINT serie_pkey PRIMARY KEY (idserie);


--
-- Name: temporada temporada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temporada
    ADD CONSTRAINT temporada_pkey PRIMARY KEY (idtemporada);


--
-- Name: assinatura assinatura_idconta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assinatura
    ADD CONSTRAINT assinatura_idconta_fkey FOREIGN KEY (idconta) REFERENCES public.conta(idconta);


--
-- Name: assinatura assinatura_idplano_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assinatura
    ADD CONSTRAINT assinatura_idplano_fkey FOREIGN KEY (idplano) REFERENCES public.plano(idplano);


--
-- Name: atoreelenco atoreelenco_idator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atoreelenco
    ADD CONSTRAINT atoreelenco_idator_fkey FOREIGN KEY (idator) REFERENCES public.ator(idator);


--
-- Name: atoreelenco atoreelenco_idelenco_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atoreelenco
    ADD CONSTRAINT atoreelenco_idelenco_fkey FOREIGN KEY (idelenco) REFERENCES public.elenco(idelenco);


--
-- Name: conta conta_idendereco_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta
    ADD CONSTRAINT conta_idendereco_fkey FOREIGN KEY (idendereco) REFERENCES public.endereco(idendereco);


--
-- Name: elenco elenco_idobra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elenco
    ADD CONSTRAINT elenco_idobra_fkey FOREIGN KEY (idobra) REFERENCES public.obra(idobra);


--
-- Name: episodio episodio_idtemporada_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodio
    ADD CONSTRAINT episodio_idtemporada_fkey FOREIGN KEY (idtemporada) REFERENCES public.temporada(idtemporada);


--
-- Name: filme filme_idobra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_idobra_fkey FOREIGN KEY (idobra) REFERENCES public.obra(idobra);


--
-- Name: generoobra generoobra_idgenero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generoobra
    ADD CONSTRAINT generoobra_idgenero_fkey FOREIGN KEY (idgenero) REFERENCES public.genero(idgenero);


--
-- Name: generoobra generoobra_idobra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generoobra
    ADD CONSTRAINT generoobra_idobra_fkey FOREIGN KEY (idobra) REFERENCES public.obra(idobra);


--
-- Name: historico historico_idobra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico
    ADD CONSTRAINT historico_idobra_fkey FOREIGN KEY (idobra) REFERENCES public.obra(idobra);


--
-- Name: historico historico_idperfil_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico
    ADD CONSTRAINT historico_idperfil_fkey FOREIGN KEY (idperfil) REFERENCES public.perfil(idperfil);


--
-- Name: obracatalogo obracatalogo_idcatalogo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.obracatalogo
    ADD CONSTRAINT obracatalogo_idcatalogo_fkey FOREIGN KEY (idcatalogo) REFERENCES public.catalogo(idcatalogo);


--
-- Name: obracatalogo obracatalogo_idobra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.obracatalogo
    ADD CONSTRAINT obracatalogo_idobra_fkey FOREIGN KEY (idobra) REFERENCES public.obra(idobra);


--
-- Name: perfil perfil_idconta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perfil
    ADD CONSTRAINT perfil_idconta_fkey FOREIGN KEY (idconta) REFERENCES public.conta(idconta);


--
-- Name: perfilcatalogo perfilcatalogo_idcatalogo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perfilcatalogo
    ADD CONSTRAINT perfilcatalogo_idcatalogo_fkey FOREIGN KEY (idcatalogo) REFERENCES public.catalogo(idcatalogo);


--
-- Name: perfilcatalogo perfilcatalogo_idperfil_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perfilcatalogo
    ADD CONSTRAINT perfilcatalogo_idperfil_fkey FOREIGN KEY (idperfil) REFERENCES public.perfil(idperfil);


--
-- Name: serie serie_idobra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serie
    ADD CONSTRAINT serie_idobra_fkey FOREIGN KEY (idobra) REFERENCES public.obra(idobra);


--
-- Name: temporada temporada_idserie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temporada
    ADD CONSTRAINT temporada_idserie_fkey FOREIGN KEY (idserie) REFERENCES public.serie(idserie);


--
-- PostgreSQL database dump complete
--

\unrestrict hnWP2kU46uSFeR3d7corcbdlPjKB91NwORxDAgZqBnwC0OR4P338AkcJZwZkLal

