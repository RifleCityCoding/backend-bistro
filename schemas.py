from typing import Optional

from pydantic import BaseModel

class Schema(BaseModel):
    pass

class MenuCategoryModel(Schema):
    id: int
    menu_type: str

class MenuConnectModel(Schema):
    id: int
    category_pivot_id: int
    menu_pivot_id: int

class MenuItemModel(Schema):
    menu_item_id: int
    title: str | None
    description: str | None
    price: float
    spice_level: int
    
    def __init__(self, **data):
        super().__init__(**data)
        self.title = self.title or []

    class Config:
        from_attributes = True
