USE SaymeDB
GO
CREATE TABLE dbo.LikePost(
	id_user bigint NOT NULL,
	id_post bigint NOT NULL,
	liked bit NOT NULL,
)
GO
ALTER TABLE dbo.LikePost  WITH CHECK ADD  CONSTRAINT FK_LikePost_Post FOREIGN KEY(id_post)
REFERENCES dbo.Post (id)
GO
ALTER TABLE dbo.LikePost CHECK CONSTRAINT FK_LikePost_Post
GO
ALTER TABLE dbo.LikePost  WITH CHECK ADD  CONSTRAINT FK_LikePost_User FOREIGN KEY(id_user)
REFERENCES dbo.User (id)
GO
ALTER TABLE dbo.LikePost CHECK CONSTRAINT FK_LikePost_User
GO
