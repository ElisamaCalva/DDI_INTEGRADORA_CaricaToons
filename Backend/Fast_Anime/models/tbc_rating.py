from sqlalchemy import Table, Column, Integer, Boolean, Date, Float
from config.db import meta, engine


# Definición del modelo SQLAlchemy
rating = Table(
    "tbc_rating",
    meta,
    Column("idRating", Integer, primary_key=True),
    Column("Calificacion", Float),
    Column("Anime_id", Integer),
    Column("Miembro_id", Integer),
    Column("Estatus", Boolean),
    Column("Fecha_Creacion", Date),
    Column("Fecha_Actualizacion", Date)
)