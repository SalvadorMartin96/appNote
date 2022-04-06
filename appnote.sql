CREATE OR REPLACE DATABASE appnote;
USE appnote;

CREATE OR REPLACE TABLE usuarios(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30), 
    apellido VARCHAR(30),
    email VARCHAR(30),
    PRIMARY KEY (id)
);

CREATE OR REPLACE TABLE categorias(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30),
    PRIMARY KEY (id)
);

CREATE OR REPLACE TABLE notas(
    id INT NOT NULL AUTO_INCREMENT,
    fecha_creacion DATETIME,
    fecha_modificacion DATETIME,
    id_usuario INT NOT NULL,
    titulo VARCHAR(30),
    descripcion TEXT,
    puede_ser_borrado TINYINT DEFAULT 1,
    id_categoria INT,
    PRIMARY KEY (id)
);

CREATE OR REPLACE TABLE usuarios_notas(
    id INT NOT NULL AUTO_INCREMENT,
    id_usuario INT not null,
    id_notas INT not null,
    PRIMARY KEY (id)
);

INSERT INTO notas
VALUES(1,'2022-04-06 00:32:00','2022-04-06 00:32:00',1,'Guerra Rusia - Ucrania','Lorem ipsum dolor sit amet',0,1), (2,'2022-04-06 00:32:00','2022-04-06 00:32:00',2,'Guerra Rusia - Ucrania','Lorem ipsum dolor sit amet',0,2), (3,'2022-04-06 00:32:00','2022-04-06 00:32:00',3,'Mundial 2022','Lorem ipsum dolor sit amet',0,3), (4,'2022-04-06 00:32:00','2022-04-06 00:32:00',4,'Noticia 4','Lorem ipsum dolor sit amet',0,4), (5,'2022-04-06 00:32:00','2022-04-06 00:32:00',5,'Noticia 5','Lorem ipsum dolor sit amet',0,5), (6,'2022-04-06 00:32:00','2022-04-06 00:32:00',6,'Noticia 6','Lorem ipsum dolor sit amet',0,6), (7,'2022-04-06 00:32:00','2022-04-06 00:32:00',7,'Guerra Rusia - Ucrania 7','Lorem ipsum dolor sit amet',0,7), (8,'2022-04-06 00:32:00','2022-04-06 00:32:00',8,'Guerra Rusia - Ucran2114ia','Lorem ipsum dolor sit amet',0,8), (9,'2022-04-06 00:32:00','2022-04-06 00:32:00',9,'Gol de Messi','Lorem ipsum dolor sit amet',0,9), (10,'2022-04-06 00:32:00','2022-04-06 00:32:00',10,'Argentina vs Mexico 2022','Lorem ipsum dolor sit amet',0,10);

insert into usuarios 
values (1, 'Pedro', 'Sanchez', 'pedrosanchez@gmail.com'), (2, 'Agustin', 'Perez', 'agustinperez@gmail.com'), (3, 'Juan', 'Carlos', 'juancarlos@gmail.com'), (4, 'Pancho', 'Villa', 'panchovilla@gmail.com'), (5, 'Julian', 'Alvarez', 'julianalvarez@gmail.com'), (6, 'Lionel', 'Messi', 'lionelmessi@gmail.com'), (7, 'Sergio', 'Aguero', 'sergioaguero@gmail.com'), (8, 'Gonzalo', 'Higuain', 'gonzalohiguain@gmail.com'),  (9, 'Pablo', 'Aimar', 'pabloaimar@gmail.com'),  (10, 'Diego', 'Maradona', 'diegomaradona@gmail.com');
insert into categorias 
values (1, 'Deporte'), (2, 'Drama'), (3, 'Comedia'), (4, 'Farandula'), (5, 'Espectaculo'), (6, 'Medicina'), (7, 'Programacion'), (8, 'Actualidad'), (9, 'Musica'), (10, 'Cine');