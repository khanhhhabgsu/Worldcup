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
    round character varying NOT NULL,
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (513, 2018, 'Final', 1003, 1004, 4, 2);
INSERT INTO public.games VALUES (514, 2018, 'Third Place', 1005, 1006, 2, 0);
INSERT INTO public.games VALUES (515, 2018, 'Semi-Final', 1004, 1006, 2, 1);
INSERT INTO public.games VALUES (516, 2018, 'Semi-Final', 1003, 1005, 1, 0);
INSERT INTO public.games VALUES (517, 2018, 'Quarter-Final', 1004, 1007, 3, 2);
INSERT INTO public.games VALUES (518, 2018, 'Quarter-Final', 1006, 1008, 2, 0);
INSERT INTO public.games VALUES (519, 2018, 'Quarter-Final', 1005, 1009, 2, 1);
INSERT INTO public.games VALUES (520, 2018, 'Quarter-Final', 1003, 1010, 2, 0);
INSERT INTO public.games VALUES (521, 2018, 'Eighth-Final', 1006, 1011, 2, 1);
INSERT INTO public.games VALUES (522, 2018, 'Eighth-Final', 1008, 1012, 1, 0);
INSERT INTO public.games VALUES (523, 2018, 'Eighth-Final', 1005, 1013, 3, 2);
INSERT INTO public.games VALUES (524, 2018, 'Eighth-Final', 1009, 1014, 2, 0);
INSERT INTO public.games VALUES (525, 2018, 'Eighth-Final', 1004, 1015, 2, 1);
INSERT INTO public.games VALUES (526, 2018, 'Eighth-Final', 1007, 1016, 2, 1);
INSERT INTO public.games VALUES (527, 2018, 'Eighth-Final', 1010, 1017, 2, 1);
INSERT INTO public.games VALUES (528, 2018, 'Eighth-Final', 1003, 1018, 4, 3);
INSERT INTO public.games VALUES (529, 2014, 'Final', 1019, 1018, 1, 0);
INSERT INTO public.games VALUES (530, 2014, 'Third Place', 1020, 1009, 3, 0);
INSERT INTO public.games VALUES (531, 2014, 'Semi-Final', 1018, 1020, 1, 0);
INSERT INTO public.games VALUES (532, 2014, 'Semi-Final', 1019, 1009, 7, 1);
INSERT INTO public.games VALUES (533, 2014, 'Quarter-Final', 1020, 1021, 1, 0);
INSERT INTO public.games VALUES (534, 2014, 'Quarter-Final', 1018, 1005, 1, 0);
INSERT INTO public.games VALUES (535, 2014, 'Quarter-Final', 1009, 1011, 2, 1);
INSERT INTO public.games VALUES (536, 2014, 'Quarter-Final', 1019, 1003, 1, 0);
INSERT INTO public.games VALUES (537, 2014, 'Eighth-Final', 1009, 1022, 2, 1);
INSERT INTO public.games VALUES (538, 2014, 'Eighth-Final', 1011, 1010, 2, 0);
INSERT INTO public.games VALUES (539, 2014, 'Eighth-Final', 1003, 1023, 2, 0);
INSERT INTO public.games VALUES (540, 2014, 'Eighth-Final', 1019, 1024, 2, 1);
INSERT INTO public.games VALUES (541, 2014, 'Eighth-Final', 1020, 1014, 2, 1);
INSERT INTO public.games VALUES (542, 2014, 'Eighth-Final', 1021, 1025, 2, 1);
INSERT INTO public.games VALUES (543, 2014, 'Eighth-Final', 1018, 1012, 1, 0);
INSERT INTO public.games VALUES (544, 2014, 'Eighth-Final', 1005, 1026, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1003, 'France');
INSERT INTO public.teams VALUES (1004, 'Croatia');
INSERT INTO public.teams VALUES (1005, 'Belgium');
INSERT INTO public.teams VALUES (1006, 'England');
INSERT INTO public.teams VALUES (1007, 'Russia');
INSERT INTO public.teams VALUES (1008, 'Sweden');
INSERT INTO public.teams VALUES (1009, 'Brazil');
INSERT INTO public.teams VALUES (1010, 'Uruguay');
INSERT INTO public.teams VALUES (1011, 'Colombia');
INSERT INTO public.teams VALUES (1012, 'Switzerland');
INSERT INTO public.teams VALUES (1013, 'Japan');
INSERT INTO public.teams VALUES (1014, 'Mexico');
INSERT INTO public.teams VALUES (1015, 'Denmark');
INSERT INTO public.teams VALUES (1016, 'Spain');
INSERT INTO public.teams VALUES (1017, 'Portugal');
INSERT INTO public.teams VALUES (1018, 'Argentina');
INSERT INTO public.teams VALUES (1019, 'Germany');
INSERT INTO public.teams VALUES (1020, 'Netherlands');
INSERT INTO public.teams VALUES (1021, 'Costa Rica');
INSERT INTO public.teams VALUES (1022, 'Chile');
INSERT INTO public.teams VALUES (1023, 'Nigeria');
INSERT INTO public.teams VALUES (1024, 'Algeria');
INSERT INTO public.teams VALUES (1025, 'Greece');
INSERT INTO public.teams VALUES (1026, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 544, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1026, true);


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

