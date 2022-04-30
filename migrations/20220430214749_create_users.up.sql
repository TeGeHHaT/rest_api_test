CREATE TABLE test.t_user
(
  id serial not null primary key,
  email character varying not null unique,
  encrypted_password character varying not null
)
WITH (OIDS = FALSE);

ALTER TABLE test.t_user OWNER TO postgres;

GRANT ALL ON TABLE test.t_user TO postgres;
GRANT ALL ON TABLE test.t_user TO public;
COMMENT ON table test.t_user IS 'Test users';


COMMENT ON COLUMN test.t_user.id IS 'id';
COMMENT ON COLUMN test.t_user.email IS 'email';
COMMENT ON COLUMN test.t_user.encrypted_password IS 'encrypted_password';

GRANT SELECT, UPDATE ON SEQUENCE test.t_user_id_seq TO postgres;
GRANT SELECT, UPDATE ON SEQUENCE test.t_user_id_seq TO public;
COMMENT ON SEQUENCE test.t_user_id_seq
    IS 'Test users';