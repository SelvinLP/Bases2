#docker cp "D:\Usac\Sistemas de Bases de Datos 2\Laboratorio\Bases2\Practica 2\15kDatos_Practica2.csv" cassandra-node:/
#Partidos de X Temporada donde Y equipo ha jugado como local
COPY practica2_201701133.PartidosPorTemporada (
    Fecha,
    Temporada,
    Jornada,
    Equipo1,
    Equipo2,
    Goles1,
    Goles2)
    FROM '15kDatos_Practica2.csv' 
    WITH DELIMITER=',' 
    AND HEADER=TRUE;

#Partidos de X Temporada donde Y equipo ha jugado como visitante
COPY practica2_201701133.PartidosTemporadaVisitante (
    Fecha,
    Temporada,
    Jornada,
    Equipo1,
    Equipo2,
    Goles1,
    Goles2)
    FROM '15kDatos_Practica2.csv' 
    WITH DELIMITER=',' 
    AND HEADER=TRUE;

#Marcadores finales para los partidos de X temporada donde han participado los equipos Y y Z
    #Marcadores tanto de la primera vuelta como de la segunda
COPY practica2_201701133.MarcadordePartidos (
    Fecha,
    Temporada,
    Jornada,
    Equipo1,
    Equipo2,
    Goles1,
    Goles2)
    FROM '15kDatos_Practica2.csv' 
    WITH DELIMITER=',' 
    AND HEADER=TRUE;

#Partido donde se registre la victoria más abultada de X temporada
COPY practica2_201701133.PartidaAbultada (
    Fecha,
    Temporada,
    Jornada,
    Equipo1,
    Equipo2,
    Goles1,
    Goles2)
    FROM '15kDatos_Practica2.csv' 
    WITH DELIMITER=',' 
    AND HEADER=TRUE;

#Rival de X equipo para Y jornada de Z temporada
COPY practica2_201701133.PartidosRival (
    Fecha,
    Temporada,
    Jornada,
    Equipo1,
    Equipo2,
    Goles1,
    Goles2)
    FROM '15kDatos_Practica2.csv' 
    WITH DELIMITER=',' 
    AND HEADER=TRUE;