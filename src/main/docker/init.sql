CREATE SEQUENCE player_id_seq;

CREATE TABLE player
(
    id integer NOT NULL DEFAULT nextval('player_id_seq'),
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    birth_date date NOT NULL,
    points integer NOT NULL,
    rank integer NOT NULL,
    PRIMARY KEY (id)
);

ALTER SEQUENCE player_id_seq OWNED BY player.id;

ALTER TABLE IF EXISTS public.player OWNER to postgres;


INSERT INTO public.player(last_name, first_name, birth_date, points, rank)
	VALUES ('Nadal', 'Rafael', '1986-06-03', 5000, 1);

INSERT INTO public.player(last_name, first_name, birth_date, points, rank)
    	VALUES ('Djokovic', 'Novak', '1987-05-22', 4000, 2);

INSERT INTO public.player(last_name, first_name, birth_date, points, rank)
    	VALUES ('Federer', 'Roger', '1981-08-08', 3000, 3);

INSERT INTO public.player(last_name, first_name, birth_date, points, rank)
    	VALUES ('Murray', 'Andy', '1987-05-15', 2000, 4);