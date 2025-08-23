CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    role VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES categories(category_id)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    brand VARCHAR(255),
    category_id INT REFERENCES categories(category_id),
    status VARCHAR(20) DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE product_variants (
    variant_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL REFERENCES products(product_id),
    sku VARCHAR(100) UNIQUE NOT NULL,
    variant_name VARCHAR(255),
    price DECIMAL(12, 2) NOT NULL,
    discount_price DECIMAL(12, 2),
    stock_quantity INT CHECK (stock_quantity >= 0),
    attributes_json JSONB,
    is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE product_images (
    image_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL REFERENCES products(product_id),
    variant_id INT REFERENCES product_variants(variant_id),
    image_url TEXT NOT NULL,
    is_primary BOOLEAN DEFAULT FALSE
);

CREATE TYPE order_status AS ENUM ('PENDING', 'PROCESSING', 'SHIPPED', 'DELIVERED', 'CANCELLED');
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    status order_status DEFAULT 'PENDING',
    total_amount DECIMAL(12, 2) NOT NULL,
    shipping_fee DECIMAL(12, 2) DEFAULT 0,
-- snapshot user
    full_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE,
    variant_id INT NOT NULL REFERENCES product_variants(variant_id),
    quantity INT CHECK (quantity > 0),
--  snapshot product
    product_name VARCHAR(255) NOT NULL,
--  snapshot variant
    variant_name VARCHAR(255),
    variant_price DECIMAL(12, 2),
    variant_discount_price DECIMAL(12, 2),
    variant_attributes_json JSONB,
    price DECIMAL(12, 2) NOT NULL
);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE,
    payment_method VARCHAR(30) NOT NULL,
    payment_status VARCHAR(20) DEFAULT 'PENDING',
    paid_at TIMESTAMP
);

CREATE TABLE shipping_info (
    shipping_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL REFERENCES orders(order_id),
    full_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    address TEXT NOT NULL,
    tracking_number VARCHAR(255),
    status VARCHAR(20) DEFAULT 'PENDING',
    shipped_at TIMESTAMP,
    delivered_at TIMESTAMP
);

CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL REFERENCES products(product_id),
    user_id INT NOT NULL REFERENCES users(user_id),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- add log table
CREATE TABLE log (
    id            SERIAL PRIMARY KEY,
    level         VARCHAR(10) NOT NULL,         -- 'INFO', 'WARN', 'ERROR'
    action        VARCHAR(100) NOT NULL,        -- tên thao tác: 'CREATE_ORDER', 'LOGIN', 'SYSTEM_JOB'
    message       TEXT,                         -- nội dung mô tả log
    user_id       INT,                          -- id người dùng 
    ip_address    VARCHAR(45),                  -- IP tạo log
    created_at    TIMESTAMP DEFAULT now()       -- thời điểm log
);