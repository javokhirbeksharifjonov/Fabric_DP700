CREATE TABLE [dbo].[DimDate] (
    [DateKey]  INT  NOT NULL,
    [FullDate] DATE NULL,
    [Year]     INT  NULL,
    [Quarter]  INT  NULL,
    [Month]    INT  NULL,
    [Day]      INT  NULL
);


GO

ALTER TABLE [dbo].[DimDate]
    ADD CONSTRAINT [PK_DimDate] PRIMARY KEY NONCLUSTERED ([DateKey] ASC) NOT ENFORCED;


GO