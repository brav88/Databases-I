select * from [Person].[Person]
where BusinessEntityID = 1

select * from [Person].[Person]
where UPPER(FirstName) = 'Michael'

select * from [Person].[Person]
where FirstName LIKE '%M'

select * from [Person].[Person]
where FirstName LIKE 'M%'

select * from [Person].[Person]
where FirstName LIKE 'Mar%'

select * from [Person].[Person]
where FirstName LIKE '%arc%'

select LOWER(FirstName) from [Person].[Person]
where UPPER(FirstName) LIKE LOWER('%arc%')

select * from [Person].[Person]
where ModifiedDate between '2007-12-30 00:00:00.000' and '2009-01-07 00:00:00.000'

select * from [Person].[Person]
where YEAR(ModifiedDate) = 2007

select * from [Person].[Person]
where YEAR(ModifiedDate) between 2007 and 2008
order by YEAR(ModifiedDate) asc

--Ejercicio 1
--Obtenga de la tabla Person.Person todos los nombre que tengan 'eve' en el nombre y 'sho' en el apellido.

SELECT * FROM Person.Person 
WHERE (FirstName LIKE '%eve%') AND (LastName LIKE '%sho%')

--Ejercicio 2
--Obtenga todas las personas que tengan una fecha de modificacion del ano 2007 y el mes diciembre
SELECT * FROM Person.Person 
--WHERE CONVERT(VARCHAR, ModifiedDate, 112) LIKE '200712%'
WHERE YEAR(ModifiedDate) = 2007 AND MONTH(ModifiedDate) = 12 AND DAY(ModifiedDate) = 30
 
SELECT GETDATE()
'2023-02-22 19:33:37.617'
'2023-02-22 19:34:05.500'

select * from [Person].[Person]
select * from [Person].[BusinessEntityAddress]
select * from [Person].[Address]
select * from [Person].[PersonPhone]

select 
	p.BusinessEntityID,
	p.FirstName + ' ' + p.LastName,
	ea.AddressID,
	a.AddressLine1
from [Person].[Person] p
	inner join [Person].[BusinessEntityAddress] ea
		inner join [Person].[Address] a			
		on ea.AddressID = a.AddressID		
	on p.BusinessEntityID = ea.BusinessEntityID	
where ea.AddressID between 1 and 200
order by p.BusinessEntityID asc

--Ejercicio 3
--Desarrolle un query que conecte la tabla Person con la tabla PersonPhone, 
-- Person.FirstName y PersonPhone.PhoneNumber

select 
	p.FirstName,
	pp.PhoneNumber,
	ad.EmailAddress
from Person.Person p
	inner join Person.PersonPhone pp
	on p.BusinessEntityID = pp.BusinessEntityID	
	inner join Person.EmailAddress ad		
	on p.BusinessEntityID = ad.BusinessEntityID
order by p.BusinessEntityID asc

--Ejercicio 4
--Agregarle la direccion email a la consulta anterior.



