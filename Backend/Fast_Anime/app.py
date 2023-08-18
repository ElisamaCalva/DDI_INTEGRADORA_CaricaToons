from fastapi import FastAPI
from routes.tbb_anime import router
from routes.tbc_anime_genero import router_anime_genero
from routes.tbb_genero import router_genero
from routes.tbb_episodio import router_episodio
from routes.tbb_temporada import router_temporada
from routes.tbb_miembro import router_miembro
from routes.tbb_origen import router_origen
from routes.tbb_usuario import router_usuario
from routes.tbc_lista_animes import router_lista_animes
from routes.tbc_rating import router_rating
from routes.tbi_bitacora import router_bitacora
from routes.join import router_join
from routes.joinepisodios import router_join_episodios
from routes.vw_usuarios_rating import router_vw_usuarios_rating
from routes.recomendacion import router_recomendacion_animes

app = FastAPI()

app.include_router(router)
app.include_router(router_anime_genero)
app.include_router(router_genero)
app.include_router(router_episodio)
app.include_router(router_temporada)
app.include_router(router_miembro)
app.include_router(router_origen)
app.include_router(router_usuario)
app.include_router(router_lista_animes)
app.include_router(router_rating)
app.include_router(router_join)
app.include_router(router_bitacora)
app.include_router(router_join_episodios)
app.include_router(router_vw_usuarios_rating)
app.include_router(router_recomendacion_animes)