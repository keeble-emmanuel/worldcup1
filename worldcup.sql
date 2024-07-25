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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (117, 2018, 'Final', 206, 207, 4, 2);
INSERT INTO public.games VALUES (118, 2018, 'Third Place', 208, 209, 2, 0);
INSERT INTO public.games VALUES (119, 2018, 'Semi-Final', 207, 209, 2, 1);
INSERT INTO public.games VALUES (120, 2018, 'Semi-Final', 206, 208, 1, 0);
INSERT INTO public.games VALUES (121, 2018, 'Quarter-Final', 207, 210, 3, 2);
INSERT INTO public.games VALUES (122, 2018, 'Quarter-Final', 209, 211, 2, 0);
INSERT INTO public.games VALUES (123, 2018, 'Quarter-Final', 208, 212, 2, 1);
INSERT INTO public.games VALUES (124, 2018, 'Quarter-Final', 206, 213, 2, 0);
INSERT INTO public.games VALUES (125, 2018, 'Eighth-Final', 209, 214, 2, 1);
INSERT INTO public.games VALUES (126, 2018, 'Eighth-Final', 211, 215, 1, 0);
INSERT INTO public.games VALUES (127, 2018, 'Eighth-Final', 208, 216, 3, 2);
INSERT INTO public.games VALUES (128, 2018, 'Eighth-Final', 212, 217, 2, 0);
INSERT INTO public.games VALUES (129, 2018, 'Eighth-Final', 207, 218, 2, 1);
INSERT INTO public.games VALUES (130, 2018, 'Eighth-Final', 210, 219, 2, 1);
INSERT INTO public.games VALUES (131, 2018, 'Eighth-Final', 213, 220, 2, 1);
INSERT INTO public.games VALUES (132, 2018, 'Eighth-Final', 206, 221, 4, 3);
INSERT INTO public.games VALUES (133, 2014, 'Final', 222, 221, 1, 0);
INSERT INTO public.games VALUES (134, 2014, 'Third Place', 223, 212, 3, 0);
INSERT INTO public.games VALUES (135, 2014, 'Semi-Final', 221, 223, 1, 0);
INSERT INTO public.games VALUES (136, 2014, 'Semi-Final', 222, 212, 7, 1);
INSERT INTO public.games VALUES (137, 2014, 'Quarter-Final', 223, 224, 1, 0);
INSERT INTO public.games VALUES (138, 2014, 'Quarter-Final', 221, 208, 1, 0);
INSERT INTO public.games VALUES (139, 2014, 'Quarter-Final', 212, 214, 2, 1);
INSERT INTO public.games VALUES (140, 2014, 'Quarter-Final', 222, 206, 1, 0);
INSERT INTO public.games VALUES (141, 2014, 'Eighth-Final', 212, 225, 2, 1);
INSERT INTO public.games VALUES (142, 2014, 'Eighth-Final', 214, 213, 2, 0);
INSERT INTO public.games VALUES (143, 2014, 'Eighth-Final', 206, 226, 2, 0);
INSERT INTO public.games VALUES (144, 2014, 'Eighth-Final', 222, 227, 2, 1);
INSERT INTO public.games VALUES (145, 2014, 'Eighth-Final', 223, 217, 2, 1);
INSERT INTO public.games VALUES (146, 2014, 'Eighth-Final', 224, 228, 2, 1);
INSERT INTO public.games VALUES (147, 2014, 'Eighth-Final', 221, 215, 1, 0);
INSERT INTO public.games VALUES (148, 2014, 'Eighth-Final', 208, 229, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (206, 'France');
INSERT INTO public.teams VALUES (207, 'Croatia');
INSERT INTO public.teams VALUES (208, 'Belgium');
INSERT INTO public.teams VALUES (209, 'England');
INSERT INTO public.teams VALUES (210, 'Russia');
INSERT INTO public.teams VALUES (211, 'Sweden');
INSERT INTO public.teams VALUES (212, 'Brazil');
INSERT INTO public.teams VALUES (213, 'Uruguay');
INSERT INTO public.teams VALUES (214, 'Colombia');
INSERT INTO public.teams VALUES (215, 'Switzerland');
INSERT INTO public.teams VALUES (216, 'Japan');
INSERT INTO public.teams VALUES (217, 'Mexico');
INSERT INTO public.teams VALUES (218, 'Denmark');
INSERT INTO public.teams VALUES (219, 'Spain');
INSERT INTO public.teams VALUES (220, 'Portugal');
INSERT INTO public.teams VALUES (221, 'Argentina');
INSERT INTO public.teams VALUES (222, 'Germany');
INSERT INTO public.teams VALUES (223, 'Netherlands');
INSERT INTO public.teams VALUES (224, 'Costa Rica');
INSERT INTO public.teams VALUES (225, 'Chile');
INSERT INTO public.teams VALUES (226, 'Nigeria');
INSERT INTO public.teams VALUES (227, 'Algeria');
INSERT INTO public.teams VALUES (228, 'Greece');
INSERT INTO public.teams VALUES (229, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 148, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 229, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

