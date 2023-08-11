from fastapi import APIRouter
from sqlalchemy import select, join
from config.db import conn
from models.tbb_episodio import episodio
from models.tbb_temporada import anime_temporada
from models.tbc_anime_genero import anime_genero
from models.tbb_genero import genero

router_join_episodios = APIRouter()

@router_join_episodios.get('/obtenerInfoEpisodios', tags=["Episodios"])
def obtenerInfoEpisodios():
    query = (
        select(
            episodio.c.idEpisodio,
            episodio.c.Nombre,
            episodio.c.Estreno,
            anime_temporada.c.Numero.label("NumeroTemporada"),
            genero.c.Nombre.label("NombreGenero")
        )
        .select_from(
            join(episodio, anime_temporada, episodio.c.idTemporada == anime_temporada.c.idTemporada)
            .join(anime_genero, anime_genero.c.Anime_id == episodio.c.idAnime)
            .join(genero, genero.c.idGenero == anime_genero.c.Genero_id)
        )
    )

    result = conn.execute(query)
    info_episodios = result.fetchall()

    info_episodios_list = []
    for row in info_episodios:
        info_episodios_dict = {
            "idEpisodio": row.idEpisodio,
            "NombreEpisodio": row.Nombre,
            "EstrenoEpisodio": row.Estreno,
            "NumeroTemporada": row.NumeroTemporada,
            "NombreGenero": row.NombreGenero
        }
        info_episodios_list.append(info_episodios_dict)

    return info_episodios_list
