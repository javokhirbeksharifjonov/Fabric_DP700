CREATE TABLE [dbo].[DimCity] (
    [CityKey]  INT           NOT NULL,
    [CityName] VARCHAR (100) NULL,
    [Region]   VARCHAR (100) NULL
);


GO

ALTER TABLE [dbo].[DimCity]
    ADD CONSTRAINT [PK_DimCity] PRIMARY KEY NONCLUSTERED ([CityKey] ASC) NOT ENFORCED;


GO