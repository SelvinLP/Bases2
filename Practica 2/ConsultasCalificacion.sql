#Partidos de X Temporada donde Y equipo ha jugado como local
SELECT * FROM PartidosPorTemporada 
    WHERE Temporada = '1997-1998' 
        AND Equipo1 = 'Zaragoza';

#Partidos de X Temporada donde Y equipo ha jugado como visitante
SELECT * FROM PartidosTemporadaVisitante 
    WHERE Temporada = '2016-2017' 
        AND Equipo2 = 'Salamanca';


#Marcadores finales para los partidos de X temporada donde han participado los equipos Y y Z
    #Marcadores tanto de la primera vuelta como de la segunda
SELECT * FROM MarcadordePartidos 
    WHERE Temporada = '2019-2020' 
        AND Equipo1 IN ('Real Madrid','Real Sociedad' ) 
        AND Equipo2 IN ('Real Madrid','Real Sociedad' );

SELECT * FROM MarcadordePartidos 
    WHERE Temporada = '2016-2017' 
        AND Equipo1 IN ('Sevilla','Valencia' ) 
        AND Equipo2 IN ('Sevilla','Valencia' );

#Partido donde se registre la victoria más abultada de X temporada
SELECT * FROM PartidaAbultada
    WHERE Temporada = '2014-2015'
    LIMIT 1;

#Rival de X equipo para Y jornada de Z temporada
SELECT * FROM PartidosRival 
    WHERE Temporada = '2016-2017' 
        AND Jornada = 19
        AND Equipo1 = 'Real Madrid';