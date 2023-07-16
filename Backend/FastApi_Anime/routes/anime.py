from fastapi import APIRouter
from config.db import conn
from models.anime import animes
from schemas.anime import Anime

router = APIRouter()

@router.get('/getAll')
def obtenerAnimes():
    animes_list_tuples = conn.execute(animes.select()).fetchall()
    animes_list_dicts = []
    for anime_tuple in animes_list_tuples:
        animes_dict = {
            "genero": anime_tuple.genero,
            "nombre": anime_tuple.nombre,
            "estudio": anime_tuple.estudio,
            "episodios": anime_tuple.episodios,
            "temporadas": anime_tuple.temporadas
        }
        animes_list_dicts.append(animes_dict)
    return animes_list_dicts

@router.post('/insert')
def insertAnime(anime: Anime):
    conn.execute(animes.insert().values(
        genero=anime.genero,
        nombre=anime.nombre,
        estudio=anime.estudio,
        episodios=anime.episodios,
        temporadas=anime.temporadas
    ))
    conn.commit()
    res = {
        "status": "El Anime ha sido Insertado con Éxito"
    }
    return res

@router.get('/obtenerUnoPorId/{id}')
def obtenerAnimePorId(id):
    anime_tuple = conn.execute(animes.select().where(animes.c.id == id)).first()
    if anime_tuple is not None:
        anime_dict = {
            "genero": anime_tuple.genero,
            "nombre": anime_tuple.nombre,
            "estudio": anime_tuple.estudio,
            "episodios": anime_tuple.episodios,
            "temporadas": anime_tuple.temporadas
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
        result = conn.execute(animes.update().values(
            genero=anime.genero,
            nombre=anime.nombre,
            estudio=anime.estudio,
            episodios=anime.episodios,
            temporadas=anime.temporadas
        ).where(animes.c.id == id))
        conn.commit()
        resp = result.last_updated_params()
    return resp


@router.delete('/delete/{id}')
def eliminarAnimePorId(id):
    res = obtenerAnimePorId(id)
    if res.get("status") == "No existe el anime ingresado":
        return res
    else:
        result = conn.execute(animes.delete().where(animes.c.id == id))
        conn.commit()
        res = {
            "status": f"Anime con ID {id} eliminado con éxito"
        }
    return res
