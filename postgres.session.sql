
CREATE TABLE Menu (
    menu_item_id serial PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    price DECIMAL(10, 2),
    spice_level INTEGER
);


CREATE TABLE Category (
    category_id serial PRIMARY KEY,
    menu_type VARCHAR(255)
);


CREATE TABLE MenuConnect (
    id serial PRIMARY KEY,
    category_pivot_id INTEGER REFERENCES Category(category_id),
    menu_pivot_id INTEGER REFERENCES Menu(menu_item_id)
);


INSERT INTO Category (menu_type) VALUES
    ('Appetizers'),
    ('Entrees'),
    ('Drinks'),
    ('Desserts');


INSERT INTO Menu (title, description, price, spice_level) VALUES
    ('Caprese Salad', 'A harmonious medley of the freshest ingredients, featuring creamy slices of buffalo mozzarella, heirloom tomatoes at the peak of ripeness, fragrant basil leaves, and a drizzle of aged balsamic glaze. This vibrant salad not only tantalizes your taste buds but also celebrates the simplicity of Italian cuisine in every bite.', 12.99, 1),
    ('Bruschetta', 'Transport your senses to the heart of Italy with our exquisite bruschetta. We start with rustic Italian bread, toasted to perfection, then generously adorned with ripe, juicy tomatoes, garlic minced to perfection, aromatic basil, and a drizzle of the finest extra-virgin olive oil. It's a tantalizing bite of the Mediterranean in every crunch.', 10.99, 1),
    ('Spaghetti Carbonara', 'An ode to the art of pasta, our Spaghetti Carbonara is a culinary masterpiece. Al dente spaghetti is delicately coated in a luscious sauce crafted from fresh eggs, aged Pecorino Romano cheese, crispy pancetta, and a pinch of freshly ground black pepper. Each forkful offers a luxurious blend of creamy and savory flavors.', 16.99, 2),
    ('Chicken Parmesan', 'A time-honored Italian classic, our Chicken Parmesan showcases a tender, breaded, and fried chicken breast. It's then lavishly smothered in a rich marinara sauce and crowned with a golden layer of bubbling mozzarella cheese. Served alongside perfectly cooked spaghetti, it's an indulgent, soul-comforting experience.', 18.99, 2),
    ('Ravioli with Sage Butter', 'Our house-made ravioli is a work of culinary art, hand-stuffed with a sumptuous filling of ricotta cheese and fresh spinach. They're gently bathed in a velvety brown butter sauce infused with aromatic sage leaves. The result is a symphony of flavors and textures, evoking both elegance and simplicity.', 14.99, 1),
    ('Chianti Classico', 'Savor a glass of Chianti Classico, a timeless Italian red wine hailing from the picturesque vineyards of Tuscany. It boasts an inviting bouquet of dark cherries, leather, and hints of spice, with a velvety texture that dances on your palate. A true testament to the art of winemaking.', 28.99, 1),
    ('Limoncello Spritz', ' Immerse yourself in the enchanting flavors of Italy with our Limoncello Spritz. This invigorating cocktail combines the zesty allure of Limoncello liqueur with effervescent Prosecco and a delicate splash of soda water. Garnished with a vibrant twist of lemon, it's a taste of Mediterranean sunshine in a glass.', 9.99, 1),
    ('Espresso', 'Finish your meal with an Italian classic – a shot of rich and robust espresso. Our carefully selected coffee beans are expertly roasted and ground to perfection, resulting in a bold and aromatic espresso that encapsulates the essence of Italian coffee culture.', 4.99, 1),
    ('Tiramisu', 'Dive into the world of indulgence with our Tiramisu. Layer by layer, this dessert tells a story of Italian passion. Coffee-soaked ladyfingers provide a delicate base for layers of luscious mascarpone cheese. Cocoa powder dusts each heavenly bite, creating a sublime balance of sweetness and depth.', 9.99, 2),
    ('Cannoli', 'The Cannoli is a sweet treasure, featuring delicate pastry shells that shatter upon the first bite. Inside, they're generously filled with a velvety blend of sweet ricotta cheese, studded with dark chocolate chips, and kissed with a hint of orange zest. It's a tantalizing finale to your Italian culinary journey, offering both tradition and innovation in one delectable package.', 7.99, 1);


INSERT INTO MenuConnect (category_pivot_id, menu_pivot_id) VALUES
    (1, 1), -- Caprese Salad - Appetizers
    (1, 2), -- Bruschetta - Appetizers
    (2, 3), -- Spaghetti Carbonara - Entrees
    (2, 4), -- Chicken Parmesan - Entrees
    (2, 5), -- Ravioli with Sage Butter - Entrees
    (3, 6), -- Chianti Classico - Drinks
    (3, 7), -- Limoncello Spritz - Drinks
    (3, 8), -- Espresso - Drinks
    (4, 9), -- Tiramisu - Desserts
    (4, 10); -- Cannoli - Desserts
