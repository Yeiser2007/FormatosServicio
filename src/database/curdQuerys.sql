****Generacion******
INSERT INTO generacion VALUES(1,'DOCEAVA GENERACIÓN 2021-B');
DELETE FROM generacion WHERE id_generacion = valoraeliminar;
UPDATE generacion SET generacion = 'NuevoNombre' WHERE id_generacion = valoraActualizar;

****Institución*******
INSERT INTO institucion (id_institucion, nombreInstitucion, Facultad_Esc, campus) VALUES (1, 'NombreInstitucion1', 'Facultad1', 'Campus1');
SELECT*FROM institucion;
DELETE FROM institucion WHERE id_institucion = valoraeliminar;
UPDATE institucion SET NOMBRECAMPOAMODIFICAR = 'NuevoNombre' WHERE id_institucion = valoraActualizar;

****Protocolo*******
INSERT INTO protocolo (id_protocolo, nombre, fechaRegistro) VALUES (1, 'Protocolo1', '2024-01-04');
SELECT*FROM protocolo;
DELETE FROM protocolo WHERE id_protocolo = valoraeliminar;
UPDATE protocolo SET NOMBRECAMPOAMODIFICAR = 'NuevoNombre' WHERE id_protocolo = valoraActualizar;

*****Beca**********
INSERT INTO beca (id_beca, nombre, tipo, FECHA_INICIO, FECHA_FIN, ESTADO) VALUES (1, 'Beca1', 'Tipo1', '2024-01-04', '2024-06-30', 'Activa');
SELECT*FROM beca;
DELETE FROM beca WHERE id_beca = valoraeliminar;
UPDATE beca SET NOMBRECAMPOAMODIFICAR = 'NuevoNombre' WHERE id_beca = valoraActualizar;


******Carrera********
INSERT INTO carrera (id_carrera, nombreCarrera) VALUES (1, 'Carrera1');
SELECT*FROM carrera;
DELETE FROM carrera WHERE id_carrera = valoraeliminar;
UPDATE generacion SET nombreCarrera = 'NuevoNombre' WHERE id_carrera = valoraActualizar;

*****Cargo*************
INSERT INTO cargo (id_cargo, tipo, periodo) VALUES (1, 'Cargo1', 'Periodo1');
SELECT*FROM cargo;
DELETE FROM cargo WHERE id_cargo = valoraeliminar;
UPDATE cargo SET NOMBRECAMPOAMODIFICAR = 'NuevoNombre' WHERE id_cargo = valoraActualizar;

*****PRODEP*********
INSERT INTO prodep (id_prodep, prodep, periodo) VALUES (1, true, 'Periodo1');
SELECT*FROM prodep;
DELETE FROM prodep WHERE id_prodep = valoraeliminar;
UPDATE prodep SET NOMBRECAMPOAMODIFICAR = 'NuevoNombre' WHERE id_prodep = valoraActualizar;



*****SNI***********
INSERT INTO sni (id_sni, SNI, estado, periodo) VALUES (1, 'SNI1', true, 'Periodo1');
SELECT*FROM sni;
DELETE FROM sni WHERE id_sni = valoraeliminar;
UPDATE sni SET NOMBRECAMPOAMODIFICAR = 'NuevoNombre' WHERE id_sni = valoraActualizar;

******Linea de Acentuacion*****
INSERT INTO lineaAcentuacion (id_linea, nombreLinea) VALUES (1, 'Linea1');
SELECT*FROM lineaAcentuacion;
DELETE FROM lineaAcentuacion WHERE id_linea = valoraeliminar;
UPDATE lineaAcentuacion SET nombreLinea = 'NuevoNombre' WHERE id_linea = valor

******proAcademico*********
INSERT INTO proAcademico (id_programa, nombrePrograma) VALUES (1, 'Programa1')
SELECT*FROM proAcademico;
DELETE FROM proAcademico WHERE id_programa = valoraeliminar;
UPDATE proAcademico SET nombrePrograma = 'NuevoNombre' WHERE id_programa = valor

*********secretaria*************
INSERT INTO secretaria (id_secretaria, nombres, primerApellido, segundoApellido, curp, domicilio, rfc, email_personal, nacionalidad, tel, contrasenia, cargo)
VALUES (1, 'Nombres1', 'Apellido1', 'SegundoApellido1', 'CURP1', 'Domicilio1', 'RFC1', 'email1@example.com', 'Nacionalidad1', 'Tel1', 'Contraseña1', 'Cargo1')
SELECT*FROM secretaria;
DELETE FROM secretaria WHERE id_secretaria = valoraeliminar;
UPDATE secretaria SET NOMBRECAMPOAMODIFICAR= 'NuevoNombre' WHERE id_secretaria = valor

*********Cargos*******
INSERT INTO cargosInv (id_Cargos, id_carg1, id_carg2, id_carg3) VALUES (1, 1, 2, 3);
SELECT*FROM cargosInv;
DELETE FROM cargosInv WHERE id_Cargos = valoraeliminar;
UPDATE cargosInv SET NOMBRECAMPOAMODIFICAR= 'NuevoNombre' WHERE id_Cargos = valor;

*******Documentacion*********
INSERT INTO documentacion (id_documento, solicitudAdmision, promedioCerti, cartaRecomendacion1, cartaRecomendacion2, constanciaIgls, cv, cartaMotivos, cartaTiempo, cartaPresentacion, propuesta, pagoDerechos, cartaAceptacion)
VALUES (1, true, true, true, false, true, false, true, false, true, false, true, true);
SELECT*FROM documentacion;
DELETE FROM documentacion WHERE id_documento = valoraeliminar;
UPDATE documentacion SET NOMBRECAMPOAMODIFICAR= 'NuevoNombre' WHERE id_documento = valor;


*****Asesor Externo********
INSERT INTO AsesExt (id_Asesor, nombres, primerApellido, segundoApellido, curp, domicilio, rfc, email_personal, nacionalidad, tel, id_linea, grado)
VALUES (1, 'Nombres1', 'Apellido1', 'SegundoApellido1', 'CURP1', 'Domicilio1', 'RFC1', 'email1@example.com', 'Nacionalidad1', 'Tel1', 1, 'Grado1');
SELECT*FROM AsesExt;
DELETE FROM AsesExt WHERE id_Asesor = valoraeliminar;
UPDATE AsesExt SET NOMBRECAMPOAMODIFICAR= 'NuevoNombre' WHERE id_Asesor = valor;