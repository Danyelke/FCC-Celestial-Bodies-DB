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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_million_years numeric(7,2),
    star_id integer NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_million_years numeric(7,2),
    galaxy_types character varying(30)
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
    description text,
    age_in_million_years numeric(7,2),
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    age_in_million_years numeric(7,2),
    moons_orbiting integer,
    has_life boolean,
    has_water boolean,
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
    name character varying(30) NOT NULL,
    description text,
    age_in_million_years numeric(7,2),
    planets_orbiting integer,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halleys Comet', 'A famous periodic comet visible from Earth approximately every 76 years.', 4567.89, 1);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp Comet', 'A bright and widely observed comet that last passed close to Earth in 1997.', 4321.75, 1);
INSERT INTO public.comet VALUES (3, 'Comet NEOWISE', 'A comet that was discovered in 2020 and was visible to the naked eye.', 100.25, 1);
INSERT INTO public.comet VALUES (4, 'Comet ISON', 'A sungrazing comet that passed close to the Sun in 2013.', 300.50, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home galaxy of earth and the solar system', 13000.00, 'barred spiral');
INSERT INTO public.galaxy VALUES (2, 'NGC 5206', NULL, NULL, 'SB0');
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', NULL, NULL, 'SBm pec');
INSERT INTO public.galaxy VALUES (4, 'Phoenix Dwarf Galaxy', NULL, NULL, 'IAm');
INSERT INTO public.galaxy VALUES (5, 'Sculptor Galaxy', NULL, NULL, 'SABc');
INSERT INTO public.galaxy VALUES (6, 'Andromeda Galaxy', 'Nearest major galaxy to the Milky Way', 10000.00, 'barred spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths only natural satellite, known for its influence on tides and lunar cycles.', 4500.50, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'A small, irregularly shaped moon that orbits Mars closely.', NULL, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller of Mars two moons, known for its smooth surface.', NULL, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'The largest moon in the solar system, orbiting Jupiter.', 4200.25, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'A heavily cratered moon of Jupiter with a relatively thin atmosphere.', NULL, 5);
INSERT INTO public.moon VALUES (6, 'Io', 'A moon of Jupiter known for its intense volcanic activity.', 3900.75, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 'A moon of Jupiter with a subsurface ocean, potentially harboring life.', NULL, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'The largest moon of Saturn and the only one with a thick atmosphere.', 4100.25, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'A small, icy moon of Saturn with active geysers and a subsurface ocean.', NULL, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 'A small, heavily cratered moon of Saturn with a distinctive large crater.', NULL, 6);
INSERT INTO public.moon VALUES (11, 'Miranda', 'A small, icy moon of Uranus with a varied and chaotic landscape.', 4000.50, 7);
INSERT INTO public.moon VALUES (12, 'Titania', 'The largest moon of Uranus, covered in ice and impact craters.', NULL, 7);
INSERT INTO public.moon VALUES (13, 'Oberon', 'A moon of Uranus with a heavily cratered surface and an icy composition.', NULL, 7);
INSERT INTO public.moon VALUES (14, 'Triton', 'The largest moon of Neptune, exhibiting active geysers and a retrograde orbit.', 4300.00, 8);
INSERT INTO public.moon VALUES (15, 'Proteus', 'A large, irregularly shaped moon of Neptune with a heavily cratered surface.', NULL, 8);
INSERT INTO public.moon VALUES (16, 'Charon', 'The largest moon of Pluto, forming a binary system with the dwarf planet.', NULL, 9);
INSERT INTO public.moon VALUES (17, 'Nereid', 'A small, irregularly shaped moon of Neptune with a highly elliptical orbit.', NULL, 8);
INSERT INTO public.moon VALUES (18, 'Rhea', 'A heavily cratered moon of Saturn with a tenuous atmosphere.', 4200.00, 6);
INSERT INTO public.moon VALUES (19, 'Dione', 'A moon of Saturn with a heavily cratered surface and linear features.', 4300.75, 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'An irregularly shaped moon of Saturn with a porous, spongy appearance.', NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the smallest planet in our solar system and closest to the Sun.', 4567.89, 0, false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun and is known for its thick, toxic atmosphere.', 4321.75, 0, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only known planet to support life.', 4100.25, 1, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is the fourth planet from the Sun and is often called the "Red Planet."', 3989.30, 2, false, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the largest planet in our solar system and is a gas giant.', 4500.00, 79, false, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is known for its prominent ring system composed of ice and dust particles.', 4600.50, 82, false, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is an ice giant and is unique for its tilted axis of rotation.', 4700.80, 27, false, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the farthest planet from the Sun and is an ice giant.', 4800.25, 14, false, false, 1);
INSERT INTO public.planet VALUES (9, 'Alpha Centauri A I', 'The innermost planet orbiting Alpha Centauri A, rocky and scorching hot.', NULL, 0, false, false, 2);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri A II', 'A terrestrial planet with a thin atmosphere, orbiting close to its parent star.', NULL, 0, false, false, 2);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri A III', 'A gas giant similar in size to Uranus, located in a distant orbit.', NULL, 14, false, false, 2);
INSERT INTO public.planet VALUES (12, 'Alpha Centauri A IV', 'An ice giant with a bluish tint, located in the outer reaches of the system.', NULL, 27, false, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Center of the Solar System', 4600.00, 8, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'The brightest star in the Alpha Centauri system', NULL, 4, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the Orion conestellation', 8000.25, 0, 1);
INSERT INTO public.star VALUES (4, 'Unnamed Star', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Andromeda A', 'The Central supermassive black hole at the heart of the Andromeda galaxy', 12000.00, 0, 6);
INSERT INTO public.star VALUES (6, 'Andromeda B', 'A binary star system located in the outer regions of the Andromeda galaxy', 6000.50, 3, 6);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: comet comet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

