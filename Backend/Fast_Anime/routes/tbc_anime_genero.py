from fastapi import APIRouter
from sqlalchemy import select, join
from config.db import conn
from models.tbc_anime_genero import anime_genero 
from fastapi.responses import JSONResponse

router_anime_genero = APIRouter()

@router_anime_genero.get('/obtenerAnimesConGeneros')
def obtenerAnimesConGeneros():
    anime_genero_list_dicts = []
    anime_genero_list_tuples = conn.execute(anime_genero.select()).fetchall()
    for anime_genero_tuple in anime_genero_list_tuples:

        anime_genero_dict = {
            "idAnime_Genero": anime_genero_tuple.idAnime_Genero,
            "Genero_id": anime_genero_tuple.Genero_id,
            "Anime_id": anime_genero_tuple.Anime_id,
        }
        anime_genero_list_dicts.append(anime_genero_dict)
    return JSONResponse(content=anime_genero_list_dicts)

