from typing import List
from sqlalchemy.orm import Session
from fastapi import APIRouter, Depends, HTTPException, status
from database import SessionLocal
import schemas
import crud

router = APIRouter(
    prefix="/menu"
)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@router.get("/all", response_model = List[schemas.MenuItemModel])
def get_menu(db: Session = Depends(get_db)):
    menu = crud.get_menu(db)
    return menu