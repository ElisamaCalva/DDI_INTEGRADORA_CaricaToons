from fastapi import APIRouter, Request
from config.db import conn
from models.tbb_temporada import anime_temporada
from fastapi.responses import JSONResponse

router_temporada = APIRouter()

@router_temporada.get('/obtenerAnimesTemporada', tags=["Temporada"])
def obtenerAnimesTemporada():
    animes_temporada_list = []
    animes_temporada_tuples = conn.execute(anime_temporada.select()).fetchall()
    for anime_temporada_tuple in animes_temporada_tuples:
        anime_temporada_dict = {
            "Numero": anime_temporada_tuple.Numero,
            "Fecha_Emision": anime_temporada_tuple.Fecha_Emision.strftime('%Y-%m-%d') if anime_temporada_tuple.Fecha_Emision else None,
            "Fecha_Termino": anime_temporada_tuple.Fecha_Termino.strftime('%Y-%m-%d') if anime_temporada_tuple.Fecha_Termino else None,
            "Sinopsis": anime_temporada_tuple.Sinopsis,
            "Rating_total": anime_temporada_tuple.Rating_total,
            "idAnime": anime_temporada_tuple.idAnime,
            "Fecha_Creacion": anime_temporada_tuple.Fecha_Creacion.strftime('%Y-%m-%d %H:%M:%S') if anime_temporada_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": anime_temporada_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d %H:%M:%S') if anime_temporada_tuple.Fecha_Actualizacion else None,
        }
        animes_temporada_list.append(anime_temporada_dict)
    return animes_temporada_list

@router_temporada.post('/agregarAnimeTemporada', tags=["Temporada"])
async def agregarAnimeTemporada(request: Request):
    data = await request.json()
    query = anime_temporada.insert().values(
        Numero=data.get('Numero'),
        Fecha_Emision=data.get('Fecha_Emision'),
        Fecha_Termino=data.get('Fecha_Termino'),
        Sinopsis=data.get('Sinopsis'),
        Rating_total=data.get('Rating_total'),
        idAnime=data.get('idAnime'),
        Estatus_Anime=data.get('Estatus_Anime'),
        Fecha_Creacion=data.get('Fecha_Creacion'),
        Fecha_Actualizacion=data.get('Fecha_Actualizacion')
    )
    conn.execute(query)
    return JSONResponse(content={"message": "Anime agregado exitosamente"})

