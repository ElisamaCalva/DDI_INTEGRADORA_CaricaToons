from pydantic import BaseModel
from enum import Enum
from datetime import date
from typing import List

class EstatusEnum(str, Enum):
    Emision = 'Emision'
    Pausado = 'Pausado'
    Terminado = 'Terminado'

class TipoEnum(str, Enum):
    TV = 'TV'
    Ova = 'Ova'
    Pelicula = 'Pelicula'

class tbb_anime(BaseModel):
    Nombre: str
    Total_Episodios: int
    Estatus: EstatusEnum
    Estudio: str
    Director: str
    Fecha_Inicio: date
    Fecha_Final: str
    Rating_total: float
    Temporadas: int
    Sinopsis: str
    Tipo: TipoEnum  
    Estatus_Anime: bool

    class Config:
        use_enum_values = True

