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

# Ruta GET para obtener un episodio por su ID
@router_episodio.get('/episodio/{idEpisodio}', tags=["Episodio"])
def obtenerEpisodioPorId(idEpisodio: int):
    query = select([episodio]).where(episodio.c.idEpisodio == idEpisodio)
    episodio_tuple = conn.execute(query).first()
    if episodio_tuple is not None:
        episodio_dict = {
            "idEpisodio": episodio_tuple.idEpisodio,
            "Nombre": episodio_tuple.Nombre,
            "Estreno": episodio_tuple.Estreno.strftime('%Y-%m-%d') if episodio_tuple.Estreno else None,
            "idTemporada": episodio_tuple.idTemporada,
            "idAnime": episodio_tuple.idAnime,
            "Estatus": episodio_tuple.Estatus,
            "Fecha_Creacion": episodio_tuple.Fecha_Creacion.strftime('%Y-%m-%d') if episodio_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": episodio_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d') if episodio_tuple.Fecha_Actualizacion else None,
        }
        return episodio_dict
    else:
        raise HTTPException(status_code=404, detail="No existe el episodio ingresado")

# Ruta PUT para actualizar un episodio existente
@router_episodio.put('/episodio/{idEpisodio}', tags=["Episodio"])
def actualizarEpisodioPorId(idEpisodio: int, episodio_data: tbb_episodio):
    query = select([episodio]).where(episodio.c.idEpisodio == idEpisodio)
    episodio_tuple = conn.execute(query).first()
    if episodio_tuple is None:
        raise HTTPException(status_code=404, detail="No existe el episodio ingresado")

    query = update(episodio).values(**episodio_data.dict()).where(episodio.c.idEpisodio == idEpisodio)
    conn.execute(query)
    conn.commit()
    res = {
        "status": f"Episodio con ID {idEpisodio} actualizado con éxito"
    }
    return res

# Ruta DELETE para eliminar un episodio por su ID
@router_episodio.delete('/episodio/{idEpisodio}', tags=["Episodio"])
def eliminarEpisodio(idEpisodio: int):
    query = select([episodio]).where(episodio.c.idEpisodio == idEpisodio)
    episodio_tuple = conn.execute(query).first()
    if episodio_tuple is None:
        raise HTTPException(status_code=404, detail="No existe el episodio ingresado")

    query = delete(episodio).where(episodio.c.idEpisodio == idEpisodio)
    conn.execute(query)
    conn.commit()

    res = {
        "status": f"Episodio con ID {idEpisodio} eliminado con éxito"
    }
    return res