USE [AdventureWorks2017]
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBusinessEntity]    Script Date: 10/17/2020 1:13:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_InsertBusinessEntity](@BusinessEntityID int output)
AS
BEGIN
INSERT INTO PERSON.BusinessEntity(ROWGUID,MODIFIEDDATE)
VALUES(DEFAULT,DEFAULT)

SET @BusinessEntityID = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[USPGetAddressTypeID]    Script Date: 10/17/2020 1:13:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USPGetAddressTypeID]
(
@AddressTypeName nvarchar(50),
@AddressTypeID int output
)
AS
BEGIN

SELECT @AddressTypeID =AddressTypeID FROM Person.AddressType WHERE Name=@AddressTypeName

END
GO
