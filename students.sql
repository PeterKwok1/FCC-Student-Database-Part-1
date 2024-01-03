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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (98, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (99, 'Web Programming');
INSERT INTO public.courses VALUES (100, 'Database Systems');
INSERT INTO public.courses VALUES (101, 'Computer Networks');
INSERT INTO public.courses VALUES (102, 'SQL');
INSERT INTO public.courses VALUES (103, 'Machine Learning');
INSERT INTO public.courses VALUES (104, 'Computer Systems');
INSERT INTO public.courses VALUES (105, 'Web Applications');
INSERT INTO public.courses VALUES (106, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (107, 'Python');
INSERT INTO public.courses VALUES (108, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (109, 'Calculus');
INSERT INTO public.courses VALUES (110, 'Game Architecture');
INSERT INTO public.courses VALUES (111, 'Algorithms');
INSERT INTO public.courses VALUES (112, 'UNIX');
INSERT INTO public.courses VALUES (113, 'Server Administration');
INSERT INTO public.courses VALUES (114, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (115, 'Database Administration');
INSERT INTO public.majors VALUES (116, 'Web Development');
INSERT INTO public.majors VALUES (117, 'Data Science');
INSERT INTO public.majors VALUES (118, 'Network Engineering');
INSERT INTO public.majors VALUES (119, 'Computer Programming');
INSERT INTO public.majors VALUES (120, 'Game Design');
INSERT INTO public.majors VALUES (121, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (115, 98);
INSERT INTO public.majors_courses VALUES (116, 99);
INSERT INTO public.majors_courses VALUES (115, 100);
INSERT INTO public.majors_courses VALUES (117, 98);
INSERT INTO public.majors_courses VALUES (118, 101);
INSERT INTO public.majors_courses VALUES (115, 102);
INSERT INTO public.majors_courses VALUES (117, 103);
INSERT INTO public.majors_courses VALUES (118, 104);
INSERT INTO public.majors_courses VALUES (119, 101);
INSERT INTO public.majors_courses VALUES (115, 105);
INSERT INTO public.majors_courses VALUES (120, 106);
INSERT INTO public.majors_courses VALUES (117, 107);
INSERT INTO public.majors_courses VALUES (119, 108);
INSERT INTO public.majors_courses VALUES (121, 104);
INSERT INTO public.majors_courses VALUES (120, 109);
INSERT INTO public.majors_courses VALUES (116, 98);
INSERT INTO public.majors_courses VALUES (117, 109);
INSERT INTO public.majors_courses VALUES (116, 108);
INSERT INTO public.majors_courses VALUES (120, 110);
INSERT INTO public.majors_courses VALUES (121, 101);
INSERT INTO public.majors_courses VALUES (120, 111);
INSERT INTO public.majors_courses VALUES (121, 112);
INSERT INTO public.majors_courses VALUES (121, 113);
INSERT INTO public.majors_courses VALUES (119, 104);
INSERT INTO public.majors_courses VALUES (119, 107);
INSERT INTO public.majors_courses VALUES (118, 114);
INSERT INTO public.majors_courses VALUES (116, 105);
INSERT INTO public.majors_courses VALUES (118, 111);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (35, 'Rhea', 'Kellems', 115, 2.5);
INSERT INTO public.students VALUES (36, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (37, 'Kimberly', 'Whitley', 116, 3.8);
INSERT INTO public.students VALUES (38, 'Jimmy', 'Felipe', 115, 3.7);
INSERT INTO public.students VALUES (39, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (40, 'Casares', 'Hijo', 120, 4.0);
INSERT INTO public.students VALUES (41, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (42, 'Sterling', 'Boss', 120, 3.9);
INSERT INTO public.students VALUES (43, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (44, 'Kaija', 'Uronen', 120, 3.7);
INSERT INTO public.students VALUES (45, 'Faye', 'Conn', 120, 2.1);
INSERT INTO public.students VALUES (46, 'Efren', 'Reilly', 116, 3.9);
INSERT INTO public.students VALUES (47, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (48, 'Maxine', 'Hagenes', 115, 2.9);
INSERT INTO public.students VALUES (49, 'Larry', 'Saunders', 117, 2.2);
INSERT INTO public.students VALUES (50, 'Karl', 'Kuhar', 116, NULL);
INSERT INTO public.students VALUES (51, 'Lieke', 'Hazenveld', 120, 3.5);
INSERT INTO public.students VALUES (52, 'Obie', 'Hilpert', 116, NULL);
INSERT INTO public.students VALUES (53, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (54, 'Nathan', 'Turner', 115, 3.3);
INSERT INTO public.students VALUES (55, 'Gerald', 'Osiki', 117, 2.2);
INSERT INTO public.students VALUES (56, 'Vanya', 'Hassanah', 120, 4.0);
INSERT INTO public.students VALUES (57, 'Roxelana', 'Florescu', 115, 3.2);
INSERT INTO public.students VALUES (58, 'Helene', 'Parker', 117, 3.4);
INSERT INTO public.students VALUES (59, 'Mariana', 'Russel', 116, 1.8);
INSERT INTO public.students VALUES (60, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (61, 'Mehdi', 'Vandenberghe', 115, 1.9);
INSERT INTO public.students VALUES (62, 'Dejon', 'Howell', 116, 4.0);
INSERT INTO public.students VALUES (63, 'Aliya', 'Gulgowski', 121, 2.6);
INSERT INTO public.students VALUES (64, 'Ana', 'Tupajic', 117, 3.1);
INSERT INTO public.students VALUES (65, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 114, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 121, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 65, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

