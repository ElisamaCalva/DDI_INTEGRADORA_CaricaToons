from sqlalchemy import Table, Column, Integer, String, Boolean, Date
from config.db import meta, engine
from sqlalchemy.ext.declarative import declarative_base

# Definición de la tabla SQLAlchemy
episodio = Table(
    "tbb_episodio",
    meta,
    Column("idEpisodio", Integer, primary_key=True),
    Column("Nombre", String(100)),
    Column("Estreno", Date),
    Column("idTemporada", Integer),
    Column("idAnime", Integer),
    Column("Estatus", Boolean),
    Column("Fecha_Creacion", Date),
    Column("Fecha_Actualizacion", Date),
)

# Definición del modelo SQLAlchemy
Base = declarative_base()

class TbbEpisodio(Base):
    __tablename__ = 'tbb_episodio'
    
    idEpisodio = Column(Integer, primary_key=True)
    Nombre = Column(String(100))
    Estreno = Column(Date)
    idTemporada = Column(Integer)
    idAnime = Column(Integer)
    Estatus = Column(Boolean)
    Fecha_Creacion = Column(Date)
    Fecha_Actualizacion = Column(Date)

    def __repr__(self):
        return f"TbbEpisodio(idEpisodio={self.idEpisodio}, Nombre={self.Nombre}, Estreno={self.Estreno}, ...)"

# Aquí, asociamos la tabla con el modelo
meta.create_all(engine)

