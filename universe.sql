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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    type character varying(30) NOT NULL,
    content text,
    description_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_types character varying(100),
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    constellation character varying(30),
    magnitude numeric
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
    age_in_millions_of_years integer,
    distance_from_earth_in_km numeric,
    is_spherical boolean,
    diameter numeric,
    moon_id integer NOT NULL,
    has_life boolean,
    name character varying(100) NOT NULL,
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
    age_in_millions_of_years integer,
    planet_types character varying(100),
    distance_from_earth_in_km numeric,
    is_spherical boolean,
    diameter numeric,
    planet_id integer NOT NULL,
    has_life boolean,
    name character varying(100) NOT NULL,
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
    name character varying(100) NOT NULL,
    galaxy_id integer,
    constellation character varying(50),
    spectral_type character varying(50),
    temperature_in_k integer,
    luminosity_in_lux integer
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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


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
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES ('planet', 'Earth is rounded into an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System. Of the four rocky planets, it is the largest and most massive. Earth is about eight light-minutes away from the Sun and orbits it, taking a year (about 365.25 days) to complete one revolution.', 1, 'earth');
INSERT INTO public.description VALUES ('star', 'Sun is a 4.5 billion-year-old yellow dwarf star – a hot glowing ball of hydrogen and helium – at the center of our solar system. It''s about 93 million miles (150 million kilometers) from Earth and it''s our solar system''s only star.', 2, 'sun');
INSERT INTO public.description VALUES ('galaxy', 'The Milky Way is a huge collection of stars, dust and gas. It''s called a spiral galaxy because if you could view it from the top or bottom, it would look like a spinning pinwheel. The Sun is located on one of the spiral arms, about 25,000 light-years away from the center of the galaxy.', 3, 'wilky way');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('spiral', 1, 'wilky way', 'sagittarius', -21);
INSERT INTO public.galaxy VALUES ('barred irregular', 2, 'bernard''s galaxy', 'sagittarius', 9.3);
INSERT INTO public.galaxy VALUES ('spheroidal dwarf', 3, 'carina dwarf', 'carina', 11.3);
INSERT INTO public.galaxy VALUES ('radio galaxy', 4, 'cygnus a', 'cygnus', 16.3);
INSERT INTO public.galaxy VALUES ('spiral', 5, 'large magellanic cloud', 'dorado', 0.9);
INSERT INTO public.galaxy VALUES ('seyfert', 6, 'perseus a', 'perseus', 12.6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4530, 384000, true, 3474.8, 1, false, 'moon', 1);
INSERT INTO public.moon VALUES (2700, 77790000, false, 22.2, 2, false, 'phobos', 2);
INSERT INTO public.moon VALUES (4500, 77790000, false, 12.6, 3, false, 'deimos', 2);
INSERT INTO public.moon VALUES (4000, 628300000, true, 4820.6, 4, true, 'callisto', 4);
INSERT INTO public.moon VALUES (4500, 628300000, false, 3643.2, 5, false, 'io', 4);
INSERT INTO public.moon VALUES (NULL, 1272000000, false, 396.4, 6, false, 'mimas', 3);
INSERT INTO public.moon VALUES (2520, 1272000000, true, 1066, 7, true, 'tethys', 3);
INSERT INTO public.moon VALUES (1000, 1200000000, false, 5149.5, 8, false, 'titan', 3);
INSERT INTO public.moon VALUES (3000, 1200000000, false, 213, 9, false, 'phoebe', 3);
INSERT INTO public.moon VALUES (1000, 1900000000, true, 1157.8, 10, false, 'ariel', 5);
INSERT INTO public.moon VALUES (3500, 2723000000, true, 471.6, 12, true, 'miranda', 5);
INSERT INTO public.moon VALUES (4600, 2723000000, true, 1576.8, 11, true, 'titania', 5);
INSERT INTO public.moon VALUES (50, 4800000000, true, 2706.8, 13, false, 'triton', 6);
INSERT INTO public.moon VALUES (100, 4300027000, false, 148, 14, false, 'despina', 6);
INSERT INTO public.moon VALUES (4000, 1279535, false, 22, 15, false, 'calypso', 3);
INSERT INTO public.moon VALUES (NULL, 7500019640, true, 1212, 16, true, 'charon', 7);
INSERT INTO public.moon VALUES (NULL, 7498800841, false, 170, 17, false, 'namaka', 9);
INSERT INTO public.moon VALUES (NULL, 14308807628, true, 600, 18, false, 'dysnomia', 8);
INSERT INTO public.moon VALUES (NULL, NULL, true, 300, 19, NULL, 'actaea', 10);
INSERT INTO public.moon VALUES (NULL, NULL, false, 200, 20, NULL, 'weywot', 11);
INSERT INTO public.moon VALUES (NULL, NULL, true, 100, 21, NULL, 'xiangliu', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4543, 'terrestrial', NULL, true, 12756, 1, true, 'earth', 1);
INSERT INTO public.planet VALUES (4603, 'terrestrial', 54600000, false, 6779, 2, false, 'mars', 1);
INSERT INTO public.planet VALUES (4503, 'gas giant', 1564771534, false, 120536, 3, false, 'saturn', 1);
INSERT INTO public.planet VALUES (4603, 'gas giant', 714000000, false, 139820, 4, false, 'jupiter', 1);
INSERT INTO public.planet VALUES (4503, 'ice giant', 2600000000, false, 51118, 5, false, 'uranus', 1);
INSERT INTO public.planet VALUES (4503, 'ice giant', 4300000000, true, 49528, 6, false, 'neptune', 1);
INSERT INTO public.planet VALUES (4600, 'dwarf', 4800000000, true, 2376.6, 7, false, 'pluto', 1);
INSERT INTO public.planet VALUES (4503, 'dwarf', 14308770258, true, 2326, 8, false, 'eris', 1);
INSERT INTO public.planet VALUES (NULL, 'dwarf', 7498761541, false, 1632, 9, NULL, 'haumea', 1);
INSERT INTO public.planet VALUES (NULL, 'dwarf', 5550081002.97, true, 850, 10, NULL, 'salacia', 1);
INSERT INTO public.planet VALUES (NULL, 'dwarf', 6283110569.4, true, 1110, 11, NULL, 'quaoar', 1);
INSERT INTO public.planet VALUES (NULL, 'dwarf', 4891850371.89, true, 1230, 12, NULL, 'gonggong', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1, NULL, 'G2 V', 5778, 120000);
INSERT INTO public.star VALUES (2, 'vx sagittarii', 2, 'sagittarius', 'M9.8e Ia', 2900, 316700);
INSERT INTO public.star VALUES (4, 'woh g64', 5, 'dorado', 'M7.5e Ia', 2940, 600000);
INSERT INTO public.star VALUES (5, 's persei', 6, 'perseus', 'M8 Ia', NULL, 591000);
INSERT INTO public.star VALUES (6, 'r carinae', 3, 'carina', 'M7ep', NULL, 121600);
INSERT INTO public.star VALUES (3, 'nml cygni', 4, 'cygnus', 'M7.9e Ia', 2513, 500000);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY(galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY(planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY(planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY(star_id) REFERENCES public.star(star_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY(star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
