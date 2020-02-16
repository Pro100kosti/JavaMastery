--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: director; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.director (
    id integer NOT NULL,
    birth_date character varying(255),
    first_name character varying(255),
    last_name character varying(255)
);


ALTER TABLE public.director OWNER TO postgres;

--
-- Name: film; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film (
    id bigint NOT NULL,
    genre character varying(255),
    name character varying(255),
    release_date character varying(255),
    director_id_id integer
);


ALTER TABLE public.film OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: seq_film; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_film
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_film OWNER TO postgres;

--
-- Data for Name: director; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.director (id, birth_date, first_name, last_name) VALUES (1, '14.12.1979', 'Aleksandr', 'Klimov');
INSERT INTO public.director (id, birth_date, first_name, last_name) VALUES (2, '14.02.1986', 'Vladislav', 'Boev');
INSERT INTO public.director (id, birth_date, first_name, last_name) VALUES (3, '24.10.1977', 'Anna', 'Kolobaeva');
INSERT INTO public.director (id, birth_date, first_name, last_name) VALUES (4, '30.09.1983', 'Michail', 'Troich');
INSERT INTO public.director (id, birth_date, first_name, last_name) VALUES (5, '12.08.1978', 'Lidia', 'Pitko');
INSERT INTO public.director (id, birth_date, first_name, last_name) VALUES (6, '30.09.1983', 'Nicolai', 'Baker');
INSERT INTO public.director (id, birth_date, first_name, last_name) VALUES (7, '27.06.1985', 'Mikal', 'Braun');


--
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (1, 'Action', 'Bad Boys', '10.06.2006', 1);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (2, 'Action', 'Bad Boys 2', '25.09.2010', 1);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (3, 'Adventures', 'Little Academy', '21.05.2012', 1);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (4, 'Drama', 'Girl in Belarus', '09.07.1998', 3);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (5, 'Comedy', 'Good Teacher', '09.07.1998', 3);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (6, 'Drama', 'Girl in Belarus 2', '18.11.2008', 3);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (7, 'Action', 'Hawk fall', '11.11.2011', 4);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (8, 'Comedy', 'Neighbors', '03.09.2005', 5);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (10, 'Comedy', 'Neighbors 2: The End', '21.10.2012', 5);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (11, 'Adventures', 'Traveling across the world', '06.05.2007', 6);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (12, 'Action', 'Miners', '25.04.2013', 6);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (13, 'Drama', 'Fallen Angel', '10.08.2002', 7);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (14, 'Drama', 'Do not Cry', '21.07.2008', 7);
INSERT INTO public.film (id, genre, name, release_date, director_id_id) VALUES (9, 'Comedy', 'Neighbors: begins', '03.05.2009', 5);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 7, true);


--
-- Name: seq_film; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_film', 14, true);


--
-- Name: director director_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id);


--
-- Name: film film_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (id);


--
-- Name: film fk489wisyd8989w7r42ei6tjh67; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film
    ADD CONSTRAINT fk489wisyd8989w7r42ei6tjh67 FOREIGN KEY (director_id_id) REFERENCES public.director(id);


--
-- PostgreSQL database dump complete
--

