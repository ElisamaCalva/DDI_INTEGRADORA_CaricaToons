from fastapi import APIRouter, HTTPException
from sqlalchemy import text
from config.db import conn

router_recomendacion_animes = APIRouter()

@router_recomendacion_animes.get('/recomendarAnimes/{idMiembro}', tags=["Recomendación Animes"])
def recomendarAnimes(idMiembro: int):
    try:
        # Obtener los animes calificados por el miembro
        query_animes_calificados = text("""
            SELECT DISTINCT r.Anime_id
            FROM tbc_rating r
            WHERE r.Miembro_id = :idMiembro
        """)

        result_animes_calificados = conn.execute(query_animes_calificados, {"idMiembro": idMiembro})
        animes_calificados = [row[0] for row in result_animes_calificados.fetchall()]

        # Consulta para recomendar animes similares con calificación
        query_recomendacion = text("""
            SELECT a.idAnime, a.Nombre, r.Calificacion
            FROM tbb_anime a
            JOIN tbc_rating r ON a.idAnime = r.Anime_id
            WHERE r.Miembro_id != :idMiembro
            AND r.Anime_id NOT IN :animes_calificados
        """)

        result_recomendacion = conn.execute(
            query_recomendacion,
            {"idMiembro": idMiembro, "animes_calificados": tuple(animes_calificados)}
        )

        recomendacion_animes_list_dicts = []
        for row in result_recomendacion:
            anime_dict = {
                "idAnime": row[0],
                "Nombre": row[1],
                "Calificacion": row[2]
            }
            recomendacion_animes_list_dicts.append(anime_dict)

        return recomendacion_animes_list_dicts

    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al recomendar animes: " + str(e))
