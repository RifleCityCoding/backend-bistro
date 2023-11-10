from typing import List
from typing import Optional
from sqlalchemy import ForeignKey
from sqlalchemy import String
from sqlalchemy.orm import DeclarativeBase
from sqlalchemy.orm import Mapped
from sqlalchemy.orm import mapped_column
from sqlalchemy.orm import relationship
from database import Base
from sqlalchemy import Boolean, Column, ForeignKey, Integer, String, Text
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column, relationship

class Base(DeclarativeBase):
    pass

class Menu(Base):
    __tablename__ = "menu"

    menu_item_id: Mapped[int] = mapped_column(primary_key=True, index=True)
    title: Mapped[str] = Column(String, default="Title")
    description: Mapped[str] = Column(Text, default="Description")
    price: Mapped[int] = Column(String, default="Price")
    spice_level: Mapped[int] = Column(String, default="Spiciness")

    def __repr__(self) -> str:
        return f"MenuItem(id={self.id!r}, title={self.title!r}, description={self.description!r}, price={self.price!r}, spice={self.spice_level!r})"
    

class MenuConnection(Base):
    __tablename__ = "menuconnect"

    id: Mapped[int] = mapped_column(primary_key=True, index=True)
    category_id: Mapped[int] = mapped_column(ForeignKey("category.category_pivot_id"))
    menu_id: Mapped[int] = mapped_column(ForeignKey("menu.menu_pivot_id"))

    def __repr__(self) -> str:
        return f"MenuItem(id={self.id!r}, category_id={self.category_id!r}, menu_id={self.menu_id})"
    
class Category(Base):
    __tablename__ = "category"

    category_id: Mapped[int] = mapped_column(primary_key=True, index=True)
    menu_type: Mapped[str] = mapped_column(String(30))