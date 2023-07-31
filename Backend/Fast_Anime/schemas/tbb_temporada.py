from pydantic import BaseModel
from datetime import date

class tbb_episodio(BaseModel):
    Numero: str
    Fecha_Emision: str
    Fecha_Termino: str
    Sinopsis: str
    Rating_total: int
    idAnime: int
    Estatus_Anime: bool
    Fecha_Creacion: date
    Fecha_Actualizacion: date