CREATE TABLE [dbo].[Payments]
(
[payementID] [bigint] NOT NULL,
[userID] [bigint] NULL,
[salonReservationID] [bigint] NULL,
[amount] [int] NULL,
[id] [int] NULL,
[test] [int] NULL,
[test2] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Payments] ADD CONSTRAINT [PK_Payments_1] PRIMARY KEY CLUSTERED  ([payementID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Payments] ADD CONSTRAINT [FK_Payments_SalonReservations1] FOREIGN KEY ([salonReservationID]) REFERENCES [dbo].[SalonReservations] ([salonReservationID])
GO
ALTER TABLE [dbo].[Payments] ADD CONSTRAINT [FK_Payments_Users1] FOREIGN KEY ([userID]) REFERENCES [dbo].[Users] ([userID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
