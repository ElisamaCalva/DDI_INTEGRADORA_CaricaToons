from pydantic import BaseModel
from enum import Enum
from datetime import date

class TipoEnum(str, Enum):
    NovelaL = 'NovelaL'
    NovelaW = 'NovelaW'
    Manga = 'Manga'

class tbb_origen(BaseModel):
    Autor:str
    Nombre:str
    idAnime: int
    Tipo: TipoEnum  
    Estatus_Anime: bool
    Fecha_Creacion: date
    Fecha_Actualizacion: date