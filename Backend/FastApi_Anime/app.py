from fastapi import FastAPI
from routes.anime import router
app = FastAPI()
app.include_router(router)