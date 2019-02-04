CREATE TABLE [dbo].[SalonTimeTemplates]
(
[salonTimeTemplateID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[salonTemplateName] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[salonID] [int] NULL,
[date] [datetime] NULL,
[active] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalonTimeTemplates] ADD CONSTRAINT [PK_SalonTimeTemplates] PRIMARY KEY CLUSTERED  ([salonTimeTemplateID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalonTimeTemplates] ADD CONSTRAINT [FK_SalonTimeTemplates_Salons] FOREIGN KEY ([salonID]) REFERENCES [dbo].[Salons] ([salonID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
