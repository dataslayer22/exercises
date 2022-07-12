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
    name character varying(30) NOT NULL,
    constellation text NOT NULL,
    type character varying(20) NOT NULL,
    number_of_galaxies integer NOT NULL,
    magnitude numeric(4,2),
    distance integer NOT NULL,
    require_telescope boolean,
    is_blackholes boolean
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
    name character varying(30) NOT NULL,
    constellation text NOT NULL,
    surface_color character varying(10) NOT NULL,
    radius_km integer,
    contain_oceans boolean,
    mass integer
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
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation text NOT NULL,
    type character varying(20) NOT NULL,
    magnitude numeric(4,2)
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation text NOT NULL,
    type character varying(25) NOT NULL,
    distance_from_earth integer NOT NULL,
    mass numeric(4,2),
    radius_km integer
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
    name character varying(30) NOT NULL,
    constellation text NOT NULL,
    common_name character varying(20),
    magnitude numeric(4,2),
    class character varying(10) NOT NULL,
    radius_km integer,
    mass integer
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
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'andromeda', 'spiral', 3, 3.44, 3, false, true);
INSERT INTO public.galaxy VALUES (2, 'Cygnus A', 'cygnus', 'radio', 2, 16.20, 757, true, true);
INSERT INTO public.galaxy VALUES (3, 'Aquarius Dwarf', 'aquarius', 'irregular', 2, 14.00, 3, true, false);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 'coma berenices', 'spiral', 4, 8.52, 17, false, false);
INSERT INTO public.galaxy VALUES (5, 'Cigar Galaxy', 'ursa major', 'starburst', 10, 8.41, 12, false, true);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'centaurus', 'elliptical', 5, 6.84, 13, false, true);
INSERT INTO public.galaxy VALUES (7, 'Butterfly', 'virgo', 'spiral', 7, 10.90, 59, true, true);
INSERT INTO public.galaxy VALUES (8, 'Terzan', 'scorpius', 'spiral', 2, 8.45, 66, true, true);
INSERT INTO public.galaxy VALUES (9, 'Eskimo', 'gemini', 'spiral', 4, 14.67, 71, true, true);
INSERT INTO public.galaxy VALUES (10, 'Leo I', 'leo', 'spheroidal', 5, 11.20, 1, false, false);
INSERT INTO public.galaxy VALUES (11, 'Fath 703', 'libra', 'spiral', 1, 11.00, 100, true, false);
INSERT INTO public.galaxy VALUES (12, 'Spindle', 'draco', 'lenticular', 3, 10.70, 50, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (6, 'lo', 'virgo', 'red', 2, false, 100);
INSERT INTO public.moon VALUES (7, 'himalia', 'virgo', 'red', 2, true, 100);
INSERT INTO public.moon VALUES (8, 'kale', 'virgo', 'orange', 4, true, 100);
INSERT INTO public.moon VALUES (9, 'kore', 'virgo', 'blue', 4, true, 100);
INSERT INTO public.moon VALUES (10, 'hegemonie', 'virgo', 'blue', 3, true, 100);
INSERT INTO public.moon VALUES (18, 'janus', 'libra', 'red', 4, false, 400);
INSERT INTO public.moon VALUES (19, 'mimus', 'libra', 'pink', 3, true, 400);
INSERT INTO public.moon VALUES (20, 'narvi', 'libra', 'green', 2, true, 400);
INSERT INTO public.moon VALUES (13, 'kari', 'gemini', 'red', 3, false, 250);
INSERT INTO public.moon VALUES (14, 'pandora', 'gemini', 'red', 1, false, 250);
INSERT INTO public.moon VALUES (15, 'phoebe', 'gemini', 'yellow', 1, true, 250);
INSERT INTO public.moon VALUES (16, 'rhea', 'gemini', 'green', 2, true, 250);
INSERT INTO public.moon VALUES (17, 'titan', 'gemini', 'yellow', 6, true, 250);
INSERT INTO public.moon VALUES (11, 'calypso', 'leo', 'orange', 3, true, 890);
INSERT INTO public.moon VALUES (12, 'hyperion', 'leo', 'orange', 3, true, 890);
INSERT INTO public.moon VALUES (1, 'euklade', 'andromeda', 'blue', 2, true, 289);
INSERT INTO public.moon VALUES (2, 'ersa', 'andromeda', 'pinnk', 3, false, 289);
INSERT INTO public.moon VALUES (3, 'elara', 'andromeda', 'yellow', 3, false, 289);
INSERT INTO public.moon VALUES (4, 'carp', 'andromeda', 'orange', 5, false, 289);
INSERT INTO public.moon VALUES (5, 'arche', 'andromeda', 'red', 2, false, 289);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Blue Snowball', 'andromeda', 'planetary', 8.60);
INSERT INTO public.nebula VALUES (2, 'Owl', 'ursa major', 'planetary', 10.00);
INSERT INTO public.nebula VALUES (3, 'Fried Egg', 'scorpius', 'protoplanetary', 12.40);
INSERT INTO public.nebula VALUES (4, 'Abell 36', 'virgo', 'planetary', 13.00);
INSERT INTO public.nebula VALUES (5, 'Frosty', 'leo', 'protoplanetary', 11.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '14 Andromedae b', 'andromeda', 'gas giant', 246, 4.80, NULL);
INSERT INTO public.planet VALUES (2, '16 Cygni B b', 'cygnus', 'gas giant', 69, 1.80, NULL);
INSERT INTO public.planet VALUES (3, '91 Aquarii b', 'aquarius', 'gas giant', 144, 3.24, NULL);
INSERT INTO public.planet VALUES (4, 'Proxima centauri b', 'centaurus', 'super earth', 4, 1.32, NULL);
INSERT INTO public.planet VALUES (6, '61 Virginis', 'virgo', 'neptune-like', 28, 18.34, NULL);
INSERT INTO public.planet VALUES (7, 'HW Virginis b', 'virgo', 'gas giant', 560, 14.56, NULL);
INSERT INTO public.planet VALUES (8, '17 Scorpii b', 'scorpius', 'gas giant', 408, 4.32, NULL);
INSERT INTO public.planet VALUES (9, 'Tau Geminorum b', 'gemini', 'gas giant', 367, 20.46, NULL);
INSERT INTO public.planet VALUES (10, 'Upsilon Leonis b', 'leo', 'gas giant', 172, 0.51, NULL);
INSERT INTO public.planet VALUES (11, 'Gamma Librae c', 'libra', 'gas giant', 155, 4.58, NULL);
INSERT INTO public.planet VALUES (12, 'Lota Draconis c', 'draco', 'gas giant', 102, 15.60, NULL);
INSERT INTO public.planet VALUES (5, '47 Ursa Majoris d', 'ursa major', 'gas giant', 45, 1.45, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Omicron Andromedae', 'andromeda', NULL, 3.62, 'B6pvSB', NULL, NULL);
INSERT INTO public.star VALUES (3, 'Delta Aquarii', 'aquarius', 'skat', 3.27, 'A3V', NULL, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'centaurus', 'toliman', 1.35, 'K1V', NULL, NULL);
INSERT INTO public.star VALUES (6, 'Beta Ursa Majoris', 'ursa major', 'merak', 2.34, 'A1V', NULL, NULL);
INSERT INTO public.star VALUES (7, 'Virginis', 'virgo', NULL, 3.73, 'A0V', NULL, NULL);
INSERT INTO public.star VALUES (8, 'Lambda Scorpii', 'scorpius', 'shaul', 1.62, 'B2IV', NULL, NULL);
INSERT INTO public.star VALUES (9, 'Beta Geminorum', 'gemini', 'pollux', 1.16, 'K0lll', NULL, NULL);
INSERT INTO public.star VALUES (10, 'Alpha Leonis', 'leo', 'regulus', 1.36, 'B7V', NULL, NULL);
INSERT INTO public.star VALUES (11, '37 Librae', 'libra', NULL, 4.61, 'K1lV', NULL, NULL);
INSERT INTO public.star VALUES (12, 'Alpha Draconis', 'draco', 'adib', 3.67, 'A0lll SB', NULL, NULL);
INSERT INTO public.star VALUES (2, 'Iota Cygni', 'cygnus', NULL, 3.76, 'A5Vn', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_key UNIQUE (constellation);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_constellation; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation UNIQUE (constellation);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star constellation_unique; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constellation_unique FOREIGN KEY (constellation) REFERENCES public.galaxy(constellation);


--
-- Name: planet constellation_unique; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constellation_unique FOREIGN KEY (constellation) REFERENCES public.star(constellation);


--
-- PostgreSQL database dump complete
--

