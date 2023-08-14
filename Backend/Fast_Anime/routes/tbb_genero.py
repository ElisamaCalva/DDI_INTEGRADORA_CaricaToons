from fastapi import APIRouter, HTTPException
from config.db import conn
from models.tbb_genero import genero
from schemas.tbb_genero import tbb_genero

router_genero = APIRouter()

# Ruta GET para obtener todos los registros
@router_genero.get('/genero', operation_id='obtenerGeneros', tags=["Genero"])
def obtenerGeneros():
    generos_list_dicts = []
    generos_list_tuples = conn.execute(genero.select()).fetchall()
    for genero_tuple in generos_list_tuples:
        genero_dict = {
            "idGenero": genero_tuple.idGenero,
            "Nombre": genero_tuple.Nombre,
            "Subgenero": genero_tuple.Subgenero,
            "Estatus": genero_tuple.Estatus,
            "Fecha_Creacion": genero_tuple.Fecha_Creacion.strftime('%Y-%m-%d') if genero_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": genero_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d') if genero_tuple.Fecha_Actualizacion else None,
        }
        generos_list_dicts.append(genero_dict)
    return generos_list_dicts

# Ruta POST para crear un nuevo registro
@router_genero.post('/genero', tags=["Genero"])
def insertGenero(genero_data: tbb_genero):
    query = genero.insert().values(**genero_data.dict())
    conn.execute(query)
    conn.commit()
    res = {
        "status": "El género ha sido insertado con éxito"
    }
    return res

# Ruta GET para obtener un registro por su ID
@router_genero.get('/genero/{idGenero}', tags=["Genero"])
def obtenerGeneroPorId(idGenero: int):
    genero_tuple = conn.execute(genero.select().where(genero.c.idGenero == idGenero)).first()
    if genero_tuple is not None:
        genero_dict = {
            "idGenero": genero_tuple.idGenero,
            "Nombre": genero_tuple.Nombre,
            "Subgenero": genero_tuple.Subgenero,
            "Estatus": genero_tuple.Estatus,
            "Fecha_Creacion": genero_tuple.Fecha_Creacion.strftime('%Y-%m-%d') if genero_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": genero_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d') if genero_tuple.Fecha_Actualizacion else None,
        }
        return genero_dict
    else:
        raise HTTPException(status_code=404, detail="No existe el género ingresado")

# Ruta PUT para actualizar un registro existente
@router_genero.put('/genero/{idGenero}', tags=["Genero"])
def actualizarGeneroPorId(idGenero: int, genero_data: tbb_genero):
    genero_tuple = conn.execute(genero.select().where(genero.c.idGenero == idGenero)).first()
    if genero_tuple is None:
        raise HTTPException(status_code=404, detail="No existe el género ingresado")

    query = genero.update().values(**genero_data.dict()).where(genero.c.idGenero == idGenero)
    conn.execute(query)
    conn.commit()
    res = {
        "status": f"Género con ID {idGenero} actualizado con éxito"
    }
    return res

# Ruta DELETE para eliminar un registro por su ID
@router_genero.delete('/generobase/{idGenero}', tags=["Genero"])
def eliminarGenero(idGenero: int):
    genero_tuple = conn.execute(genero.select().where(genero.c.idGenero == idGenero)).first()
    if genero_tuple is None:
        raise HTTPException(status_code=404, detail="No existe el género ingresado")

    query = genero.delete().where(genero.c.idGenero == idGenero)
    conn.execute(query)
    conn.commit()

    res = {
        "status": f"Género con ID {idGenero} eliminado con éxito"
    }
    return res

@router_genero.delete('/genero/{idGenero}', tags=["Genero"])
def desactivarGenero(idGenero: int):
    """
    Desactiva un género por su ID (cambia Estatus a False).
    """
    genero_tuple = conn.execute(genero.select().where(genero.c.idGenero == idGenero)).first()
    if genero_tuple is None:
        raise HTTPException(status_code=404, detail="No existe el género ingresado")

    # Actualizar el campo Estatus a False para desactivar el género
    query = (
        genero.update()
        .where(genero.c.idGenero == idGenero)
        .values(Estatus=False)
    )
    conn.execute(query)
    conn.commit()

    res = {
        "status": f"Género con ID {idGenero} desactivado con éxito"
    }
    return res
