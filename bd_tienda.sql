CREATE DATABASE bd_tienda;

CREATE TABLE tienda (
 id_tienda INT AUTO_INCREMENT NOT NULL,
 nombre VARCHAR (20) NOT NULL,
 ubicacion VARCHAR (30) NOT NULL,
 telefono VARCHAR (20) NOT NULL,
 sitio_web	VARCHAR (30) NOT NULL,
 fec_insercion TIMESTAMP NOT NULL ,
 fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 usuario INT NOT NULL,
 estado CHAR(1) NOT NULL,
 PRIMARY KEY (id_tienda) 
 )ENGINE=INNODB;
 
 INSERT INTO tienda VALUES (1,'GAS MONKEY','TARIJA-B. TEJAR','67547643','gasmonkey@.comtarija',now(), now(),1,1);

 CREATE TABLE propietarios (
  id_propietario INT AUTO_INCREMENT NOT NULL,
  id_tienda INT NOT NULL, 
  nombre VARCHAR (20) NOT NULL,
  ap VARCHAR(20)NOT NULL,
  am VARCHAR(20),
  ci VARCHAR(20) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  ubicacion VARCHAR (20) NOT NULL, 
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY (id_propietario),
  FOREIGN KEY (id_tienda) REFERENCES tienda (id_tienda)
  )ENGINE=INNODB;
  
  INSERT INTO propietarios VALUES (1,1,'CARLOS','ROMERO','CHOQUE','2345235','67547643','B. MOTO MENDEZ',now(), now(),1,1);
  INSERT INTO propietarios VALUES (2,1,'JOSE','VILLA','VILTE','5565477','77674345','B. TEJAR',now(), now(),1,1);
  INSERT INTO propietarios VALUES (3,1,'ANDRES','LOPEZ','MARIN','6675644','67541234','B. LUIS ESPINAL',now(), now(),1,1);
  INSERT INTO propietarios VALUES (4,1,'RICARDO','HUANCA','SAINZ','67576859','66946274','B. MONTE SUD',now(), now(),1,1);
  INSERT INTO propietarios VALUES (5,1,'OSCAR','QUISPE','LENIS','10663463','78709080','B. SENAC',now(), now(),1,1);
  INSERT INTO propietarios VALUES (6,1,'JUAN','ROMERO','CADENA','45212324','60257834','B. MENDEZ ARCOS',now(), now(),1,1);
  INSERT INTO propietarios VALUES (7,1,'SAMUEL','FLORES','SMIT','878678568','68695645','B. PANOSAS',now(), now(),1,1);
  INSERT INTO propietarios VALUES (8,1,'LUCAS','CRUZ','VILLANUEVA','42357745','46657878','B. VIRGEN DE FATIMA',now(), now(),1,1);
  INSERT INTO propietarios VALUES (9,1,'DANIEL','HERBOSO','CRUZ','5745744','72999456','B. SAN GERONIMO',now(), now(),1,1);
  INSERT INTO propietarios VALUES (10,1,'MARCELO','SALVATIERRA','VILTE','67675634','70045567','B. JUAN XXIII',now(), now(),1,1);

 CREATE TABLE empleados (
  id_empleado INT AUTO_INCREMENT NOT NULL,
  id_tienda INT NOT NULL, 
  nombre VARCHAR (20) NOT NULL,
  ap VARCHAR(20)NOT NULL,
  am VARCHAR(20),
  ci VARCHAR(20) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  ubicacion VARCHAR (20) NOT NULL, 
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY (id_empleado),
  FOREIGN KEY (id_tienda) REFERENCES tienda (id_tienda)
  )ENGINE=INNODB;

  INSERT INTO empleados VALUES (1,1,'DIEGO','ROMERO','CHOQUE','2345235','67547643','B. AEROPUERTO',now(), now(),1,1);
  INSERT INTO empleados VALUES (2,1,'MAX','VILLA','VILTE','5565477','77674345','B. LUIS DE FUENTES',now(), now(),1,1);
  INSERT INTO empleados VALUES (3,1,'ANDY','LOPEZ','MARIN','6675644','67541234','B. LUIS ESPINAL',now(), now(),1,1);
  INSERT INTO empleados VALUES (4,1,'ESTEBAN','HUANCA','SAINZ','67576859','66946274','B. CATEDRAL',now(), now(),1,1);
  INSERT INTO empleados VALUES (5,1,'ALEX','QUISPE','LENIS','10663463','78709080','B. SIMON BOLIVAR',now(), now(),1,1);
  INSERT INTO empleados VALUES (6,1,'MARTIN','ROMERO','CADENA','45212324','60257834','B. SAN JORGE',now(), now(),1,1);
  INSERT INTO empleados VALUES (7,1,'PATRICIO','FLORES','SMIT','878678568','68695645','B. SAN JORGE 2',now(), now(),1,1);
  INSERT INTO empleados VALUES (8,1,'VICTOR','CRUZ','VILLANUEVA','42357745','46657878','B. VIRGEN DE FATIMA',now(), now(),1,1);
  INSERT INTO empleados VALUES (9,1,'JAIRO','HERBOSO','CRUZ','5745744','72999456','B. TABLADITA',now(), now(),1,1);
  INSERT INTO empleados VALUES (10,1,'ROXANA','SALVATIERRA','VILTE','67675634','70045567','B. JUAN XXIII',now(), now(),1,1);


  CREATE TABLE clientes (
  id_cliente INT AUTO_INCREMENT NOT NULL,
  id_tienda INT NOT NULL, 
  nombre VARCHAR (20) NOT NULL,
  ap VARCHAR(20)NOT NULL,
  am VARCHAR(20),
  ci VARCHAR(20) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  ubicacion VARCHAR (20) NOT NULL, 
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY (id_cliente),
  FOREIGN KEY (id_tienda) REFERENCES tienda (id_tienda)
  )ENGINE=INNODB;

  INSERT INTO clientes VALUES (1,1,'PAOLA','ROMERO','CHOQUE','2345235','46667654','B. MORROS BLNACOS',now(), now(),1,1);
  INSERT INTO clientes VALUES (2,1,'ALBA','VILLA','VILTE','5565477','77674345','B. TEJAR',now(), now(),1,1);
  INSERT INTO clientes VALUES (3,1,'ANDRES','LOPEZ','MARIN','6675644','67540056','B. TRIGAL',now(), now(),1,1);
  INSERT INTO clientes VALUES (4,1,'DAYANA','HUANCA','SAINZ','67576859','66946274','B. PARAISO',now(), now(),1,1);
  INSERT INTO clientes VALUES (5,1,'CAROLINA','QUISPE','LENIS','10663463','78709080','B. SAN BERNARDO',now(), now(),1,1);
  INSERT INTO clientes VALUES (6,1,'ELVIS','ROMERO','CADENA','45212324','78000123','B. NARCISO CAMPERO',now(), now(),1,1);
  INSERT INTO clientes VALUES (7,1,'RICHI','FLORES','SMIT','878678568','68695645','B. PANOSAS',now(), now(),1,1);
  INSERT INTO clientes VALUES (8,1,'SEHT','CRUZ','VILLANUEVA','42357745','46657878','B. SAN JACINTO',now(), now(),1,1);
  INSERT INTO clientes VALUES (9,1,'MARTA','HERBOSO','CRUZ','5745744','61340067','B. JAPON',now(), now(),1,1);
  INSERT INTO clientes VALUES (10,1,'DANILO','SALVATIERRA','VILTE','67675634','70045567','B. JUAN XXIII',now(), now(),1,1);
 
 CREATE TABLE repuestos(
  id_repuesto INT AUTO_INCREMENT NOT NULL,
  id_tienda INT NOT NULL, 
  nombre VARCHAR (20) NOT NULL,
  codigo VARCHAR(20) NOT NULL,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY (id_repuesto),
  FOREIGN KEY (id_tienda) REFERENCES tienda (id_tienda)
  )ENGINE=INNODB;

  INSERT INTO repuestos VALUES (1,1,'MOTOR 250 CC','ML34535-3453',now(), now(),1,1);
  INSERT INTO repuestos VALUES (2,1,'AROS RIDET','MS12344-12414',now(), now(),1,1);
  INSERT INTO repuestos VALUES (3,1,'KIT BIKER','QL7645765-23452',now(), now(),1,1);
  INSERT INTO repuestos VALUES (4,1,'CARBURADOR PZ38','MA123-8753',now(), now(),1,1);
  INSERT INTO repuestos VALUES (5,1,'ESCAPE CORE 4','TY3578-2452',now(), now(),1,1);
  INSERT INTO repuestos VALUES (6,1,'ESCAPE CORE 3','MN7773-9999',now(), now(),1,1);
  INSERT INTO repuestos VALUES (7,1,'AMORTIGUADORES FAR','PA1010-2020',now(), now(),1,1);
  INSERT INTO repuestos VALUES (8,1,'MANUBRIO WIRTZ','VQ34656-35T78',now(), now(),1,1);
  INSERT INTO repuestos VALUES (9,1,'FILTRO DE AIRE','ML4578-35689',now(), now(),1,1);
  INSERT INTO repuestos VALUES (10,1,'OXILANTE RHINO','MO123445-56765',now(), now(),1,1);


  CREATE TABLE servicios(
  id_servicio INT AUTO_INCREMENT NOT NULL,
  id_tienda INT NOT NULL, 
  forma_de_pago VARCHAR (20) NOT NULL,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY (id_servicio),
  FOREIGN KEY (id_tienda) REFERENCES tienda (id_tienda)
  )ENGINE=INNODB;

  INSERT INTO servicios  VALUES (1,1,'PAGO EN FECTIVO',now(), now(),1,1);
  INSERT INTO servicios  VALUES (2,1,'TARJETA DE CREDITO',now(), now(),1,1);
  INSERT INTO servicios  VALUES (3,1,'PAGO POR MOVIL',now(), now(),1,1);
  INSERT INTO servicios  VALUES (4,1,'PAGO POR MOVIL',now(), now(),1,1);
  INSERT INTO servicios  VALUES (5,1,'PAGO EN EFECTIVO',now(), now(),1,1);
  INSERT INTO servicios  VALUES (6,1,'TARJETA DE CREDITO',now(), now(),1,1);
  INSERT INTO servicios  VALUES (7,1,'PAGO EN EFECTIVO',now(), now(),1,1);
  INSERT INTO servicios  VALUES (8,1,'TARJETA DE CREDITO',now(), now(),1,1);
  INSERT INTO servicios  VALUES (9,1,'PAGO EN EFECTIVO',now(), now(),1,1);
  INSERT INTO servicios  VALUES (10,1,'PAGO POR MOVIL',now(), now(),1,1);

  CREATE TABLE novedades(
  id_novedades INT AUTO_INCREMENT NOT NULL,
  id_tienda INT NOT NULL,
  promociones VARCHAR (20) NOT NULL,
  descuentos  VARCHAR(5)  NOT NULL,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY (id_novedades),
  FOREIGN KEY (id_tienda) REFERENCES tienda (id_tienda)
  )ENGINE=INNODB;

  INSERT INTO novedades VALUES (1,1,'LLANTAS','15%',now(), now(),1,1);
  INSERT INTO novedades VALUES (2,1,'MOTORES','10%',now(), now(),1,1);
  INSERT INTO novedades VALUES (3,1,'BATERIAS','25%',now(), now(),1,1);
  INSERT INTO novedades VALUES (4,1,'RODAMIENTOS','5%',now(), now(),1,1);
  INSERT INTO novedades VALUES (5,1,'AROS DE ALUMIO','50%',now(), now(),1,1);
  INSERT INTO novedades VALUES (6,1,'ESCAPES','3%',now(), now(),1,1);
  INSERT INTO novedades VALUES (7,1,'MANUBRIOS','40%',now(), now(),1,1);
  INSERT INTO novedades VALUES (8,1,'AMORTIGUADORES','35%',now(), now(),1,1);
  INSERT INTO novedades VALUES (9,1,'PLASTICOS','55%',now(), now(),1,1);
  INSERT INTO novedades VALUES (10,1,'DISCOS','45%',now(), now(),1,1);

  CREATE TABLE precio_repuestos(
  id_precio_repuesto INT AUTO_INCREMENT NOT NULL,
  id_tienda INT NOT NULL,
  precio_repuestos VARCHAR (10) NOT NULL,
  fecha_de_asignacion VARCHAR(20)  NOT NULL,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY (id_precio_repuesto),
  FOREIGN KEY (id_tienda) REFERENCES tienda (id_tienda)
  )ENGINE=INNODB;

  INSERT INTO precio_repuestos VALUES (1,1,'340 BS','13/10/2021',now(), now(),1,1);
  INSERT INTO precio_repuestos VALUES (2,1,'100 BS','22/09/2019',now(), now(),1,1);
  INSERT INTO precio_repuestos VALUES (3,1,'15 BS','12/03/2020',now(), now(),1,1);
  INSERT INTO precio_repuestos VALUES (4,1,'90 BS','08/07/2022',now(), now(),1,1);
  INSERT INTO precio_repuestos VALUES (5,1,'75 BS','09/01/2015',now(), now(),1,1);
  INSERT INTO precio_repuestos VALUES (6,1,'45 BS','23/11/2011',now(), now(),1,1);
  INSERT INTO precio_repuestos VALUES (7,1,'1000 BS','31/12/2018',now(), now(),1,1);
  INSERT INTO precio_repuestos VALUES (8,1,'10 BS','11/11/2006',now(), now(),1,1);
  INSERT INTO precio_repuestos VALUES (9,1,'22 BS','23/07/2021',now(), now(),1,1);
  INSERT INTO precio_repuestos VALUES (10,1,'44 BS','01/05/2023',now(), now(),1,1);

  CREATE TABLE compras(
  id_compra INT AUTO_INCREMENT NOT NULL,
  id_tienda INT NOT NULL,
  detalle_compra VARCHAR (40) NOT NULL,
  cantidad VARCHAR(20)  NOT NULL,
  monto_compra VARCHAR(20)  NOT NULL,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY (id_compra),
  FOREIGN KEY (id_tienda) REFERENCES tienda (id_tienda)
  )ENGINE=INNODB;

  INSERT INTO compras VALUES (1,1,'COMPRO MOTORES','100','1000 BS',now(), now(),1,1);
  INSERT INTO compras VALUES (2,1,'COMPRO BUJIAS','200','350 BS',now(), now(),1,1);
  INSERT INTO compras VALUES (3,1,'COMPRO ESCAPES','20','250 BS',now(), now(),1,1);
  INSERT INTO compras VALUES (4,1,'COMRPO MANUBRIOS','5','45 BS',now(), now(),1,1);
  INSERT INTO compras VALUES (5,1,'COMPRO CAJAS DE ACEITE','25','400 BS',now(), now(),1,1);
  INSERT INTO compras VALUES (6,1,'COMPRO AMORTIGUADORES','30','450 BS',now(), now(),1,1);
  INSERT INTO compras VALUES (7,1,'COMPRO RAYOS','350','100 $',now(), now(),1,1);
  INSERT INTO compras VALUES (8,1,'COMPRO DISCOS DE EMBREAGUE','110','50 BS',now(), now(),1,1);
  INSERT INTO compras VALUES (9,1,'COMPRO CAMARAS','60','130 BS',now(), now(),1,1);
  INSERT INTO compras VALUES (10,1,'COMPRO MOTOS','15','123 BS',now(), now(),1,1);

  CREATE TABLE ventas(
  id_ventas INT AUTO_INCREMENT NOT NULL,
  id_tienda INT NOT NULL,
  detalle_ventas VARCHAR (40) NOT NULL,
  fecha_ventas VARCHAR(20)  NOT NULL,
  monto_ventas VARCHAR(20)  NOT NULL,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY (id_ventas),
  FOREIGN KEY (id_tienda) REFERENCES tienda (id_tienda)
  )ENGINE=INNODB;

  INSERT INTO ventas VALUES (1,1,'VENDIO MOTOR','100','1000 BS',now(), now(),1,1);
  INSERT INTO ventas VALUES (2,1,'VENDIO BUJIA','200','350 BS',now(), now(),1,1);
  INSERT INTO ventas VALUES (3,1,'VENDIO ESCAPES','20','250 BS',now(), now(),1,1);
  INSERT INTO ventas VALUES (4,1,'VENDIO MANUBRIOS','5','45 BS',now(), now(),1,1);
  INSERT INTO ventas VALUES (5,1,'VENDIO CAJAS DE ACEITE','25','400 BS',now(), now(),1,1);
  INSERT INTO ventas VALUES (6,1,'VENDIO AMORTIGUADORES','30','450 BS',now(), now(),1,1);
  INSERT INTO ventas VALUES (7,1,'VENDIO RAYOS','350','100 $',now(), now(),1,1);
  INSERT INTO ventas VALUES (8,1,'VENDIO DISCOS DE EMBREAGUE','110','50 BS',now(), now(),1,1);
  INSERT INTO ventas VALUES (9,1,'VENDIO CAMARAS','60','130 BS',now(), now(),1,1);
  INSERT INTO ventas VALUES (10,1,'VENDIO MOTOS','15','123 BS',now(), now(),1,1);

