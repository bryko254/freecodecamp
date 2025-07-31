--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO postgres;

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    galaxy_types integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL
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


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    moon_types integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL
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


ALTER TABLE public.moon_moon_id_seq OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    object_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.more_info OWNER TO postgres;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO postgres;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_id integer NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    planet_types integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL
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


ALTER TABLE public.planet_planet_id_seq OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    star_types integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL
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


ALTER TABLE public.star_star_id_seq OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, true, 13600, 1, 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy', false, true, 10010, 1, 2537000.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third largest galaxy in Local Group', false, true, 12000, 1, 3000000.00);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Satellite galaxy of Milky Way', false, false, 13000, 2, 160000.00);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Satellite galaxy of Milky Way', false, false, 12000, 2, 200000.00);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Grand design spiral galaxy', false, true, 400, 1, 23000000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'Earths only natural satellite', false, true, 4530, 1, 0.38);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Larger moon of Mars', false, false, 4600, 2, 225.00);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Smaller moon of Mars', false, false, 4600, 2, 225.00);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'Most volcanically active body', false, true, 4600, 3, 628.00);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'Icy moon with subsurface ocean', false, true, 4600, 3, 628.00);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'Largest moon in solar system', false, true, 4600, 3, 628.00);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'Heavily cratered moon', false, true, 4600, 3, 628.00);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 'Moon with thick atmosphere', false, true, 4600, 4, 1275.00);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 'Moon with water geysers', false, true, 4600, 3, 1275.00);
INSERT INTO public.moon VALUES (10, 'Mimas', 6, 'Moon with large crater', false, true, 4600, 1, 1275.00);
INSERT INTO public.moon VALUES (11, 'Iapetus', 6, 'Two-toned moon', false, true, 4600, 1, 1275.00);
INSERT INTO public.moon VALUES (12, 'Rhea', 6, 'Second largest moon of Saturn', false, true, 4600, 1, 1275.00);
INSERT INTO public.moon VALUES (13, 'Tethys', 6, 'Icy moon of Saturn', false, true, 4600, 1, 1275.00);
INSERT INTO public.moon VALUES (14, 'Dione', 6, 'Dense moon of Saturn', false, true, 4600, 1, 1275.00);
INSERT INTO public.moon VALUES (15, 'Miranda', 7, 'Smallest rounded moon of Uranus', false, true, 4600, 1, 2720.00);
INSERT INTO public.moon VALUES (16, 'Ariel', 7, 'Brightest moon of Uranus', false, true, 4600, 1, 2720.00);
INSERT INTO public.moon VALUES (17, 'Umbriel', 7, 'Dark moon of Uranus', false, true, 4600, 1, 2720.00);
INSERT INTO public.moon VALUES (18, 'Titania', 7, 'Largest moon of Uranus', false, true, 4600, 1, 2720.00);
INSERT INTO public.moon VALUES (19, 'Oberon', 7, 'Outermost major moon of Uranus', false, true, 4600, 1, 2720.00);
INSERT INTO public.moon VALUES (20, 'Triton', 8, 'Largest moon of Neptune', false, true, 4600, 1, 4350.00);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.more_info VALUES (1, 1, 'Earth Facts', 'Third planet from Sun, only known planet with life');
INSERT INTO public.more_info VALUES (2, 2, 'Mars Facts', 'Fourth planet from Sun, has two small moons');
INSERT INTO public.more_info VALUES (3, 3, 'Moon Facts', 'Formed from debris after Mars-sized impact with Earth');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Our home planet', true, true, 4540, 1, 0.00);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'The red planet', false, true, 4600, 1, 225.00);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 'Hottest planet in solar system', false, true, 4600, 1, 25.00);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, 'Closest planet to Sun', false, true, 4600, 1, 77.00);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Largest planet in solar system', false, true, 4600, 2, 628.00);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Planet with prominent rings', false, true, 4600, 2, 1275.00);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Ice giant planet', false, true, 4600, 3, 2720.00);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Windiest planet', false, true, 4600, 3, 4350.00);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 2, 'Exoplanet in habitable zone', false, true, 4850, 1, 4.24);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 2, 'Super-Earth exoplanet', false, true, 4850, 4, 4.24);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bb', 3, 'Disputed exoplanet', false, true, 5000, 1, 4.37);
INSERT INTO public.planet VALUES (12, 'Barnards Star b', 5, 'Super-Earth exoplanet', false, true, 10000, 4, 5.96);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Our solar systems star', false, true, 4600, 1, 0.00);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 'Closest star to Sun', false, true, 4850, 2, 4.24);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1, 'Primary star in Alpha Centauri system', false, true, 5000, 1, 4.37);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 1, 'Secondary star in Alpha Centauri system', false, true, 5000, 1, 4.37);
INSERT INTO public.star VALUES (5, 'Barnards Star', 1, 'Red dwarf star', false, true, 10000, 2, 5.96);
INSERT INTO public.star VALUES (6, 'Sirius', 1, 'Brightest star in night sky', false, true, 300, 1, 8.66);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

