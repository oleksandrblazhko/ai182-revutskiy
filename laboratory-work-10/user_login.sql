CREATE OR REPLACE FUNCTION user_login(p_username varchar, p_password varchar)
RETURNS VARCHAR AS $$
DECLARE
	token VARCHAR;
	username VARCHAR;
BEGIN
	SELECT users.user_name INTO username FROM users
	WHERE users.user_name = p_username AND password_hash = md5(p_password);

	IF NOT FOUND THEN
		RETURN '';
	ELSE
		SELECT md5(COALESCE(inet_client_addr()::VARCHAR, '') || COALESCE(inet_client_port()::VARCHAR, '') || pg_backend_pid()::VARCHAR) INTO token;
		INSERT INTO sso_tokens (user_name, token) VALUES (username, token);
		RETURN token;
	END IF;
END;
$$ LANGUAGE plpgsql;


-- DROP TABLE IF EXISTS sso_tokens;
-- CREATE TABLE sso_tokens (
-- 		user_id INTEGER,
-- 		user_name VARCHAR,
-- 		token VARCHAR,
-- 		FOREIGN KEY (user_id) REFERENCES users(user_id)
-- );