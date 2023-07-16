from pydantic import BaseModel
class Anime(BaseModel):
    genero:str
    nombre:str
    estudio:str
    episodios:int
    temporadas:int
 