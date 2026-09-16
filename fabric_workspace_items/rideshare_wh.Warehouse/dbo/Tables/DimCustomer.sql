CREATE TABLE [dbo].[DimCustomer] (
    [CustomerKey] INT          NOT NULL,
    [FirstName]   VARCHAR (50) NULL,
    [LastName]    VARCHAR (50) NULL,
    [Tier]        VARCHAR (20) NULL,
    [IsActive]    BIT          NULL
);


GO

ALTER TABLE [dbo].[DimCustomer]
    ADD CONSTRAINT [PK_DimCustomer] PRIMARY KEY NONCLUSTERED ([CustomerKey] ASC) NOT ENFORCED;


GO