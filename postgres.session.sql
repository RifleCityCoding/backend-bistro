
-- CREATE TABLE Menu (
--     menu_item_id serial PRIMARY KEY,
--     title VARCHAR(255),
--     description TEXT,
--     price DECIMAL(10, 2),
--     spice_level INTEGER
-- );


-- CREATE TABLE Category (
--     category_id serial PRIMARY KEY,
--     menu_type VARCHAR(255)
-- );


-- CREATE TABLE MenuConnect (
--     id serial PRIMARY KEY,
--     category_pivot_id INTEGER REFERENCES Category(category_id),
--     menu_pivot_id INTEGER REFERENCES Menu(menu_item_id)
-- );


-- INSERT INTO Category (menu_type) VALUES
--     ('Appetizers'),
--     ('Entrees'),
--     ('Drinks'),
--     ('Desserts');


-- INSERT INTO Menu (title, description, price, spice_level) VALUES
--     ('Caprese Salad', 'A harmonious medley of the freshest ingredients...', 12.99, 1),
--     ('Bruschetta', 'Transport your senses to the heart of Italy with our exquisite bruschetta...', 10.99, 1),
--     ('Spaghetti Carbonara', 'An ode to the art of pasta, our Spaghetti Carbonara is a culinary masterpiece...', 16.99, 2),
--     ('Chicken Parmesan', 'A time-honored Italian classic, our Chicken Parmesan showcases a tender, breaded and fried chicken breast...', 18.99, 2),
--     ('Ravioli with Sage Butter', 'Our house-made ravioli is a work of culinary art...', 14.99, 1),
--     ('Chianti Classico', 'Savor a glass of Chianti Classico, a timeless Italian red wine...', 28.99, 1),
--     ('Limoncello Spritz', 'Immerse yourself in the enchanting flavors of Italy with our Limoncello Spritz...', 9.99, 1),
--     ('Espresso', 'Finish your meal with an Italian classic – a shot of rich and robust espresso...', 4.99, 1),
--     ('Tiramisu', 'Dive into the world of indulgence with our Tiramisu...', 9.99, 2),
--     ('Cannoli', 'The Cannoli is a sweet treasure, featuring delicate pastry shells that shatter upon the first bite...', 7.99, 1);


-- INSERT INTO MenuConnect (category_pivot_id, menu_pivot_id) VALUES
--     (1, 1), -- Caprese Salad - Appetizers
--     (1, 2), -- Bruschetta - Appetizers
--     (2, 3), -- Spaghetti Carbonara - Entrees
--     (2, 4), -- Chicken Parmesan - Entrees
--     (2, 5), -- Ravioli with Sage Butter - Entrees
--     (3, 6), -- Chianti Classico - Drinks
--     (3, 7), -- Limoncello Spritz - Drinks
--     (3, 8), -- Espresso - Drinks
--     (4, 9), -- Tiramisu - Desserts
--     (4, 10); -- Cannoli - Desserts