CREATE TABLE tienda_logo(
id_tienda_logo INT AUTO_INCREMENT NOT NULL,
id_tienda INT NOT NULL,
nombre VARCHAR(30) NOT NULL,
logo_sistema VARCHAR(100),
descripcion VARCHAR(50) NOT NULL,
fec_insercion  TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1)NOT NULL,
PRIMARY KEY(id_tienda_logo),
FOREIGN KEY (id_tienda) REFERENCES tienda (id_tienda)
)ENGINE=INNODB;
INSERT INTO tienda_logo VALUES(1, 1, '(sistema.com)','tienda_logo.jpg', 'Datos completos ', now(), now(), 1 , 1);
     
  CREATE TABLE personas(
  id_persona INT AUTO_INCREMENT NOT NULL,
  id_tienda INT NOT NULL,
  ci VARCHAR (15) NOT NULL,
  nombres VARCHAR (25) NOT NULL,
  ap VARCHAR (25),
  am VARCHAR(25),
  telef VARCHAR(20),
  direccion VARCHAR(20),
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL ,
  PRIMARY KEY(id_persona),
  FOREIGN KEY (id_tienda) REFERENCES tienda(id_tienda)
  )ENGINE=INNODB;

  INSERT INTO personas VALUES(1, 1, '10663436','JOSE','LUIS','LENIS','72953728','B.TEJAR',now(), now(),1,1);
  INSERT INTO personas VALUES(2, 1, '18094321', 'FER','DIEGO','ESPINOZA','67894032','B. 6 DE AGOSTO',now(),now(),1 ,1);
  INSERT INTO personas VALUES(3, 1, '10644432', 'FANI','ROMEL','MERCADO','60897312','B. LA PAMPA',now(),now(),1,1);
  INSERT INTO personas VALUES(4, 1, '10690438', 'YERAL','VILLAMIL','APARICIO','67473756','B. LOURDES',now(), now(), 1 , 1);
  INSERT INTO personas VALUES(5, 1, '10123095', 'GABY','ROMERO','MARTINEZ','61230946', 'B.LOS CHAPACOS',now(), now(), 1 , 1);
  INSERT INTO personas VALUES(6, 1, '10454513','LORENA','YANETH','LLANOS','72953728','B.TEJAR',now(), now(),1,1);
  INSERT INTO personas VALUES(7, 1, '18094321', 'YOLA','DINA','ESCARAY','67894032','B. 6 DE AGOSTO',now(),now(),1 ,1);
  INSERT INTO personas VALUES(8, 1, '10679834', 'FABIO','RODRI','MARAZ','60897312','B. LA PAMPA',now(),now(),1,1);
  INSERT INTO personas VALUES(9, 1, '10678798', 'YULISA','CRUZ','APARICIO','67473756','B. LOURDES',now(), now(), 1 , 1);
  INSERT INTO personas VALUES(10, 1,'12324356', 'GAEL','ROMERO','MARTINEZ','61230946', 'B.LOS CHAPACOS',now(), now(), 1 , 1);
  
  
  CREATE TABLE usuarios(
  id_usuario INT AUTO_INCREMENT NOT NULL,
  id_persona INT NOT NULL,
  usuario1 VARCHAR (20) NOT NULL ,
  clave VARCHAR (100) NOT NULL,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR (1) NOT NULL,
  PRIMARY KEY(id_usuario),
  FOREIGN KEY (id_persona) REFERENCES personas (id_persona) 
  )ENGINE=INNODB;

  INSERT INTO usuarios VALUES (1,1,'admin','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now(),now(),1,1);

  /*CLAVE:$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK*/

  CREATE TABLE roles(
  id_rol INT  AUTO_INCREMENT NOT NULL,
  rol VARCHAR (20) NOT NULL ,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1),
  PRIMARY KEY(id_rol)
  )ENGINE=INNODB;

  INSERT INTO roles VALUES (1,'ADMINISTRADOR',now(),now(),1,1);

  CREATE TABLE usuarios_roles(
  id_usuario_rol INT  AUTO_INCREMENT NOT NULL,
  id_rol INT  NOT NULL ,
  id_usuario INT NOT NULL ,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY(id_usuario_rol),
  FOREIGN KEY (id_rol) REFERENCES roles (id_rol),
  FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
  )ENGINE=INNODB;

  INSERT INTO usuarios_roles VALUES (1,1,1,now(),now(),1,1);

 
  CREATE TABLE grupos(
  id_grupo INT  AUTO_INCREMENT NOT NULL,
  grupo VARCHAR (20) NOT NULL,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY(id_grupo)
  )ENGINE=INNODB;

  INSERT INTO grupos VALUES (1,'HERRAMIENTAS',now(),now(),1,1);
  INSERT INTO grupos VALUES (2,'PARAMETROS',now(),now(),1,1);
  INSERT INTO grupos VALUES (3,'TIENDA GAS MONKEY',now(),now(),1,1);
  INSERT INTO grupos VALUES (4,'REPORTES',now(),now(),1,1);
 
  CREATE TABLE opciones(
  id_opcion INT  AUTO_INCREMENT NOT NULL,
  id_grupo  INT NOT NULL,
  opcion VARCHAR (100) NOT NULL,
  contenido VARCHAR (100) NOT NULL,
  orden INT NOT NULL,
  fec_insercion TIMESTAMP NOT NULL ,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1) NOT NULL,
  PRIMARY KEY(id_opcion),
  FOREIGN KEY (id_grupo) REFERENCES grupos(id_grupo)
  )ENGINE=INNODB;

  INSERT INTO opciones VALUES (1,1,'Personas','../privada/personas/personas.php',10,now(),now(),1,1);
  INSERT INTO opciones VALUES (2,1,'Usuarios','../privada/usuarios/usuarios.php',20,now(),now(),1,1);
  INSERT INTO opciones VALUES (3,1,'Grupos','../privada/grupos/grupos.php',30,now(),now(),1,1);
  INSERT INTO opciones VALUES (4,1,'Roles','../privada/roles/roles.php',40,now(),now(),1,1);
  INSERT INTO opciones VALUES (5,1,'Usuarios_roles','../privada/usuarios_roles/usuarios_roles.php',50,now(),now(),1,1);
  INSERT INTO opciones VALUES (6,1,'Opciones','../privada/opciones/opciones.php',60,now(),now(),1,1);
  INSERT INTO opciones VALUES (7,1,'Accesos','../privada/accesos/accesos.php',70,now(),now(),1,1);

  INSERT INTO opciones VALUES (8,2,'Tienda','../privada/tienda/tienda.php',10,now(),now(),1,1);
  INSERT INTO opciones VALUES (9,2,'Propietarios','../privada/propietarios/propietarios.php',20,now(),now(),1,1);
  INSERT INTO opciones VALUES (10,2,'Empleados','../privada/empleados/empleados.php',30,now(),now(),1,1);
  INSERT INTO opciones VALUES (11,2,'Clientes','../privada/clientes/clientes.php',40,now(),now(),1,1);
  INSERT INTO opciones VALUES (12,2,'Repuestos','../privada/repuestos/repuestos.php',50,now(),now(),1,1);


  INSERT INTO opciones VALUES (13,3,'Servicios','../privada/servicios/servicios.php',10,now(),now(),1,1);
  INSERT INTO opciones VALUES (14,3,'Novedades','../privada/novedades/novedades.php',20,now(),now(),1,1);
  INSERT INTO opciones VALUES (15,3,'Precio_repuestos','../privada/precio_repuestos/precio_repuestos.php',30,now(),now(),1,1);
  INSERT INTO opciones VALUES (16,3,'Compras','../privada/compras/compras.php',40,now(),now(),1,1);
  INSERT INTO opciones VALUES (17,3,'Ventas','../privada/ventas/ventas.php',50,now(),now(),1,1);
  INSERT INTO opciones VALUES (18,3,'tienda_logo','../privada/repuestos/repuestos.php',60,now(),now(),1,1);

  /*INSERT INTO opciones VALUES (19,4,'Rpt de persona por genero',10,now(),now(),1,1);
  INSERT INTO opciones VALUES (20,4,'Ficha tecnica de personas',20,now(),now(),1,1);*/

  CREATE TABLE accesos(
  id_acceso INT AUTO_INCREMENT NOT NULL,
  id_rol INT NOT NULL,
  id_opcion INT NOT NULL,
  fec_insercion  TIMESTAMP NOT NULL,
  fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado CHAR(1)NOT NULL,
  PRIMARY KEY (id_acceso),
  FOREIGN KEY (id_rol) REFERENCES roles(id_rol),
  FOREIGN KEY (id_opcion) REFERENCES opciones (id_opcion)
  )ENGINE=INNODB;

  INSERT INTO accesos VALUES (1,1,1,now(),now(),1,1);
  INSERT INTO accesos VALUES (2,1,2,now(),now(),1,1);
  INSERT INTO accesos VALUES (3,1,3,now(),now(),1,1);
  INSERT INTO accesos VALUES (4,1,4,now(),now(),1,1);
  INSERT INTO accesos VALUES (5,1,5,now(),now(),1,1);
  INSERT INTO accesos VALUES (6,1,6,now(),now(),1,1);
  INSERT INTO accesos VALUES (7,1,7,now(),now(),1,1);

  INSERT INTO accesos VALUES (8,1,8,now(),now(),1,1);
  INSERT INTO accesos VALUES (9,1,9,now(),now(),1,1);
  INSERT INTO accesos VALUES (10,1,10,now(),now(),1,1);
  INSERT INTO accesos VALUES (11,1,1,now(),now(),1,1);
  INSERT INTO accesos VALUES (12,1,12,now(),now(),1,1);
  INSERT INTO accesos VALUES (13,1,13,now(),now(),1,1);
  INSERT INTO accesos VALUES (14,1,14,now(),now(),1,1);
  INSERT INTO accesos VALUES (15,1,15,now(),now(),1,1);
  INSERT INTO accesos VALUES (16,1,16,now(),now(),1,1);  
  INSERT INTO accesos VALUES (17,1,17,now(),now(),1,1);
  INSERT INTO accesos VALUES (18,1,18,now(),now(),1,1);
  /*INSERT INTO accesos VALUES (19,1,19,now(),now(),1,1);*/

