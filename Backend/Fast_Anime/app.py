from fastapi import FastAPI
from routes.tbb_anime import router
from routes.tbc_anime_genero import router_anime_genero
from routes.tbb_genero import router_genero
from routes.tbb_episodio import router_episodio
from routes.tbb_temporada import router_temporada
from routes.tbb_miembro import router_miembro
from routes.tbb_origen import router_origen
app = FastAPI()
app.include_router(router)
app.include_router(router_anime_genero)
app.include_router(router_genero)
app.include_router(router_episodio)
app.include_router(router_temporada)
app.include_router(router_miembro)
app.include_router(router_origen)