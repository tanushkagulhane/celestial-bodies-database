--
-- PostgreSQL database dump
--

\restrict DyzrjOZSQJerTruyd5gbYGQeuhhZpvgzJOZtFqeeSXmPkMkI9uafWDKVPhSo3pv

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE universe OWNER TO postgres;

\unrestrict DyzrjOZSQJerTruyd5gbYGQeuhhZpvgzJOZtFqeeSXmPkMkI9uafWDKVPhSo3pv
\connect universe
\restrict DyzrjOZSQJerTruyd5gbYGQeuhhZpvgzJOZtFqeeSXmPkMkI9uafWDKVPhSo3pv

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: comet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.comet OWNER TO postgres;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comet_comet_id_seq OWNER TO postgres;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.moon_moon_id_seq OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planet_planet_id_seq OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.star_star_id_seq OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.comet VALUES (1, 'Halley', 'Visible every 75 years', 4600, false, 6, 1);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', 'Visible to naked eye', 4600, false, 120, 1);
INSERT INTO public.comet VALUES (3, 'Shoemaker-Levy 9', 'Crashed into Jupiter', 4600, false, 778, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 0, 13600, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy', 2537000, 10100, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third largest in Local Group', 2730000, 11000, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Famous interacting galaxy', 23000000, 400, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Has a bright nucleus', 29350000, 13250, true);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Ring shaped galaxy', 496000000, 500, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths only moon', 4500, true, 0, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Larger moon of Mars', 4500, false, 225, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Smaller moon of Mars', 4500, false, 225, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Most volcanic body', 4500, true, 778, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Has subsurface ocean', 4500, true, 778, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in solar system', 4500, true, 778, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Most cratered moon', 4500, true, 778, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Has thick atmosphere', 4500, true, 1432, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Second largest of Saturn', 4500, true, 1432, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Two toned moon', 4500, true, 1432, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 'Ice covered moon', 4500, true, 1432, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', 'Has giant canyon', 4500, true, 1432, 6);
INSERT INTO public.moon VALUES (13, 'Enceladus', 'Has water geysers', 4500, true, 1432, 6);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Looks like Death Star', 4500, false, 1432, 6);
INSERT INTO public.moon VALUES (15, 'Miranda', 'Has giant cliffs', 4500, true, 2867, 7);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Brightest moon of Uranus', 4500, true, 2867, 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Darkest moon of Uranus', 4500, true, 2867, 7);
INSERT INTO public.moon VALUES (18, 'Triton', 'Orbits backwards', 4500, true, 4515, 8);
INSERT INTO public.moon VALUES (19, 'Nereid', 'Irregular shaped moon', 4500, false, 4515, 8);
INSERT INTO public.moon VALUES (20, 'Proteus', 'Dark and irregular', 4500, false, 4515, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest planet', 4500, false, true, 77, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hottest planet', 4500, false, true, 261, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet', 4500, true, true, 0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The red planet', 4500, false, true, 225, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet', 4500, false, true, 778, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Has beautiful rings', 4500, false, true, 1432, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Rotates on its side', 4500, false, true, 2867, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Farthest planet', 4500, false, true, 4515, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'Possibly habitable', 4850, false, true, 4, 5);
INSERT INTO public.planet VALUES (10, 'Proxima c', 'Super Earth candidate', 4850, false, true, 4, 5);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 'In habitable zone', 4000, false, true, 600, 2);
INSERT INTO public.planet VALUES (12, 'Kepler-442b', 'Rocky super Earth', 2900, false, true, 1206, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our star', 4600, 0, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Brightest star in night sky', 242, 9, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant', 8, 700, true, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 'Blue supergiant', 8, 860, true, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'Closest star to Sun', 4850, 4, true, 1);
INSERT INTO public.star VALUES (6, 'Alpheratz', 'Star in Andromeda', 60, 97, true, 2);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

\unrestrict DyzrjOZSQJerTruyd5gbYGQeuhhZpvgzJOZtFqeeSXmPkMkI9uafWDKVPhSo3pv

