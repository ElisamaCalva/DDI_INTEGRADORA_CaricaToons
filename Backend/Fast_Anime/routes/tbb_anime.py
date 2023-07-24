from fastapi import APIRouter
from config.db import conn
from models.tbb_anime import anime as AnimeModel
from schemas.tbb_anime import tbb_anime
from fastapi.responses import JSONResponse
from datetime import date

router = APIRouter()

@router.get('/getAll')
def obtenerAnimes():
    animes_list_dicts = []
    animes_list_tuples = conn.execute(AnimeModel.select()).fetchall()
    for anime_tuple in animes_list_tuples:
        rating_total = anime_tuple.Rating_total
        if rating_total is not None:
            rating_total = float(rating_total)
        else:
            rating_total = 0.0

        fecha_inicio = anime_tuple.Fecha_Inicio.strftime('%Y-%m-%d') if anime_tuple.Fecha_Inicio else None
        fecha_final = anime_tuple.Fecha_Final.strftime('%Y-%m-%d') if anime_tuple.Fecha_Final else None

        anime_dict = {
            "idAnime": anime_tuple.idAnime,
            "Nombre": anime_tuple.Nombre,
            "Total_Episodios": anime_tuple.Total_Episodios,
            "Estatus": anime_tuple.Estatus,
            "Estudio": anime_tuple.Estudio,
            "Director": anime_tuple.Director,
            "Fecha_Inicio": fecha_inicio,
            "Fecha_Final": fecha_final,
            "Rating_total": rating_total,
            "Temporadas": anime_tuple.Temporadas,
            "Sinopsis": anime_tuple.Sinopsis,
            "Tipo": anime_tuple.Tipo
        }
        animes_list_dicts.append(anime_dict)
    return JSONResponse(content=animes_list_dicts)


@router.post('/insert')
def insertAnime(anime: tbb_anime):
    conn.execute(AnimeModel.insert().values(**anime.dict()))
    conn.commit()
    res = {
        "status": "El Anime ha sido Insertado con Éxito"
    }
    return res

@router.get('/obtenerUnoPorId/{id}')
def obtenerAnimePorId(id: int):
    anime_tuple = conn.execute(AnimeModel.select().where(AnimeModel.c.idAnime == id)).first()
    if anime_tuple is not None:
        anime_dict = {
            "idAnime": anime_tuple.idAnime,
            "Nombre": anime_tuple.Nombre,
            "Total_Episodios": anime_tuple.Total_Episodios,
            "Estatus": anime_tuple.Estatus,
            "Estudio": anime_tuple.Estudio,
            "Director": anime_tuple.Director,
            "Fecha_Inicio": anime_tuple.Fecha_Inicio.strftime('%Y-%m-%d') if anime_tuple.Fecha_Inicio else None,
            "Fecha_Final": anime_tuple.Fecha_Final.strftime('%Y-%m-%d') if anime_tuple.Fecha_Final else None,
            "Rating_total": float(anime_tuple.Rating_total) if anime_tuple.Rating_total is not None else 0.0,
            "Temporadas": anime_tuple.Temporadas,
            "Sinopsis": anime_tuple.Sinopsis,
            "Tipo": anime_tuple.Tipo
        }
        return anime_dict
    else:
        res = {
            "status": "No existe el anime ingresado"
        }
        return res

@router.put('/update/{id}')
def actualizarAnimePorId(id: int, anime: tbb_anime):
    res = obtenerAnimePorId(id)
    if res.get("status") == "No existe el anime ingresado":
        resp = {
            "status": "No existe el anime ingresado"
        }
    else:
        conn.execute(AnimeModel.update().values(**anime.dict()).where(AnimeModel.c.idAnime == id))
        conn.commit()
        resp = {
            "status": f"Anime con ID {id} actualizado con éxito"
        }
    return resp

@router.delete('/delete/{id}')
def eliminarAnime(id: int):
    res = obtenerAnimePorId(id)
    if res.get("status") == "No existe el anime ingresado":
        return res
    else:
        query = AnimeModel.update().values(Estatus_Anime=False).where(AnimeModel.c.idAnime == id)
        conn.execute(query)
        conn.commit()
        res = {
            "status": f"Anime con ID {id} eliminado con éxito"
        }
    return res

@router.delete('/deletebase/{id}')
def eliminarAnime(id: int):
    # Verificar si el anime existe por su ID
    anime = conn.execute(AnimeModel.select().where(AnimeModel.c.idAnime == id)).first()
    if anime is None:
        raise HTTPException(status_code=404, detail="El anime con ID especificado no existe")

    # Realizar la eliminación del anime por su ID
    query = AnimeModel.delete().where(AnimeModel.c.idAnime == id)
    conn.execute(query)
    conn.commit()

    # Retornar una respuesta indicando que el anime ha sido eliminado
    res = {
        "status": f"Anime con ID {id} eliminado con éxito"
    }
    return res

