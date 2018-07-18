USE SaymeDB
GO
CREATE TABLE dbo.LikeComment(
	id_user bigint NOT NULL,
	id_comment bigint NOT NULL,
	liked bit NOT NULL,
)
GO
ALTER TABLE dbo.LikeComment  WITH CHECK ADD  CONSTRAINT FK_LikeComment_Comment FOREIGN KEY(id_comment)
REFERENCES dbo.Comment (id)
GO
ALTER TABLE dbo.LikeComment CHECK CONSTRAINT FK_LikeComment_Comment
GO
ALTER TABLE dbo.LikeComment  WITH CHECK ADD  CONSTRAINT FK_LikeComment_User FOREIGN KEY(id_user)
REFERENCES dbo.User (id)
GO
ALTER TABLE dbo.LikeComment CHECK CONSTRAINT FK_LikeComment_User
GO
