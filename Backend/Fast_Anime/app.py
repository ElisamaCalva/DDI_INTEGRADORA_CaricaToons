from fastapi import FastAPI
from routes.tbb_anime import router
from routes.tbc_anime_genero import router_anime_genero
app = FastAPI()
app.include_router(router)
app.include_router(router_anime_genero)
