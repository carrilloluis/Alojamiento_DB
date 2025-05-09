-- @author : Luis Carrillo Gutiérrez
-- @description : Reserva en Alojamientos (Lodge)

DROP TABLE IF EXISTS [Cliente];
CREATE TABLE IF NOT EXISTS [Cliente] (
	[id_cliente] INTEGER PRIMARY KEY, -- AUTOINCREMENT 
	[nombre] VARCHAR(128) NOT NULL,
	[correo electrónico] VARCHAR(64) NOT NULL,
	[teléfono] VARCHAR(16) NOT NULL
) WITHOUT ROWID;

DROP TABLE IF EXISTS [Habitación];
CREATE TABLE IF NOT EXISTS [Habitación] (
	[id_habitación] INTEGER PRIMARY KEY, -- AUTOINCREMENT 
	[número habitación] VARCHAR(10) NOT NULL,
	[tipo] VARCHAR(100) NOT NULL, -- single, double, suite
	[precio noche] DECIMAL(10,2) NOT NULL
) WITHOUT ROWID;

DROP TABLE IF EXISTS [Reserva];
CREATE TABLE IF NOT EXISTS [Reserva] (
	[id_reserva] INTEGER PRIMARY KEY, -- AUTOINCREMENT 
	[id cliente] INTEGER NOT NULL REFERENCES [Cliente](id_cliente),
	[id habitación] INTEGER NOT NULL REFERENCES [Habitación](id_habitación),
	[fecha registro] DATE NOT NULL, -- check_in
	[fecha salida] DATE NOT NULL -- check_out
) WITHOUT ROWID;