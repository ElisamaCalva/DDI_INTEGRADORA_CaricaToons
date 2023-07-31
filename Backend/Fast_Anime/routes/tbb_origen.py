from fastapi import APIRouter, HTTPException
from sqlalchemy import select, update, insert
from config.db import conn
from models.tbb_origen import origen
from schemas.tbb_origen import tbb_origen


router_origen = APIRouter()

@router_origen.get('/obtenerOrigenes', tags=["Origenes"])
def obtenerOrigenes():
    origenes_list = []
    query = select(
        origen.c.idOrigen,
        origen.c.Autor,
        origen.c.Nombre,
        origen.c.Tipo,
        origen.c.idAnime,
        origen.c.Estatus_Anime,
        origen.c.Fecha_Creacion,
        origen.c.Fecha_Actualizacion
    )
    origenes_tuples = conn.execute(query).fetchall()
    for origen_tuple in origenes_tuples:
        origen_dict = {
            "idOrigen": origen_tuple.idOrigen,
            "Autor": origen_tuple.Autor,
            "Nombre": origen_tuple.Nombre,
            "Tipo": origen_tuple.Tipo,
            "idAnime": origen_tuple.idAnime,
            "Estatus_Anime": origen_tuple.Estatus_Anime,
            "Fecha_Creacion": origen_tuple.Fecha_Creacion.strftime('%Y-%m-%d') if origen_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": origen_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d') if origen_tuple.Fecha_Actualizacion else None,
        }
        origenes_list.append(origen_dict)
    return origenes_list


@router_origen.post('/agregarOrigen', tags=["Origenes"])
def agregarOrigen(nuevo_origen: tbb_origen):
    query = insert(origen).values(
        Autor=nuevo_origen.Autor,
        Nombre=nuevo_origen.Nombre,
        Tipo=nuevo_origen.Tipo,
        idAnime=nuevo_origen.idAnime,  # Aquí usamos el valor de la clave foránea
        Estatus_Anime=nuevo_origen.Estatus_Anime,
        Fecha_Creacion=nuevo_origen.Fecha_Creacion,
        Fecha_Actualizacion=nuevo_origen.Fecha_Actualizacion
    ).returning(origen.c.idOrigen)

    try:
        result = conn.execute(query)
        nuevo_origen_id = result.fetchone()[0]
        return {"message": "Origen agregado exitosamente", "idOrigen": nuevo_origen_id}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al agregar el origen")

# Ruta para editar un origen existente
@router_origen.put('/editarOrigen/{idOrigen}', tags=["Origenes"])
def editarOrigen(idOrigen: int, origen_data: tbb_origen):
    query = update(origen).where(origen.c.idOrigen == idOrigen).values(**origen_data.dict())

    try:
        result = conn.execute(query)
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Origen no encontrado")
        return {"message": "Origen editado exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al editar el origen")