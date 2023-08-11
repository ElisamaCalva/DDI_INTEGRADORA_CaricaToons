from fastapi import APIRouter, HTTPException
from sqlalchemy import select
from config.db import conn
from models.tbb_usuario import usuario 
from schemas.tbb_usuario import tbb_usuario

router_usuario = APIRouter()

@router_usuario.get('/obtenerUsuarios', tags=["Usuarios"])
def obtenerUsuarios():
    usuarios_list = []
    query = select(
        usuario.c.idUsuario,
        usuario.c.Nombre,
        usuario.c.Email,
        usuario.c.Contrasenia,
        usuario.c.Nickname,
        usuario.c.Genero,
        usuario.c.Fecha_Nacimiento,
        usuario.c.Estatus,
        usuario.c.Fecha_Creacion,
        usuario.c.Fecha_Actualizacion
    )
    usuarios_tuples = conn.execute(query).fetchall()
    for usuario_tuple in usuarios_tuples:
        usuario_dict = {
            "idUsuario": usuario_tuple.idUsuario,
            "Nombre": usuario_tuple.Nombre,
            "Email": usuario_tuple.Email,
            "Contrasenia": usuario_tuple.Contrasenia,
            "Nickname": usuario_tuple.Nickname,
            "Genero": usuario_tuple.Genero,
            "Fecha_Nacimiento": usuario_tuple.Fecha_Nacimiento,
            "Estatus": usuario_tuple.Estatus,
            "Fecha_Creacion": usuario_tuple.Fecha_Creacion.strftime('%Y-%m-%d') if usuario_tuple.Fecha_Creacion else None,
            "Fecha_Actualizacion": usuario_tuple.Fecha_Actualizacion.strftime('%Y-%m-%d') if usuario_tuple.Fecha_Actualizacion else None,
        }
        usuarios_list.append(usuario_dict)
    return usuarios_list

@router_usuario.post('/agregarUsuario', tags=["Usuarios"])
def agregarUsuario(nuevo_usuario: tbb_usuario):
    try:
        print("Nuevo usuario:", nuevo_usuario.dict())  # Imprime los datos del nuevo usuario para verificar
        query = usuario.insert().values(
            Nombre=nuevo_usuario.Nombre,
            Email=nuevo_usuario.Email,
            Contrasenia=nuevo_usuario.Contrasenia,
            Nickname=nuevo_usuario.Nickname,
            Genero=nuevo_usuario.Genero,
            Fecha_Nacimiento=nuevo_usuario.Fecha_Nacimiento,
            Estatus=nuevo_usuario.Estatus,
            Fecha_Creacion=nuevo_usuario.Fecha_Creacion,
            Fecha_Actualizacion=nuevo_usuario.Fecha_Actualizacion
        )

        result = conn.execute(query)
        nuevo_usuario_id = result.lastrowid
        print("ID del nuevo usuario:", nuevo_usuario_id)  # Imprime el ID del nuevo usuario
        conn.commit()  # Realiza el commit de la transacción

        return {"message": "Usuario agregado exitosamente", "idUsuario": nuevo_usuario_id}
    except Exception as e:
        print("Error al agregar el usuario:", str(e))  # Imprime el error para depuración
        raise HTTPException(status_code=500, detail="Error al agregar el usuario")

@router_usuario.put('/editarUsuario/{idUsuario}', tags=["Usuarios"])
def editarUsuario(idUsuario: int, usuario_data: tbb_usuario):
    try:
        query = (
            usuario
            .update()
            .where(usuario.c.idUsuario == idUsuario)
            .values(
                Nombre=usuario_data.Nombre,
                Email=usuario_data.Email,
                Contrasenia=usuario_data.Contrasenia,
                Nickname=usuario_data.Nickname,
                Genero=usuario_data.Genero,
                Fecha_Nacimiento=usuario_data.Fecha_Nacimiento,
                Estatus=usuario_data.Estatus,
                Fecha_Actualizacion=usuario_data.Fecha_Actualizacion
            )
        )

        result = conn.execute(query)
        if result.rowcount == 0:
            raise HTTPException(status_code=404, detail="Usuario no encontrado")

        conn.commit()  # Realiza el commit de la transacción

        return {"message": "Usuario editado exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al editar el usuario: " + str(e))

@router_usuario.delete('/eliminarUsuario/{idUsuario}', tags=["Usuarios"])
def eliminarUsuario(idUsuario: int):
    try:
        # Verificar si el usuario existe antes de eliminarlo
        usuario_existente = conn.execute(usuario.select().where(usuario.c.idUsuario == idUsuario)).first()
        if usuario_existente is None:
            raise HTTPException(status_code=404, detail="El usuario no existe")

        # Eliminar el usuario
        query = usuario.delete().where(usuario.c.idUsuario == idUsuario)
        conn.execute(query)
        conn.commit()

        return {"message": f"Usuario con ID {idUsuario} eliminado exitosamente"}
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error al eliminar el usuario: " + str(e))
