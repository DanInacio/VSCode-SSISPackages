SELECT MAX(BUSINESSENTITYID) FROM SALES.STORE
SELECT MAX(ADDRESSID) FROM PERSON.BusinessEntityAddress
SELECT MAX(BusinessEntityID ) FROM PERSON.BusinessEntity
SELECT MAX(ADDRESSID) FROM PERSON.ADDRESS 


DELETE FROM SALES.STORE WHERE BusinessEntityID > 2051
DELETE FROM PERSON.BusinessEntityAddress WHERE AddressID > 32521
DELETE FROM PERSON.BusinessEntity WHERE BusinessEntityID > 20777
DBCC CHECKIDENT ("PERSON.BUSINESSENTITY",RESEED,20777)
DELETE FROM PERSON.ADDRESS WHERE ADDRESSID  > 32521

SELECT * FROM PERSON.BusinessEntity WHERE BusinessEntityID > 20777
SELECT * FROM SALES.STORE  WHERE BusinessEntityID > 20777
SELECT * FROM PERSON.ADDRESS WHERE ADDRESSID  > 32521

SELECT * FROM PERSON.BusinessEntity (NOLOCK) WHERE BusinessEntityID > 20777
SELECT * FROM SALES.STORE (NOLOCK) WHERE BusinessEntityID > 20777
SELECT * FROM PERSON.ADDRESS (NOLOCK) WHERE ADDRESSID  > 32521
SELECT * FROM PERSON.BusinessEntityAddress (NOLOCK) WHERE AddressID > 32521


