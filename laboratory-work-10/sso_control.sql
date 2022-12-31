CREATE OR REPLACE PROCEDURE sso_control(p_username VARCHAR, p_token VARCHAR)
AS $$
BEGIN
	IF NOT EXISTS (SELECT FROM users u, sso_tokens t
                   WHERE u.user_name = p_username AND u.user_name = t.user_name AND t.token = p_token) THEN
	    RAISE EXCEPTION 'Auth Error';
	END IF;
END;
$$ LANGUAGE plpgsql;