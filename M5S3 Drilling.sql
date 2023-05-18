create database "m5s3 drilling";

\c "m5s3 drilling";

create table empresa (
    rut varchar(10) PRIMARY KEY,
    nombre varchar(120) NOT NULL,
    direccion varchar(120) NOT NULL,
    telefono varchar(120) NOT NULL,
    correo varchar(80) NOT NULL,
    web varchar(50) NOT NULL
);

create table cliente (
    rut varchar(10) PRIMARY KEY,
    nombre varchar(120) NOT NULL,
    correo varchar(80) NOT NULL,
    direccion varchar(120) NOT NULL,
    celular varchar(50) NOT NULL
);

create table herramienta (
    idherramienta int PRIMARY KEY,
    nombre varchar(120) NOT NULL,
    preciodia int NOT NULL
);

create table arriendo (
    folio int PRIMARY KEY,
    fecha date NOT NULL,
    dias int NOT NULL,
    valordia int NOT NULL,
    garantia varchar(30) NOT NULL,
    herramienta_idherramienta int,
    cliente_rut varchar(10),
    CONSTRAINT fk_herramienta
        FOREIGN KEY (herramienta_idherramienta)
            REFERENCES herramienta(idherramienta),
    CONSTRAINT fk_cliente
        FOREIGN KEY (cliente_rut)
            REFERENCES cliente(rut)
);