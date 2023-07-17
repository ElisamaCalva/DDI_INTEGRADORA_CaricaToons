from enum import Enum
from sqlalchemy import Table, Column, Integer, String, Boolean, Float, Date, Enum
from config.db import meta, engine

# Definición del modelo SQLAlchemy
anime = Table(
    "Anime",
    meta,
    Column("idAnime", Integer, primary_key=True),
    Column("Nombre", String(100)),
    Column("Total_Episodios", Integer),
    Column("Estatus", Enum('Emision', 'Pausado', 'Terminado')),
    Column("Estudio", String(100)),
    Column("Director", String(100)),
    Column("Fecha_Inicio", Date),
    Column("Fecha_Final", String(100)),
    Column("Rating_total", Float),
    Column("Temporadas", Integer),
    Column("Sinopsis", String(100)),
    Column("Tipo", Enum('TV', 'Ova', 'Pelicula')),
    Column("Estatus_Anime", Boolean),
    Column("Fecha_Creacion", Date),
    Column("Fecha_Actualizacion", Date)
)



   


