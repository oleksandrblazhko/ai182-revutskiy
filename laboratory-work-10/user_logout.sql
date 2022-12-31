CREATE FUNCTION user_logout(p_username VARCHAR, p_token VARCHAR)
RETURNS INTEGER AS $$
BEGIN
    CALL sso_control(p_username, p_token);
    DELETE FROM sso_tokens WHERE username = p_username;
	RETURN 0;
END;
$$ LANGUAGE plpgsql;