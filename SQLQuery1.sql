create table gpblog
(
Blogid int not null primary key identity(1,1),
Blogtitle nvarchar(150),
Blogcategory nvarchar(150),
BlogDesc nvarchar(300),
BlogUrl nvarchar(300),
Blogposteddate datetime
);