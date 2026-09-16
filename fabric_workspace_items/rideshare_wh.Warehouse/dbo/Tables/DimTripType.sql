CREATE TABLE [dbo].[DimTripType] (
    [TripTypeKey]  INT          NOT NULL,
    [TripTypeName] VARCHAR (50) NULL,
    [MaxCapacity]  INT          NULL
);


GO

ALTER TABLE [dbo].[DimTripType]
    ADD CONSTRAINT [PK_DimTripType] PRIMARY KEY NONCLUSTERED ([TripTypeKey] ASC) NOT ENFORCED;


GO