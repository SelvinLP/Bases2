#Creacion del KEYSPACE
CREATE KEYSPACE practica2_201701133 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
#Ver los KEYSPACES
DESC KEYSPACES;
USE practica2_201701133;