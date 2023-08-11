from fastapi import APIRouter
from sqlalchemy import select
from config.db import conn
from models.tbi_bitacora import bitacora
from schemas.tbi_bitacora import tbi_bitacora

router_bitacora = APIRouter()

@router_bitacora.get('/obtenerBitacora', tags=["Bitácora"])
def obtenerBitacora():
    bitacora_list = []
    query = select(
        bitacora.c.iD,
        bitacora.c.usuario_bd,
        bitacora.c.tabla,
        bitacora.c.operacion,
        bitacora.c.descripcion_completa,
        bitacora.c.fecha_hora,
        bitacora.c.estatus
    )
    bitacora_tuples = conn.execute(query).fetchall()
    for bitacora_tuple in bitacora_tuples:
        bitacora_dict = {
            "iD": bitacora_tuple.iD,
            "usuario_bd": bitacora_tuple.usuario_bd,
            "tabla": bitacora_tuple.tabla,
            "operacion": bitacora_tuple.operacion,
            "descripcion_completa": bitacora_tuple.descripcion_completa,
            "fecha_hora": bitacora_tuple.fecha_hora.strftime('%Y-%m-%d %H:%M:%S') if bitacora_tuple.fecha_hora else None,
            "estatus": bitacora_tuple.estatus
        }
        bitacora_list.append(bitacora_dict)
    return bitacora_list
