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
    name character varying(60) NOT NULL,
    galaxy_types text,
    description character varying(200),
    has_life boolean,
    age_in_million_of_years numeric(4,2)
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
    name character varying(60) NOT NULL,
    description character varying(200),
    has_life boolean,
    age_in_million_of_years numeric(4,2),
    distance_from_earth integer,
    planet_id integer
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
    name character varying(60) NOT NULL,
    description character varying(200),
    has_life boolean,
    age_in_million_of_years numeric(4,2),
    distance_from_earth integer,
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
-- Name: space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space (
    space_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.space OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_space_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_space_id_seq OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_space_id_seq OWNED BY public.space.space_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description character varying(200),
    has_life boolean,
    age_in_million_of_years numeric(4,2),
    galaxy_id integer
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space space_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space ALTER COLUMN space_id SET DEFAULT nextval('public.space_space_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda', 'Gets its name from area of the sky in which it appears', false, 15.00);
INSERT INTO public.galaxy VALUES (2, 'Backward Galaxy', 'Centaurus', 'It apperaes to rotate backward, as tips of the spiral arms', false, 20.00);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 'Sagittarius', 'The galaxy containing the Sun and its Solar system', true, 3.00);
INSERT INTO public.galaxy VALUES (4, 'Needle Galaxy', 'Coma Berencies', 'Named due its slender apperance', false, 23.00);
INSERT INTO public.galaxy VALUES (5, 'Peekaboo Galaxy', 'Hydra', 'Galaxy relatively nearby', false, 12.00);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Virgo', 'Similar in appearance to sombrero', false, 7.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 'test description', true, 12.00, 12, 1);
INSERT INTO public.moon VALUES (2, 'Moon2', NULL, false, 22.00, 22, 2);
INSERT INTO public.moon VALUES (3, 'Moon3', 'test description', true, 12.00, 12, 3);
INSERT INTO public.moon VALUES (4, 'Moon4', NULL, false, 22.00, 22, 4);
INSERT INTO public.moon VALUES (7, 'Moon5', 'test description', true, 12.00, 12, 5);
INSERT INTO public.moon VALUES (8, 'Moon6', NULL, false, 22.00, 22, 6);
INSERT INTO public.moon VALUES (9, 'Moon7', 'test description', true, 12.00, 12, 7);
INSERT INTO public.moon VALUES (10, 'Moon8', NULL, false, 22.00, 22, 8);
INSERT INTO public.moon VALUES (11, 'Moon9', 'test description', true, 12.00, 12, 9);
INSERT INTO public.moon VALUES (12, 'Moon10', NULL, false, 22.00, 22, 10);
INSERT INTO public.moon VALUES (13, 'Moon11', 'tttt', false, 34.00, 2, 11);
INSERT INTO public.moon VALUES (14, 'Moon12', NULL, false, 56.00, 9, 12);
INSERT INTO public.moon VALUES (15, 'Moon13', 'test description', true, 12.00, 12, 9);
INSERT INTO public.moon VALUES (16, 'Moon14', NULL, false, 22.00, 22, 10);
INSERT INTO public.moon VALUES (17, 'Moon15', 'tttt', false, 34.00, 2, 11);
INSERT INTO public.moon VALUES (18, 'Moon16', NULL, false, 56.00, 9, 12);
INSERT INTO public.moon VALUES (19, 'Moon17', 'test description', true, 12.00, 12, 7);
INSERT INTO public.moon VALUES (20, 'Moon18', NULL, false, 22.00, 22, 8);
INSERT INTO public.moon VALUES (21, 'Moon119', 'test description', true, 12.00, 12, 7);
INSERT INTO public.moon VALUES (22, 'Moon218', NULL, false, 22.00, 22, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'simpl the Earth', true, 14.00, 0, 1);
INSERT INTO public.planet VALUES (2, 'Planet2', NULL, false, 2.00, 3, 2);
INSERT INTO public.planet VALUES (3, 'Planet3', NULL, false, 22.00, 3, 2);
INSERT INTO public.planet VALUES (4, 'Planet4', NULL, false, 3.00, 45, 6);
INSERT INTO public.planet VALUES (5, 'Planet5', 'test description', false, 2.00, 23, 5);
INSERT INTO public.planet VALUES (6, 'Planet6', NULL, true, 12.00, 2, 3);
INSERT INTO public.planet VALUES (7, 'Planet7', 'strange planet', false, 34.00, 2, 4);
INSERT INTO public.planet VALUES (8, 'Mars', 'red planet', true, 1.00, 1, 1);
INSERT INTO public.planet VALUES (9, 'Venius', 'Scary planet', false, 56.00, 5, 5);
INSERT INTO public.planet VALUES (10, 'Planet_test', NULL, true, 12.00, 2, 3);
INSERT INTO public.planet VALUES (11, 'Pigeu', 'some planet', false, 78.00, 45, 6);
INSERT INTO public.planet VALUES (12, 'Zeon', 'true massive', true, 1.00, 2, 5);


--
-- Data for Name: space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space VALUES (1, 'Our space', 1);
INSERT INTO public.space VALUES (2, 'Not our space', 2);
INSERT INTO public.space VALUES (3, 'Misc space', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our sun)', false, 10.00, 3);
INSERT INTO public.star VALUES (2, 'MN12', 'some test description', false, 2.00, 1);
INSERT INTO public.star VALUES (3, 'Dwarf', 'Star likes to dwarfs', true, 4.00, 2);
INSERT INTO public.star VALUES (4, 'TEst', 'Named After France', false, 23.00, 4);
INSERT INTO public.star VALUES (5, 'Columbus', 'Supermassive star', false, 1.00, 5);
INSERT INTO public.star VALUES (6, 'TOLOR', 'test', false, 3.40, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_space_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_space_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: space space_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_name_key UNIQUE (name);


--
-- Name: space space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_pkey PRIMARY KEY (space_id);


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
-- Name: space space_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--