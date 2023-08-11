from pydantic import BaseModel
from datetime import date

class tbc_lista_animes(BaseModel):
    idLista_Animes: int
    Anime_id: int
    Miembro_id: str
    Favorito: str
    Pendiente: str
    Estatus: bool
    Fecha_Creacion: date
    Fecha_Actualizacion: date