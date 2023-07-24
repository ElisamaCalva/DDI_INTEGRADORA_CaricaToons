from sqlalchemy import Table, Column, Integer
from config.db import meta, engine


# Definición del modelo SQLAlchemy
anime_genero = Table(
    "tbc_anime_genero",
    meta,
    Column("idAnime_Genero", Integer, primary_key=True),
    Column("Genero_id", Integer),
    Column("Anime_id", Integer),
)