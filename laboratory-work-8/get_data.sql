CREATE OR REPLACE FUNCTION get_data(human_name VARCHAR)
RETURNS TABLE (p_id INTEGER, name VARCHAR, bd DATE) AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT p_id, name, bd FROM human WHERE name = ''' || human_name || '''';
	RAISE NOTICE 'Query=%', str;
	RETURN QUERY EXECUTE str;
END;
$$ LANGUAGE plpgsql;