from enum import Enum
from sqlalchemy import Table, Column, Integer, String, Date, Enum, Boolean
from config.db import meta, engine


# Definición del modelo SQLAlchemy
origen = Table(
    "tbb_origen",
    meta,
    Column("idOrigen", Integer, primary_key=True),
    Column("Autor", String(450)),
    Column("Nombre", String(450)),
    Column("Tipo", Enum('NovelaL', 'NovelaW', 'Manga')),
    Column("idAnime", Integer),
    Column("Estatus_Anime", Boolean),
    Column("Fecha_Creacion", Date),
    Column("Fecha_Actualizacion", Date)
)
