#Datos Archivo Carga Fecha,Temporada,Jornada,Equipo1,Equipo2,Goles1,Goles2
USE practica2_201701133;
DESCRIBE tables;

#Partidos de X Temporada donde Y equipo ha jugado como local
DROP TABLE IF EXISTS practica2_201701133.PartidosPorTemporada;
CREATE TABLE PartidosPorTemporada (
    Fecha text,
    Temporada text,
    Jornada int,
    Equipo1 text,
    Equipo2 text,
    Goles1 int,
    Goles2 int,
    PRIMARY KEY ((Temporada,Equipo1), Jornada));

#Partidos de X Temporada donde Y equipo ha jugado como visitante
DROP TABLE IF EXISTS practica2_201701133.PartidosTemporadaVisitante;
CREATE TABLE PartidosTemporadaVisitante (
    Fecha text,
    Temporada text,
    Jornada int,
    Equipo1 text,
    Equipo2 text,
    Goles1 int,
    Goles2 int,
    PRIMARY KEY ((Temporada,Equipo2), Jornada));

#Marcadores finales para los partidos de X temporada donde han participado los equipos Y y Z
    #Marcadores tanto de la primera vuelta como de la segunda
DROP TABLE IF EXISTS practica2_201701133.MarcadordePartidos;
CREATE TABLE MarcadordePartidos (
    Fecha text,
    Temporada text,
    Jornada int,
    Equipo1 text,
    Equipo2 text,
    Goles1 int,
    Goles2 int,
    PRIMARY KEY ((Temporada,Equipo1,Equipo2), Jornada));

#Partido donde se registre la victoria más abultada de X temporada
DROP TABLE IF EXISTS practica2_201701133.PartidaAbultada;
CREATE TABLE PartidaAbultada (
    Fecha text,
    Temporada text,
    Jornada int,
    Equipo1 text,
    Equipo2 text,
    Goles1 int,
    Goles2 int,
    PRIMARY KEY ((Temporada), Goles1, Goles2))
    WITH CLUSTERING ORDER BY (Goles1 DESC, Goles2 DESC);

#Rival de X equipo para Y jornada de Z temporada
DROP TABLE IF EXISTS practica2_201701133.PartidosRival;
CREATE TABLE PartidosRival (
    Fecha text,
    Temporada text,
    Jornada int,
    Equipo1 text,
    Equipo2 text,
    Goles1 int,
    Goles2 int,
    PRIMARY KEY ((Equipo1, Jornada, Temporada), Fecha));