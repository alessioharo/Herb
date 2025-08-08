--
-- PostgreSQL database dump
--

-- Dumped from database version 14.18 (Homebrew)
-- Dumped by pg_dump version 14.18 (Homebrew)

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
-- Name: Comic; Type: TABLE; Schema: public; Owner: alessioharo
--

CREATE TABLE public."Comic" (
    id integer NOT NULL,
    season integer NOT NULL,
    episode integer NOT NULL,
    title text NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    "imageUrl" text NOT NULL
);


ALTER TABLE public."Comic" OWNER TO alessioharo;

--
-- Name: Comic_id_seq; Type: SEQUENCE; Schema: public; Owner: alessioharo
--

CREATE SEQUENCE public."Comic_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Comic_id_seq" OWNER TO alessioharo;

--
-- Name: Comic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alessioharo
--

ALTER SEQUENCE public."Comic_id_seq" OWNED BY public."Comic".id;


--
-- Name: Panel; Type: TABLE; Schema: public; Owner: alessioharo
--

CREATE TABLE public."Panel" (
    id integer NOT NULL,
    "comicId" integer NOT NULL,
    panel integer NOT NULL,
    "imageUrl" text NOT NULL
);


ALTER TABLE public."Panel" OWNER TO alessioharo;

--
-- Name: Panel_id_seq; Type: SEQUENCE; Schema: public; Owner: alessioharo
--

CREATE SEQUENCE public."Panel_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Panel_id_seq" OWNER TO alessioharo;

--
-- Name: Panel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alessioharo
--

ALTER SEQUENCE public."Panel_id_seq" OWNED BY public."Panel".id;


--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: alessioharo
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO alessioharo;

--
-- Name: Comic id; Type: DEFAULT; Schema: public; Owner: alessioharo
--

ALTER TABLE ONLY public."Comic" ALTER COLUMN id SET DEFAULT nextval('public."Comic_id_seq"'::regclass);


--
-- Name: Panel id; Type: DEFAULT; Schema: public; Owner: alessioharo
--

ALTER TABLE ONLY public."Panel" ALTER COLUMN id SET DEFAULT nextval('public."Panel_id_seq"'::regclass);


--
-- Data for Name: Comic; Type: TABLE DATA; Schema: public; Owner: alessioharo
--

COPY public."Comic" (id, season, episode, title, date, "imageUrl") FROM stdin;
1	1	1	Corporate Cat	2020-03-21 00:00:00	https://media.herbcomic.com/herb-s01-e01-cover.jpg
2	1	2	Pizza Blacklist	2020-03-28 00:00:00	https://media.herbcomic.com/herb-s01-e02-cover.jpg
3	1	3	Special Box	2020-04-04 00:00:00	https://media.herbcomic.com/herb-s01-e03-cover.jpg
4	1	4	Houseplant Antics	2020-04-11 00:00:00	https://media.herbcomic.com/herb-s01-e04-cover.jpg
5	1	5	Meditation Follies	2020-04-18 00:00:00	https://media.herbcomic.com/herb-s01-e05-cover.jpg
6	1	6	Waterworks	2020-04-25 00:00:00	https://media.herbcomic.com/herb-s01-e06-cover.jpg
7	1	7	Hotdog Hooligan	2020-05-02 00:00:00	https://media.herbcomic.com/herb-s01-e07-cover.jpg
8	1	8	Chef Herb	2020-05-09 00:00:00	https://media.herbcomic.com/herb-s01-e08-cover.jpg
9	1	9	Ice Cream Cash	2020-05-16 00:00:00	https://media.herbcomic.com/herb-s01-e09-cover.jpg
10	2	1	Surprise	2020-07-17 00:00:00	https://media.herbcomic.com/herb-s02-e01-cover.jpg
11	2	2	Conway	2020-07-21 00:00:00	https://media.herbcomic.com/herb-s02-e02-cover.jpg
12	2	3	Letter	2020-07-24 00:00:00	https://media.herbcomic.com/herb-s02-e03-cover.jpg
13	2	4	Camera	2020-07-28 00:00:00	https://media.herbcomic.com/herb-s02-e04-cover.jpg
14	2	5	Bookworm	2020-07-31 00:00:00	https://media.herbcomic.com/herb-s02-e05-cover.jpg
15	2	6	Pants	2020-08-04 00:00:00	https://media.herbcomic.com/herb-s02-e06-cover.jpg
16	2	7	Pizza	2020-08-07 00:00:00	https://media.herbcomic.com/herb-s02-e07-cover.jpg
17	2	8	Kidneys	2020-08-11 00:00:00	https://media.herbcomic.com/herb-s02-e08-cover.jpg
18	2	9	Juice	2020-08-14 00:00:00	https://media.herbcomic.com/herb-s02-e09-cover.jpg
19	2	10	Smile	2020-08-18 00:00:00	https://media.herbcomic.com/herb-s02-e10-cover.jpg
20	2	11	Moon	2020-08-21 00:00:00	https://media.herbcomic.com/herb-s02-e11-cover.jpg
21	2	12	Stop	2020-08-25 00:00:00	https://media.herbcomic.com/herb-s02-e12-cover.jpg
22	2	13	Clown	2020-08-28 00:00:00	https://media.herbcomic.com/herb-s02-e13-cover.jpg
23	2	14	Knives	2020-09-01 00:00:00	https://media.herbcomic.com/herb-s02-e14-cover.jpg
24	2	15	Crazy	2020-09-04 00:00:00	https://media.herbcomic.com/herb-s02-e15-cover.jpg
25	2	16	Brain	2020-09-08 00:00:00	https://media.herbcomic.com/herb-s02-e16-cover.jpg
26	2	17	Window	2020-09-12 00:00:00	https://media.herbcomic.com/herb-s02-e17-cover.jpg
27	2	18	Ransom	2020-09-15 00:00:00	https://media.herbcomic.com/herb-s02-e18-cover.jpg
28	2	19	Lime	2020-09-18 00:00:00	https://media.herbcomic.com/herb-s02-e19-cover.jpg
29	2	20	Sandwich	2020-09-22 00:00:00	https://media.herbcomic.com/herb-s02-e20-cover.jpg
30	2	21	Party	2020-09-25 00:00:00	https://media.herbcomic.com/herb-s02-e21-cover.jpg
31	2	22	Urinal	2020-09-29 00:00:00	https://media.herbcomic.com/herb-s02-e22-cover.jpg
32	2	23	Mascara	2020-10-02 00:00:00	https://media.herbcomic.com/herb-s02-e23-cover.jpg
33	2	24	Game	2020-10-06 00:00:00	https://media.herbcomic.com/herb-s02-e24-cover.jpg
34	2	25	Fall	2020-10-09 00:00:00	https://media.herbcomic.com/herb-s02-e25-cover.jpg
35	2	26	Newspaper	2020-10-13 00:00:00	https://media.herbcomic.com/herb-s02-e26-cover.jpg
36	2	27	Fan	2020-10-16 00:00:00	https://media.herbcomic.com/herb-s02-e27-cover.jpg
37	2	28	Clouds	2020-10-20 00:00:00	https://media.herbcomic.com/herb-s02-e28-cover.jpg
38	2	29	Plunger	2020-10-23 00:00:00	https://media.herbcomic.com/herb-s02-e29-cover.jpg
39	2	30	Door	2020-10-27 00:00:00	https://media.herbcomic.com/herb-s02-e30-cover.jpg
40	2	31	Candy	2020-10-30 00:00:00	https://media.herbcomic.com/herb-s02-e31-cover.jpg
41	2	32	Believe	2020-11-03 00:00:00	https://media.herbcomic.com/herb-s02-e32-cover.jpg
42	2	33	Bracelet	2020-11-06 00:00:00	https://media.herbcomic.com/herb-s02-e33-cover.jpg
43	2	34	Forest	2020-11-03 00:00:00	https://media.herbcomic.com/herb-s02-e34-cover.jpg
44	2	35	Pumpkin	2020-11-13 00:00:00	https://media.herbcomic.com/herb-s02-e35-cover.jpg
45	2	36	Race	2020-11-17 00:00:00	https://media.herbcomic.com/herb-s02-e36-cover.jpg
46	2	37	Seat	2020-11-20 00:00:00	https://media.herbcomic.com/herb-s02-e37-cover.jpg
47	2	38	Pie	2020-11-24 00:00:00	https://media.herbcomic.com/herb-s02-e38-cover.jpg
48	2	39	Family	2020-11-26 00:00:00	https://media.herbcomic.com/herb-s02-e39-cover.jpg
49	2	40	Leaves	2020-11-30 00:00:00	https://media.herbcomic.com/herb-s02-e40-cover.jpg
50	2	41	Chocolate	2020-12-01 00:00:00	https://media.herbcomic.com/herb-s02-e41-cover.jpg
51	2	42	Snowball	2020-12-04 00:00:00	https://media.herbcomic.com/herb-s02-e42-cover.jpg
52	2	43	Cookie	2020-12-08 00:00:00	https://media.herbcomic.com/herb-s02-e43-cover.jpg
53	2	44	Lights	2020-12-11 00:00:00	https://media.herbcomic.com/herb-s02-e44-cover.jpg
54	2	45	Enemy	2020-12-15 00:00:00	https://media.herbcomic.com/herb-s02-e45-cover.jpg
55	2	46	Mistletoe	2020-12-18 00:00:00	https://media.herbcomic.com/herb-s02-e46-cover.jpg
56	2	47	Snowman	2020-12-22 00:00:00	https://media.herbcomic.com/herb-s02-e47-cover.jpg
57	2	48	Baby	2020-12-25 00:00:00	https://media.herbcomic.com/herb-s02-e48-cover.jpg
58	2	49	Year	2020-12-29 00:00:00	https://media.herbcomic.com/herb-s02-e49-cover.jpg
59	2	50	Rival	2021-01-01 00:00:00	https://media.herbcomic.com/herb-s02-e50-cover.jpg
60	2	51	Color	2021-01-05 00:00:00	https://media.herbcomic.com/herb-s02-e51-cover.jpg
61	2	52	Stubborn	2021-01-08 00:00:00	https://media.herbcomic.com/herb-s02-e52-cover.jpg
62	2	53	Friends	2021-01-12 00:00:00	https://media.herbcomic.com/herb-s02-e53-cover.jpg
63	2	54	Ramen	2021-01-15 00:00:00	https://media.herbcomic.com/herb-s02-e54-cover.jpg
64	2	55	Timer	2021-01-19 00:00:00	https://media.herbcomic.com/herb-s02-e55-cover.jpg
65	2	56	Boo	2021-01-22 00:00:00	https://media.herbcomic.com/herb-s02-e56-cover.jpg
66	2	57	Files	2021-01-25 00:00:00	https://media.herbcomic.com/herb-s02-e57-cover.jpg
67	2	58	Lemon	2021-01-29 00:00:00	https://media.herbcomic.com/herb-s02-e58-cover.jpg
68	2	59	Yo-Yo	2021-02-02 00:00:00	https://media.herbcomic.com/herb-s02-e59-cover.jpg
69	2	60	Salad	2021-02-05 00:00:00	https://media.herbcomic.com/herb-s02-e60-cover.jpg
70	2	61	Mailman	2021-02-09 00:00:00	https://media.herbcomic.com/herb-s02-e61-cover.jpg
71	2	62	Crush	2021-02-12 00:00:00	https://media.herbcomic.com/herb-s02-e62-cover.jpg
72	2	63	Advice	2021-02-16 00:00:00	https://media.herbcomic.com/herb-s02-e63-cover.jpg
73	2	64	Cousin	2021-02-19 00:00:00	https://media.herbcomic.com/herb-s02-e64-cover.jpg
74	2	65	Tree	2021-02-23 00:00:00	https://media.herbcomic.com/herb-s02-e65-cover.jpg
75	2	66	Festival	2021-02-26 00:00:00	https://media.herbcomic.com/herb-s02-e66-cover.jpg
76	2	67	Alcohol	2021-03-02 00:00:00	https://media.herbcomic.com/herb-s02-e67-cover.jpg
77	2	68	Forgetful	2021-03-05 00:00:00	https://media.herbcomic.com/herb-s02-e68-cover.jpg
78	2	69	Birthday	2021-03-14 00:00:00	https://media.herbcomic.com/herb-s02-e69-cover.jpg
79	3	1	Sign	2023-08-01 00:00:00	https://media.herbcomic.com/herb-s03-e01-cover.jpg
80	3	2	Rufus	2023-08-08 00:00:00	https://media.herbcomic.com/herb-s03-e02-cover.jpg
81	3	3	Transcript	2023-08-15 00:00:00	https://media.herbcomic.com/herb-s03-e03-cover.jpg
82	3	4	Sign	2023-08-22 00:00:00	https://media.herbcomic.com/herb-s03-e04-cover.jpg
83	3	5	Computer	2023-08-29 00:00:00	https://media.herbcomic.com/herb-s03-e05-cover.jpg
84	3	6	Test	2023-09-05 00:00:00	https://media.herbcomic.com/herb-s03-e06-cover.jpg
85	3	7	Bomb	2023-09-13 00:00:00	https://media.herbcomic.com/herb-s03-e07-cover.jpg
86	3	8	Detective	2023-10-17 00:00:00	https://media.herbcomic.com/herb-s03-e08-cover.jpg
\.


