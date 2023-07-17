from fastapi import APIRouter
from config.db import conn
from models.anime import anime as AnimeModel
from schemas.anime import Anime

router = APIRouter()

@router.get('/getAll')
def obtenerAnimes():
    animes_list_tuples = conn.execute(AnimeModel.select()).fetchall()
    animes_list_dicts = []
    for anime_tuple in animes_list_tuples:
        anime_dict = {
            "Nombre": anime_tuple.Nombre,
            "Total_Episodios": anime_tuple.Total_Episodios,
            "Estatus": anime_tuple.Estatus,
            "Estudio": anime_tuple.Estudio,
            "Director": anime_tuple.Director,
            "Fecha_Inicio": anime_tuple.Fecha_Inicio,
            "Fecha_Final": anime_tuple.Fecha_Final,
            "Rating_total": anime_tuple.Rating_total,
            "Temporadas": anime_tuple.Temporadas,
            "Sinopsis": anime_tuple.Sinopsis,
            "Tipo": anime_tuple.Tipo,
            "Estatus_Anime": anime_tuple.Estatus_Anime,
            "Fecha_Creacion": anime_tuple.Fecha_Creacion,
            "Fecha_Actualizacion": anime_tuple.Fecha_Actualizacion
        }
        animes_list_dicts.append(anime_dict)
    return animes_list_dicts

@router.post('/insert')
def insertAnime(anime: Anime):
    conn.execute(AnimeModel.insert().values(
        Nombre=anime.Nombre,
        Total_Episodios=anime.Total_Episodios,
        Estatus=anime.Estatus,
        Estudio=anime.Estudio,
        Director=anime.Director,
        Fecha_Inicio=anime.Fecha_Inicio,
        Fecha_Final=anime.Fecha_Final,
        Rating_total=anime.Rating_total,
        Temporadas=anime.Temporadas,
        Sinopsis=anime.Sinopsis,
        Tipo=anime.Tipo,
        Estatus_Anime=anime.Estatus_Anime,
        Fecha_Creacion=anime.Fecha_Creacion,
        Fecha_Actualizacion=anime.Fecha_Actualizacion
    ))
    conn.commit()
    res = {
        "status": "El Anime ha sido Insertado con Éxito"
    }
    return res

@router.get('/obtenerUnoPorId/{id}')
def obtenerAnimePorId(id):
    anime_tuple = conn.execute(AnimeModel.select().where(AnimeModel.c.idAnime == id)).first()
    if anime_tuple is not None:
        anime_dict = {
            "Nombre": anime_tuple.Nombre,
            "Total_Episodios": anime_tuple.Total_Episodios,
            "Estatus": anime_tuple.Estatus,
            "Estudio": anime_tuple.Estudio,
            "Director": anime_tuple.Director,
            "Fecha_Inicio": anime_tuple.Fecha_Inicio,
            "Fecha_Final": anime_tuple.Fecha_Final,
            "Rating_total": anime_tuple.Rating_total,
            "Temporadas": anime_tuple.Temporadas,
            "Sinopsis": anime_tuple.Sinopsis,
            "Tipo": anime_tuple.Tipo,
            "Estatus_Anime": anime_tuple.Estatus_Anime,
            "Fecha_Creacion": anime_tuple.Fecha_Creacion,
            "Fecha_Actualizacion": anime_tuple.Fecha_Actualizacion
        }
        return anime_dict
    else:
        res = {
            "status": "No existe el anime ingresado"
        }
        return res

@router.put('/update/{id}')
def actualizarAnimePorId(anime: Anime, id):
    res = obtenerAnimePorId(id)
    if res.get("status") == "No existe el anime ingresado":
        resp = {
            "status": "No existe el anime ingresado"
        }
    else:
        result = conn.execute(AnimeModel.update().values(
        Nombre=anime.Nombre,
        Total_Episodios=anime.Total_Episodios,
        Estatus=anime.Estatus,
        Estudio=anime.Estudio,
        Director=anime.Director,
        Fecha_Inicio=anime.Fecha_Inicio,
        Fecha_Final=anime.Fecha_Final,
        Rating_total=anime.Rating_total,
        Temporadas=anime.Temporadas,
        Sinopsis=anime.Sinopsis,
        Tipo=anime.Tipo,
        Estatus_Anime=anime.Estatus_Anime,
        Fecha_Creacion=anime.Fecha_Creacion,
        Fecha_Actualizacion=anime.Fecha_Actualizacion
        ).where(AnimeModel.c.idAnime == id))
        conn.commit()
        resp = result.last_updated_params()
    return resp

@router.delete('/delete/{id}')
def eliminarAnimePorId(id):
    res = obtenerAnimePorId(id)
    if res.get("status") == "No existe el anime ingresado":
        return res
    else:
        result = conn.execute(AnimeModel.delete().where(AnimeModel.c.idAnime == id))
        conn.commit()
        res = {
            "status": f"Anime con ID {id} eliminado con éxito"
        }
    return res
