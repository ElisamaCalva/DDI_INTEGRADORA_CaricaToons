from pydantic import BaseModel, validator
from datetime import date

class tbc_rating(BaseModel):
    idRating: int
    Calificacion: float
    Anime_id: int
    Miembro_id: int
    Estatus: bool
    Fecha_Creacion: date
    Fecha_Actualizacion: date

    @validator("Calificacion")
    def validate_calificacion(cls, value):
        if value < 2 or value > 5:
            raise ValueError("La calificación debe estar entre 2 y 5")
        return value
