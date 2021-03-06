--<ScriptOptions statementTerminator=";"/>

CREATE SCHEMA "Schema";

CREATE TABLE "Schema"."ALBUM" (
		"ALBUM_ID" INTEGER NOT NULL,
		"USUARIO_ID" INTEGER NOT NULL,
		"FECHA_CREACION" DATE,
		"COMPARTIR" CHAR(1)
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."AMISTAD" (
		"USUARIO_ID_1" INTEGER NOT NULL,
		"USUARIO_ID_2" INTEGER NOT NULL,
		"ESTADO" CHAR(1) NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."BIBLIOTECA" (
		"USUARIO_ID" INTEGER NOT NULL,
		"EXPERIENCIA_GANADA" INTEGER,
		"PORCENTAJE_JUEGO_COMPLETADO" FLOAT(10) NOT NULL,
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."COMENTARIO_JUEGO" (
		"USUARIO_ID" INTEGER NOT NULL,
		"COMENTARIO" VARCHAR(500) NOT NULL,
		"PUNTAJE" SMALLINT NOT NULL,
		"COMETARIO_ID" CHAR(5) NOT NULL,
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."COMPRA" (
		"COMPRA_ID" INTEGER NOT NULL,
		"COMPRA_FECHA" DATE NOT NULL,
		"USUARIO_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."CONTENIDO_PAQUETE" (
		"ITEMCOMPRABLE_JUEGO_ID" INTEGER NOT NULL,
		"ITEMCOMPRABLE_PAQUETE_ID1" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."CUPON_DESCUENTO" (
		"CUPON_DESCUENTO_ID" INTEGER NOT NULL,
		"TIPO_CUPON_DESCUENTO_ID" INTEGER NOT NULL,
		"USUARIO_ID" INTEGER,
		"FECHA_INICIO" DATE NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."DESARROLLADOR" (
		"DESARROLLADOR_ID" INTEGER NOT NULL,
		"NOMBRE" VARCHAR(50) NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."DESCUENTO" (
		"DESCUENTO_ID" INTEGER NOT NULL,
		"PORCENTAJE" FLOAT(10) NOT NULL,
		"DESCRIPCION" VARCHAR(500),
		"FECHA_INICIO" DATE NOT NULL,
		"FECHA_FIN" DATE NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."DESCUENTO_ITEM_COMPRABLE" (
		"DESCUENTO_ID" INTEGER NOT NULL,
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."GENERO" (
		"GENERO_ID" INTEGER NOT NULL,
		"NOMBRE" VARCHAR(50) NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."IMAGEN_JUEGO" (
		"MULTIMEDIA_JUEGO_ID" INTEGER NOT NULL,
		"RESOLUCION" VARCHAR(20)
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."IMAGEN_USUAIRO" (
		"RESOLUCION" VARCHAR(20),
		"MULTIMEDIA_USUARIO_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."ITEM_COMPRA" (
		"ITEM_COMPRA_ID" INTEGER NOT NULL,
		"COMPRA_ID" INTEGER NOT NULL,
		"VALOR" FLOAT(10) NOT NULL,
		"DESCUENTO_ID" INTEGER,
		"CUPON_DESCUENTO_ID" INTEGER,
		"KEY_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."ITEM_COMPRABLE" (
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL,
		"NOMBRE" VARCHAR(50),
		"PRECIO" FLOAT(5),
		"DESCRIPCION" VARCHAR(250),
		"TIPO_ITEM" INTEGER
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."JUEGO" (
		"GENERO_ID" INTEGER NOT NULL,
		"DESARROLLADOR_ID" INTEGER NOT NULL,
		"FECHA_LANZAMIENTO" DATE,
		"DISPONIBLE" CHAR(1) NOT NULL DEFAULT '0',
		"MODO" SMALLINT NOT NULL,
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."JUEGO_DESEADO" (
		"USUARIO_ID" INTEGER NOT NULL,
		"RECIBIR_NOTIFICACION" CHAR(1) NOT NULL,
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."JUEGO_PREFERIDO" (
		"USUARIO_ID" INTEGER NOT NULL,
		"ORDEN" INTEGER NOT NULL,
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."KEY_ITEM_COMPRABLE" (
		"KEY_ID" INTEGER NOT NULL,
		"KEY_ITEM" CHAR(50),
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."LOGRO" (
		"LOGRO_ID" INTEGER NOT NULL,
		"NOMBRE" VARCHAR(50) NOT NULL,
		"DESCRIPCION" VARCHAR(500) NOT NULL,
		"EXPERIENCIA" INTEGER NOT NULL,
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."LOG_LOGRO_USUARIO" (
		"USUARIO_ID" INTEGER NOT NULL,
		"LOGRO_ID" INTEGER NOT NULL,
		"FECHA" DATE NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."MENSAJE_PERFIL" (
		"MENSAJE_PERFIL_ID" INTEGER NOT NULL,
		"FECHA" DATE NOT NULL,
		"COMPARTIR" CHAR(1) NOT NULL,
		"USUARIO_ID_REMITENTE" INTEGER NOT NULL,
		"USUARIO_ID_DESTINATARIO" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."MULTIMEDIA_JUEGO" (
		"MULTIMEDIA_JUEGO_ID" INTEGER NOT NULL,
		"URL" VARCHAR(200) NOT NULL,
		"FECHA" DATE NOT NULL,
		"COMENTARIO" VARCHAR(500),
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL,
		"TIPO" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."MULTIMEDIA_USUARIO" (
		"MULTIMEDIA_USUARIO_ID" INTEGER NOT NULL,
		"ALBUM_ID" INTEGER NOT NULL,
		"URL" VARCHAR(200) NOT NULL,
		"FECHA" DATE NOT NULL,
		"COMENTARIO" VARCHAR(500),
		"COMPARTIR" CHAR(1),
		"NOMBRE" VARCHAR(50),
		"TAMANIO" INTEGER,
		"TIPO" INTEGER
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."NOTIFICACION_COMPRA" (
		"USUARIO_ID" INTEGER NOT NULL,
		"COMPRA_ID" INTEGER NOT NULL,
		"VISTA" CHAR(5)
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."OBSEQUIO" (
		"OBSEQUIO_ID" INTEGER NOT NULL,
		"ITEM_COMPRA_ID" INTEGER,
		"USUARIO_ID_DESTINATARIO" INTEGER,
		"FECHA" DATE
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."PAQUETE" (
		"ITEMCOMPRABLE_ID" INTEGER NOT NULL,
		"CANTIDAD_JUEGOS" INTEGER
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."PETICION_AMISTAD" (
		"USUARIO_ID_REMITENTE" INTEGER NOT NULL,
		"USUARIO_ID_DESTINATARIO" INTEGER NOT NULL,
		"FECHA" DATE NOT NULL,
		"RESPUESTA" CHAR(1),
		"FECHA_RESPUESTA" DATE
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."RECOMENDACION" (
		"RECOMENDACION_ID" INTEGER NOT NULL,
		"USUARIO_ID_REMITENTE" INTEGER NOT NULL,
		"USUARIO_ID_DESTINATARIO" INTEGER,
		"EMAIL_DESTINATARIO" VARCHAR(50),
		"ITEMCOMPRABLE_ID" INTEGER
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."RED_SOCIAL_USUARIO" (
		"USUARIO_ID" INTEGER NOT NULL,
		"RED_SOCIAL_USUARIO_ID" INTEGER NOT NULL,
		"NOMBRE" VARCHAR(30) NOT NULL,
		"LINK" VARCHAR(500)
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."SIMILITUD" (
		"USUARIO_ID_1" INTEGER NOT NULL,
		"USUARIO_ID_2" INTEGER NOT NULL,
		"FECHA" DATE NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."TIPO_CUPON_DESCUENTO" (
		"TIPO_CUPON_DESCUENTO_ID" INTEGER NOT NULL,
		"DESCRIPCION" VARCHAR(500),
		"PORCENTAJE" FLOAT(10) NOT NULL,
		"DURACION" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."USUARIO" (
		"USUARIO_ID" INTEGER NOT NULL,
		"APODO" VARCHAR(50) NOT NULL,
		"EMAIL" VARCHAR(50) NOT NULL,
		"FECHA_NACIMIENTO" DATE NOT NULL,
		"CONTRASENIA" CHAR(15) NOT NULL,
		"UBICACION_GEOGRAFICA" VARCHAR(50),
		"TARJETA" BIGINT,
		"COMPARTIR_IMAGENES" CHAR(1),
		"COMPARTIR_VIDEOS" CHAR(1),
		"COMPARTIR_MENSAJES_PERFIL" CHAR(1),
		"COMPARTIR_COMPRAS" CHAR(1),
		"NIVEL" INTEGER GENERATED ALWAYS AS ((0)),
		"EXPERIENCIA" INTEGER DEFAULT 0
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."VIDEO_JUEGO" (
		"MULTIMEDIA_JUEGO_ID" INTEGER NOT NULL,
		"DURACION" INTEGER
	)
	DATA CAPTURE NONE;

CREATE TABLE "Schema"."VIDEO_USUARIO" (
		"DURACION" INTEGER,
		"MULTIMEDIA_USUARIO_ID" INTEGER NOT NULL
	)
	DATA CAPTURE NONE;

ALTER TABLE "Schema"."ALBUM" ADD CONSTRAINT "ALBUM_PK" PRIMARY KEY
	("ALBUM_ID");

ALTER TABLE "Schema"."AMISTAD" ADD CONSTRAINT "AMISTAD_PK" PRIMARY KEY
	("USUARIO_ID_1",
	 "USUARIO_ID_2");

ALTER TABLE "Schema"."BIBLIOTECA" ADD CONSTRAINT "BIBLIOTECA_PK" PRIMARY KEY
	("ITEMCOMPRABLE_ID",
	 "USUARIO_ID");

ALTER TABLE "Schema"."COMENTARIO_JUEGO" ADD CONSTRAINT "COMENTARIO_JUEGO_PK" PRIMARY KEY
	("COMETARIO_ID",
	 "USUARIO_ID");

ALTER TABLE "Schema"."COMPRA" ADD CONSTRAINT "COMPRA_PK" PRIMARY KEY
	("COMPRA_ID");

ALTER TABLE "Schema"."CONTENIDO_PAQUETE" ADD CONSTRAINT "CONTENIDO_PAQUETE_PK" PRIMARY KEY
	("ITEMCOMPRABLE_JUEGO_ID",
	 "ITEMCOMPRABLE_PAQUETE_ID1");

ALTER TABLE "Schema"."CUPON_DESCUENTO" ADD CONSTRAINT "CUPON_DESCUENTO_PK" PRIMARY KEY
	("CUPON_DESCUENTO_ID");

ALTER TABLE "Schema"."DESARROLLADOR" ADD CONSTRAINT "DESARROLLADOR_PK" PRIMARY KEY
	("DESARROLLADOR_ID");

ALTER TABLE "Schema"."DESCUENTO" ADD CONSTRAINT "DESCUENTO_PK" PRIMARY KEY
	("DESCUENTO_ID");

ALTER TABLE "Schema"."DESCUENTO_ITEM_COMPRABLE" ADD CONSTRAINT "DESCUENTO_ITEM_COMPRABLE_PK" PRIMARY KEY
	("DESCUENTO_ID",
	 "ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."GENERO" ADD CONSTRAINT "GENERO_PK" PRIMARY KEY
	("GENERO_ID");

ALTER TABLE "Schema"."IMAGEN_JUEGO" ADD CONSTRAINT "IMAGEN_JUEGO_PK" PRIMARY KEY
	("MULTIMEDIA_JUEGO_ID");

ALTER TABLE "Schema"."IMAGEN_USUAIRO" ADD CONSTRAINT "IMAGEN_USUAIRO_PK" PRIMARY KEY
	("MULTIMEDIA_USUARIO_ID");

ALTER TABLE "Schema"."ITEM_COMPRA" ADD CONSTRAINT "ITEM_COMPRA_PK" PRIMARY KEY
	("ITEM_COMPRA_ID");

ALTER TABLE "Schema"."ITEM_COMPRABLE" ADD CONSTRAINT "ITEM_COMPRABLE_PK" PRIMARY KEY
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."JUEGO" ADD CONSTRAINT "JUEGO_PK" PRIMARY KEY
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."JUEGO_DESEADO" ADD CONSTRAINT "JUEGO_DESEADO_PK" PRIMARY KEY
	("USUARIO_ID");

ALTER TABLE "Schema"."JUEGO_PREFERIDO" ADD CONSTRAINT "JUEGO_PREFERIDO_PK" PRIMARY KEY
	("USUARIO_ID");

ALTER TABLE "Schema"."KEY_ITEM_COMPRABLE" ADD CONSTRAINT "KEY_ITEM_COMPRABLE_PK" PRIMARY KEY
	("KEY_ID");

ALTER TABLE "Schema"."LOGRO" ADD CONSTRAINT "LOGRO_PK" PRIMARY KEY
	("LOGRO_ID");

ALTER TABLE "Schema"."LOG_LOGRO_USUARIO" ADD CONSTRAINT "LOG_LOGRO_USUARIO_PK" PRIMARY KEY
	("LOGRO_ID",
	 "USUARIO_ID");

ALTER TABLE "Schema"."MENSAJE_PERFIL" ADD CONSTRAINT "MENSAJE_PERFIL_PK" PRIMARY KEY
	("MENSAJE_PERFIL_ID");

ALTER TABLE "Schema"."MULTIMEDIA_JUEGO" ADD CONSTRAINT "MULTIMEDIA_JUEGO_PK" PRIMARY KEY
	("MULTIMEDIA_JUEGO_ID");

ALTER TABLE "Schema"."MULTIMEDIA_USUARIO" ADD CONSTRAINT "MULTIMEDIA_USUARIO_PK" PRIMARY KEY
	("MULTIMEDIA_USUARIO_ID");

ALTER TABLE "Schema"."NOTIFICACION_COMPRA" ADD CONSTRAINT "NOTIFICACION_COMPRA_PK" PRIMARY KEY
	("USUARIO_ID",
	 "COMPRA_ID");

ALTER TABLE "Schema"."OBSEQUIO" ADD CONSTRAINT "OBSEQUIO_PK" PRIMARY KEY
	("OBSEQUIO_ID");

ALTER TABLE "Schema"."PAQUETE" ADD CONSTRAINT "PAQUETE_PK" PRIMARY KEY
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."PETICION_AMISTAD" ADD CONSTRAINT "PETICION_AMISTAD_PK" PRIMARY KEY
	("USUARIO_ID_REMITENTE",
	 "USUARIO_ID_DESTINATARIO");

ALTER TABLE "Schema"."RECOMENDACION" ADD CONSTRAINT "RECOMENDACION_PK" PRIMARY KEY
	("RECOMENDACION_ID");

ALTER TABLE "Schema"."RED_SOCIAL_USUARIO" ADD CONSTRAINT "RED_SOCIAL_USUARIO_PK" PRIMARY KEY
	("USUARIO_ID",
	 "RED_SOCIAL_USUARIO_ID");

ALTER TABLE "Schema"."SIMILITUD" ADD CONSTRAINT "SIMILITUD_PK" PRIMARY KEY
	("USUARIO_ID_1",
	 "USUARIO_ID_2");

ALTER TABLE "Schema"."TIPO_CUPON_DESCUENTO" ADD CONSTRAINT "TIPO_CUPON_DESCUENTO_PK" PRIMARY KEY
	("TIPO_CUPON_DESCUENTO_ID");

ALTER TABLE "Schema"."USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY
	("USUARIO_ID");

ALTER TABLE "Schema"."VIDEO_JUEGO" ADD CONSTRAINT "VIDEO_JUEGO_PK" PRIMARY KEY
	("MULTIMEDIA_JUEGO_ID");

ALTER TABLE "Schema"."VIDEO_USUARIO" ADD CONSTRAINT "VIDEO_USUARIO_PK" PRIMARY KEY
	("MULTIMEDIA_USUARIO_ID");

ALTER TABLE "Schema"."ALBUM" ADD CONSTRAINT "ALBUM_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."AMISTAD" ADD CONSTRAINT "AMISTAD_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID_1")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."AMISTAD" ADD CONSTRAINT "AMISTAD_USUARIO_FK1" FOREIGN KEY
	("USUARIO_ID_2")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."BIBLIOTECA" ADD CONSTRAINT "BIBLIOTECA_JUEGO_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."JUEGO"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."BIBLIOTECA" ADD CONSTRAINT "BIBLIOTECA_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."COMENTARIO_JUEGO" ADD CONSTRAINT "COMENTARIO_JUEGO_JUEGO_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."JUEGO"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."COMENTARIO_JUEGO" ADD CONSTRAINT "COMENTARIO_JUEGO_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."COMPRA" ADD CONSTRAINT "COMPRA_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."CONTENIDO_PAQUETE" ADD CONSTRAINT "CONTENIDO_PAQUETE_JUEGO_FK" FOREIGN KEY
	("ITEMCOMPRABLE_JUEGO_ID")
	REFERENCES "Schema"."JUEGO"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."CONTENIDO_PAQUETE" ADD CONSTRAINT "CONTENIDO_PAQUETE_PAQUETE_FK" FOREIGN KEY
	("ITEMCOMPRABLE_PAQUETE_ID1")
	REFERENCES "Schema"."PAQUETE"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."CUPON_DESCUENTO" ADD CONSTRAINT "CUPON_DESCUENTO_TIPO_CUPON_DESCUENTO_FK" FOREIGN KEY
	("TIPO_CUPON_DESCUENTO_ID")
	REFERENCES "Schema"."TIPO_CUPON_DESCUENTO"
	("TIPO_CUPON_DESCUENTO_ID");

ALTER TABLE "Schema"."CUPON_DESCUENTO" ADD CONSTRAINT "CUPON_DESCUENTO_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."DESCUENTO_ITEM_COMPRABLE" ADD CONSTRAINT "DESCUENTO_ITEM_COMPRABLE_DESCUENTO_FK" FOREIGN KEY
	("DESCUENTO_ID")
	REFERENCES "Schema"."DESCUENTO"
	("DESCUENTO_ID");

ALTER TABLE "Schema"."DESCUENTO_ITEM_COMPRABLE" ADD CONSTRAINT "DESCUENTO_ITEM_COMPRABLE_ITEM_COMPRABLE_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."ITEM_COMPRABLE"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."IMAGEN_JUEGO" ADD CONSTRAINT "IMAGEN_JUEGO_MULTIMEDIA_JUEGO_FK" FOREIGN KEY
	("MULTIMEDIA_JUEGO_ID")
	REFERENCES "Schema"."MULTIMEDIA_JUEGO"
	("MULTIMEDIA_JUEGO_ID");

ALTER TABLE "Schema"."IMAGEN_USUAIRO" ADD CONSTRAINT "IMAGEN_USUAIRO_MULTIMEDIA_USUARIO_FK" FOREIGN KEY
	("MULTIMEDIA_USUARIO_ID")
	REFERENCES "Schema"."MULTIMEDIA_USUARIO"
	("MULTIMEDIA_USUARIO_ID");

ALTER TABLE "Schema"."ITEM_COMPRA" ADD CONSTRAINT "ITEM_COMPRA_COMPRA_FK" FOREIGN KEY
	("COMPRA_ID")
	REFERENCES "Schema"."COMPRA"
	("COMPRA_ID");

ALTER TABLE "Schema"."ITEM_COMPRA" ADD CONSTRAINT "ITEM_COMPRA_CUPON_DESCUENTO_FK" FOREIGN KEY
	("CUPON_DESCUENTO_ID")
	REFERENCES "Schema"."CUPON_DESCUENTO"
	("CUPON_DESCUENTO_ID");

ALTER TABLE "Schema"."ITEM_COMPRA" ADD CONSTRAINT "ITEM_COMPRA_DESCUENTO_FK" FOREIGN KEY
	("DESCUENTO_ID")
	REFERENCES "Schema"."DESCUENTO"
	("DESCUENTO_ID");

ALTER TABLE "Schema"."ITEM_COMPRA" ADD CONSTRAINT "ITEM_COMPRA_KEY_ITEM_COMPRABLE_FK" FOREIGN KEY
	("KEY_ID")
	REFERENCES "Schema"."KEY_ITEM_COMPRABLE"
	("KEY_ID");

ALTER TABLE "Schema"."JUEGO" ADD CONSTRAINT "JUEGO_DESARROLLADOR_FK" FOREIGN KEY
	("DESARROLLADOR_ID")
	REFERENCES "Schema"."DESARROLLADOR"
	("DESARROLLADOR_ID");

ALTER TABLE "Schema"."JUEGO" ADD CONSTRAINT "JUEGO_GENERO_FK" FOREIGN KEY
	("GENERO_ID")
	REFERENCES "Schema"."GENERO"
	("GENERO_ID");

ALTER TABLE "Schema"."JUEGO" ADD CONSTRAINT "JUEGO_ITEM_COMPRABLE_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."ITEM_COMPRABLE"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."JUEGO_DESEADO" ADD CONSTRAINT "JUEGO_DESEADO_JUEGO_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."JUEGO"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."JUEGO_DESEADO" ADD CONSTRAINT "JUEGO_DESEADO_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."JUEGO_PREFERIDO" ADD CONSTRAINT "JUEGO_PREFERIDO_JUEGO_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."JUEGO"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."JUEGO_PREFERIDO" ADD CONSTRAINT "JUEGO_PREFERIDO_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."KEY_ITEM_COMPRABLE" ADD CONSTRAINT "KEY_ITEM_COMPRABLE_ITEM_COMPRABLE_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."ITEM_COMPRABLE"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."LOGRO" ADD CONSTRAINT "LOGRO_JUEGO_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."JUEGO"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."LOG_LOGRO_USUARIO" ADD CONSTRAINT "LOG_LOGRO_USUARIO_LOGRO_FK" FOREIGN KEY
	("LOGRO_ID")
	REFERENCES "Schema"."LOGRO"
	("LOGRO_ID");

ALTER TABLE "Schema"."LOG_LOGRO_USUARIO" ADD CONSTRAINT "LOG_LOGRO_USUARIO_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."MENSAJE_PERFIL" ADD CONSTRAINT "MENSAJE_PERFIL_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID_REMITENTE")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."MENSAJE_PERFIL" ADD CONSTRAINT "MENSAJE_PERFIL_USUARIO_FK1" FOREIGN KEY
	("USUARIO_ID_DESTINATARIO")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."MULTIMEDIA_JUEGO" ADD CONSTRAINT "MULTIMEDIA_JUEGO_JUEGO_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."JUEGO"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."MULTIMEDIA_USUARIO" ADD CONSTRAINT "MULTIMEDIA_USUARIO_ALBUM_FK" FOREIGN KEY
	("ALBUM_ID")
	REFERENCES "Schema"."ALBUM"
	("ALBUM_ID");

ALTER TABLE "Schema"."NOTIFICACION_COMPRA" ADD CONSTRAINT "NOTIFICACION_COMPRA_COMPRA_FK" FOREIGN KEY
	("COMPRA_ID")
	REFERENCES "Schema"."COMPRA"
	("COMPRA_ID");

ALTER TABLE "Schema"."NOTIFICACION_COMPRA" ADD CONSTRAINT "NOTIFICACION_COMPRA_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."OBSEQUIO" ADD CONSTRAINT "OBSEQUIO_ITEM_COMPRA_FK" FOREIGN KEY
	("ITEM_COMPRA_ID")
	REFERENCES "Schema"."ITEM_COMPRA"
	("ITEM_COMPRA_ID");

ALTER TABLE "Schema"."OBSEQUIO" ADD CONSTRAINT "OBSEQUIO_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID_DESTINATARIO")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."PAQUETE" ADD CONSTRAINT "PAQUETE_ITEM_COMPRABLE_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."ITEM_COMPRABLE"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."PETICION_AMISTAD" ADD CONSTRAINT "PETICION_AMISTAD_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID_REMITENTE")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."PETICION_AMISTAD" ADD CONSTRAINT "PETICION_AMISTAD_USUARIO_FK1" FOREIGN KEY
	("USUARIO_ID_DESTINATARIO")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."RECOMENDACION" ADD CONSTRAINT "RECOMENDACION_ITEM_COMPRABLE_FK" FOREIGN KEY
	("ITEMCOMPRABLE_ID")
	REFERENCES "Schema"."ITEM_COMPRABLE"
	("ITEMCOMPRABLE_ID");

ALTER TABLE "Schema"."RECOMENDACION" ADD CONSTRAINT "RECOMENDACION_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID_REMITENTE")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."RECOMENDACION" ADD CONSTRAINT "RECOMENDACION_USUARIO_FK1" FOREIGN KEY
	("USUARIO_ID_DESTINATARIO")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."RED_SOCIAL_USUARIO" ADD CONSTRAINT "RED_SOCIAL_USUARIO_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."SIMILITUD" ADD CONSTRAINT "SIMILITUD_USUARIO_FK" FOREIGN KEY
	("USUARIO_ID_1")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."SIMILITUD" ADD CONSTRAINT "SIMILITUD_USUARIO_FK1" FOREIGN KEY
	("USUARIO_ID_2")
	REFERENCES "Schema"."USUARIO"
	("USUARIO_ID");

ALTER TABLE "Schema"."VIDEO_JUEGO" ADD CONSTRAINT "VIDEO_JUEGO_MULTIMEDIA_JUEGO_FK" FOREIGN KEY
	("MULTIMEDIA_JUEGO_ID")
	REFERENCES "Schema"."MULTIMEDIA_JUEGO"
	("MULTIMEDIA_JUEGO_ID");

ALTER TABLE "Schema"."VIDEO_USUARIO" ADD CONSTRAINT "VIDEO_USUARIO_MULTIMEDIA_USUARIO_FK" FOREIGN KEY
	("MULTIMEDIA_USUARIO_ID")
	REFERENCES "Schema"."MULTIMEDIA_USUARIO"
	("MULTIMEDIA_USUARIO_ID");

