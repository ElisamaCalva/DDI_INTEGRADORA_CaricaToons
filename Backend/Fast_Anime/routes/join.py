from fastapi import APIRouter
from sqlalchemy import select, join
from config.db import conn
from models.tbc_lista_animes import lista_animes
from models.tbb_anime import anime
from models.tbb_usuario import usuario
from models.tbb_miembro import miembro

router_join = APIRouter()

@router_join.get('/obtenerListaConInfo', tags=["Join animes"])
def obtenerListaConInfo():
    query = (
        select(
            lista_animes.c.idLista_Animes,
            anime.c.Nombre.label("NombreAnime"),
            usuario.c.Nombre.label("NombrePersona")
        )
        .select_from(
            join(lista_animes, anime, lista_animes.c.Anime_id == anime.c.idAnime)
            .join(miembro, miembro.c.idMiembro == lista_animes.c.Miembro_id)
            .join(usuario, usuario.c.idUsuario == miembro.c.Usuario_id)
        )
    )

    result = conn.execute(query)
    lista_con_info = result.fetchall()

    lista_info_list = []
    for row in lista_con_info:
        lista_info_dict = {
            "idLista_Animes": row.idLista_Animes,
            "NombreAnime": row.NombreAnime,
            "NombrePersona": row.NombrePersona
        }
        lista_info_list.append(lista_info_dict)

    return lista_info_list
