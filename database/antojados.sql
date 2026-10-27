CREATE DATABASE IF NOT EXISTS antojados_db;
USE antojados_db;

DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios (
    id      INT AUTO_INCREMENT PRIMARY KEY,
    nombre  VARCHAR(100) NOT NULL,
    correo  VARCHAR(150) NOT NULL UNIQUE,
    clave   VARCHAR(100) NOT NULL,
    rol     VARCHAR(20)  NOT NULL DEFAULT 'cliente'
);


INSERT INTO usuarios (nombre, correo, clave, rol)
VALUES ('Usuario Prueba', 'prueba@antojados.com', '123456', 'cliente');
