CREATE TABLE [dbo].[DimDriver] (
    [DriverKey]    INT          NOT NULL,
    [FirstName]    VARCHAR (50) NULL,
    [LastName]     VARCHAR (50) NULL,
    [VehicleModel] VARCHAR (50) NULL
);


GO

ALTER TABLE [dbo].[DimDriver]
    ADD CONSTRAINT [PK_DimDriver] PRIMARY KEY NONCLUSTERED ([DriverKey] ASC) NOT ENFORCED;


GO