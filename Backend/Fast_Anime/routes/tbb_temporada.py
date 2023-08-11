from fastapi import APIRouter, HTTPException
from config.db import conn
from schemas.tbb_temporada import tbb_temporada
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
def agregarAnimeTemporada(nuevo_anime_temporada: tbb_temporada):
    try:
        query = anime_temporada.insert().values(
            Numero=nuevo_anime_temporada.Numero,
            Fecha_Emision=nuevo_anime_temporada.Fecha_Emision,
            Fecha_Termino=nuevo_anime_temporada.Fecha_Termino,
            Sinopsis=nuevo_anime_temporada.Sinopsis,
            Rating_total=nuevo_anime_temporada.Rating_total,
            idAnime=nuevo_anime_temporada.idAnime,
            Estatus_Anime=nuevo_anime_temporada.Estatus_Anime,
            Fecha_Creacion=nuevo_anime_temporada.Fecha_Creacion,
            Fecha_Actualizacion=nuevo_anime_temporada.Fecha_Actualizacion
        )

        result = conn.execute(query)
        tbb_temporada = result.lastrowid
        conn.commit()  # Realiza el commit de la transacción

        return {"message": "Anime agregado exitosamente", "idAnimeTemporada": tbb_temporada}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al agregar el anime a la temporada: " + str(e))

@router_temporada.put('/editarAnimeTemporada/{idAnimeTemporada}', tags=["Temporada"])
def editarAnimeTemporada(idAnimeTemporada: int, anime_temporada_data: tbb_temporada):
    try:
        query = (
            anime_temporada
            .update()
            .where(anime_temporada.c.idAnimeTemporada == idAnimeTemporada)
            .values(
                Numero=anime_temporada_data.Numero,
                Fecha_Emision=anime_temporada_data.Fecha_Emision,
                Fecha_Termino=anime_temporada_data.Fecha_Termino,
                Sinopsis=anime_temporada_data.Sinopsis,
                Rating_total=anime_temporada_data.Rating_total,
                idAnime=anime_temporada_data.idAnime,
                Fecha_Actualizacion=anime_temporada_data.Fecha_Actualizacion
            )
        )

        result = conn.execute(query)
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Anime en temporada no encontrado")

        conn.commit()  # Realiza el commit de la transacción

        return {"message": "Anime en temporada editado exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al editar el anime en temporada: " + str(e))


@router_temporada.delete('/eliminarAnimeTemporada/{idAnimeTemporada}', tags=["Temporada"])
def eliminarAnimeTemporada(idTemporada: int):
    query = anime_temporada.delete().where(anime_temporada.c.idTemporada == idTemporada)

    try:
        result = conn.execute(query)
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Anime en temporada no encontrado")

        conn.commit()  # Realiza el commit de la transacción

        return {"message": "Anime en temporada eliminado exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al eliminar el anime en temporada: " + str(e))









