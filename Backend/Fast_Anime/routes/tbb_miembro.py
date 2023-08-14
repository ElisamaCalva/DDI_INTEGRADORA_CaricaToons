from fastapi import APIRouter, HTTPException
from sqlalchemy import select, column, insert, delete
from config.db import conn
from models.tbb_miembro import miembro
from schemas.tbb_miembro import tbb_miembro

router_miembro = APIRouter()
    
@router_miembro.get('/obtenerMiembros', tags=["Miembros"])
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
    try:
        query = miembro.insert().values(
            Usuario_id=nuevo_miembro.Usuario_id,
            Estatus=nuevo_miembro.Estatus,
            Fecha_Creacion=nuevo_miembro.Fecha_Creacion,
            Fecha_Actualizacion=nuevo_miembro.Fecha_Actualizacion
        )
        result = conn.execute(query)
        nuevo_miembro_id = result.lastrowid
        conn.commit()  # Confirmar la transacción
        return {"message": "Miembro agregado exitosamente", "idMiembro": nuevo_miembro_id}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al agregar el miembro")
    
@router_miembro.put('/editarMiembro/{idMiembro}', tags=["Miembros"])
def editarMiembro(idMiembro: int, miembro_data: tbb_miembro):
    query = miembro.update().where(miembro.c.idMiembro == idMiembro).values(**miembro_data.dict())
    
    try:
        result = conn.execute(query)
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Miembro no encontrado")
        conn.commit()  # Confirmar la transacción
        return {"message": "Miembro editado exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al editar el miembro")

    
@router_miembro.delete('/eliminarMiembrobase/{idMiembro}', tags=["Miembros"])
def eliminarMiembro(idMiembro: int):
    try:
        query = delete(miembro).where(miembro.c.idMiembro == idMiembro)
        result = conn.execute(query)

        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="No existe el miembro ingresado")

        conn.commit()

        res = {
            "status": f"Miembro con ID {idMiembro} eliminado con éxito"
        }
        return res
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al eliminar el miembro")


@router_miembro.delete('/eliminarMiembro/{idMiembro}', tags=["Miembros"])
def desactivarMiembro(idMiembro: int):
    try:
        # Verificar si el miembro existe antes de eliminarlo
        miembro_existente = conn.execute(miembro.select().where(miembro.c.idMiembro == idMiembro)).fetchone()
        if miembro_existente is None:
            raise HTTPException(status_code=404, detail="No existe el miembro ingresado")

        # Actualizar el campo Estatus a False para desactivar el miembro
        query = (
            miembro.update()
            .where(miembro.c.idMiembro == idMiembro)
            .values(Estatus=False)
        )
        conn.execute(query)
        conn.commit()

        res = {
            "status": f"Miembro con ID {idMiembro} desactivado con éxito"
        }
        return res
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al desactivar el miembro")


