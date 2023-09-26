SELECT User_A.Login AS Login, User_A.Name AS Name, User_A.Lastlogin AS Real login
FROM User_A
WHERE User_A.Name NOT IN (SELECT User_B.Full_name FROM User_B)
UNION
SELECT User_B.Login_ID AS Login, User_B.Full_name AS Name, User_B.LoginDate AS Real login
FROM User_B
WHERE User_B.Full_name NOT IN (SELECT User_A.Name FROM User_A);