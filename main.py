from fastapi import FastAPI
from routes import menu

app = FastAPI()
app.include_router(menu.router)


@app.get("/")
async def root():
    return {"message": "Hello World"}
