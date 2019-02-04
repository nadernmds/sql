CREATE TABLE [dbo].[SalonTimeFileds]
(
[salonTimeFieldID] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[timeDescription] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[salonTimeTemplateID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalonTimeFileds] ADD CONSTRAINT [PK_SalonTimeFileds] PRIMARY KEY CLUSTERED  ([salonTimeFieldID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalonTimeFileds] ADD CONSTRAINT [FK_SalonTimeFileds_SalonTimeTemplates] FOREIGN KEY ([salonTimeTemplateID]) REFERENCES [dbo].[SalonTimeTemplates] ([salonTimeTemplateID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
