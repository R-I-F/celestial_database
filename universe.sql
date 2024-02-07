--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
    name character varying(100) NOT NULL,
    num_stars_million integer,
    distance_light_years integer,
    width numeric
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
    name character varying(100) NOT NULL,
    has_atmosphere boolean,
    planet_id integer NOT NULL,
    moon_width numeric
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
-- Name: orbit_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.orbit_info (
    orbit_info_id integer NOT NULL,
    name character varying(100) NOT NULL,
    orbit_period integer
);


ALTER TABLE public.orbit_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    has_rings boolean,
    star_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    mass_kg numeric,
    galaxy_id integer NOT NULL,
    star_width numeric
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 1000000, 2537000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 150000, 0, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 45000, 3000000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 450000, 31000000, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 100000, 25000000, NULL);
INSERT INTO public.galaxy VALUES (6, 'GN-z11', 100000, 13000000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (24, 'keplar', true, 1, NULL);
INSERT INTO public.moon VALUES (25, 'luna', false, 1, NULL);
INSERT INTO public.moon VALUES (26, 'phobos', false, 2, NULL);
INSERT INTO public.moon VALUES (27, 'titan', true, 3, NULL);
INSERT INTO public.moon VALUES (28, 'europa', true, 3, NULL);
INSERT INTO public.moon VALUES (29, 'ganymede', true, 4, NULL);
INSERT INTO public.moon VALUES (30, 'enceladus', true, 4, NULL);
INSERT INTO public.moon VALUES (31, 'triton1', true, 4, NULL);
INSERT INTO public.moon VALUES (32, 'io', false, 4, NULL);
INSERT INTO public.moon VALUES (33, 'deimos', false, 5, NULL);
INSERT INTO public.moon VALUES (34, 'callisto', true, 6, NULL);
INSERT INTO public.moon VALUES (35, 'dione', false, 6, NULL);
INSERT INTO public.moon VALUES (36, 'mimas', false, 7, NULL);
INSERT INTO public.moon VALUES (37, 'oberon', true, 8, NULL);
INSERT INTO public.moon VALUES (38, 'miranda1', true, 8, NULL);
INSERT INTO public.moon VALUES (39, 'titania', false, 8, NULL);
INSERT INTO public.moon VALUES (40, 'umbriel', false, 9, NULL);
INSERT INTO public.moon VALUES (41, 'charon', false, 10, NULL);
INSERT INTO public.moon VALUES (42, 'phoebe', false, 11, NULL);
INSERT INTO public.moon VALUES (43, 'hyperion', false, 11, NULL);
INSERT INTO public.moon VALUES (44, 'iapetus', false, 12, NULL);
INSERT INTO public.moon VALUES (45, 'ariel', true, 12, NULL);
INSERT INTO public.moon VALUES (46, 'triton', false, 13, NULL);
INSERT INTO public.moon VALUES (47, 'rhea', true, 13, NULL);
INSERT INTO public.moon VALUES (48, 'puck', false, 13, NULL);
INSERT INTO public.moon VALUES (49, 'nereid', false, 14, NULL);
INSERT INTO public.moon VALUES (50, 'proteus', false, 14, NULL);
INSERT INTO public.moon VALUES (51, 'prospero', true, 14, NULL);
INSERT INTO public.moon VALUES (52, 'miranda', false, 14, NULL);
INSERT INTO public.moon VALUES (53, 'cupid', true, 14, NULL);


--
-- Data for Name: orbit_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.orbit_info VALUES (1, 'Lunar Orbit', NULL);
INSERT INTO public.orbit_info VALUES (2, 'Solar  Orbit', NULL);
INSERT INTO public.orbit_info VALUES (3, 'Elliptical Orbit', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Aurora Prime', 'Aurora Prime is a terrestrial planet known for its shimmering blue atmosphere.', false, 1);
INSERT INTO public.planet VALUES (2, 'Nova Terra', 'Nova Terra is a lush garden world with vast oceans and towering mountains.', false, 2);
INSERT INTO public.planet VALUES (3, 'Stellaris', 'Stellaris is a technologically advanced planet with a network of interconnected mega-cities.', false, 3);
INSERT INTO public.planet VALUES (4, 'Red Vortex', 'Red Vortex is a desert planet with swirling dust storms and ancient ruins.', false, 4);
INSERT INTO public.planet VALUES (5, 'Eclipse', 'Eclipse is a gas giant with a ring system that glows with ethereal beauty.', true, 5);
INSERT INTO public.planet VALUES (6, 'Cosmic Halo', 'Cosmic Halo is a ringed ice giant with striking bands of colored clouds.', true, 6);
INSERT INTO public.planet VALUES (7, 'Celestial Haven', 'Celestial Haven is an oceanic planet with floating cities and abundant marine life.', true, 7);
INSERT INTO public.planet VALUES (8, 'Nebulae', 'Nebulae is an exotic planet with shimmering gas clouds and mysterious phenomena.', true, 8);
INSERT INTO public.planet VALUES (9, 'Luminara', 'Luminara is a dwarf planet with a bioluminescent surface that glows in the dark.', false, 9);
INSERT INTO public.planet VALUES (10, 'Aetheria', 'Aetheria is an exoplanet with a dense atmosphere and towering crystal formations.', false, 10);
INSERT INTO public.planet VALUES (11, 'Aurora Borealis', 'Aurora Borealis is a planet with breathtaking auroras that dance across the sky.', false, 11);
INSERT INTO public.planet VALUES (12, 'Elysium', 'Elysium is a paradise world with lush forests, crystal-clear lakes, and gentle rivers.', false, 12);
INSERT INTO public.planet VALUES (13, 'Stellar Forge', 'Stellar Forge is a volcanic planet with rivers of molten lava and geysers of fire.', false, 13);
INSERT INTO public.planet VALUES (14, 'Nirvana', 'Nirvana is a tranquil planet with serene landscapes and a peaceful atmosphere.', false, 14);
INSERT INTO public.planet VALUES (15, 'Eternal Twilight', 'Eternal Twilight is a tidally locked world with perpetual twilight on one side and eternal darkness on the other.', false, 15);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andromeda_Star1', 1500000000000000000000000000000, 1, NULL);
INSERT INTO public.star VALUES (2, 'Andromeda_Star2', 3200000000000000000000000000000, 1, NULL);
INSERT INTO public.star VALUES (3, 'Andromeda_Star3', 2800000000000000000000000000000, 1, NULL);
INSERT INTO public.star VALUES (4, 'MilkyWay_Star1', 2000000000000000000000000000000, 2, NULL);
INSERT INTO public.star VALUES (5, 'MilkyWay_Star2', 4500000000000000000000000000000, 2, NULL);
INSERT INTO public.star VALUES (6, 'MilkyWay_Star3', 1800000000000000000000000000000, 2, NULL);
INSERT INTO public.star VALUES (7, 'Triangulum_Star1', 1200000000000000000000000000000, 3, NULL);
INSERT INTO public.star VALUES (8, 'Triangulum_Star2', 3500000000000000000000000000000, 3, NULL);
INSERT INTO public.star VALUES (9, 'Triangulum_Star3', 2300000000000000000000000000000, 3, NULL);
INSERT INTO public.star VALUES (10, 'Whirlpool_Star1', 3800000000000000000000000000000, 4, NULL);
INSERT INTO public.star VALUES (11, 'Whirlpool_Star2', 2700000000000000000000000000000, 4, NULL);
INSERT INTO public.star VALUES (12, 'Whirlpool_Star3', 1500000000000000000000000000000, 4, NULL);
INSERT INTO public.star VALUES (13, 'Pinwheel_Star1', 1900000000000000000000000000000, 5, NULL);
INSERT INTO public.star VALUES (14, 'Pinwheel_Star2', 3400000000000000000000000000000, 5, NULL);
INSERT INTO public.star VALUES (15, 'Pinwheel_Star3', 2100000000000000000000000000000, 5, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 53, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 15, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: orbit_info orbit_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbit_info
    ADD CONSTRAINT orbit_info_pkey PRIMARY KEY (orbit_info_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: orbit_info unique_orbit_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbit_info
    ADD CONSTRAINT unique_orbit_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

