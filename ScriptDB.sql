/*CREATE DATABASE Diproma;
GO
USE Diproma;*/

/*-------------------------------VERDES-----------------------------------------------*/

CREATE TABLE Rol_Empleado(
	cod_rol INT IDENTITY(1,1) PRIMARY KEY,
	nombre_rol VARCHAR(15)
);

CREATE TABLE Empleado(
	nit_empleado INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	fecha_nacimiento DATE NOT NULL,
	direccion VARCHAR(100) NOT NULL,
	telefono_domicilio CHAR(8) NULL,
	telefono_celular CHAR(8) NULL,
	email VARCHAR(40) NOT NULL,
	pass VARCHAR(20) NOT NULL,
	nit_jefe INT NULL,
	cod_rol INT NOT NULL,
	PRIMARY KEY (nit_empleado),
	FOREIGN KEY (nit_jefe) REFERENCES Empleado(nit_empleado),
	FOREIGN KEY (cod_rol) REFERENCES Rol_Empleado(cod_rol)
);

CREATE TABLE Meta_Mensual(
	nit_empleado INT NOT NULL,
	mes VARCHAR(10) NOT NULL,
	anio INT NOT NULL,
	meta INT NOT NULL,
	PRIMARY KEY (nit_empleado, mes, anio),
	FOREIGN KEY (nit_empleado) REFERENCES Empleado(nit_empleado)
);

CREATE TABLE Vehiculo(
	no_placa VARCHAR(10) NOT NULL,
	no_motor VARCHAR(20) NULL,
	no_chasis VARCHAR(25) NULL,
	marca VARCHAR(20) NOT NULL,
	estilo VARCHAR(20) NULL,
	modelo VARCHAR(15) NULL,
	PRIMARY KEY (no_placa)
);

CREATE TABLE Control_Kilometraje(
	no_placa VARCHAR(10) NOT NULL,
	nit_empleado INT NOT NULL,
	mes VARCHAR(10) NOT NULL,
	kilometraje FLOAT NULL,
	PRIMARY KEY (no_placa, nit_empleado, mes),
	FOREIGN KEY (no_placa) REFERENCES Vehiculo(no_placa),
	FOREIGN KEY (nit_empleado) REFERENCES Empleado(nit_empleado)
);

/*-------------------------------ROSADO-----------------------------------------------*/

CREATE TABLE Departamento(
	cod_depto INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(15) NOT NULL
);

CREATE TABLE Ciudad(
	cod_ciudad INT NOT NULL PRIMARY KEY,
	nombre_ciudad VARCHAR(20) NOT NULL
);

CREATE TABLE Cliente(
	nit_cliente INT NOT NULL,
	direccion VARCHAR(50) NULL,
	telefono_domicilio CHAR(8) NULL,
	telefono_celular CHAR(8) NULL,
	email VARCHAR(40) NULL,
	PRIMARY KEY (nit_cliente)
);

CREATE TABLE Cliente_Persona(
	nit_cliente INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	fecha_nacimiento DATE,
	PRIMARY KEY (nit_cliente),
	FOREIGN KEY (nit_cliente) REFERENCES Cliente(nit_cliente)
);

CREATE TABLE Cliente_Empresa(
	nit_cliente INT NOT NULL,
	nombre_empresa VARCHAR(50) NOT NULL,
	inicio_operaciones DATE NOT NULL,
	PRIMARY KEY (nit_cliente),
	FOREIGN KEY (nit_cliente) REFERENCES Cliente(nit_cliente)
);

CREATE TABLE Credito(
	nit_cliente INT NOT NULL PRIMARY KEY,
	monto_credito FLOAT NOT NULL,
	FOREIGN KEY (nit_cliente) REFERENCES Cliente(nit_cliente)
);

/*----------------------------AZULES--------------------------------------------------*/

CREATE TABLE Categoria_Producto(
	cod_categoria INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nombre_categoria VARCHAR(10) NOT NULL
);

