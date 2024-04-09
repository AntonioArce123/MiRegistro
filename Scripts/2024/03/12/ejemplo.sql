use northwind 

-- Productos cuyo id sea
--    1, 5, 8, 30
-- Ejemplo de operador IN

select 
    * 
    from
   products
    where ProductID in 
    (1,5,8,30)

-- Productos de los proveedores
--    5, 7 y 9
select 
    * -- todas las columnas
    from
   products
    where SupplierID in 
    (5, 7, 9) -- id de proveedores

-- Comparacion de Strings

select * 
    from Products 
    where ProductName = 'Pavlova'

select * 
    from Products 
    where ProductName <> 'Pavlova'

-- Comiencen por 'Tea'
select * 
    from Products 
    where ProductName like 'Tea%'

select * 
    from Products 
    where ProductName like '%tea%'

select * 
    from Products 
    where ProductName like '%che%'

select * 
    from Products 
    where ProductName like '%CHE%'

select * 
    from Products 
    where ProductName like '% a%'

select * from Employees
    where region is not null


select * from Products    
    WHERE not (ProductName = 'Pavlova')

select * from Products    
    WHERE (ProductName <> 'Pavlova')
        and CategoryID = 2

select * from Products    
    WHERE (ProductName <> 'Pavlova')
        or  (CategoryID = 2 and SupplierID=3)
        or (productid in (3,5, 7))


--09/04/24--       
select * from Products (ProductName, SupplierID, CategoryID, UnitPrice)
insert into Products (ProductName, SupplierID, CategoryID, UnitPrice)
values (
    'Queso monita', 14, 4, 3, 11
    )
    delete from Products 
        where ProductID = '78'


UPDATE Products
set UnitPrice = UnitPrice * 1.1
where SupplierID = 12 

select * from products

select * from SupplierID
    where SupplierID = 12

select ProductName, CompanyName 
    from Products, Suppliers

select ProductID, ProductName, UnitPrice, CompanyName from Products  
    inner join Suppliers on Products.SupplierID = SupplierID.SupplierID
    where UnitPrice BETWEEN 15 and 30
    --order by CompanyName
    --order by UnitInStock
    order by Suppliers.Country