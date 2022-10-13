use automotive;


insert into usuarios (Id_Usuario,Num_Empleado,Nombre,Apellidos,Puesto,Id_Departamento,Departamento)
Values (1,339001,'Hugo Adrian','Hernandez','IT Manager',1,'IT'),
(2,339001,'Benito','Santos','Planner de Mtto',2,'Mantenimiento'),
(3,339001,'Patricia','Ramos','Financiero',3,'Finanzas'),
(4,339001,'Lucia','Charles','Servicio a Cliente',4,'Ventas'),
(5,339001,'Isabel','Prado','Planeador de Materiales',5,'Almacen');


insert into Unidades (Id_Unidad, Codigo_Unidad, Opcion_Unidad, Almacen_Id, Fecha_Unidad, Movimiento_Unidad,Numero_Parte, Id_Usuario,Id_DecisionC)
Values (6,2273,'PINTURA',2,'2022-10-12','ESCANER1','BP20202012',3,100),
(2,226373,'BEDLINER',1,'2022-10-12','ESCANER2','BP2938382',3,123),
(3,262727,'PINTURA',1,'2022-10-12','ESCANER3','BP828323',3,353),
(4,202222,'BEDLINER',2,'2022-10-12','ESCANER3','BP3948282',3,163),
(5,292828,'DUAL',1,'2022-10-12','ESCANER1','BP938482',3,342);


Insert into Almacen (Id_Almacen,Nombre_Almacen,Codigo_Almacen,Estatus_Almacen) Values
(1,'Recibo',2233,'Activo'),
(2,'Produccion',2234,'Activo'),
(3,'Retrabajo',2235,'Activo'),
(4,'Calidad',2236,'Activo'),
(5,'Embarque',2237,'Activo');


Insert into Inventario (Id_UnidadI, Descripcion, Fecha_Inventario,NUmero_Parte, Unidades_Id) Value
(1000,'CajaCompuertaCarnero','2022-10.12','2237',2),
(1001,'CajaSinManija','2022-10.12','2238',6),
(1002,'CajaManijaElectrica','2022-10.12','2239',3),
(1003,'CajaCompuertaCarnero','2022-10.12','2240',1),
(1004,'CajaCompuertaDoble','2022-10.12','2241',5);


Insert into cliente (Id_Cliente,Razon_Social,Direccion,Codigo_Postal,Ciudad,Pais,Telefono,Correo,RFC) values
(10211,'La canasta Sa de CV','Barita 2039 Bonanza',25296,'Saltillo','Mexico',87612345,'buzon@lacanasta.com','LCA3922022C11'),
(10212,'Burritos Tobi SA de CV','ValdezSanchez 344 La Angostura',25000,'Los Mochis','Mexico',76598342,'atnacliente@burritos.com','BDDT20292921A'),
(10213,'Pedo Lopez Saavedra','Islas Molucas 3233',44321,'Silao','Mexico',47298763,'pedo.lopez@gmial.com','PLSAA841012H22'),
(10214,'GeneralMotors Mexico','Av electricidad 2092 ParqueIndustrial',22333,'San Luis Potosi','Mexico',83312345,'Aidedelagarza@gm.com','GMOD0303022'),
(10215,'La canasta2 Sa de CV','Barita 2039 Bonanza',25296,'Saltillo','Mexico',78622889,'buzon@lacanasta2.com','LCA3922022V11');

Insert into calidad  (Id_MovimientoC, Opcion_UnidadC, Id_Usuario, Fecha_Calidad, Decision_Calidad, Unidades_Id) values
(3301,'Crater',3,'2022-10-12','SCRAP',1),
(3302,'Mal Pintada',1,'2022-10-12','SCRAP',4),
(3303,'Marca de Agua',4,'2022-10-12','SCRAP',5),
(3304,'Lija marcada',2,'2022-10-12','SCRAP',3),
(3305,'Aproximacion',1,'2022-10-12','SCRAP',2);

insert into Factura (Numero_Factura,Razon_Social,RFC,Cantidad,Precio_Iva,Precio_Neto,Fecha_Factura,Cliente_ID) values
(20211,'La canasta2 Sa de CV','LCA3922022V11',838,1551.22,1222.40,'2022-10-12',10215),
(20212,'GeneralMotors Mexico','GMOD0303022',1331,40129.22,37122.22,'2022-10-10',10214),
(20213,'Pedo Lopez Saavedra','PLSAA841012H22',110,788.20,1100.40,'2022-10-12',10213),
(20214,'GeneralMotors Mexico','GMOD0303022',421,766.98,1000.33,'2022-10-10',10214),
(20215,'GeneralMotors Mexico','GMOD0303022',5512,52122.99,58922.24,'2022-10-10',10214);



insert into Embarque (Id_MovimientoE,LoteE,Fecha_EmbarqueE,Codigo_FacturaE,Id_UsuarioE,Unidades_Id,Facturacion_Numero_Factura) values
(1,3992001,'2022-10-12',20211222,2,1,20211),
(2,3992002,'2022-10-12',20211223,1,4,20212),
(3,3992003,'2022-10-12',20211224,2,5,20213),
(4,3992004,'2022-10-12',20211225,1,2,20214),
(5,3992005,'2022-10-12',20211226,1,1,20215);


insert into movimientos_op (Id_Operacion, Opcion_Unidad,Estatus_Unidad,Numero_Parte,Fecha_Movimiento,Unidades_Id,Almacen_Id,Usuarios_Id,Calidad_Id) values
(100001, 'CajaCompuertaCarnero','Activo', 1020391,'2022-10-12',1,2,1,3301),
(100002, 'CajaSinManija','Activo', 1020391,'2022-10-12',4,4,2,3302),
(100003, 'CajaManijaElectrica','Activo', 1020391,'2022-10-12',1,1,3,3303),
(100004, 'CajaCompuertaCarnero','Activo', 1020391,'2022-10-12',4,2,4,3304),
(100005, 'CajaCompuertaDoble','Activo', 1020391,'2022-10-12',3,3,5,3305);




