CREATE PROCEDURE sso_control(p_username VARCHAR, p_token VARCHAR)
AS $$
BEGIN
	IF NOT EXISTS (SELECT FROM users u, sso_tokens t
                   WHERE u.username = p_username AND u.username = t.username AND t.token = p_token) THEN
	    RAISE EXCEPTION 'Auth Error';
	END IF;
END;
$$ LANGUAGE plpgsql;