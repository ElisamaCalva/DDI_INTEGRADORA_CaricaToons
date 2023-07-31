from sqlalchemy import Table, Column, Integer, String, Boolean, Date
from config.db import meta, engine

# Definición del modelo SQLAlchemy
genero = Table(
    "tbb_genero",
    meta,
    Column("idGenero", Integer, primary_key=True),
    Column("Nombre", String(100)),
    Column("Subgenero", Integer),
    Column("Estatus", Boolean),
    Column("Fecha_Creacion", Date),
    Column("Fecha_Actualizacion", Date)
)