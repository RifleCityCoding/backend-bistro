from sqlalchemy.orm import Session, aliased, joinedload
from models import Menu, MenuConnection, Category

def get_menu(db: Session):
    menu_query = (
        db.query(Menu).all()
    )

    return menu_query