CREATE TABLE [dbo].[SalonWorkers]
(
[salonWorkerID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[username] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[password] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mobile] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalonWorkers] ADD CONSTRAINT [PK_SalonWorkers] PRIMARY KEY CLUSTERED  ([salonWorkerID]) ON [PRIMARY]
GO