--
-- Data for Name: Panel; Type: TABLE DATA; Schema: public; Owner: alessioharo
--

COPY public."Panel" (id, "comicId", panel, "imageUrl") FROM stdin;
1	1	1	https://media.herbcomic.com/herb-s01-e01-p01.jpg
2	1	2	https://media.herbcomic.com/herb-s01-e01-p02.jpg
3	1	3	https://media.herbcomic.com/herb-s01-e01-p03.jpg
4	1	4	https://media.herbcomic.com/herb-s01-e01-p04.jpg
5	1	5	https://media.herbcomic.com/herb-s01-e01-p05.jpg
6	1	6	https://media.herbcomic.com/herb-s01-e01-p06.jpg
7	1	7	https://media.herbcomic.com/herb-s01-e01-p07.jpg
8	1	8	https://media.herbcomic.com/herb-s01-e01-p08.jpg
9	1	9	https://media.herbcomic.com/herb-s01-e01-p09.jpg
10	1	10	https://media.herbcomic.com/herb-s01-e01-p10.jpg
11	1	11	https://media.herbcomic.com/herb-s01-e01-p11.jpg
12	1	12	https://media.herbcomic.com/herb-s01-e01-p12.jpg
13	1	13	https://media.herbcomic.com/herb-s01-e01-p13.jpg
14	1	14	https://media.herbcomic.com/herb-s01-e01-p14.jpg
15	1	15	https://media.herbcomic.com/herb-s01-e01-p15.jpg
16	1	16	https://media.herbcomic.com/herb-s01-e01-p16.jpg
17	1	17	https://media.herbcomic.com/herb-s01-e01-p17.jpg
18	1	18	https://media.herbcomic.com/herb-s01-e01-p18.jpg
19	1	19	https://media.herbcomic.com/herb-s01-e01-p19.jpg
20	1	20	https://media.herbcomic.com/herb-s01-e01-p20.jpg
21	1	21	https://media.herbcomic.com/herb-s01-e01-p21.jpg
22	1	22	https://media.herbcomic.com/herb-s01-e01-p22.jpg
23	1	23	https://media.herbcomic.com/herb-s01-e01-p23.jpg
24	1	24	https://media.herbcomic.com/herb-s01-e01-p24.jpg
25	2	1	https://media.herbcomic.com/herb-s01-e02-p01.jpg
26	2	2	https://media.herbcomic.com/herb-s01-e02-p02.jpg
27	2	3	https://media.herbcomic.com/herb-s01-e02-p03.jpg
28	2	4	https://media.herbcomic.com/herb-s01-e02-p04.jpg
29	2	5	https://media.herbcomic.com/herb-s01-e02-p05.jpg
30	2	6	https://media.herbcomic.com/herb-s01-e02-p06.jpg
31	2	7	https://media.herbcomic.com/herb-s01-e02-p07.jpg
32	2	8	https://media.herbcomic.com/herb-s01-e02-p08.jpg
33	2	9	https://media.herbcomic.com/herb-s01-e02-p09.jpg
34	2	10	https://media.herbcomic.com/herb-s01-e02-p10.jpg
35	2	11	https://media.herbcomic.com/herb-s01-e02-p11.jpg
36	2	12	https://media.herbcomic.com/herb-s01-e02-p12.jpg
37	2	13	https://media.herbcomic.com/herb-s01-e02-p13.jpg
38	2	14	https://media.herbcomic.com/herb-s01-e02-p14.jpg
39	2	15	https://media.herbcomic.com/herb-s01-e02-p15.jpg
40	2	16	https://media.herbcomic.com/herb-s01-e02-p16.jpg
41	2	17	https://media.herbcomic.com/herb-s01-e02-p17.jpg
42	2	18	https://media.herbcomic.com/herb-s01-e02-p18.jpg
43	2	19	https://media.herbcomic.com/herb-s01-e02-p19.jpg
44	2	20	https://media.herbcomic.com/herb-s01-e02-p20.jpg
45	2	21	https://media.herbcomic.com/herb-s01-e02-p21.jpg
46	2	22	https://media.herbcomic.com/herb-s01-e02-p22.jpg
47	2	23	https://media.herbcomic.com/herb-s01-e02-p23.jpg
48	2	24	https://media.herbcomic.com/herb-s01-e02-p24.jpg
49	2	25	https://media.herbcomic.com/herb-s01-e02-p25.jpg
50	2	26	https://media.herbcomic.com/herb-s01-e02-p26.jpg
51	2	27	https://media.herbcomic.com/herb-s01-e02-p27.jpg
52	2	28	https://media.herbcomic.com/herb-s01-e02-p28.jpg
53	2	29	https://media.herbcomic.com/herb-s01-e02-p29.jpg
54	2	30	https://media.herbcomic.com/herb-s01-e02-p30.jpg
55	2	31	https://media.herbcomic.com/herb-s01-e02-p31.jpg
56	2	32	https://media.herbcomic.com/herb-s01-e02-p32.jpg
57	2	33	https://media.herbcomic.com/herb-s01-e02-p33.jpg
58	2	34	https://media.herbcomic.com/herb-s01-e02-p34.jpg
59	2	35	https://media.herbcomic.com/herb-s01-e02-p35.jpg
60	2	36	https://media.herbcomic.com/herb-s01-e02-p36.jpg
61	2	37	https://media.herbcomic.com/herb-s01-e02-p37.jpg
62	2	38	https://media.herbcomic.com/herb-s01-e02-p38.jpg
63	2	39	https://media.herbcomic.com/herb-s01-e02-p39.jpg
64	3	1	https://media.herbcomic.com/herb-s01-e03-p01.jpg
65	3	2	https://media.herbcomic.com/herb-s01-e03-p02.jpg
66	3	3	https://media.herbcomic.com/herb-s01-e03-p03.jpg
67	3	4	https://media.herbcomic.com/herb-s01-e03-p04.jpg
68	3	5	https://media.herbcomic.com/herb-s01-e03-p05.jpg
69	3	6	https://media.herbcomic.com/herb-s01-e03-p06.jpg
70	3	7	https://media.herbcomic.com/herb-s01-e03-p07.jpg
71	3	8	https://media.herbcomic.com/herb-s01-e03-p08.jpg
72	3	9	https://media.herbcomic.com/herb-s01-e03-p09.jpg
73	3	10	https://media.herbcomic.com/herb-s01-e03-p10.jpg
74	3	11	https://media.herbcomic.com/herb-s01-e03-p11.jpg
75	3	12	https://media.herbcomic.com/herb-s01-e03-p12.jpg
76	3	13	https://media.herbcomic.com/herb-s01-e03-p13.jpg
77	3	14	https://media.herbcomic.com/herb-s01-e03-p14.jpg
78	3	15	https://media.herbcomic.com/herb-s01-e03-p15.jpg
79	3	16	https://media.herbcomic.com/herb-s01-e03-p16.jpg
80	3	17	https://media.herbcomic.com/herb-s01-e03-p17.jpg
81	3	18	https://media.herbcomic.com/herb-s01-e03-p18.jpg
82	3	19	https://media.herbcomic.com/herb-s01-e03-p19.jpg
83	3	20	https://media.herbcomic.com/herb-s01-e03-p20.jpg
84	3	21	https://media.herbcomic.com/herb-s01-e03-p21.jpg
85	3	22	https://media.herbcomic.com/herb-s01-e03-p22.jpg
86	3	23	https://media.herbcomic.com/herb-s01-e03-p23.jpg
87	3	24	https://media.herbcomic.com/herb-s01-e03-p24.jpg
88	3	25	https://media.herbcomic.com/herb-s01-e03-p25.jpg
89	3	26	https://media.herbcomic.com/herb-s01-e03-p26.jpg
90	3	27	https://media.herbcomic.com/herb-s01-e03-p27.jpg
91	3	28	https://media.herbcomic.com/herb-s01-e03-p28.jpg
92	3	29	https://media.herbcomic.com/herb-s01-e03-p29.jpg
93	3	30	https://media.herbcomic.com/herb-s01-e03-p30.jpg
94	3	31	https://media.herbcomic.com/herb-s01-e03-p31.jpg
95	3	32	https://media.herbcomic.com/herb-s01-e03-p32.jpg
96	3	33	https://media.herbcomic.com/herb-s01-e03-p33.jpg
97	3	34	https://media.herbcomic.com/herb-s01-e03-p34.jpg
98	3	35	https://media.herbcomic.com/herb-s01-e03-p35.jpg
99	3	36	https://media.herbcomic.com/herb-s01-e03-p36.jpg
100	4	1	https://media.herbcomic.com/herb-s01-e04-p01.jpg
101	4	2	https://media.herbcomic.com/herb-s01-e04-p02.jpg
102	4	3	https://media.herbcomic.com/herb-s01-e04-p03.jpg
103	4	4	https://media.herbcomic.com/herb-s01-e04-p04.jpg
104	4	5	https://media.herbcomic.com/herb-s01-e04-p05.jpg
105	4	6	https://media.herbcomic.com/herb-s01-e04-p06.jpg
106	4	7	https://media.herbcomic.com/herb-s01-e04-p07.jpg
107	4	8	https://media.herbcomic.com/herb-s01-e04-p08.jpg
108	4	9	https://media.herbcomic.com/herb-s01-e04-p09.jpg
109	4	10	https://media.herbcomic.com/herb-s01-e04-p10.jpg
110	4	11	https://media.herbcomic.com/herb-s01-e04-p11.jpg
111	4	12	https://media.herbcomic.com/herb-s01-e04-p12.jpg
112	4	13	https://media.herbcomic.com/herb-s01-e04-p13.jpg
113	4	14	https://media.herbcomic.com/herb-s01-e04-p14.jpg
114	4	15	https://media.herbcomic.com/herb-s01-e04-p15.jpg
115	4	16	https://media.herbcomic.com/herb-s01-e04-p16.jpg
116	4	17	https://media.herbcomic.com/herb-s01-e04-p17.jpg
117	4	18	https://media.herbcomic.com/herb-s01-e04-p18.jpg
118	4	19	https://media.herbcomic.com/herb-s01-e04-p19.jpg
119	4	20	https://media.herbcomic.com/herb-s01-e04-p20.jpg
120	4	21	https://media.herbcomic.com/herb-s01-e04-p21.jpg
121	4	22	https://media.herbcomic.com/herb-s01-e04-p22.jpg
122	4	23	https://media.herbcomic.com/herb-s01-e04-p23.jpg
123	4	24	https://media.herbcomic.com/herb-s01-e04-p24.jpg
124	4	25	https://media.herbcomic.com/herb-s01-e04-p25.jpg
125	4	26	https://media.herbcomic.com/herb-s01-e04-p26.jpg
126	4	27	https://media.herbcomic.com/herb-s01-e04-p27.jpg
127	4	28	https://media.herbcomic.com/herb-s01-e04-p28.jpg
128	4	29	https://media.herbcomic.com/herb-s01-e04-p29.jpg
129	4	30	https://media.herbcomic.com/herb-s01-e04-p30.jpg
130	4	31	https://media.herbcomic.com/herb-s01-e04-p31.jpg
131	4	32	https://media.herbcomic.com/herb-s01-e04-p32.jpg
132	4	33	https://media.herbcomic.com/herb-s01-e04-p33.jpg
133	4	34	https://media.herbcomic.com/herb-s01-e04-p34.jpg
134	4	35	https://media.herbcomic.com/herb-s01-e04-p35.jpg
135	4	36	https://media.herbcomic.com/herb-s01-e04-p36.jpg
136	5	1	https://media.herbcomic.com/herb-s01-e05-p01.jpg
137	5	2	https://media.herbcomic.com/herb-s01-e05-p02.jpg
138	5	3	https://media.herbcomic.com/herb-s01-e05-p03.jpg
139	5	4	https://media.herbcomic.com/herb-s01-e05-p04.jpg
140	5	5	https://media.herbcomic.com/herb-s01-e05-p05.jpg
141	5	6	https://media.herbcomic.com/herb-s01-e05-p06.jpg
142	5	7	https://media.herbcomic.com/herb-s01-e05-p07.jpg
143	5	8	https://media.herbcomic.com/herb-s01-e05-p08.jpg
144	5	9	https://media.herbcomic.com/herb-s01-e05-p09.jpg
145	5	10	https://media.herbcomic.com/herb-s01-e05-p10.jpg
146	5	11	https://media.herbcomic.com/herb-s01-e05-p11.jpg
147	5	12	https://media.herbcomic.com/herb-s01-e05-p12.jpg
148	5	13	https://media.herbcomic.com/herb-s01-e05-p13.jpg
149	5	14	https://media.herbcomic.com/herb-s01-e05-p14.jpg
150	5	15	https://media.herbcomic.com/herb-s01-e05-p15.jpg
151	5	16	https://media.herbcomic.com/herb-s01-e05-p16.jpg
152	5	17	https://media.herbcomic.com/herb-s01-e05-p17.jpg
153	5	18	https://media.herbcomic.com/herb-s01-e05-p18.jpg
154	5	19	https://media.herbcomic.com/herb-s01-e05-p19.jpg
155	5	20	https://media.herbcomic.com/herb-s01-e05-p20.jpg
156	5	21	https://media.herbcomic.com/herb-s01-e05-p21.jpg
157	5	22	https://media.herbcomic.com/herb-s01-e05-p22.jpg
158	5	23	https://media.herbcomic.com/herb-s01-e05-p23.jpg
159	5	24	https://media.herbcomic.com/herb-s01-e05-p24.jpg
160	5	25	https://media.herbcomic.com/herb-s01-e05-p25.jpg
161	5	26	https://media.herbcomic.com/herb-s01-e05-p26.jpg
162	5	27	https://media.herbcomic.com/herb-s01-e05-p27.jpg
163	5	28	https://media.herbcomic.com/herb-s01-e05-p28.jpg
164	5	29	https://media.herbcomic.com/herb-s01-e05-p29.jpg
165	5	30	https://media.herbcomic.com/herb-s01-e05-p30.jpg
166	5	31	https://media.herbcomic.com/herb-s01-e05-p31.jpg
167	5	32	https://media.herbcomic.com/herb-s01-e05-p32.jpg
168	5	33	https://media.herbcomic.com/herb-s01-e05-p33.jpg
169	5	34	https://media.herbcomic.com/herb-s01-e05-p34.jpg
170	5	35	https://media.herbcomic.com/herb-s01-e05-p35.jpg
171	5	36	https://media.herbcomic.com/herb-s01-e05-p36.jpg
172	6	1	https://media.herbcomic.com/herb-s01-e06-p01.jpg
173	6	2	https://media.herbcomic.com/herb-s01-e06-p02.jpg
174	6	3	https://media.herbcomic.com/herb-s01-e06-p03.jpg
175	6	4	https://media.herbcomic.com/herb-s01-e06-p04.jpg
176	6	5	https://media.herbcomic.com/herb-s01-e06-p05.jpg
177	6	6	https://media.herbcomic.com/herb-s01-e06-p06.jpg
178	6	7	https://media.herbcomic.com/herb-s01-e06-p07.jpg
179	6	8	https://media.herbcomic.com/herb-s01-e06-p08.jpg
180	6	9	https://media.herbcomic.com/herb-s01-e06-p09.jpg
181	6	10	https://media.herbcomic.com/herb-s01-e06-p10.jpg
182	6	11	https://media.herbcomic.com/herb-s01-e06-p11.jpg
183	6	12	https://media.herbcomic.com/herb-s01-e06-p12.jpg
184	6	13	https://media.herbcomic.com/herb-s01-e06-p13.jpg
185	6	14	https://media.herbcomic.com/herb-s01-e06-p14.jpg
186	6	15	https://media.herbcomic.com/herb-s01-e06-p15.jpg
187	6	16	https://media.herbcomic.com/herb-s01-e06-p16.jpg
188	6	17	https://media.herbcomic.com/herb-s01-e06-p17.jpg
189	6	18	https://media.herbcomic.com/herb-s01-e06-p18.jpg
190	6	19	https://media.herbcomic.com/herb-s01-e06-p19.jpg
191	6	20	https://media.herbcomic.com/herb-s01-e06-p20.jpg
192	6	21	https://media.herbcomic.com/herb-s01-e06-p21.jpg
193	6	22	https://media.herbcomic.com/herb-s01-e06-p22.jpg
194	6	23	https://media.herbcomic.com/herb-s01-e06-p23.jpg
195	6	24	https://media.herbcomic.com/herb-s01-e06-p24.jpg
196	6	25	https://media.herbcomic.com/herb-s01-e06-p25.jpg
197	6	26	https://media.herbcomic.com/herb-s01-e06-p26.jpg
198	6	27	https://media.herbcomic.com/herb-s01-e06-p27.jpg
199	6	28	https://media.herbcomic.com/herb-s01-e06-p28.jpg
200	6	29	https://media.herbcomic.com/herb-s01-e06-p29.jpg
201	6	30	https://media.herbcomic.com/herb-s01-e06-p30.jpg
202	6	31	https://media.herbcomic.com/herb-s01-e06-p31.jpg
203	6	32	https://media.herbcomic.com/herb-s01-e06-p32.jpg
204	6	33	https://media.herbcomic.com/herb-s01-e06-p33.jpg
205	6	34	https://media.herbcomic.com/herb-s01-e06-p34.jpg
206	7	1	https://media.herbcomic.com/herb-s01-e07-p01.jpg
207	7	2	https://media.herbcomic.com/herb-s01-e07-p02.jpg
208	7	3	https://media.herbcomic.com/herb-s01-e07-p03.jpg
209	7	4	https://media.herbcomic.com/herb-s01-e07-p04.jpg
210	7	5	https://media.herbcomic.com/herb-s01-e07-p05.jpg
211	7	6	https://media.herbcomic.com/herb-s01-e07-p06.jpg
212	7	7	https://media.herbcomic.com/herb-s01-e07-p07.jpg
213	7	8	https://media.herbcomic.com/herb-s01-e07-p08.jpg
214	7	9	https://media.herbcomic.com/herb-s01-e07-p09.jpg
215	7	10	https://media.herbcomic.com/herb-s01-e07-p10.jpg
216	7	11	https://media.herbcomic.com/herb-s01-e07-p11.jpg
217	7	12	https://media.herbcomic.com/herb-s01-e07-p12.jpg
218	7	13	https://media.herbcomic.com/herb-s01-e07-p13.jpg
219	7	14	https://media.herbcomic.com/herb-s01-e07-p14.jpg
220	7	15	https://media.herbcomic.com/herb-s01-e07-p15.jpg
221	7	16	https://media.herbcomic.com/herb-s01-e07-p16.jpg
222	7	17	https://media.herbcomic.com/herb-s01-e07-p17.jpg
223	7	18	https://media.herbcomic.com/herb-s01-e07-p18.jpg
224	7	19	https://media.herbcomic.com/herb-s01-e07-p19.jpg
225	7	20	https://media.herbcomic.com/herb-s01-e07-p20.jpg
226	7	21	https://media.herbcomic.com/herb-s01-e07-p21.jpg
227	7	22	https://media.herbcomic.com/herb-s01-e07-p22.jpg
228	7	23	https://media.herbcomic.com/herb-s01-e07-p23.jpg
229	7	24	https://media.herbcomic.com/herb-s01-e07-p24.jpg
230	7	25	https://media.herbcomic.com/herb-s01-e07-p25.jpg
231	7	26	https://media.herbcomic.com/herb-s01-e07-p26.jpg
232	7	27	https://media.herbcomic.com/herb-s01-e07-p27.jpg
233	7	28	https://media.herbcomic.com/herb-s01-e07-p28.jpg
234	7	29	https://media.herbcomic.com/herb-s01-e07-p29.jpg
235	7	30	https://media.herbcomic.com/herb-s01-e07-p30.jpg
236	7	31	https://media.herbcomic.com/herb-s01-e07-p31.jpg
237	7	32	https://media.herbcomic.com/herb-s01-e07-p32.jpg
238	7	33	https://media.herbcomic.com/herb-s01-e07-p33.jpg
239	7	34	https://media.herbcomic.com/herb-s01-e07-p34.jpg
240	7	35	https://media.herbcomic.com/herb-s01-e07-p35.jpg
241	7	36	https://media.herbcomic.com/herb-s01-e07-p36.jpg
242	8	1	https://media.herbcomic.com/herb-s01-e08-p01.jpg
243	8	2	https://media.herbcomic.com/herb-s01-e08-p02.jpg
244	8	3	https://media.herbcomic.com/herb-s01-e08-p03.jpg
245	8	4	https://media.herbcomic.com/herb-s01-e08-p04.jpg
246	8	5	https://media.herbcomic.com/herb-s01-e08-p05.jpg
247	8	6	https://media.herbcomic.com/herb-s01-e08-p06.jpg
248	8	7	https://media.herbcomic.com/herb-s01-e08-p07.jpg
249	8	8	https://media.herbcomic.com/herb-s01-e08-p08.jpg
250	8	9	https://media.herbcomic.com/herb-s01-e08-p09.jpg
251	8	10	https://media.herbcomic.com/herb-s01-e08-p10.jpg
252	8	11	https://media.herbcomic.com/herb-s01-e08-p11.jpg
253	8	12	https://media.herbcomic.com/herb-s01-e08-p12.jpg
254	8	13	https://media.herbcomic.com/herb-s01-e08-p13.jpg
255	8	14	https://media.herbcomic.com/herb-s01-e08-p14.jpg
256	8	15	https://media.herbcomic.com/herb-s01-e08-p15.jpg
257	8	16	https://media.herbcomic.com/herb-s01-e08-p16.jpg
258	8	17	https://media.herbcomic.com/herb-s01-e08-p17.jpg
259	8	18	https://media.herbcomic.com/herb-s01-e08-p18.jpg
260	8	19	https://media.herbcomic.com/herb-s01-e08-p19.jpg
261	8	20	https://media.herbcomic.com/herb-s01-e08-p20.jpg
262	8	21	https://media.herbcomic.com/herb-s01-e08-p21.jpg
263	8	22	https://media.herbcomic.com/herb-s01-e08-p22.jpg
264	8	23	https://media.herbcomic.com/herb-s01-e08-p23.jpg
265	8	24	https://media.herbcomic.com/herb-s01-e08-p24.jpg
266	8	25	https://media.herbcomic.com/herb-s01-e08-p25.jpg
267	8	26	https://media.herbcomic.com/herb-s01-e08-p26.jpg
268	8	27	https://media.herbcomic.com/herb-s01-e08-p27.jpg
269	8	28	https://media.herbcomic.com/herb-s01-e08-p28.jpg
270	8	29	https://media.herbcomic.com/herb-s01-e08-p29.jpg
271	8	30	https://media.herbcomic.com/herb-s01-e08-p30.jpg
272	8	31	https://media.herbcomic.com/herb-s01-e08-p31.jpg
273	8	32	https://media.herbcomic.com/herb-s01-e08-p32.jpg
274	8	33	https://media.herbcomic.com/herb-s01-e08-p33.jpg
275	8	34	https://media.herbcomic.com/herb-s01-e08-p34.jpg
276	8	35	https://media.herbcomic.com/herb-s01-e08-p35.jpg
277	8	36	https://media.herbcomic.com/herb-s01-e08-p36.jpg
278	9	1	https://media.herbcomic.com/herb-s01-e09-p01.jpg
279	9	2	https://media.herbcomic.com/herb-s01-e09-p02.jpg
280	9	3	https://media.herbcomic.com/herb-s01-e09-p03.jpg
281	9	4	https://media.herbcomic.com/herb-s01-e09-p04.jpg
282	9	5	https://media.herbcomic.com/herb-s01-e09-p05.jpg
283	9	6	https://media.herbcomic.com/herb-s01-e09-p06.jpg
284	9	7	https://media.herbcomic.com/herb-s01-e09-p07.jpg
285	9	8	https://media.herbcomic.com/herb-s01-e09-p08.jpg
286	9	9	https://media.herbcomic.com/herb-s01-e09-p09.jpg
287	9	10	https://media.herbcomic.com/herb-s01-e09-p10.jpg
288	9	11	https://media.herbcomic.com/herb-s01-e09-p11.jpg
289	9	12	https://media.herbcomic.com/herb-s01-e09-p12.jpg
290	9	13	https://media.herbcomic.com/herb-s01-e09-p13.jpg
291	9	14	https://media.herbcomic.com/herb-s01-e09-p14.jpg
292	9	15	https://media.herbcomic.com/herb-s01-e09-p15.jpg
293	9	16	https://media.herbcomic.com/herb-s01-e09-p16.jpg
294	9	17	https://media.herbcomic.com/herb-s01-e09-p17.jpg
295	9	18	https://media.herbcomic.com/herb-s01-e09-p18.jpg
296	9	19	https://media.herbcomic.com/herb-s01-e09-p19.jpg
297	9	20	https://media.herbcomic.com/herb-s01-e09-p20.jpg
298	9	21	https://media.herbcomic.com/herb-s01-e09-p21.jpg
299	9	22	https://media.herbcomic.com/herb-s01-e09-p22.jpg
300	9	23	https://media.herbcomic.com/herb-s01-e09-p23.jpg
301	9	24	https://media.herbcomic.com/herb-s01-e09-p24.jpg
302	9	25	https://media.herbcomic.com/herb-s01-e09-p25.jpg
303	9	26	https://media.herbcomic.com/herb-s01-e09-p26.jpg
304	9	27	https://media.herbcomic.com/herb-s01-e09-p27.jpg
305	9	28	https://media.herbcomic.com/herb-s01-e09-p28.jpg
306	9	29	https://media.herbcomic.com/herb-s01-e09-p29.jpg
307	10	1	https://media.herbcomic.com/herb-s02-e01-p01.jpg
308	10	2	https://media.herbcomic.com/herb-s02-e01-p02.jpg
309	10	3	https://media.herbcomic.com/herb-s02-e01-p03.jpg
310	10	4	https://media.herbcomic.com/herb-s02-e01-p04.jpg
311	11	1	https://media.herbcomic.com/herb-s02-e02-p01.jpg
312	11	2	https://media.herbcomic.com/herb-s02-e02-p02.jpg
313	11	3	https://media.herbcomic.com/herb-s02-e02-p03.jpg
314	11	4	https://media.herbcomic.com/herb-s02-e02-p04.jpg
315	12	1	https://media.herbcomic.com/herb-s02-e03-p01.jpg
316	12	2	https://media.herbcomic.com/herb-s02-e03-p02.jpg
317	12	3	https://media.herbcomic.com/herb-s02-e03-p03.jpg
318	12	4	https://media.herbcomic.com/herb-s02-e03-p04.jpg
319	13	1	https://media.herbcomic.com/herb-s02-e04-p01.jpg
320	13	2	https://media.herbcomic.com/herb-s02-e04-p02.jpg
321	13	3	https://media.herbcomic.com/herb-s02-e04-p03.jpg
322	13	4	https://media.herbcomic.com/herb-s02-e04-p04.jpg
323	14	1	https://media.herbcomic.com/herb-s02-e05-p01.jpg
324	14	2	https://media.herbcomic.com/herb-s02-e05-p02.jpg
325	14	3	https://media.herbcomic.com/herb-s02-e05-p03.jpg
326	14	4	https://media.herbcomic.com/herb-s02-e05-p04.jpg
327	15	1	https://media.herbcomic.com/herb-s02-e06-p01.jpg
328	15	2	https://media.herbcomic.com/herb-s02-e06-p02.jpg
329	15	3	https://media.herbcomic.com/herb-s02-e06-p03.jpg
330	15	4	https://media.herbcomic.com/herb-s02-e06-p04.jpg
331	16	1	https://media.herbcomic.com/herb-s02-e07-p01.jpg
332	16	2	https://media.herbcomic.com/herb-s02-e07-p02.jpg
333	16	3	https://media.herbcomic.com/herb-s02-e07-p03.jpg
334	16	4	https://media.herbcomic.com/herb-s02-e07-p04.jpg
335	17	1	https://media.herbcomic.com/herb-s02-e08-p01.jpg
336	17	2	https://media.herbcomic.com/herb-s02-e08-p02.jpg
337	17	3	https://media.herbcomic.com/herb-s02-e08-p03.jpg
338	17	4	https://media.herbcomic.com/herb-s02-e08-p04.jpg
339	18	1	https://media.herbcomic.com/herb-s02-e09-p01.jpg
340	18	2	https://media.herbcomic.com/herb-s02-e09-p02.jpg
341	18	3	https://media.herbcomic.com/herb-s02-e09-p03.jpg
342	18	4	https://media.herbcomic.com/herb-s02-e09-p04.jpg
343	19	1	https://media.herbcomic.com/herb-s02-e10-p01.jpg
344	19	2	https://media.herbcomic.com/herb-s02-e10-p02.jpg
345	19	3	https://media.herbcomic.com/herb-s02-e10-p03.jpg
346	19	4	https://media.herbcomic.com/herb-s02-e10-p04.jpg
347	20	1	https://media.herbcomic.com/herb-s02-e11-p01.jpg
348	20	2	https://media.herbcomic.com/herb-s02-e11-p02.jpg
349	20	3	https://media.herbcomic.com/herb-s02-e11-p03.jpg
350	20	4	https://media.herbcomic.com/herb-s02-e11-p04.jpg
351	21	1	https://media.herbcomic.com/herb-s02-e12-p01.jpg
352	21	2	https://media.herbcomic.com/herb-s02-e12-p02.jpg
353	21	3	https://media.herbcomic.com/herb-s02-e12-p03.jpg
354	21	4	https://media.herbcomic.com/herb-s02-e12-p04.jpg
355	22	1	https://media.herbcomic.com/herb-s02-e13-p01.jpg
356	22	2	https://media.herbcomic.com/herb-s02-e13-p02.jpg
357	22	3	https://media.herbcomic.com/herb-s02-e13-p03.jpg
358	22	4	https://media.herbcomic.com/herb-s02-e13-p04.jpg
359	23	1	https://media.herbcomic.com/herb-s02-e14-p01.jpg
360	23	2	https://media.herbcomic.com/herb-s02-e14-p02.jpg
361	23	3	https://media.herbcomic.com/herb-s02-e14-p03.jpg
362	23	4	https://media.herbcomic.com/herb-s02-e14-p04.jpg
363	24	1	https://media.herbcomic.com/herb-s02-e15-p01.jpg
364	24	2	https://media.herbcomic.com/herb-s02-e15-p02.jpg
365	24	3	https://media.herbcomic.com/herb-s02-e15-p03.jpg
366	24	4	https://media.herbcomic.com/herb-s02-e15-p04.jpg
367	25	1	https://media.herbcomic.com/herb-s02-e16-p01.jpg
368	25	2	https://media.herbcomic.com/herb-s02-e16-p02.jpg
369	25	3	https://media.herbcomic.com/herb-s02-e16-p03.jpg
370	25	4	https://media.herbcomic.com/herb-s02-e16-p04.jpg
371	26	1	https://media.herbcomic.com/herb-s02-e17-p01.jpg
372	26	2	https://media.herbcomic.com/herb-s02-e17-p02.jpg
373	26	3	https://media.herbcomic.com/herb-s02-e17-p03.jpg
374	26	4	https://media.herbcomic.com/herb-s02-e17-p04.jpg
375	27	1	https://media.herbcomic.com/herb-s02-e18-p01.jpg
376	27	2	https://media.herbcomic.com/herb-s02-e18-p02.jpg
377	27	3	https://media.herbcomic.com/herb-s02-e18-p03.jpg
378	27	4	https://media.herbcomic.com/herb-s02-e18-p04.jpg
379	28	1	https://media.herbcomic.com/herb-s02-e19-p01.jpg
380	28	2	https://media.herbcomic.com/herb-s02-e19-p02.jpg
381	28	3	https://media.herbcomic.com/herb-s02-e19-p03.jpg
382	28	4	https://media.herbcomic.com/herb-s02-e19-p04.jpg
383	29	1	https://media.herbcomic.com/herb-s02-e20-p01.jpg
384	29	2	https://media.herbcomic.com/herb-s02-e20-p02.jpg
385	29	3	https://media.herbcomic.com/herb-s02-e20-p03.jpg
386	29	4	https://media.herbcomic.com/herb-s02-e20-p04.jpg
387	30	1	https://media.herbcomic.com/herb-s02-e21-p01.jpg
388	30	2	https://media.herbcomic.com/herb-s02-e21-p02.jpg
389	30	3	https://media.herbcomic.com/herb-s02-e21-p03.jpg
390	30	4	https://media.herbcomic.com/herb-s02-e21-p04.jpg
391	31	1	https://media.herbcomic.com/herb-s02-e22-p01.jpg
392	31	2	https://media.herbcomic.com/herb-s02-e22-p02.jpg
393	31	3	https://media.herbcomic.com/herb-s02-e22-p03.jpg
394	31	4	https://media.herbcomic.com/herb-s02-e22-p04.jpg
395	32	1	https://media.herbcomic.com/herb-s02-e23-p01.jpg
396	32	2	https://media.herbcomic.com/herb-s02-e23-p02.jpg
397	32	3	https://media.herbcomic.com/herb-s02-e23-p03.jpg
398	32	4	https://media.herbcomic.com/herb-s02-e23-p04.jpg
399	33	1	https://media.herbcomic.com/herb-s02-e24-p01.jpg
400	33	2	https://media.herbcomic.com/herb-s02-e24-p02.jpg
401	33	3	https://media.herbcomic.com/herb-s02-e24-p03.jpg
402	33	4	https://media.herbcomic.com/herb-s02-e24-p04.jpg
403	34	1	https://media.herbcomic.com/herb-s02-e25-p01.jpg
404	34	2	https://media.herbcomic.com/herb-s02-e25-p02.jpg
405	34	3	https://media.herbcomic.com/herb-s02-e25-p03.jpg
406	34	4	https://media.herbcomic.com/herb-s02-e25-p04.jpg
407	35	1	https://media.herbcomic.com/herb-s02-e26-p01.jpg
408	35	2	https://media.herbcomic.com/herb-s02-e26-p02.jpg
409	35	3	https://media.herbcomic.com/herb-s02-e26-p03.jpg
410	35	4	https://media.herbcomic.com/herb-s02-e26-p04.jpg
411	36	1	https://media.herbcomic.com/herb-s02-e27-p01.jpg
412	36	2	https://media.herbcomic.com/herb-s02-e27-p02.jpg
413	36	3	https://media.herbcomic.com/herb-s02-e27-p03.jpg
414	36	4	https://media.herbcomic.com/herb-s02-e27-p04.jpg
415	37	1	https://media.herbcomic.com/herb-s02-e28-p01.jpg
416	37	2	https://media.herbcomic.com/herb-s02-e28-p02.jpg
417	37	3	https://media.herbcomic.com/herb-s02-e28-p03.jpg
418	37	4	https://media.herbcomic.com/herb-s02-e28-p04.jpg
419	38	1	https://media.herbcomic.com/herb-s02-e29-p01.jpg
420	38	2	https://media.herbcomic.com/herb-s02-e29-p02.jpg
421	38	3	https://media.herbcomic.com/herb-s02-e29-p03.jpg
422	38	4	https://media.herbcomic.com/herb-s02-e29-p04.jpg
423	39	1	https://media.herbcomic.com/herb-s02-e30-p01.jpg
424	39	2	https://media.herbcomic.com/herb-s02-e30-p02.jpg
425	39	3	https://media.herbcomic.com/herb-s02-e30-p03.jpg
426	39	4	https://media.herbcomic.com/herb-s02-e30-p04.jpg
427	40	1	https://media.herbcomic.com/herb-s02-e31-p01.jpg
428	40	2	https://media.herbcomic.com/herb-s02-e31-p02.jpg
429	40	3	https://media.herbcomic.com/herb-s02-e31-p03.jpg
430	40	4	https://media.herbcomic.com/herb-s02-e31-p04.jpg
431	41	1	https://media.herbcomic.com/herb-s02-e32-p01.jpg
432	41	2	https://media.herbcomic.com/herb-s02-e32-p02.jpg
433	41	3	https://media.herbcomic.com/herb-s02-e32-p03.jpg
434	41	4	https://media.herbcomic.com/herb-s02-e32-p04.jpg
435	42	1	https://media.herbcomic.com/herb-s02-e33-p01.jpg
436	42	2	https://media.herbcomic.com/herb-s02-e33-p02.jpg
437	42	3	https://media.herbcomic.com/herb-s02-e33-p03.jpg
438	42	4	https://media.herbcomic.com/herb-s02-e33-p04.jpg
439	43	1	https://media.herbcomic.com/herb-s02-e34-p01.jpg
440	43	2	https://media.herbcomic.com/herb-s02-e34-p02.jpg
441	43	3	https://media.herbcomic.com/herb-s02-e34-p03.jpg
442	43	4	https://media.herbcomic.com/herb-s02-e34-p04.jpg
443	44	1	https://media.herbcomic.com/herb-s02-e35-p01.jpg
444	44	2	https://media.herbcomic.com/herb-s02-e35-p02.jpg
445	44	3	https://media.herbcomic.com/herb-s02-e35-p03.jpg
446	44	4	https://media.herbcomic.com/herb-s02-e35-p04.jpg
447	45	1	https://media.herbcomic.com/herb-s02-e36-p01.jpg
448	45	2	https://media.herbcomic.com/herb-s02-e36-p02.jpg
449	45	3	https://media.herbcomic.com/herb-s02-e36-p03.jpg
450	45	4	https://media.herbcomic.com/herb-s02-e36-p04.jpg
451	46	1	https://media.herbcomic.com/herb-s02-e37-p01.jpg
452	46	2	https://media.herbcomic.com/herb-s02-e37-p02.jpg
453	46	3	https://media.herbcomic.com/herb-s02-e37-p03.jpg
454	46	4	https://media.herbcomic.com/herb-s02-e37-p04.jpg
455	47	1	https://media.herbcomic.com/herb-s02-e38-p01.jpg
456	47	2	https://media.herbcomic.com/herb-s02-e38-p02.jpg
457	47	3	https://media.herbcomic.com/herb-s02-e38-p03.jpg
458	47	4	https://media.herbcomic.com/herb-s02-e38-p04.jpg
459	48	1	https://media.herbcomic.com/herb-s02-e39-p01.jpg
460	48	2	https://media.herbcomic.com/herb-s02-e39-p02.jpg
461	48	3	https://media.herbcomic.com/herb-s02-e39-p03.jpg
462	48	4	https://media.herbcomic.com/herb-s02-e39-p04.jpg
463	49	1	https://media.herbcomic.com/herb-s02-e40-p01.jpg
464	49	2	https://media.herbcomic.com/herb-s02-e40-p02.jpg
465	49	3	https://media.herbcomic.com/herb-s02-e40-p03.jpg
466	49	4	https://media.herbcomic.com/herb-s02-e40-p04.jpg
467	50	1	https://media.herbcomic.com/herb-s02-e41-p01.jpg
468	50	2	https://media.herbcomic.com/herb-s02-e41-p02.jpg
469	50	3	https://media.herbcomic.com/herb-s02-e41-p03.jpg
470	50	4	https://media.herbcomic.com/herb-s02-e41-p04.jpg
471	51	1	https://media.herbcomic.com/herb-s02-e42-p01.jpg
472	51	2	https://media.herbcomic.com/herb-s02-e42-p02.jpg
473	51	3	https://media.herbcomic.com/herb-s02-e42-p03.jpg
474	51	4	https://media.herbcomic.com/herb-s02-e42-p04.jpg
475	52	1	https://media.herbcomic.com/herb-s02-e43-p01.jpg
476	52	2	https://media.herbcomic.com/herb-s02-e43-p02.jpg
477	52	3	https://media.herbcomic.com/herb-s02-e43-p03.jpg
478	52	4	https://media.herbcomic.com/herb-s02-e43-p04.jpg
479	53	1	https://media.herbcomic.com/herb-s02-e44-p01.jpg
480	53	2	https://media.herbcomic.com/herb-s02-e44-p02.jpg
481	53	3	https://media.herbcomic.com/herb-s02-e44-p03.jpg
482	53	4	https://media.herbcomic.com/herb-s02-e44-p04.jpg
483	54	1	https://media.herbcomic.com/herb-s02-e45-p01.jpg
484	54	2	https://media.herbcomic.com/herb-s02-e45-p02.jpg
485	54	3	https://media.herbcomic.com/herb-s02-e45-p03.jpg
486	54	4	https://media.herbcomic.com/herb-s02-e45-p04.jpg
487	55	1	https://media.herbcomic.com/herb-s02-e46-p01.jpg
488	55	2	https://media.herbcomic.com/herb-s02-e46-p02.jpg
489	55	3	https://media.herbcomic.com/herb-s02-e46-p03.jpg
490	55	4	https://media.herbcomic.com/herb-s02-e46-p04.jpg
491	56	1	https://media.herbcomic.com/herb-s02-e47-p01.jpg
492	56	2	https://media.herbcomic.com/herb-s02-e47-p02.jpg
493	56	3	https://media.herbcomic.com/herb-s02-e47-p03.jpg
494	56	4	https://media.herbcomic.com/herb-s02-e47-p04.jpg
495	57	1	https://media.herbcomic.com/herb-s02-e48-p01.jpg
496	57	2	https://media.herbcomic.com/herb-s02-e48-p02.jpg
497	57	3	https://media.herbcomic.com/herb-s02-e48-p03.jpg
498	57	4	https://media.herbcomic.com/herb-s02-e48-p04.jpg
499	58	1	https://media.herbcomic.com/herb-s02-e49-p01.jpg
500	58	2	https://media.herbcomic.com/herb-s02-e49-p02.jpg
501	58	3	https://media.herbcomic.com/herb-s02-e49-p03.jpg
502	58	4	https://media.herbcomic.com/herb-s02-e49-p04.jpg
503	59	1	https://media.herbcomic.com/herb-s02-e50-p01.jpg
504	59	2	https://media.herbcomic.com/herb-s02-e50-p02.jpg
505	59	3	https://media.herbcomic.com/herb-s02-e50-p03.jpg
506	59	4	https://media.herbcomic.com/herb-s02-e50-p04.jpg
507	60	1	https://media.herbcomic.com/herb-s02-e51-p01.jpg
508	60	2	https://media.herbcomic.com/herb-s02-e51-p02.jpg
509	60	3	https://media.herbcomic.com/herb-s02-e51-p03.jpg
510	60	4	https://media.herbcomic.com/herb-s02-e51-p04.jpg
511	61	1	https://media.herbcomic.com/herb-s02-e52-p01.jpg
512	61	2	https://media.herbcomic.com/herb-s02-e52-p02.jpg
513	61	3	https://media.herbcomic.com/herb-s02-e52-p03.jpg
514	61	4	https://media.herbcomic.com/herb-s02-e52-p04.jpg
515	62	1	https://media.herbcomic.com/herb-s02-e53-p01.jpg
516	62	2	https://media.herbcomic.com/herb-s02-e53-p02.jpg
517	62	3	https://media.herbcomic.com/herb-s02-e53-p03.jpg
518	62	4	https://media.herbcomic.com/herb-s02-e53-p04.jpg
519	63	1	https://media.herbcomic.com/herb-s02-e54-p01.jpg
520	63	2	https://media.herbcomic.com/herb-s02-e54-p02.jpg
521	63	3	https://media.herbcomic.com/herb-s02-e54-p03.jpg
522	63	4	https://media.herbcomic.com/herb-s02-e54-p04.jpg
523	64	1	https://media.herbcomic.com/herb-s02-e55-p01.jpg
524	64	2	https://media.herbcomic.com/herb-s02-e55-p02.jpg
525	64	3	https://media.herbcomic.com/herb-s02-e55-p03.jpg
526	64	4	https://media.herbcomic.com/herb-s02-e55-p04.jpg
527	65	1	https://media.herbcomic.com/herb-s02-e56-p01.jpg
528	65	2	https://media.herbcomic.com/herb-s02-e56-p02.jpg
529	65	3	https://media.herbcomic.com/herb-s02-e56-p03.jpg
530	65	4	https://media.herbcomic.com/herb-s02-e56-p04.jpg
531	66	1	https://media.herbcomic.com/herb-s02-e57-p01.jpg
532	66	2	https://media.herbcomic.com/herb-s02-e57-p02.jpg
533	66	3	https://media.herbcomic.com/herb-s02-e57-p03.jpg
534	66	4	https://media.herbcomic.com/herb-s02-e57-p04.jpg
535	67	1	https://media.herbcomic.com/herb-s02-e58-p01.jpg
536	67	2	https://media.herbcomic.com/herb-s02-e58-p02.jpg
537	67	3	https://media.herbcomic.com/herb-s02-e58-p03.jpg
538	67	4	https://media.herbcomic.com/herb-s02-e58-p04.jpg
539	68	1	https://media.herbcomic.com/herb-s02-e59-p01.jpg
540	68	2	https://media.herbcomic.com/herb-s02-e59-p02.jpg
541	68	3	https://media.herbcomic.com/herb-s02-e59-p03.jpg
542	68	4	https://media.herbcomic.com/herb-s02-e59-p04.jpg
543	69	1	https://media.herbcomic.com/herb-s02-e60-p01.jpg
544	69	2	https://media.herbcomic.com/herb-s02-e60-p02.jpg
545	69	3	https://media.herbcomic.com/herb-s02-e60-p03.jpg
546	69	4	https://media.herbcomic.com/herb-s02-e60-p04.jpg
547	70	1	https://media.herbcomic.com/herb-s02-e61-p01.jpg
548	70	2	https://media.herbcomic.com/herb-s02-e61-p02.jpg
549	70	3	https://media.herbcomic.com/herb-s02-e61-p03.jpg
550	70	4	https://media.herbcomic.com/herb-s02-e61-p04.jpg
551	71	1	https://media.herbcomic.com/herb-s02-e62-p01.jpg
552	71	2	https://media.herbcomic.com/herb-s02-e62-p02.jpg
553	71	3	https://media.herbcomic.com/herb-s02-e62-p03.jpg
554	71	4	https://media.herbcomic.com/herb-s02-e62-p04.jpg
555	72	1	https://media.herbcomic.com/herb-s02-e63-p01.jpg
556	72	2	https://media.herbcomic.com/herb-s02-e63-p02.jpg
557	72	3	https://media.herbcomic.com/herb-s02-e63-p03.jpg
558	72	4	https://media.herbcomic.com/herb-s02-e63-p04.jpg
559	73	1	https://media.herbcomic.com/herb-s02-e64-p01.jpg
560	73	2	https://media.herbcomic.com/herb-s02-e64-p02.jpg
561	73	3	https://media.herbcomic.com/herb-s02-e64-p03.jpg
562	73	4	https://media.herbcomic.com/herb-s02-e64-p04.jpg
563	74	1	https://media.herbcomic.com/herb-s02-e65-p01.jpg
564	74	2	https://media.herbcomic.com/herb-s02-e65-p02.jpg
565	74	3	https://media.herbcomic.com/herb-s02-e65-p03.jpg
566	74	4	https://media.herbcomic.com/herb-s02-e65-p04.jpg
567	75	1	https://media.herbcomic.com/herb-s02-e66-p01.jpg
568	75	2	https://media.herbcomic.com/herb-s02-e66-p02.jpg
569	75	3	https://media.herbcomic.com/herb-s02-e66-p03.jpg
570	75	4	https://media.herbcomic.com/herb-s02-e66-p04.jpg
571	76	1	https://media.herbcomic.com/herb-s02-e67-p01.jpg
572	76	2	https://media.herbcomic.com/herb-s02-e67-p02.jpg
573	76	3	https://media.herbcomic.com/herb-s02-e67-p03.jpg
574	76	4	https://media.herbcomic.com/herb-s02-e67-p04.jpg
575	77	1	https://media.herbcomic.com/herb-s02-e68-p01.jpg
576	77	2	https://media.herbcomic.com/herb-s02-e68-p02.jpg
577	77	3	https://media.herbcomic.com/herb-s02-e68-p03.jpg
578	77	4	https://media.herbcomic.com/herb-s02-e68-p04.jpg
579	78	1	https://media.herbcomic.com/herb-s02-e69-p01.jpg
580	78	2	https://media.herbcomic.com/herb-s02-e69-p02.jpg
581	78	3	https://media.herbcomic.com/herb-s02-e69-p03.jpg
582	78	4	https://media.herbcomic.com/herb-s02-e69-p04.jpg
583	79	1	https://media.herbcomic.com/herb-s03-e01-p01.jpg
584	79	2	https://media.herbcomic.com/herb-s03-e01-p02.jpg
585	79	3	https://media.herbcomic.com/herb-s03-e01-p03.jpg
586	79	4	https://media.herbcomic.com/herb-s03-e01-p04.jpg
587	80	1	https://media.herbcomic.com/herb-s03-e02-p01.jpg
588	80	2	https://media.herbcomic.com/herb-s03-e02-p02.jpg
589	80	3	https://media.herbcomic.com/herb-s03-e02-p03.jpg
590	80	4	https://media.herbcomic.com/herb-s03-e02-p04.jpg
591	81	1	https://media.herbcomic.com/herb-s03-e03-p01.jpg
592	81	2	https://media.herbcomic.com/herb-s03-e03-p02.jpg
593	81	3	https://media.herbcomic.com/herb-s03-e03-p03.jpg
594	81	4	https://media.herbcomic.com/herb-s03-e03-p04.jpg
595	82	1	https://media.herbcomic.com/herb-s03-e04-p01.jpg
596	82	2	https://media.herbcomic.com/herb-s03-e04-p02.jpg
597	82	3	https://media.herbcomic.com/herb-s03-e04-p03.jpg
598	82	4	https://media.herbcomic.com/herb-s03-e04-p04.jpg
599	83	1	https://media.herbcomic.com/herb-s03-e05-p01.jpg
600	83	2	https://media.herbcomic.com/herb-s03-e05-p02.jpg
601	83	3	https://media.herbcomic.com/herb-s03-e05-p03.jpg
602	83	4	https://media.herbcomic.com/herb-s03-e05-p04.jpg
603	84	1	https://media.herbcomic.com/herb-s03-e06-p01.jpg
604	84	2	https://media.herbcomic.com/herb-s03-e06-p02.jpg
605	84	3	https://media.herbcomic.com/herb-s03-e06-p03.jpg
606	84	4	https://media.herbcomic.com/herb-s03-e06-p04.jpg
607	85	1	https://media.herbcomic.com/herb-s03-e07-p01.jpg
608	85	2	https://media.herbcomic.com/herb-s03-e07-p02.jpg
609	85	3	https://media.herbcomic.com/herb-s03-e07-p03.jpg
610	85	4	https://media.herbcomic.com/herb-s03-e07-p04.jpg
611	86	1	https://media.herbcomic.com/herb-s03-e08-p01.jpg
612	86	2	https://media.herbcomic.com/herb-s03-e08-p02.jpg
613	86	3	https://media.herbcomic.com/herb-s03-e08-p03.jpg
614	86	4	https://media.herbcomic.com/herb-s03-e08-p04.jpg
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: alessioharo
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
53b77126-fa47-43ad-87e5-b35ab7f75522	a7f98a46cd46aca6675d57f5a3017938847195dece1309a65e0e6b4e7340fda3	2025-08-05 22:48:23.693836-05	20250728215147_init	\N	\N	2025-08-05 22:48:23.687856-05	1
\.


--
-- Name: Comic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alessioharo
--

SELECT pg_catalog.setval('public."Comic_id_seq"', 86, true);


--
-- Name: Panel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alessioharo
--

SELECT pg_catalog.setval('public."Panel_id_seq"', 614, true);


--
-- Name: Comic Comic_pkey; Type: CONSTRAINT; Schema: public; Owner: alessioharo
--

ALTER TABLE ONLY public."Comic"
    ADD CONSTRAINT "Comic_pkey" PRIMARY KEY (id);


--
-- Name: Panel Panel_pkey; Type: CONSTRAINT; Schema: public; Owner: alessioharo
--

ALTER TABLE ONLY public."Panel"
    ADD CONSTRAINT "Panel_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: alessioharo
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: Panel Panel_comicId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alessioharo
--

ALTER TABLE ONLY public."Panel"
    ADD CONSTRAINT "Panel_comicId_fkey" FOREIGN KEY ("comicId") REFERENCES public."Comic"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

