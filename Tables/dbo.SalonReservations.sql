CREATE TABLE [dbo].[SalonReservations]
(
[salonReservationID] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[userID] [bigint] NULL,
[salonTimeFieldID] [bigint] NULL,
[salonWorkerID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalonReservations] ADD CONSTRAINT [PK_SalonReservations] PRIMARY KEY CLUSTERED  ([salonReservationID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SalonReservations] ADD CONSTRAINT [FK_SalonReservations_SalonTimeFileds] FOREIGN KEY ([salonTimeFieldID]) REFERENCES [dbo].[SalonTimeFileds] ([salonTimeFieldID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SalonReservations] ADD CONSTRAINT [FK_SalonReservations_Users] FOREIGN KEY ([userID]) REFERENCES [dbo].[Users] ([userID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
