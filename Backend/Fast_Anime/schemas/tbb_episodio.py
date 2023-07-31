from pydantic import BaseModel
from datetime import date

class tbb_episodio(BaseModel):
    idEpisodio: int
    Nombre: str
    Estreno: date
    idTemporada: int
    idAnime: int
    Estatus_Anime: bool
    Fecha_Creacion: date
    Fecha_Actualizacion: date