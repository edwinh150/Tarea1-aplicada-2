create database CuentasSQL;

use CuentasSQL;

Create table Cuentas(CuentaId int identity(1,1),
Descripcion nvarchar(100), Balance Float);