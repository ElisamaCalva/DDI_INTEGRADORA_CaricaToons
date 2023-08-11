from pydantic import BaseModel
from enum import Enum
from datetime import date

class TipoEnum(str, Enum):
    Hombre = 'Hombre'
    Mujer = 'Mujer'


class tbb_usuario(BaseModel):
    idUsuario: int
    Nombre:str
    Email:str
    Contrasenia:str
    Nickname:str
    Genero: TipoEnum 
    Fecha_Nacimiento:date
    Estatus: bool
    Fecha_Creacion: date
    Fecha_Actualizacion: date

    class Config:
        use_enum_values = True