from sqlalchemy import Table, Column, Integer, String, Sequence
from config.db import meta, engine

animes = Table("animes", meta,
                Column("id", Integer, Sequence('anime_id_seq'), primary_key=True),
                Column("temporadas", Integer),
                Column("nombre", String(100)),
                Column("estudio", String(100)),
                Column("episodios", Integer),
                Column("genero", String(100))
            )

meta.create_all(engine)
