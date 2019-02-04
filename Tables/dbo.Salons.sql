CREATE TABLE [dbo].[Salons]
(
[salonID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[salonName] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[location] [sys].[geography] NULL,
[managerName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[managetMobile] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[phone] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[pep] [int] NULL,
[luis] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Salons] ADD CONSTRAINT [PK_Salons] PRIMARY KEY CLUSTERED  ([salonID]) ON [PRIMARY]
GO
