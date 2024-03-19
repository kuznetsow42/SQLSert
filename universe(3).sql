--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(50),
    age_in_millions_of_years numeric(10,1),
    description text,
    galaxy_types_id integer NOT NULL,
    size_in_light_years_across numeric(10,1),
    rotation_time_in_million_years integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    planet_id integer NOT NULL,
    description text,
    age_in_millions_of_years numeric(5,1),
    distance_from_earth integer
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
    name character varying(50),
    age_in_millions_of_years numeric(5,1),
    description text,
    has_life boolean,
    planet_types_id integer,
    distance_from_earth integer,
    size_in_billions_of_km integer,
    has_ring boolean,
    galaxy_id integer NOT NULL,
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years numeric(5,1),
    distance_from_earth integer,
    is_dead boolean,
    is_part_of_multistar_system boolean,
    size_in_thousands_of_km integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000.5, 'The Milky Way is a spiral galaxy containing our Solar System.', 2, 100000.0, 200);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000.2, 'Andromeda is a spiral galaxy located near the Milky Way.', 2, 120000.0, 250);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 7000.8, 'Triangulum is a smaller spiral galaxy in the Local Group.', 2, 60000.0, 150);
INSERT INTO public.galaxy VALUES (4, 'M87', 16000.3, 'M87 is an elliptical galaxy with a supermassive black hole at its center.', 1, 150000.0, 300);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 4000.6, 'The Small Magellanic Cloud is an irregular dwarf galaxy.', 5, 20000.0, 50);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 15000.8, 'The Whirlpool Galaxy is a spiral galaxy known for its prominent spiral arms.', 2, 50000.0, 220);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Elliptical', 'Elliptical galaxies are shaped like a flattened ball or elongated sphere.');
INSERT INTO public.galaxy_types VALUES (2, 'Spiral', 'Spiral galaxies have a spiral arm structure with a central bulge.');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'Irregular galaxies have a chaotic and asymmetrical shape.');
INSERT INTO public.galaxy_types VALUES (4, 'Lenticular', 'Lenticular galaxies have a disk-like structure with a central bulge.');
INSERT INTO public.galaxy_types VALUES (5, 'Dwarf', 'Dwarf galaxies are small and dim compared to other galaxy types.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (39, 'Io', 26, 'Jupiter''s volcanic moon', 4.2, 421600);
INSERT INTO public.moon VALUES (40, 'Callisto', 27, 'One of Jupiter''s Galilean moons', 4.8, 1883000);
INSERT INTO public.moon VALUES (41, 'Ganymede', 26, 'Largest moon of Jupiter', 4.6, 671100);
INSERT INTO public.moon VALUES (42, 'Enceladus', 27, 'Icy moon of Saturn', 4.3, 238000);
INSERT INTO public.moon VALUES (43, 'Miranda', 28, 'Umbriel''s smaller companion', 4.5, 129900);
INSERT INTO public.moon VALUES (44, 'Rhea', 27, 'Saturn''s second-largest moon', 4.6, 527000);
INSERT INTO public.moon VALUES (45, 'Charon', 29, 'Pluto''s largest moon', 4.4, 19591);
INSERT INTO public.moon VALUES (46, 'Phoebe', 27, 'Saturn''s irregular-shaped moon', 4.8, 12952000);
INSERT INTO public.moon VALUES (47, 'Europa', 25, 'Galilean moon of Jupiter', 4.3, 671100);
INSERT INTO public.moon VALUES (48, 'Dione', 29, 'Saturn''s airless moon', 4.5, 377400);
INSERT INTO public.moon VALUES (49, 'Tethys', 27, 'Spongy-looking moon of Saturn', 4.7, 294660);
INSERT INTO public.moon VALUES (50, 'Iapetus', 29, 'Two-toned moon of Saturn', 4.6, 3560800);
INSERT INTO public.moon VALUES (51, 'Umbriel', 27, 'One of Uranus'' five major moons', 4.4, 266300);
INSERT INTO public.moon VALUES (52, 'Titania', 29, 'Largest moon of Uranus', 4.2, 435900);
INSERT INTO public.moon VALUES (53, 'Ariel', 27, 'Umbriel''s brighter sibling', 4.5, 191000);
INSERT INTO public.moon VALUES (54, 'Oberon', 29, 'Uranus'' outermost moon', 4.7, 583500);
INSERT INTO public.moon VALUES (1, 'Luna', 27, 'Earth''s natural satellite', 4.5, 384);
INSERT INTO public.moon VALUES (2, 'Phobos', 27, 'Mars'' innermost moon', 4.3, 9);
INSERT INTO public.moon VALUES (3, 'Europwa', 26, 'Jupiter''s moon with an icy crust', 4.8, 628400);
INSERT INTO public.moon VALUES (4, 'Titan', 27, 'Saturn''s largest moon', 4.6, 1426);
INSERT INTO public.moon VALUES (5, 'Triton', 28, 'Neptune''s largest moon', 4.5, 354);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (25, 'Mercury', 4500.2, 'Mercury is the smallest planet in the Solar System.', false, 1, 91691, 4879, false, 1, 2);
INSERT INTO public.planet VALUES (26, 'Venus', 4600.7, 'Venus is the second planet from the Sun and known for its thick atmosphere.', false, 1, 41400, 12104, false, 1, 2);
INSERT INTO public.planet VALUES (27, 'Earth', 4600.0, 'Earth is the third planet from the Sun and the only known planet with life.', true, 1, 149600, 12742, false, 1, 2);
INSERT INTO public.planet VALUES (28, 'Mars', 4400.9, 'Mars is known as the red planet and has polar ice caps.', false, 1, 227900, 6787, false, 1, 2);
INSERT INTO public.planet VALUES (29, 'Jupiter', 4600.4, 'Jupiter is the largest planet in the Solar System.', false, 2, 778500, 139822, true, 1, 2);
INSERT INTO public.planet VALUES (30, 'Saturn', 4500.5, 'Saturn is known for its prominent ring system.', false, 2, 1433000, 116464, true, 1, 2);
INSERT INTO public.planet VALUES (31, 'Uranus', 4400.3, 'Uranus is an ice giant with a unique axis tilt.', false, 3, 2877000, 50724, true, 1, 2);
INSERT INTO public.planet VALUES (32, 'Neptune', 4500.7, 'Neptune is the farthest planet from the Sun and has a blue color.', false, 3, 4503000, 49244, true, 1, 2);
INSERT INTO public.planet VALUES (33, 'Pluto', 4300.5, 'Pluto is a dwarf planet that was reclassified in 2006.', false, 4, 6000, 2370, false, 1, 2);
INSERT INTO public.planet VALUES (34, 'Kepler-186f', 2000.0, 'Kepler-186f is an exoplanet in the habitable zone.', true, 5, 50000, 10000, false, 2, 2);
INSERT INTO public.planet VALUES (35, 'HD 209458 b', 2200.0, 'HD 209458 b is an exoplanet with an atmosphere of hot gas.', false, 4, 200000, 71492, true, 2, 2);
INSERT INTO public.planet VALUES (36, 'TRAPPIST-1e', 1900.0, 'TRAPPIST-1e is an exoplanet in the TRAPPIST-1 system.', true, 5, 16000, 4000, false, 2, 2);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'Terrestrial planets are rocky and similar to Earth in composition.');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'Gas giant planets are large and primarily composed of hydrogen and helium.');
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'Ice giant planets have a composition of icy and volatile substances.');
INSERT INTO public.planet_types VALUES (4, 'Dwarf', 'Dwarf planets are small celestial bodies that do not qualify as full-fledged planets.');
INSERT INTO public.planet_types VALUES (5, 'Exoplanet', 'Exoplanets are planets that orbit a star outside of our Solar System.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type main-sequence star', 4600.0, 149600000, false, false, 1400);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 1, 'Binary star system', 6.0, 437, false, true, 2700);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 2, 'Red supergiant star', 8.5, 643, false, false, 1180000);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 'Binary star system', 2.6, 9, false, true, 3900);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, 'Red dwarf star', 5.4, 424, false, false, 198);
INSERT INTO public.star VALUES (6, 'Vega', 1, 'Bright star in the Lyra constellation', 0.5, 25, false, false, 236000000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 54, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 36, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_planet_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

