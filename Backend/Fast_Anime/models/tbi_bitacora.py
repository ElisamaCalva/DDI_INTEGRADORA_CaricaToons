from enum import Enum
from sqlalchemy import Table, Column, Integer, String, Date, Boolean, Enum as SQLAlchemyEnum
from config.db import meta, engine

class OperacionEnum(str, Enum):
    Create = 'Create'
    Read = 'Read'
    Update = 'Update'
    Delete = 'Delete'

# Definición del modelo SQLAlchemy
bitacora = Table(
    "tbi_bitacora",
    meta,
    Column("iD", Integer, primary_key=True),
    Column("usuario_bd", String(450)),
    Column("tabla", String(450)),
    Column("operacion", SQLAlchemyEnum(OperacionEnum)),
    Column("descripcion_completa", String(1000)),
    Column("fecha_hora", Date),
    Column("estatus", Boolean)
)
