from sqlalchemy import Table, Column, Integer, Boolean, Date
from config.db import meta, engine

# Definición del modelo SQLAlchemy
miembro = Table(
    "tbb_miembro",
    meta,
    Column("idMiembro", Integer, primary_key=True),
    Column("Usuario_id", Integer),
    Column("Estatus", Boolean),
    Column("Fecha_Creacion", Date),
    Column("Fecha_Actualizacion", Date)
)