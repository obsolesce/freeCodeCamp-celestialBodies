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
-- Name: astroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astroid (
    astroid_id integer NOT NULL,
    star_id integer,
    name character varying(40) NOT NULL,
    distance_from_earth_km numeric(15,2),
    age_in_millions_of_years integer,
    description text
);


ALTER TABLE public.astroid OWNER TO freecodecamp;

--
-- Name: astroid_astroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astroid_astroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astroid_astroid_id_seq OWNER TO freecodecamp;

--
-- Name: astroid_astroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astroid_astroid_id_seq OWNED BY public.astroid.astroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth_km numeric(15,2),
    age_in_millions_of_years integer,
    has_life boolean
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
    planet_id integer,
    name character varying(40) NOT NULL,
    distance_from_earth_km numeric(15,2),
    age_in_millions_of_years integer,
    description text
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(40) NOT NULL,
    distance_from_earth_km numeric(15,2),
    age_in_millions_of_years integer,
    has_moons boolean
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
    galaxy_id integer,
    name character varying(40) NOT NULL,
    distance_from_earth_km numeric(15,2),
    age_in_millions_of_years integer,
    has_planets boolean
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
-- Name: astroid astroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid ALTER COLUMN astroid_id SET DEFAULT nextval('public.astroid_astroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astroid VALUES (1, 1, '57-sa-PRIME-hj', 1.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (2, 2, '57-sa1-A-hg', 107700000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (3, 3, '57-sa2-B-hg', 10004000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (4, 5, '57-sa3-C-hg', 10900000.00, 56, 'aaaaaa');
INSERT INTO public.astroid VALUES (5, 5, '57-sa4-E-hg', 1030000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (6, 4, '57-sa-PRIME-5-hg', 10000000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (7, 1, '57-sa1-d-JK-hg', 107700000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (8, 2, '57-sa2-B-y-hg', 10004000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (9, 6, '57-sa3-C-g-hg', 10900000.00, 56, 'aaaaaa');
INSERT INTO public.astroid VALUES (10, 4, '57-sa4-E-78-hg3', 1030000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (11, 3, '57-sa2-B-hg1', 10004000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (12, 5, '57-sa3-C-hg6', 10900000.00, 56, 'aaaaaa');
INSERT INTO public.astroid VALUES (13, 5, '57-sa4-E-hg45', 1030000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (14, 4, '57-sa-PRIME-5-hg3', 10000000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (15, 1, '57-sa1-d-JK-hg2', 107700000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (16, 2, '57-sa2-B-y-hg1', 10004000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (17, 6, '57-sa3-C-g-hg5', 10900000.00, 56, 'aaaaaa');
INSERT INTO public.astroid VALUES (18, 5, '57-sa4-E-hg45m', 1030000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (19, 4, '57-sa-PRIME-5-hg3m', 10000000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (20, 1, '57-sa1-d-JK-hg2m', 107700000.00, 5, 'aaaaaa');
INSERT INTO public.astroid VALUES (21, 2, '57-sa2-B-y-hg1m', 10004000.00, 5, 'aaaaaa');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '57-sa-PRIME', 10000000.00, 5, false);
INSERT INTO public.galaxy VALUES (2, '57-sa1', 107700000.00, 5, true);
INSERT INTO public.galaxy VALUES (3, '57-sa2', 10004000.00, 5, false);
INSERT INTO public.galaxy VALUES (4, '57-sa3', 10900000.00, 56, true);
INSERT INTO public.galaxy VALUES (5, '57-sa4', 1030000.00, 5, false);
INSERT INTO public.galaxy VALUES (6, '57-sa8', 10900000.00, 56, true);
INSERT INTO public.galaxy VALUES (7, '57-sa29', 10305000.00, 54, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, '57-sa-PRIME-hj', 1.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (2, 2, '57-sa1-A-hg', 107700000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (3, 3, '57-sa2-B-hg', 10004000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (4, 5, '57-sa3-C-hg', 10900000.00, 56, 'aaaaaa');
INSERT INTO public.moon VALUES (5, 5, '57-sa4-E-hg', 1030000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (6, 4, '57-sa-PRIME-5-hg', 10000000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (7, 1, '57-sa1-d-JK-hg', 107700000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (8, 2, '57-sa2-B-y-hg', 10004000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (9, 6, '57-sa3-C-g-hg', 10900000.00, 56, 'aaaaaa');
INSERT INTO public.moon VALUES (10, 4, '57-sa4-E-78-hg3', 1030000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (11, 3, '57-sa2-B-hg1', 10004000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (12, 5, '57-sa3-C-hg6', 10900000.00, 56, 'aaaaaa');
INSERT INTO public.moon VALUES (13, 5, '57-sa4-E-hg45', 1030000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (14, 4, '57-sa-PRIME-5-hg3', 10000000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (15, 1, '57-sa1-d-JK-hg2', 107700000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (16, 2, '57-sa2-B-y-hg1', 10004000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (17, 6, '57-sa3-C-g-hg5', 10900000.00, 56, 'aaaaaa');
INSERT INTO public.moon VALUES (18, 5, '57-sa4-E-hg45m', 1030000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (19, 4, '57-sa-PRIME-5-hg3m', 10000000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (20, 1, '57-sa1-d-JK-hg2m', 107700000.00, 5, 'aaaaaa');
INSERT INTO public.moon VALUES (21, 2, '57-sa2-B-y-hg1m', 10004000.00, 5, 'aaaaaa');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, '57-sa-PRIME-hj', 1.00, 5, false);
INSERT INTO public.planet VALUES (2, 2, '57-sa1-A-hg', 107700000.00, 5, true);
INSERT INTO public.planet VALUES (3, 3, '57-sa2-B-hg', 10004000.00, 5, false);
INSERT INTO public.planet VALUES (4, 5, '57-sa3-C-hg', 10900000.00, 56, true);
INSERT INTO public.planet VALUES (5, 5, '57-sa4-E-hg', 1030000.00, 5, false);
INSERT INTO public.planet VALUES (6, 4, '57-sa-PRIME-5-hg', 10000000.00, 5, false);
INSERT INTO public.planet VALUES (7, 1, '57-sa1-d-JK-hg', 107700000.00, 5, true);
INSERT INTO public.planet VALUES (8, 2, '57-sa2-B-y-hg', 10004000.00, 5, false);
INSERT INTO public.planet VALUES (9, 6, '57-sa3-C-g-hg', 10900000.00, 56, true);
INSERT INTO public.planet VALUES (10, 4, '57-sa4-E-78-hg3', 1030000.00, 5, false);
INSERT INTO public.planet VALUES (11, 3, '57-sa2-B-hg1', 10004000.00, 5, false);
INSERT INTO public.planet VALUES (12, 5, '57-sa3-C-hg6', 10900000.00, 56, true);
INSERT INTO public.planet VALUES (13, 5, '57-sa4-E-hg45', 1030000.00, 5, false);
INSERT INTO public.planet VALUES (14, 4, '57-sa-PRIME-5-hg3', 10000000.00, 5, false);
INSERT INTO public.planet VALUES (15, 1, '57-sa1-d-JK-hg2', 107700000.00, 5, true);
INSERT INTO public.planet VALUES (16, 2, '57-sa2-B-y-hg1', 10004000.00, 5, false);
INSERT INTO public.planet VALUES (17, 6, '57-sa3-C-g-hg5', 10900000.00, 56, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, '57-sa-PRIME', 1.00, 5, false);
INSERT INTO public.star VALUES (2, 2, '57-sa1-A', 107700000.00, 5, true);
INSERT INTO public.star VALUES (3, 3, '57-sa2-B', 10004000.00, 5, false);
INSERT INTO public.star VALUES (4, 5, '57-sa3-C', 10900000.00, 56, true);
INSERT INTO public.star VALUES (5, 5, '57-sa4-E', 1030000.00, 5, false);
INSERT INTO public.star VALUES (6, 4, '57-sa-PRIME-5', 10000000.00, 5, false);
INSERT INTO public.star VALUES (7, 1, '57-sa1-d-JK', 107700000.00, 5, true);
INSERT INTO public.star VALUES (8, 2, '57-sa2-B-y', 10004000.00, 5, false);
INSERT INTO public.star VALUES (9, 6, '57-sa3-C-g', 10900000.00, 56, true);
INSERT INTO public.star VALUES (10, 4, '57-sa4-E-78', 1030000.00, 5, false);


--
-- Name: astroid_astroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astroid_astroid_id_seq', 21, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: astroid astroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_name_key UNIQUE (name);


--
-- Name: astroid astroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_pkey PRIMARY KEY (astroid_id);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: astroid astroid_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: astroid astroid_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
