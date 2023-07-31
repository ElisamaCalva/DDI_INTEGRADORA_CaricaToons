from sqlalchemy import Table, Column, Integer, Boolean, Date, String, Float
from config.db import meta, engine


# Definición del modelo SQLAlchemy
anime_temporada = Table(
    "tbb_temporada",
    meta,
    Column("idTemporada", Integer, primary_key=True),
    Column("Numero", Integer),
    Column("Fecha_Emision", Date),
    Column("Fecha_Termino", Date),
    Column("Sinopsis", String(100)),
    Column("Rating_total", Float),
    Column("idAnime", Integer),
    Column("Estatus_Anime", Boolean),
    Column("Fecha_Creacion", Date),
    Column("Fecha_Actualizacion", Date)
)