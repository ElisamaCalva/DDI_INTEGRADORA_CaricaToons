from pydantic import BaseModel
from enum import Enum
from datetime import date

class TipoEnum(str, Enum):
    NovelaL = 'NovelaL'
    NovelaW = 'NovelaW'
    Manga = 'Manga'

class tbb_origen(BaseModel):
    idOrigen: int
    Autor:str
    Nombre:str
    Tipo: TipoEnum 
    idAnime: int 
    Estatus_Anime: bool
    Fecha_Creacion: date
    Fecha_Actualizacion: date

class Config:
        use_enum_values = True