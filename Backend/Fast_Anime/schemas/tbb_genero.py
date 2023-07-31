from pydantic import BaseModel
from datetime import date

class tbb_genero(BaseModel):
    idGenero: int
    Nombre: str
    Subgenero: int
    Estatus: bool
    Fecha_Creacion: date
    Fecha_Actualizacion: date