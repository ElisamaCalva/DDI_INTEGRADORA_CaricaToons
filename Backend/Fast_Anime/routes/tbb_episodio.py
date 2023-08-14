from fastapi import APIRouter, HTTPException
from config.db import conn
from sqlalchemy import select, update, delete
from models.tbb_episodio import episodio 
from schemas.tbb_episodio import tbb_episodio

router_episodio = APIRouter()

# Ruta GET para obtener todos los episodios
@router_episodio.get('/episodio', tags=["Episodio"])
def obtenerEpisodios():
    episodios_list_dicts = []
    query = select(
        episodio.c.idEpisodio,
        episodio.c.Nombre,
        episodio.c.Estreno,
        episodio.c.idTemporada,
        episodio.c.idAnime,
        episodio.c.Fecha_Creacion,
        episodio.c.Fecha_Actualizacion,
    )
    
    episodios_list_tuples = conn.execute(query).fetchall()
    for episodio_tuple in episodios_list_tuples:
        episodio_dict = {
            "idEpisodio": episodio_tuple.idEpisodio,
            "Nombre": episodio_tuple.Nombre,
            "Estreno": episodio_tuple.Estreno.strftime('%Y-%m-%d') if episodio_tuple.Estreno else None,
            "idTemporada": episodio_tuple.idTemporada,
            "idAnime": episodio_tuple.idAnime,
            "Fecha_Creacion": episodio_tuple.Fecha_Creacion.strftime('%Y-%m-%d') if episodio_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": episodio_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d') if episodio_tuple.Fecha_Actualizacion else None,
        }
        episodios_list_dicts.append(episodio_dict)
    
    return episodios_list_dicts


@router_episodio.post('/episodio', tags=["Episodio"])
def insertEpisodio(episodio_data: tbb_episodio):
    query = episodio.insert().values(
        Nombre=episodio_data.Nombre,
        Estreno=episodio_data.Estreno,
        idTemporada=episodio_data.idTemporada,
        idAnime=episodio_data.idAnime,
        Fecha_Creacion=episodio_data.Fecha_Creacion,
        Fecha_Actualizacion=episodio_data.Fecha_Actualizacion,
    )
    conn.execute(query)
    conn.commit()
    res = {
        "status": "El episodio ha sido insertado con éxito"
    }
    return res

@router_episodio.get('/episodio/{idEpisodio}', tags=["Episodio"])
def obtenerEpisodioPorId(idEpisodio: int):
    query = select(
        episodio.c.Nombre,
        episodio.c.Estreno,
        episodio.c.idTemporada,
        episodio.c.idAnime,
        episodio.c.Fecha_Creacion,
        episodio.c.Fecha_Actualizacion,
    ).where(episodio.c.idEpisodio == idEpisodio)

    episodio_tuple = conn.execute(query).first()

    if episodio_tuple:
        episodio_dict = {
            "Nombre": episodio_tuple.Nombre,
            "Estreno": episodio_tuple.Estreno.strftime('%Y-%m-%d') if episodio_tuple.Estreno else None,
            "idTemporada": episodio_tuple.idTemporada,
            "idAnime": episodio_tuple.idAnime,
            "Fecha_Creacion": episodio_tuple.Fecha_Creacion.strftime('%Y-%m-%d') if episodio_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": episodio_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d') if episodio_tuple.Fecha_Actualizacion else None,
        }
        return episodio_dict
    else:
        raise HTTPException(status_code=404, detail="Episodio no encontrado")

@router_episodio.put('/episodio/{idEpisodio}', tags=["Episodio"])
def actualizarEpisodio(idEpisodio: int, episodio_data: tbb_episodio):
    query = (
        episodio
        .update()
        .where(episodio.c.idEpisodio == idEpisodio)
        .values(
            Nombre=episodio_data.Nombre,
            Estreno=episodio_data.Estreno,
            idTemporada=episodio_data.idTemporada,
            idAnime=episodio_data.idAnime,
            Fecha_Actualizacion=episodio_data.Fecha_Actualizacion
        )
    )

    try:
        result = conn.execute(query)
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Episodio no encontrado")

        conn.commit()  # Realiza el commit de la transacción

        return {"message": "Episodio editado exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al editar el episodio: " + str(e))


@router_episodio.delete('/Eliminarbase/{idEpisodio}', tags=["Episodio"])
def eliminarEpisodio(idEpisodio: int):
    # Verificar si el episodio existe antes de eliminarlo
    episodio_existente = conn.execute(episodio.select().where(episodio.c.idEpisodio == idEpisodio))
    if episodio_existente is None:
        raise HTTPException(status_code=404, detail="El episodio no existe")

    # Eliminar el episodio
    query = episodio.delete().where(episodio.c.idEpisodio == idEpisodio)
    conn.execute(query)
    conn.commit()

    return {"message": f"Episodio con ID {idEpisodio} eliminado exitosamente"}

@router_episodio.delete('/episodio/{idEpisodio}', tags=["Episodio"])
def eliminarEpisodio(idEpisodio: int):
    # Verificar si el episodio existe antes de eliminarlo
    episodio_existente = conn.execute(episodio.select().where(episodio.c.idEpisodio == idEpisodio)).fetchone()
    if episodio_existente is None:
        raise HTTPException(status_code=404, detail="El episodio no existe")

    # Actualizar el campo Estatus_Anime a False para desactivar el episodio
    query = (
        episodio.update()
        .where(episodio.c.idEpisodio == idEpisodio)
        .values(Estatus_Anime=False)
    )
    conn.execute(query)
    conn.commit()

    return {"message": f"Episodio con ID {idEpisodio} desactivado exitosamente"}
