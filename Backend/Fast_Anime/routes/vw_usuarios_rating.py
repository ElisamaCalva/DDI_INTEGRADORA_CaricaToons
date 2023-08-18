from fastapi import APIRouter, Query
from sqlalchemy import text
from config.db import conn

router_vw_usuarios_rating = APIRouter()

@router_vw_usuarios_rating.get('/obtenerUsuariosRating', tags=["Usuarios Rating"])
def obtenerUsuariosRating(skip: int = Query(0, description="Número de registros para saltar"),
                          limit: int = Query(10, description="Número máximo de registros a devolver")):
    query = text("""
        SELECT 
            `u`.`Nombre` AS `Nombre usuario`,
            `r`.`Calificacion` AS `Calificacion`,
            `a`.`Nombre` AS `Anime`
        FROM
            (((`tbb_usuario` `u`
            JOIN `tbb_miembro` `m` ON ((`u`.`idUsuario` = `m`.`idMiembro`)))
            JOIN `tbc_rating` `r` ON ((`r`.`Miembro_id` = `m`.`idMiembro`)))
            JOIN `tbb_anime` `a` ON ((`r`.`Anime_id` = `a`.`idAnime`)))
        LIMIT :limit OFFSET :skip
    """)

    result = conn.execute(query, {"limit": limit, "skip": skip})
    usuarios_rating_list = result.fetchall()

    usuarios_rating_list_dicts = []
    for row in usuarios_rating_list:
        usuario_rating_dict = {
            "Nombre usuario": row[0],
            "Calificacion": row[1],
            "Anime": row[2],
        }
        usuarios_rating_list_dicts.append(usuario_rating_dict)

    return usuarios_rating_list_dicts