CREATE TABLE Producto (
	cod_producto INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(40) NOT NULL,
	descripcion VARCHAR(100) NULL,
	path_imagen VARCHAR(150) NULL,
	cod_categoria INT NOT NULL,
	FOREIGN KEY (cod_categoria) REFERENCES Categoria_Producto(cod_categoria)
);

CREATE TABLE Comentario(
	cod_comentario INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	cod_producto INT NOT NULL,
	comentario VARCHAR(200) NOT NULL,
	FOREIGN KEY (cod_producto) REFERENCES Producto(cod_producto)
);


CREATE TABLE Lista_Precios(
	cod_lista INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	inicio_vigencia DATE NOT NULL,
	fin_vigencia DATE NOT NULL,
);

CREATE TABLE Inventario(
	cod_lista INT NOT NULL,
	cod_producto INT NOT NULL,
	precio FLOAT NOT NULL,
	existencia INT NOT NULL,
	PRIMARY KEY (cod_lista, cod_producto),
	FOREIGN KEY (cod_lista) REFERENCES Lista_Precios(cod_lista),
	FOREIGN KEY (cod_producto) REFERENCES Producto(cod_producto)
);

/*----------------------------AMARILLOS--------------------------------------------------*/

CREATE TABLE Estado_Orden(
	cod_estado INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nombre_estado VARCHAR(10) NOT NULL
);

CREATE TABLE Orden_Venta(
	cod_venta INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	saldo_pendiente FLOAT NOT NULL,
	nit_empleado INT NOT NULL,
	nit_cliente INT NOT NULL,
	cod_estado INT NOT NULL,
	fecha_limite_pago DATE,
	FOREIGN KEY (nit_empleado) REFERENCES Empleado(nit_empleado),
	FOREIGN KEY (nit_cliente) REFERENCES Cliente(nit_cliente),
	FOREIGN KEY (cod_estado) REFERENCES Estado_Orden(cod_estado)
);

CREATE TABLE Abono(
	cod_abono INT NOT NULL IDENTITY(1,1),
	monto FLOAT NOT NULL,
	no_orden INT NOT NULL,
	fecha DATE,
	PRIMARY KEY (cod_abono),
	FOREIGN KEY (no_orden) REFERENCES Orden_Venta(cod_venta)
);

CREATE TABLE Banco(
	cod_banco INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nombre_banco VARCHAR(20) NOT NULL
);

CREATE TABLE Cheque(
	no_cuenta INT NOT NULL,
	no_cheque INT NOT NULL,
	cod_banco INT NOT NULL,
	cod_abono INT NOT NULL,
	PRIMARY KEY (no_cuenta, no_cheque, cod_banco),
	FOREIGN KEY (cod_banco) REFERENCES Banco(cod_banco),
	FOREIGN KEY (cod_abono) REFERENCES Abono(cod_abono)
);

CREATE TABLE Tarjeta(
	no_autorizacion INT NOT NULL,
	cod_banco INT NOT NULL,
	cod_abono INT NOT NULL,
	PRIMARY KEY (no_autorizacion, cod_banco, cod_abono),
	FOREIGN KEY (cod_banco) REFERENCES Banco(cod_banco),
	FOREIGN KEY (cod_abono) REFERENCES Abono(cod_abono)
);

CREATE TABLE Pago_Efectivo(
	cod_abono INT NOT NULL,
	FOREIGN KEY (cod_abono) REFERENCES Abono(cod_abono)
);

CREATE TABLE Detalle_Orden(
	cod_venta INT NOT NULL,
	cod_producto INT NOT NULL,
	cantidad INT NOT NULL,
	PRIMARY KEY (cod_venta, cod_producto),
	FOREIGN KEY (cod_venta) REFERENCES Orden_Venta(cod_venta),
	FOREIGN KEY (cod_producto) REFERENCES Producto(cod_producto)
);

CREATE TABLE Factura(
	no_serie INT NOT NULL,
	no_factura INT NOT NULL IDENTITY(1,1),
	fecha_emision DATE,
	cod_venta INT NOT NULL,
	PRIMARY KEY (no_serie, no_factura),
	FOREIGN KEY (cod_venta) REFERENCES Orden_Venta(cod_venta)
);