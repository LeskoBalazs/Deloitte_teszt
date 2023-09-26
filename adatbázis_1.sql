SELECT DISTINCT User_A.Login, User_A.Name, MAX(User_A.Lastlogin, User_B.LoginDate)
FROM User_A
CROSS JOIN User_B
WHERE User_A.Name = User_B.Full_name;