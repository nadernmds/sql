CREATE TABLE [dbo].[Users]
(
[userID] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[username] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[password] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mobile] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ban] [int] NULL,
[x] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED  ([userID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users] ON [dbo].[Users] ([username]) ON [PRIMARY]
GO
