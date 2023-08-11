from sqlalchemy import Table, Column, Integer, String, Boolean, Date
from config.db import meta, engine

# Definición de la tabla SQLAlchemy
episodio = Table(
    "tbb_episodio",
    meta,
    Column("idEpisodio", Integer, primary_key=True),
    Column("Nombre", String(100)),
    Column("Estreno", Date),
    Column("idTemporada", Integer),
    Column("idAnime", Integer),
    Column("Estatus_Anime", Boolean),
    Column("Fecha_Creacion", Date),
    Column("Fecha_Actualizacion", Date),
)


