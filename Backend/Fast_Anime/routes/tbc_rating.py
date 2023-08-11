from fastapi import APIRouter, HTTPException
from sqlalchemy import select, insert, update, delete
from config.db import conn
from models.tbc_rating import rating
from schemas.tbc_rating import tbc_rating

router_rating = APIRouter()

@router_rating.get('/obtenerCalificaciones', tags=["Rating"])
def obtenerCalificaciones():
    calificaciones_list = []
    query = select(
        rating.c.idRating,
        rating.c.Calificacion,
        rating.c.Anime_id,
        rating.c.Miembro_id,
        rating.c.Estatus,
        rating.c.Fecha_Creacion,
        rating.c.Fecha_Actualizacion
    )
    calificaciones_tuples = conn.execute(query).fetchall()
    for calificacion_tuple in calificaciones_tuples:
        calificacion_dict = {
            "idRating": calificacion_tuple.idRating,
            "Calificacion": calificacion_tuple.Calificacion,
            "Anime_id": calificacion_tuple.Anime_id,
            "Miembro_id": calificacion_tuple.Miembro_id,
            "Estatus": calificacion_tuple.Estatus,
            "Fecha_Creacion": calificacion_tuple.Fecha_Creacion.strftime('%Y-%m-%d') if calificacion_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": calificacion_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d') if calificacion_tuple.Fecha_Actualizacion else None,
        }
        calificaciones_list.append(calificacion_dict)
    return calificaciones_list

@router_rating.post('/agregarCalificacion', tags=["Rating"])
def agregarCalificacion(calificacion: tbc_rating):
    try:
        # Crear un diccionario con los valores de la calificación para insertar
        values = {
            "Calificacion": calificacion.Calificacion,
            "Anime_id": calificacion.Anime_id,
            "Miembro_id": calificacion.Miembro_id,
            "Estatus": True,
            "Fecha_Creacion": calificacion.Fecha_Creacion,
            "Fecha_Actualizacion": calificacion.Fecha_Actualizacion
        }

        # Ejecutar la consulta de inserción en la tabla de la base de datos
        query = insert(rating).values(values)
        result = conn.execute(query)
        id_rating = result.lastrowid
        conn.commit()

        return {"message": "Calificación agregada exitosamente", "idRating": id_rating}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al agregar la calificación: " + str(e))

@router_rating.put('/editarCalificacion/{idRating}', tags=["Rating"])
def editarCalificacion(idRating: int, calificacion: tbc_rating):
    try:
        # Crear un diccionario con los valores actualizados de la calificación
        values = {
            "Calificacion": calificacion.Calificacion,
            "Anime_id": calificacion.Anime_id,
            "Miembro_id": calificacion.Miembro_id,
            "Estatus": True,
            "Fecha_Actualizacion": calificacion.Fecha_Actualizacion
        }

        # Crear la consulta para actualizar la calificación
        query = (
            update(rating)
            .where(rating.c.idRating == idRating)
            .values(values)
        )

        result = conn.execute(query)
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Calificación no encontrada")

        conn.commit()

        return {"message": "Calificación actualizada exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al actualizar la calificación: " + str(e))
    
@router_rating.delete('/eliminarCalificacion/{idRating}', tags=["Rating"])
def eliminarCalificacion(idRating: int):
    try:
        # Crear la consulta para eliminar la calificación
        query = (
            delete(rating)
            .where(rating.c.idRating == idRating)
        )

        result = conn.execute(query)
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Calificación no encontrada")

        conn.commit()

        return {"message": "Calificación eliminada exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al eliminar la calificación: " + str(e))