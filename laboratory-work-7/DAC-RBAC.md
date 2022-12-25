1. Встановіть СКБД PostgreSQL, отримавши для вашої ОС інсталяційний пакет з https://www.postgresql.org/download/

<img width="563" alt="Снимок экрана 2022-12-25 в 20 21 04" src="https://user-images.githubusercontent.com/27497026/209478583-70a5e09a-224b-4b0c-9174-75d29827638d.png">
<img width="562" alt="Снимок экрана 2022-12-25 в 20 22 36" src="https://user-images.githubusercontent.com/27497026/209478598-89aad1e6-fba5-48af-8fed-8b2bb85015de.png">

2. Створіть термінальну консоль psql через утиліту командного рядка вашої ОС та встановіть з’єднання з БД postgres від імені користувача-адміністратора postgres

<img width="454" alt="image" src="https://user-images.githubusercontent.com/27497026/209478669-96fc3010-5ee2-4f82-bc28-70f597646677.png">

3. Зареєструйте нового користувача в СКБД PostgreSQL, назва якого співпадає з вашим ім'ям, наприклад ivan, і довільним паролем.

<img width="365" alt="image" src="https://user-images.githubusercontent.com/27497026/209479223-51ba21c6-c681-440c-89a0-1f4752cac9e2.png">

4. Створіть роль в СКБД PostgreSQL (назва співпадає з вашим прізвищем латинськими літерами) і надайте новому користувачеві можливість наслідувати цю роль.

<img width="388" alt="image" src="https://user-images.githubusercontent.com/27497026/209479265-a1eee399-dbfe-4862-87bc-4df228594349.png">

5. Створіть реляційну таблицю з урахуванням варіанту з таблиці 2.1 від імені користувача-адміністратора.

<img width="481" alt="image" src="https://user-images.githubusercontent.com/27497026/209479281-19dd5535-f65c-4e80-b163-90941c1970b4.png">

6. Внесіть один рядок в таблицю, використовуючи команду insert into ..., відповідно до варіанту.

<img width="453" alt="image" src="https://user-images.githubusercontent.com/27497026/209479296-037edaa1-fc53-48ca-b2ff-4f993b1cc2e0.png">

7. Додатково створіть ще одну термінальну консоль psql та та встановіть з’єднання з БД postgres від імені нового користувача.

<img width="420" alt="image" src="https://user-images.githubusercontent.com/27497026/209479412-599d2d12-55e5-4d80-84cd-27f0d50d3e5e.png">

8. Від імені вашого користувача виконайте запит на отримання даних з таблиці (select * from таблиця). Запротоколюйте результат виконання команди.

<img width="308" alt="image" src="https://user-images.githubusercontent.com/27497026/209479419-7a36c323-7196-4418-8aad-a67d6396b47f.png">

9. Встановіть повноваження на читання таблиці новому користувачеві.

<img width="324" alt="image" src="https://user-images.githubusercontent.com/27497026/209479455-dae90fc2-a9d1-4765-a74c-8f5d0bf759ad.png">

10. Повторіть крок 8.

<img width="227" alt="image" src="https://user-images.githubusercontent.com/27497026/209479462-7f098299-de62-42ee-8a40-0553bb131401.png">

11. Зніміть повноваження на читання таблиці для нового користувача.

<img width="335" alt="image" src="https://user-images.githubusercontent.com/27497026/209479489-4045dc33-d874-4abb-8d16-ea49a3c9f335.png">

12. Повторіть крок 8.

<img width="308" alt="image" src="https://user-images.githubusercontent.com/27497026/209479419-7a36c323-7196-4418-8aad-a67d6396b47f.png">

13. Створіть команду оновлення даних таблиці (UPDATE) і виконайте її від імені нового користувача. Проаналізуйте результат виконання команди.

<img width="463" alt="image" src="https://user-images.githubusercontent.com/27497026/209479613-e484e60f-ba98-42d7-b0ef-3d80a15dfac7.png">

14. Встановіть повноваження на оновлення таблиці новому користувачеві.

<img width="386" alt="image" src="https://user-images.githubusercontent.com/27497026/209479632-7df916be-49df-4927-86f8-a0225c9c8dcc.png">

15. Повторіть крок 13.

<img width="461" alt="image" src="https://user-images.githubusercontent.com/27497026/209479727-a691a1b0-800e-47a6-af0a-e08e4619868e.png">

16. Створіть команду видалення запису таблиці (DELETE) і виконайте її від імені нового користувача. Проаналізуйте результат виконання команди.

<img width="317" alt="image" src="https://user-images.githubusercontent.com/27497026/209479745-4539b9a4-1895-4b05-a0b9-ba9572edee9b.png">

17. Встановіть повноваження на видалення таблиці новому користувачеві.

<img width="336" alt="image" src="https://user-images.githubusercontent.com/27497026/209479753-41dfbece-4ea1-4dbc-9d33-acc96f5c3e2f.png">

18. Повторіть крок 16.

<img width="315" alt="image" src="https://user-images.githubusercontent.com/27497026/209479768-99c6cfd8-a82c-45f2-95b0-c0f8c034e5b6.png">

19. Зніміть всі повноваження з таблиці для нового користувача.

<img width="455" alt="image" src="https://user-images.githubusercontent.com/27497026/209479780-8ed70abd-02b0-40b1-adeb-4d6731dcc536.png">

20. Створіть команду внесення запису в таблицю (INSERT) і виконайте її від імені нового користувача. Проаналізуйте результат виконання команди.

<img width="462" alt="image" src="https://user-images.githubusercontent.com/27497026/209479793-8a919bc7-80c4-440b-9eb8-731deee7408a.png">

21. Встановіть повноваження на внесення даних до таблиці для ролі.

<img width="347" alt="image" src="https://user-images.githubusercontent.com/27497026/209479829-6fd8e44a-0dcf-42c9-bcaa-3c0535c7b08a.png">

22. Повторіть крок 20.

<img width="472" alt="image" src="https://user-images.githubusercontent.com/27497026/209479841-77576550-b7fc-4fb3-aca0-ffa4a0461ed7.png">
