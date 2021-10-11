use springmobile
go

INSERT INTO roles(code, name) VALUES
('Admin', N'Quản trị viên'),
('User', N'Thành viên')
GO

INSERT INTO Users (userName, password, fullName, address, email, phone, createddate, status) VALUES
('Admin', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', N'Nguyễn Thành Công', N'HCM', N'ntcong@gmail.com', '0329738149', CAST('2021-08-02' AS DATETIME), 1),
('nguyenvannam', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', N'Nguyễn Văn Nam', N'HCM', N'nam@gmail.com', '0329738149', CAST('2021-08-02' AS DATETIME), 1)
GO

INSERT INTO role_user(userid,roleid) VALUES (1,1)
INSERT INTO role_user(userid,roleid) VALUES (2,2)