from sqlalchemy import Table, Column, Integer, Boolean, Date
from config.db import meta, engine


# Definición del modelo SQLAlchemy
lista_animes = Table(
    "tbc_lista_animes",
    meta,
    Column("idLista_Animes", Integer, primary_key=True),
    Column("Anime_id", Integer),
    Column("Miembro_id", Integer),
    Column("Favorito", Boolean),
    Column("Pendiente", Boolean),
    Column("Estatus", Boolean),
    Column("Fecha_Creacion", Date),
    Column("Fecha_Actualizacion", Date)
)