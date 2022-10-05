create database Automotive;

Use Automotive; 
Create table Usuarios ( 
Id_Usuario int primary key not null,
Num_Empleado int,
Nombre varchar (45),
Apellidos varchar(45),
Puesto varchar (45),
Id_Departamento int,
Departamento Varchar (45)
); 

Create table Unidades ( 
Id_Unidad int primary key not null,
Codigo_Unidad int,
Opcion_Unidad varchar (45),
Id_Almacen int, 
Fecha_Unidad DATE,
Movimiento_Unidad varchar(45),
Numero_Parte varchar (45),
Id_Usuario int,
Id_DecisionC int
); 

Create table Almacen ( 
Id_Almacen int primary key not null,
Nombre_Almacen varchar (45),
Codigo_Almacen int, 
Estatus_Almacen varchar(45)
); 

Create table Movimientos_OP ( 
Id_Operacion int primary key not null,
Opcion_Unidad varchar(45),
Estatus_Unidad varchar(45),
Numero_Parte int, 
Fecha_Movimiento DATE,
Unidades_Id int,
Almacen_Id Int
Usuarios_Id Int,
Calidad_Id Int
); 

Create table Calidad ( 
Id_MovimientoC int primary key not null,
Opcion_UnidadC varchar(45),
Id_Usuario Int,
Fecha_Calidad DATE,
Decision_Calidad Varchar (45),
Unidades_Id int
); 

Create table Embarque  ( 
Id_MovimientoE int primary key not null,
LoteE varchar(45),
Fecha_EmbarqueE DATE,
Codigo_FacturaE Int,
Id_UsuarioE int, 
Unidades_Id int,
Facturacion_Numero_Factura int
); 

Create table Factura ( 
Numero_Factura int primary key not null,
Razon_Social varchar(45),
RFC varchar(45),
Cantidad decimal (8,2), 
Precio_Iva decimal (8,2), 
Precio_Neto decimal (8,2), 
Fecha_Factura DATE,
Cliente_Id int
); 

Create table Cliente( 
Id_Cliente int primary key not null,
Razon_Social varchar(45),
Direccion Varchar (45), 
Codigo_Postal Varchar (10),
Ciudad Varchar (45),
Pais Varchar (45),
Telefono Int, 
Correo Varchar (45),
RFC Varchar (45)
);

Create table Inventario ( 
Id_UnidadI int primary key not null,
Descripcion Varchar (45),
Fecha_Inventario Date,
Numero_Parte Varchar(45),
Unidades_Id Int
);







