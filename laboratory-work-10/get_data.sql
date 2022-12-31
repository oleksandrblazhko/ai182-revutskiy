CREATE OR REPLACE FUNCTION get_data(p_username VARCHAR, p_token VARCHAR, human_name VARCHAR)
RETURNS TABLE (p_id INTEGER, name VARCHAR, bd DATE) AS $$
DECLARE
	str VARCHAR;
BEGIN
    CALL sso_control(p_username, p_token);
	str := 'SELECT p_id, name, bd FROM human WHERE name = $1';
	RAISE NOTICE 'Query=%', str;
	RETURN QUERY EXECUTE str USING human_name;
END;
$$ LANGUAGE plpgsql;