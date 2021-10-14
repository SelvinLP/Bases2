USE practica2_201701133;
#Partidos de X Temporada donde Y equipo ha jugado como local
SELECT * FROM PartidosPorTemporada 
    WHERE Temporada = '1979-1980' 
        AND Equipo1 = 'Betis';

#Partidos de X Temporada donde Y equipo ha jugado como visitante
SELECT * FROM PartidosTemporadaVisitante 
    WHERE Temporada = '1979-1980' 
        AND Equipo2 = 'Atlético de Madrid';

#Marcadores finales para los partidos de X temporada donde han participado los equipos Y y Z
    #Marcadores tanto de la primera vuelta como de la segunda
SELECT * FROM MarcadordePartidos 
    WHERE Temporada = '1979-1980' 
        AND Equipo1 IN ('Valencia','Atlético de Madrid' ) 
        AND Equipo2 IN ('Valencia','Atlético de Madrid' );

#Partido donde se registre la victoria más abultada de X temporada
SELECT * FROM PartidaAbultada
    WHERE Temporada = '2014-2015'
    LIMIT 1;

#Rival de X equipo para Y jornada de Z temporada
SELECT * FROM PartidosRival 
    WHERE Temporada = '2014-2015' 
        AND Jornada = 29
        AND Equipo1 = 'Real Madrid';