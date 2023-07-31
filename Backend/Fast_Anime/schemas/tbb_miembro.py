from pydantic import BaseModel
from datetime import date

class tbb_miembro(BaseModel):
    idMiembro: int
    Usuario_id: int
    Estatus: bool
    Fecha_Creacion: date
    Fecha_Actualizacion: date