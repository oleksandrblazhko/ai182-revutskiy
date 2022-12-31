CREATE FUNCTION user_login(p_username varchar, p_password varchar)
RETURNS VARCHAR AS $$
DECLARE
	token VARCHAR;
	username VARCHAR;
BEGIN
	SELECT users.username INTO username FROM users
	WHERE users.username = p_username AND password_hash = md5(p_password);

	IF NOT FOUND THEN
		RETURN '';
	ELSE
		SELECT md5(COALESCE(inet_client_addr()::VARCHAR, '') || COALESCE(inet_client_port()::VARCHAR, '') || pg_backend_pid()::VARCHAR) INTO token;
		INSERT INTO sso_tokens VALUES (username, token);
		RETURN token;
	END IF;
END;
$$ LANGUAGE plpgsql;