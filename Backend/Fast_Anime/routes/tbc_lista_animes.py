from fastapi import APIRouter, HTTPException
from sqlalchemy import select, update, insert
from config.db import conn
from models.tbc_lista_animes import lista_animes
from schemas.tbc_lista_animes import tbc_lista_animes
from datetime import date

router_lista_animes = APIRouter()

@router_lista_animes.get('/obtenerListaAnimes', tags=["Lista Animes"])
def obtenerListaAnimes():
    lista_animes_list = []
    query = select(
        lista_animes.c.idLista_Animes,
        lista_animes.c.Anime_id,
        lista_animes.c.Miembro_id,
        lista_animes.c.Favorito,
        lista_animes.c.Pendiente,
        lista_animes.c.Estatus,
        lista_animes.c.Fecha_Creacion,
        lista_animes.c.Fecha_Actualizacion
    )
    lista_animes_tuples = conn.execute(query).fetchall()
    for lista_animes_tuple in lista_animes_tuples:
        lista_animes_dict = {
            "idLista_Animes": lista_animes_tuple.idLista_Animes,
            "Anime_id": lista_animes_tuple.Anime_id,
            "Miembro_id": lista_animes_tuple.Miembro_id,
            "Favorito": lista_animes_tuple.Favorito,
            "Pendiente": lista_animes_tuple.Pendiente,
            "Estatus": lista_animes_tuple.Estatus,
            "Fecha_Creacion": lista_animes_tuple.Fecha_Creacion.strftime('%Y-%m-%d') if lista_animes_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": lista_animes_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d') if lista_animes_tuple.Fecha_Actualizacion else None,
        }
        lista_animes_list.append(lista_animes_dict)
    return lista_animes_list

@router_lista_animes.post('/agregarAnimeALista', tags=["Lista Animes"])
def agregarAnimeALista(anime_id: int, miembro_id: int, favorito: bool, pendiente: bool):
    try:
        query = (
            lista_animes
            .insert()
            .values(
                Anime_id=anime_id,
                Miembro_id=miembro_id,
                Favorito=favorito,
                Pendiente=pendiente,
                Estatus=True,
                Fecha_Creacion=date.today(),
                Fecha_Actualizacion=date.today()
            )
        )

        result = conn.execute(query)
        new_id = result.lastrowid
        conn.commit()

        return {"message": "Anime agregado a la lista exitosamente", "idLista_Animes": new_id}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al agregar el anime a la lista: " + str(e))

@router_lista_animes.put('/editarAnimeEnLista/{idLista_Animes}', tags=["Lista Animes"])
def editarAnimeEnLista(idLista_Animes: int, favorito: bool, pendiente: bool):
    try:
        query = (
            update(lista_animes)
            .where(lista_animes.c.idLista_Animes == idLista_Animes)
            .values(
                Favorito=favorito,
                Pendiente=pendiente,
                Estatus=True,
                Fecha_Actualizacion=date.today()
            )
        )

        result = conn.execute(query)
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Anime en lista no encontrado")

        conn.commit()

        return {"message": "Información del anime en lista actualizada exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al actualizar la información del anime en lista: " + str(e))
    
@router_lista_animes.delete('/eliminarAnimeDeListabase/{idLista_Animes}', tags=["Lista Animes"])
def eliminarAnimeDeLista(idLista_Animes: int):
    try:
        query = lista_animes.delete().where(lista_animes.c.idLista_Animes == idLista_Animes)
        result = conn.execute(query)

        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Anime en lista no encontrado")

        conn.commit()

        return {"message": "Anime eliminado de la lista exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al eliminar el anime de la lista: " + str(e))

@router_lista_animes.put('/cambiarEstatusAnimeEnLista/{idLista_Animes}', tags=["Lista Animes"])
def cambiarEstatusAnimeEnLista(idLista_Animes: int, activar: bool):
    try:
        query = (
            update(lista_animes)
            .where(lista_animes.c.idLista_Animes == idLista_Animes)
            .values(Estatus=activar)
        )

        result = conn.execute(query)
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Anime en lista no encontrado")

        conn.commit()

        if activar:
            message = "Anime activado en la lista exitosamente"
        else:
            message = "Anime desactivado en la lista exitosamente"

        return {"message": message}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al cambiar el estatus del anime en la lista: " + str(e))
