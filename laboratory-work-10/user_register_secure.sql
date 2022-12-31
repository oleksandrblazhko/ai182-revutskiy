CREATE FUNCTION user_register_secure(p_username VARCHAR, p_password VARCHAR)
RETURNS INTEGER AS $$
BEGIN
    IF NOT EXISTS (SELECT FROM xato_new_million_passwords WHERE password = p_password) AND p_password ~ '(?=(.*[0-9]){2,})(?=(.*[a-z]){4,})(?=(.*[A-Z]){4,})(?=(.*[!@#$%^&*]){2,})[0-9a-zA-Z!@#$%^&*]{15,}' THEN
        INSERT INTO users VALUES (p_username, md5(p_password));
        RAISE NOTICE 'Користувач % успішно зареєстрований!', p_username;
        RETURN 0;
    ELSE
        RAISE NOTICE 'Пароль % поганий!', p_password;
        RETURN 1;
    END IF;
END;
$$ LANGUAGE plpgsql;