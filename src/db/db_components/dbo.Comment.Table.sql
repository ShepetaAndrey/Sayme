USE SaymeDB
GO
CREATE TABLE dbo.CommentTable(
	id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
	text nvarchar(256) NOT NULL,
	id_user bigint NOT NULL,
	id_post bigint NOT NULL,
)
GO
ALTER TABLE dbo.Comment  WITH CHECK ADD  CONSTRAINT FK_Comment_Post FOREIGN KEY(id_post)
REFERENCES dbo.Post (id)
GO
ALTER TABLE dbo.Comment CHECK CONSTRAINT FK_Comment_Post
GO
ALTER TABLE dbo.Comment  WITH CHECK ADD  CONSTRAINT FK_Comment_User FOREIGN KEY(id_user)
REFERENCES dbo.User (id)
GO
ALTER TABLE dbo.Comment CHECK CONSTRAINT FK_Comment_User
GO