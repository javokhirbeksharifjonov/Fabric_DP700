CREATE TABLE [dbo].[FactRide] (
    [RideID]              INT        NOT NULL,
    [DateKey]             INT        NULL,
    [CityKey]             INT        NULL,
    [DriverKey]           INT        NULL,
    [CustomerKey]         INT        NULL,
    [TripTypeKey]         INT        NULL,
    [RideDurationMinutes] FLOAT (53) NULL,
    [RideDistanceMiles]   FLOAT (53) NULL,
    [TotalFare]           FLOAT (53) NULL,
    [TipAmount]           FLOAT (53) NULL
);


GO

ALTER TABLE [dbo].[FactRide]
    ADD CONSTRAINT [FK_FactRide_CityKey] FOREIGN KEY ([CityKey]) REFERENCES [dbo].[DimCity] ([CityKey]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[FactRide]
    ADD CONSTRAINT [FK_FactRide_CustomerKey] FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[FactRide]
    ADD CONSTRAINT [FK_FactRide_DateKey] FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[FactRide]
    ADD CONSTRAINT [FK_FactRide_DriverKey] FOREIGN KEY ([DriverKey]) REFERENCES [dbo].[DimDriver] ([DriverKey]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[FactRide]
    ADD CONSTRAINT [FK_FactRide_TripTypeKey] FOREIGN KEY ([TripTypeKey]) REFERENCES [dbo].[DimTripType] ([TripTypeKey]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[FactRide]
    ADD CONSTRAINT [PK_FactRide] PRIMARY KEY NONCLUSTERED ([RideID] ASC) NOT ENFORCED;


GO