CREATE TABLE institucion(id_institucion INT NOT NULL PRIMARY KEY AUTO_INCREMENT,nombreInstitucion VARCHAR(50), Facultad_Esc VARCHAR(30), campus VARCHAR(30));
CREATE TABLE generacion(id_generacion INT NOT NULL PRIMARY KEY AUTO_INCREMENT,generacion VARCHAR(50));
CREATE TABLE carrera(id_carrera INT NOT NULL PRIMARY KEY AUTO_INCREMENT,nombreCarrera VARCHAR(40));
CREATE TABLE cargo(id_cargo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,tipo VARCHAR(40),periodo VARCHAR(40));
CREATE TABLE lineaAcentuacion(id_linea INT NOT NULL PRIMARY KEY AUTO_INCREMENT,nombreLinea VARCHAR(50));
CREATE TABLE proAcademico(id_programa INT NOT NULL PRIMARY KEY AUTO_INCREMENT,nombrePrograma VARCHAR(50));
CREATE TABLE protocolo(id_protocolo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,nombre VARCHAR(50), fechaRegistro Date);
CREATE TABLE beca(id_beca INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nombre VARCHAR(40),tipo VARCHAR(40), FECHA_INICIO DATE, FECHA_FIN DATE, ESTADO VARCHAR(35))
CREATE TABLE prodep(id_prodep INT NOT NULL PRIMARY KEY AUTO_INCREMENT,prodep boolean, periodo VARCHAR(40));
CREATE TABLE sni(id_sni INT NOT NULL PRIMARY KEY AUTO_INCREMENT, SNI VARCHAR(30),estado boolean, periodo VARCHAR(40));
CREATE TABLE secretaria(id_secretaria INT NOT NULL PRIMARY KEY AUTO_INCREMENT,nombres VARCHAR(50),primerApellido VARCHAR(40),segundoApellido 
VARCHAR(40),curp varchar(40), domicilio varchar(50),
rfc varchar(20),email_personal varchar(30),
nacionalidad varchar(15),tel varchar(20), contrasenia varchar(40), cargo varchar(30));

Create TABLE documentacion(id_documento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,solicitudAdmision boolean,promedioCerti boolean, cartaRecomendacion1 boolean,cartaRecomendacion2 boolean , constanciaIgls boolean, cv boolean, cartaMotivos boolean, cartaTiempo boolean, 
cartaPresentacion boolean, propuesta boolean, pagoDerechos boolean, cartaAceptacion boolean);
CREATE TABLE AsesExt(id_Asesor INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nombres VARCHAR(50),primerApellido VARCHAR(40),segundoApellido VARCHAR(40),curp varchar(40), domicilio varchar(50),rfc varchar(20),email_personal varchar(20),
nacionalidad varchar(15),tel varchar(20), id_linea int, grado varchar(40),
INDEX (id_linea),FOREIGN KEY (id_linea) REFERENCES lineaAcentuacion(id_linea));
CREATE TABLE investigador(id_investigador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,nombres VARCHAR(50),primerApellido VARCHAR(40),segundoApellido VARCHAR(40),curp varchar(40), 
domicilio varchar(50),rfc varchar(20),email_personal varchar(20),
email_institucional varchar(20),nacionalidad varchar(15),tel varchar(20), id_cargos int, id_sni int,id_prodep int, id_linea int, periodo varchar(40), contrasena varchar(40), 
INDEX (id_cargos),FOREIGN KEY (id_cargos) REFERENCES cargosInv(id_cargos),
INDEX (id_sni),FOREIGN KEY (id_sni) REFERENCES sni(id_sni),
INDEX (id_prodep),FOREIGN KEY (id_prodep) REFERENCES prodep(id_prodep),
INDEX (id_linea),FOREIGN KEY (id_linea) REFERENCES lineaAcentuacion(id_linea));
CREATE TABLE cargosInv(id_Cargos INT NOT NULL PRIMARY KEY AUTO_INCREMENT, id_carg1 int, id_carg2 int, id_carg3 int, 
INDEX (id_carg1),FOREIGN KEY (id_carg1) REFERENCES cargo(id_cargo),
INDEX (id_carg2),FOREIGN KEY (id_carg2) REFERENCES cargo(id_cargo),
INDEX (id_carg3),FOREIGN KEY (id_carg3) REFERENCES cargo(id_cargo));
CREATE TABLE alumno(id_alumno INT NOT NULL PRIMARY KEY AUTO_INCREMENT,nombres VARCHAR(50),primerApellido VARCHAR(40),segundoApellido VARCHAR(40),curp varchar(40),
domicilio varchar(50),rfc varchar(20), edoCivil varchar(25),email_personal varchar(20), email_institucional varchar(20),nacionalidad varchar(15),tel varchar(20),
edoAlumno varchar(30), PROMEDIO_MAESTRIA DEC(2,1), Grado varchar(30), CARRERA_POSGRD varchar(30), fechaIngreso date, duracion_plan varchar(30),fecha_termino date,
CVU INT,id_documento int, id_linea int, id_generacion int, id_carrera int, id_institucion int, id_programa int, id_protocolo int, id_asesor int, id_coodirector int, 
id_tutor1 int, id_tutor2 int, id_asesorExterno int, id_beca int,
INDEX (id_documento), FOREIGN KEY (id_documento) REFERENCES documentacion(id_documento),
INDEX (id_linea), FOREIGN KEY (id_linea) REFERENCES lineaAcentuacion(id_linea),
INDEX (id_generacion), FOREIGN KEY (id_generacion) REFERENCES generacion(id_generacion),
INDEX (id_carrera), FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera),
INDEX (id_institucion), FOREIGN KEY(id_institucion) REFERENCES institucion(id_institucion),
INDEX (id_programa), FOREIGN KEY(id_programa) REFERENCES proAcademico(id_programa),
INDEX (id_protocolo), FOREIGN KEY(id_protocolo) REFERENCES protocolo(id_protocolo),
INDEX (id_asesor), FOREIGN KEY(id_asesor) REFERENCES investigador(id_investigador),
INDEX (id_coodirector), FOREIGN KEY(id_coodirector) REFERENCES investigador(id_investigador),
INDEX (id_tutor1), FOREIGN KEY(id_tutor1) REFERENCES investigador(id_investigador),
INDEX (id_tutor2), FOREIGN KEY(id_tutor2) REFERENCES investigador(id_investigador),
INDEX (id_asesorExterno), FOREIGN KEY(id_asesorExterno) REFERENCES AsesExt(id_Asesor),
INDEX (id_beca), FOREIGN KEY (id_beca) REFERENCES beca(id_beca));





