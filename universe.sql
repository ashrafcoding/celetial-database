--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    ditance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_spherical boolean,
    planet_id integer,
    has_life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: naizak; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.naizak (
    naizak_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.naizak OWNER TO freecodecamp;

--
-- Name: naizak_naizak_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.naizak_naizak_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.naizak_naizak_id_seq OWNER TO freecodecamp;

--
-- Name: naizak_naizak_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.naizak_naizak_id_seq OWNED BY public.naizak.naizak_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: naizak naizak_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.naizak ALTER COLUMN naizak_id SET DEFAULT nextval('public.naizak_naizak_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'tabana', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'canys', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'virgo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'milky', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'cygnus', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'maffei', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'dwarf', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'pluto moon', NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'mn1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, 'mnq', NULL, 2, NULL);
INSERT INTO public.moon VALUES (4, 'moo3', NULL, 1, NULL);
INSERT INTO public.moon VALUES (5, 'tyr', NULL, 4, NULL);
INSERT INTO public.moon VALUES (6, 'koy', NULL, 5, NULL);
INSERT INTO public.moon VALUES (7, 'fgt', NULL, 2, NULL);
INSERT INTO public.moon VALUES (8, 'tyt', NULL, 3, NULL);
INSERT INTO public.moon VALUES (9, 'moty', NULL, 3, NULL);
INSERT INTO public.moon VALUES (10, 'gfd', NULL, 5, NULL);
INSERT INTO public.moon VALUES (11, 'asd', NULL, 5, NULL);
INSERT INTO public.moon VALUES (12, 'bmv', NULL, 2, NULL);
INSERT INTO public.moon VALUES (13, 'tty', NULL, 6, NULL);
INSERT INTO public.moon VALUES (14, 'sdf', NULL, 4, NULL);
INSERT INTO public.moon VALUES (15, 'redw', NULL, 6, NULL);
INSERT INTO public.moon VALUES (16, 'hiuk', NULL, 3, NULL);
INSERT INTO public.moon VALUES (17, 'xds', NULL, 5, NULL);
INSERT INTO public.moon VALUES (18, 'mnx', NULL, 1, NULL);
INSERT INTO public.moon VALUES (19, 'lkf', NULL, 2, NULL);
INSERT INTO public.moon VALUES (20, 'cvm', NULL, 6, NULL);
INSERT INTO public.moon VALUES (21, 'teq', NULL, 2, NULL);
INSERT INTO public.moon VALUES (22, 'jkd', NULL, 1, NULL);
INSERT INTO public.moon VALUES (23, 'vgt', NULL, 1, NULL);


--
-- Data for Name: naizak; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.naizak VALUES (4, 'nzq', true);
INSERT INTO public.naizak VALUES (5, 'htyu', false);
INSERT INTO public.naizak VALUES (6, 'grt', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'pluto', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'earth', NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'neptune', NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'mercy', NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'saturum', NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'uranus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'mars', NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'jupitor', NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'venus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'koka', NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'lugi', NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'bato', NULL, NULL, 3);
INSERT INTO public.planet VALUES (13, 'cardio', NULL, NULL, 1);
INSERT INTO public.planet VALUES (14, 'vulga', NULL, NULL, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'cancer', NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'leo', NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'adhi', NULL, NULL, 3);
INSERT INTO public.star VALUES (5, 'andro', NULL, NULL, 4);
INSERT INTO public.star VALUES (6, 'vega', NULL, NULL, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: naizak_naizak_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.naizak_naizak_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: naizak naizak_naizak_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.naizak
    ADD CONSTRAINT naizak_naizak_id_key UNIQUE (naizak_id);


--
-- Name: naizak naizak_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.naizak
    ADD CONSTRAINT naizak_pkey PRIMARY KEY (naizak_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

