from pydantic import BaseModel
from enum import Enum
from datetime import date

class OperacionEnum(str, Enum):
    Create = 'Create'
    Read = 'Read'
    Update = 'Update'
    Delete = 'Delete'

class tbi_bitacora(BaseModel):
    iD: int
    usuario_bd: str
    tabla: str
    operacion: OperacionEnum
    descripcion_completa: bool
    fecha_hora: date
    estatus: bool