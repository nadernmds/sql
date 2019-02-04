CREATE TABLE [dbo].[SalonWorkerTracks]
(
[salonWorkerTrackID] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[salonWorkerID] [int] NULL,
[salonReservationID] [bigint] NULL,
[salonTimeFieldID] [bigint] NULL,
[salonID] [int] NULL,
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalonWorkerTracks] ADD CONSTRAINT [PK_SalonWorkerTracks] PRIMARY KEY CLUSTERED  ([salonWorkerTrackID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalonWorkerTracks] ADD CONSTRAINT [FK_SalonWorkerTracks_SalonReservations] FOREIGN KEY ([salonReservationID]) REFERENCES [dbo].[SalonReservations] ([salonReservationID])
GO
ALTER TABLE [dbo].[SalonWorkerTracks] ADD CONSTRAINT [FK_SalonWorkerTracks_Salons] FOREIGN KEY ([salonID]) REFERENCES [dbo].[Salons] ([salonID])
GO
ALTER TABLE [dbo].[SalonWorkerTracks] ADD CONSTRAINT [FK_SalonWorkerTracks_SalonTimeFileds] FOREIGN KEY ([salonTimeFieldID]) REFERENCES [dbo].[SalonTimeFileds] ([salonTimeFieldID])
GO
ALTER TABLE [dbo].[SalonWorkerTracks] ADD CONSTRAINT [FK_SalonWorkerTracks_SalonWorkers] FOREIGN KEY ([salonWorkerID]) REFERENCES [dbo].[SalonWorkers] ([salonWorkerID])
GO
