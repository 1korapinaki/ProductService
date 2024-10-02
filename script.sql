CREATE TABLE Product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL CHECK (LENGTH(name) >= 3 AND LENGTH(name) <= 50),
    price DECIMAL(10, 2) NOT NULL CHECK (price > 0),
    description VARCHAR(255)
);

CREATE TABLE "order_details" (
    id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    total_price DECIMAL(10, 2),
    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES Product(id)
);