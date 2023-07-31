from fastapi import APIRouter, HTTPException
from sqlalchemy import select, column, insert, delete
from config.db import conn
from models.tbb_miembro import miembro
from schemas.tbb_miembro import tbb_miembro

router_miembro = APIRouter()

@router_miembro.get('/obtenerMiembros', response_model=list[tbb_miembro], tags=["Miembros"])
def obtenerMiembros():
    miembros_list = []

    # Corrección en la consulta select
    query = select(
        column('idMiembro'),
        column('Usuario_id'),
        column('Estatus'),
        column('Fecha_Creacion'),
        column('Fecha_Actualizacion')
    ).select_from(miembro)

    miembros_tuples = conn.execute(query).fetchall()
    for miembro_tuple in miembros_tuples:
        miembro_dict = {
            "idMiembro": miembro_tuple.idMiembro,
            "Usuario_id": miembro_tuple.Usuario_id,
            "Estatus": miembro_tuple.Estatus,
            "Fecha_Creacion": miembro_tuple.Fecha_Creacion.strftime('%Y-%m-%d') if miembro_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": miembro_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d') if miembro_tuple.Fecha_Actualizacion else None,
        }
        miembros_list.append(miembro_dict)
    return miembros_list

@router_miembro.post('/agregarMiembro', tags=["Miembros"])
def agregarMiembro(nuevo_miembro: tbb_miembro):
    query = insert(miembro).values(
        Usuario_id=nuevo_miembro.Usuario_id,
        Estatus=nuevo_miembro.Estatus,
        Fecha_Creacion=nuevo_miembro.Fecha_Creacion,
        Fecha_Actualizacion=nuevo_miembro.Fecha_Actualizacion
    )

    try:
        result = conn.execute(query)
        nuevo_miembro_id = result.lastrowid
        return {"message": "Miembro agregado exitosamente", "idMiembro": nuevo_miembro_id}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al agregar el miembro")
    
@router_miembro.delete('/eliminarMiembro/{idMiembro}', tags=["Miembros"])
def eliminarMiembro(idMiembro: int):
    # Crear el objeto de cláusula WHERE para seleccionar el miembro con el idMiembro dado
    condicion = miembro.c.idMiembro == idMiembro

    # Crear el objeto de sentencia DELETE
    query = delete(miembro).where(condicion)

    try:
        result = conn.execute(query)
        # Verificar si se eliminó algún miembro
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="No existe el miembro con el idMiembro dado")
        
        return {"message": "Miembro eliminado exitosamente", "idMiembro": idMiembro}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al eliminar el miembro")