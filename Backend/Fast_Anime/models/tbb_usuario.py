from enum import Enum
from sqlalchemy import Table, Column, Integer, String, Date, Enum as SQLAlchemyEnum, Boolean
from config.db import meta, engine

class GeneroEnum(str, Enum):
    Hombre = 'Hombre'
    Mujer = 'Mujer'

# Definición del modelo SQLAlchemy
usuario = Table(
    "tbb_usuario",
    meta,
    Column("idUsuario", Integer, primary_key=True),
    Column("Nombre", String(450)),
    Column("Email", String(450)),
    Column("Contrasenia", String(450)),
    Column("Nickname", String(450)),
    Column("Genero", SQLAlchemyEnum(GeneroEnum)),
    Column("Fecha_Nacimiento", Date),
    Column("Estatus", Boolean),
    Column("Fecha_Creacion", Date),
    Column("Fecha_Actualizacion", Date)
)
