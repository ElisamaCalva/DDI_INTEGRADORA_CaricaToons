from fastapi import APIRouter
from sqlalchemy import select, join
from config.db import conn
from models.tbb_usuario import usuario
from models.tbb_miembro import miembro
from models.tbc_lista_animes import lista_animes

router_join = APIRouter()

@router_join.get('/obtenerUsuariosConAnime', tags=["Join"])
def obtenerUsuariosConAnime():
    query = (
        select(
            usuario.c.idUsuario,
            usuario.c.Nombre,
            miembro.c.idMiembro,
            lista_animes.c.Anime_id,
        )
        .select_from(
            join(usuario, miembro, usuario.c.idUsuario == miembro.c.Usuario_id)
            .join(lista_animes, miembro.c.idMiembro == lista_animes.c.Miembro_id)
        )
    )

    result = conn.execute(query)
    usuarios_con_anime = result.fetchall()

    usuarios_anime_list = []
    for row in usuarios_con_anime:
        usuario_anime_dict = {
            "idUsuario": row.idUsuario,
            "NombreUsuario": row.Nombre,
            "idMiembro": row.idMiembro,
            "Anime_id": row.Anime_id,
        }
        usuarios_anime_list.append(usuario_anime_dict)

    return usuarios_anime_list

