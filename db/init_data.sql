-- Mock Data cho môi trường phát triển (Dev Environment)

-- 1. Insert Users (Người dùng)
INSERT INTO users (full_name, email, password_hash, phone_number, role) VALUES
('Nguyễn Văn Admin', 'admin@shop.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '0901234567', 'ADMIN'),
('Trần Thị Hoa', 'hoa.tran@gmail.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '0912345678', 'CUSTOMER'),
('Lê Văn Nam', 'nam.le@yahoo.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '0923456789', 'CUSTOMER'),
('Phạm Thị Lan', 'lan.pham@hotmail.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '0934567890', 'CUSTOMER'),
('Hoàng Văn Minh', 'minh.hoang@gmail.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '0945678901', 'CUSTOMER'),
('Vũ Thị Mai', 'mai.vu@outlook.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '0956789012', 'CUSTOMER'),
('Đỗ Văn Tùng', 'tung.do@gmail.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '0967890123', 'CUSTOMER'),
('Bùi Thị Linh', 'linh.bui@yahoo.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '0978901234', 'CUSTOMER'),
('Staff Nhân Viên', 'staff@shop.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '0989012345', 'STAFF'),
('Nguyễn Thị Dung', 'dung.nguyen@gmail.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '0990123456', 'CUSTOMER');

-- 2. Insert Categories (Danh mục sản phẩm)
INSERT INTO categories (name, parent_id) VALUES
('Điện thoại & Phụ kiện', NULL),
('Laptop & Máy tính', NULL),
('Thời trang', NULL),
('Gia dụng & Đời sống', NULL),
('Sách & Văn phòng phẩm', NULL),
('Thể thao & Du lịch', NULL);

-- Sub-categories
INSERT INTO categories (name, parent_id) VALUES
('Điện thoại di động', 1),
('Tai nghe', 1),
('Ốp lưng & Bảo vệ', 1),
('Laptop Gaming', 2),
('Laptop Văn phòng', 2),
('Phụ kiện máy tính', 2),
('Áo nam', 3),
('Áo nữ', 3),
('Quần áo trẻ em', 3),
('Đồ gia dụng nhà bếp', 4),
('Đồ dùng phòng tắm', 4),
('Sách kinh tế', 5),
('Văn phòng phẩm', 5);

-- 3. Insert Products (Sản phẩm)
INSERT INTO products (name, description, brand, category_id, status) VALUES
('iPhone 15 Pro Max', 'Điện thoại cao cấp của Apple với chip A17 Pro, camera 48MP', 'Apple', 7, 'ACTIVE'),
('Samsung Galaxy S24 Ultra', 'Flagship Android với bút S Pen, camera zoom 100x', 'Samsung', 7, 'ACTIVE'),
('MacBook Air M3', 'Laptop mỏng nhẹ cho công việc văn phòng và sáng tạo', 'Apple', 11, 'ACTIVE'),
('Dell XPS 13', 'Laptop cao cấp cho doanh nhân', 'Dell', 11, 'ACTIVE'),
('Gaming Laptop ASUS ROG', 'Laptop gaming hiệu năng cao', 'ASUS', 10, 'ACTIVE'),
('AirPods Pro 2', 'Tai nghe không dây chống ồn', 'Apple', 8, 'ACTIVE'),
('Sony WH-1000XM5', 'Tai nghe over-ear chống ồn hàng đầu', 'Sony', 8, 'ACTIVE'),
('Áo thun nam basic', 'Áo thun cotton 100% thoáng mát', 'Local Brand', 13, 'ACTIVE'),
('Váy đầm nữ công sở', 'Váy đầm thanh lịch cho môi trường công sở', 'Fashion Store', 14, 'ACTIVE'),
('Nồi cơm điện Toshiba', 'Nồi cơm điện 1.8L cho gia đình', 'Toshiba', 16, 'ACTIVE'),
('Máy xay sinh tố', 'Máy xay đa năng công suất cao', 'Philips', 16, 'ACTIVE'),
('Sách "Đắc Nhân Tâm"', 'Sách kỹ năng sống bán chạy nhất', 'NXB Tổng hợp', 18, 'ACTIVE'),
('Bộ bút bi Thiên Long', 'Combo 10 cây bút bi xanh', 'Thiên Long', 19, 'ACTIVE'),
('Ốp lưng iPhone chống sốc', 'Ốp lưng silicon trong suốt', 'Generic', 9, 'ACTIVE'),
('Chuột gaming Logitech', 'Chuột game với độ chính xác cao', 'Logitech', 12, 'ACTIVE');

-- 4. Insert Product Variants (Biến thể sản phẩm)
INSERT INTO product_variants (product_id, sku, variant_name, price, discount_price, stock_quantity, attributes_json) VALUES
-- iPhone 15 Pro Max variants
(1, 'IP15PM-256-NT', 'iPhone 15 Pro Max 256GB Natural Titanium', 29990000, 28990000, 50, '{"storage": "256GB", "color": "Natural Titanium"}'),
(1, 'IP15PM-512-BT', 'iPhone 15 Pro Max 512GB Blue Titanium', 34990000, NULL, 30, '{"storage": "512GB", "color": "Blue Titanium"}'),
(1, 'IP15PM-1TB-WT', 'iPhone 15 Pro Max 1TB White Titanium', 39990000, 37990000, 15, '{"storage": "1TB", "color": "White Titanium"}'),

-- Samsung Galaxy S24 Ultra variants  
(2, 'SGS24U-256-BK', 'Galaxy S24 Ultra 256GB Black', 26990000, 25490000, 40, '{"storage": "256GB", "color": "Titanium Black"}'),
(2, 'SGS24U-512-GR', 'Galaxy S24 Ultra 512GB Gray', 29990000, NULL, 25, '{"storage": "512GB", "color": "Titanium Gray"}'),

-- MacBook Air M3 variants
(3, 'MBA-M3-256-SG', 'MacBook Air M3 256GB Space Gray', 27990000, 26990000, 20, '{"storage": "256GB", "color": "Space Gray", "ram": "8GB"}'),
(3, 'MBA-M3-512-SL', 'MacBook Air M3 512GB Silver', 32990000, NULL, 15, '{"storage": "512GB", "color": "Silver", "ram": "8GB"}'),

-- Other products
(4, 'DELL-XPS13-512', 'Dell XPS 13 512GB', 24990000, 23490000, 12, '{"storage": "512GB", "ram": "16GB"}'),
(5, 'ASUS-ROG-1TB', 'ASUS ROG Gaming 1TB', 35990000, NULL, 8, '{"storage": "1TB", "ram": "32GB", "gpu": "RTX 4070"}'),
(6, 'APP-256-WH', 'AirPods Pro 2 White', 5990000, 5490000, 100, '{"color": "White"}'),
(7, 'SONY-XM5-BK', 'Sony WH-1000XM5 Black', 7990000, 7490000, 60, '{"color": "Black"}'),
(7, 'SONY-XM5-SL', 'Sony WH-1000XM5 Silver', 7990000, NULL, 45, '{"color": "Silver"}'),
(8, 'SHIRT-M-WH', 'Áo thun nam M trắng', 299000, 249000, 200, '{"size": "M", "color": "Trắng"}'),
(8, 'SHIRT-L-BK', 'Áo thun nam L đen', 299000, 249000, 150, '{"size": "L", "color": "Đen"}'),
(9, 'DRESS-M-NV', 'Váy đầm M navy', 899000, 799000, 80, '{"size": "M", "color": "Navy"}'),
(10, 'RC-TOSHIBA-18L', 'Nồi cơm Toshiba 1.8L', 2590000, 2290000, 35, '{"capacity": "1.8L"}'),
(11, 'BLENDER-PH-600W', 'Máy xay Philips 600W', 1890000, NULL, 25, '{"power": "600W"}'),
(12, 'BOOK-DNT-VN', 'Đắc Nhân Tâm tiếng Việt', 89000, 79000, 500, '{"language": "Vietnamese"}'),
(13, 'PEN-TL-BLUE-10', 'Bút bi Thiên Long xanh 10 cây', 45000, NULL, 1000, '{"color": "Blue", "quantity": "10 pieces"}'),
(14, 'CASE-IP15-CLEAR', 'Ốp iPhone 15 trong suốt', 199000, 149000, 300, '{"compatibility": "iPhone 15", "material": "Silicon"}'),
(15, 'MOUSE-LG-G502', 'Chuột Logitech G502 Hero', 1590000, 1390000, 75, '{"dpi": "25600", "buttons": "11"}'');

-- 5. Insert Product Images (Hình ảnh sản phẩm)
INSERT INTO product_images (product_id, variant_id, image_url, is_primary) VALUES
-- iPhone images
(1, 1, 'https://images.unsplash.com/photo-1592750475338-74b7b21085ab', true),
(1, 1, 'https://images.unsplash.com/photo-1605236453806-6ff36851218e', false),
(1, 2, 'https://images.unsplash.com/photo-1611791484484-6f9999a0f36c', true),
(1, 3, 'https://images.unsplash.com/photo-1605236454773-de2a7a93c82b', true),

-- Samsung images  
(2, 4, 'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf', true),
(2, 5, 'https://images.unsplash.com/photo-1598300042247-d088f8ab3a91', true),

-- MacBook images
(3, 6, 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9', true),
(3, 7, 'https://images.unsplash.com/photo-1615750185825-fe40e9a3a4d5', true),

-- Other products
(4, 8, 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed', true),
(5, 9, 'https://images.unsplash.com/photo-1603302576837-37561b2e2302', true),
(6, 10, 'https://images.unsplash.com/photo-1606206673320-8364ee5b6c38', true),
(7, 11, 'https://images.unsplash.com/photo-1546435770-a3e426bf472b', true),
(8, 13, 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab', true),
(9, 15, 'https://images.unsplash.com/photo-1595777457583-95e059d581b8', true),
(10, 16, 'https://images.unsplash.com/photo-1556909114-4ee7ae2c4aff', true);

-- 6. Insert Orders (Đơn hàng)
INSERT INTO orders (user_id, status, total_amount, shipping_fee, full_name, phone_number) VALUES
(2, 'DELIVERED', 29239000, 50000, 'Trần Thị Hoa', '0912345678'),
(3, 'SHIPPED', 5540000, 30000, 'Lê Văn Nam', '0923456789'),
(4, 'PROCESSING', 25739000, 0, 'Phạm Thị Lan', '0934567890'),
(5, 'PENDING', 1639000, 25000, 'Hoàng Văn Minh', '0945678901'),
(6, 'DELIVERED', 879000, 30000, 'Vũ Thị Mai', '0956789012'),
(7, 'CANCELLED', 7990000, 0, 'Đỗ Văn Tùng', '0967890123'),
(8, 'DELIVERED', 498000, 25000, 'Bùi Thị Linh', '0978901234'),
(10, 'PROCESSING', 35990000, 0, 'Nguyễn Thị Dung', '0990123456');

-- 7. Insert Order Items (Chi tiết đơn hàng)
INSERT INTO order_items (order_id, variant_id, quantity, product_name, variant_name, variant_price, variant_discount_price, variant_attributes_json, price) VALUES
-- Order 1: iPhone 15 Pro Max
(1, 1, 1, 'iPhone 15 Pro Max', 'iPhone 15 Pro Max 256GB Natural Titanium', 29990000, 28990000, '{"storage": "256GB", "color": "Natural Titanium"}', 28990000),
(1, 14, 1, 'Ốp lưng iPhone chống sốc', 'Ốp iPhone 15 trong suốt', 199000, 149000, '{"compatibility": "iPhone 15", "material": "Silicon"}', 149000),
(1, 13, 2, 'Bộ bút bi Thiên Long', 'Bút bi Thiên Long xanh 10 cây', 45000, NULL, '{"color": "Blue", "quantity": "10 pieces"}', 90000),

-- Order 2: AirPods + Sony headphones
(2, 10, 1, 'AirPods Pro 2', 'AirPods Pro 2 White', 5990000, 5490000, '{"color": "White"}', 5490000),
(2, 13, 1, 'Bộ bút bi Thiên Long', 'Bút bi Thiên Long xanh 10 cây', 45000, NULL, '{"color": "Blue", "quantity": "10 pieces"}', 45000),

-- Order 3: Samsung Galaxy
(3, 4, 1, 'Samsung Galaxy S24 Ultra', 'Galaxy S24 Ultra 256GB Black', 26990000, 25490000, '{"storage": "256GB", "color": "Titanium Black"}', 25490000),
(3, 14, 1, 'Ốp lưng iPhone chống sốc', 'Ốp iPhone 15 trong suốt', 199000, 149000, '{"compatibility": "iPhone 15", "material": "Silicon"}', 149000),

-- Order 4: Gaming mouse
(4, 15, 1, 'Chuột gaming Logitech', 'Chuột Logitech G502 Hero', 1590000, 1390000, '{"dpi": "25600", "buttons": "11"}', 1390000),
(4, 8, 1, 'Áo thun nam basic', 'Áo thun nam M trắng', 299000, 249000, '{"size": "M", "color": "Trắng"}', 249000),

-- Order 5: Dress
(5, 15, 1, 'Váy đầm nữ công sở', 'Váy đầm M navy', 899000, 799000, '{"size": "M", "color": "Navy"}', 799000),
(5, 12, 1, 'Sách "Đắc Nhân Tâm"', 'Đắc Nhân Tâm tiếng Việt', 89000, 79000, '{"language": "Vietnamese"}', 79000),

-- Order 6: Sony headphones (cancelled)
(6, 11, 1, 'Sony WH-1000XM5', 'Sony WH-1000XM5 Black', 7990000, 7490000, '{"color": "Black"}', 7490000),

-- Order 7: T-shirts
(7, 13, 2, 'Áo thun nam basic', 'Áo thun nam M trắng', 299000, 249000, '{"size": "M", "color": "Trắng"}', 498000),

-- Order 8: Gaming laptop
(8, 9, 1, 'Gaming Laptop ASUS ROG', 'ASUS ROG Gaming 1TB', 35990000, NULL, '{"storage": "1TB", "ram": "32GB", "gpu": "RTX 4070"}', 35990000);

-- 8. Insert Payments (Thanh toán)
INSERT INTO payments (order_id, payment_method, payment_status, paid_at) VALUES
(1, 'CREDIT_CARD', 'COMPLETED', NOW() - INTERVAL '5 days'),
(2, 'BANK_TRANSFER', 'COMPLETED', NOW() - INTERVAL '3 days'),
(3, 'COD', 'PENDING', NULL),
(4, 'MOMO', 'PENDING', NULL),
(5, 'CREDIT_CARD', 'COMPLETED', NOW() - INTERVAL '1 day'),
(6, 'BANK_TRANSFER', 'REFUNDED', NOW() - INTERVAL '2 days'),
(7, 'COD', 'COMPLETED', NOW() - INTERVAL '1 day'),
(8, 'BANK_TRANSFER', 'PENDING', NULL);

-- 9. Insert Shipping Info (Thông tin vận chuyển)
INSERT INTO shipping_info (order_id, full_name, phone_number, address, tracking_number, status, shipped_at, delivered_at) VALUES
(1, 'Trần Thị Hoa', '0912345678', '123 Nguyễn Trãi, Quận 1, TP.HCM', 'VN123456789', 'DELIVERED', 
 NOW() - INTERVAL '4 days', NOW() - INTERVAL '1 day'),
(2, 'Lê Văn Nam', '0923456789', '456 Lê Lợi, Quận 3, TP.HCM', 'VN987654321', 'IN_TRANSIT', 
 NOW() - INTERVAL '2 days', NULL),
(3, 'Phạm Thị Lan', '0934567890', '789 Trần Hưng Đạo, Quận 5, TP.HCM', NULL, 'PREPARING', NULL, NULL),
(4, 'Hoàng Văn Minh', '0945678901', '321 Điện Biên Phủ, Quận Bình Thạnh, TP.HCM', NULL, 'PENDING', NULL, NULL),
(5, 'Vũ Thị Mai', '0956789012', '654 Nguyễn Văn Cừ, Quận 4, TP.HCM', 'VN456789123', 'DELIVERED', 
 NOW() - INTERVAL '2 days', NOW()),
(6, 'Đỗ Văn Tùng', '0967890123', '987 Lê Văn Sỹ, Quận Phú Nhuận, TP.HCM', NULL, 'CANCELLED', NULL, NULL),
(7, 'Bùi Thị Linh', '0978901234', '147 Võ Văn Tần, Quận 3, TP.HCM', 'VN789123456', 'DELIVERED', 
 NOW() - INTERVAL '1 day', NOW()),
(8, 'Nguyễn Thị Dung', '0990123456', '258 Hai Bà Trưng, Quận 1, TP.HCM', NULL, 'PREPARING', NULL, NULL);

-- 10. Insert Reviews (Đánh giá)
INSERT INTO reviews (product_id, user_id, rating, comment) VALUES
(1, 2, 5, 'iPhone 15 Pro Max rất đẹp và chất lượng tuyệt vời! Camera siêu sắc nét.'),
(1, 5, 4, 'Sản phẩm tốt nhưng giá hơi cao. Tuy nhiên đáng đồng tiền bát gạo.'),
(2, 3, 5, 'Galaxy S24 Ultra với bút S Pen rất tiện lợi cho công việc. Màn hình đẹp!'),
(6, 2, 5, 'AirPods Pro 2 chống ồn tốt, âm thanh hay. Đáng mua!'),
(7, 6, 4, 'Sony WH-1000XM5 chất lượng âm thanh excellent, đeo thoải mái.'),
(8, 7, 4, 'Áo thun chất cotton mịn, form đẹp. Sẽ mua thêm màu khác.'),
(9, 5, 5, 'Váy đầm rất thanh lịch, phù hợp đi làm. Chất liệu tốt.'),
(12, 6, 5, 'Sách Đắc Nhân Tâm rất hay và bổ ích. Recommend cho mọi người.'),
(15, 4, 4, 'Chuột gaming responsive tốt, grip thoải mái cho game thủ.');

-- 11. Insert Log entries (Nhật ký hệ thống)
INSERT INTO log (level, action, message, user_id, ip_address) VALUES
('INFO', 'USER_LOGIN', 'User logged in successfully', 1, '192.168.1.100'),
('INFO', 'USER_LOGIN', 'User logged in successfully', 2, '192.168.1.101'),
('INFO', 'CREATE_ORDER', 'New order created with total: 29239000', 2, '192.168.1.101'),
('INFO', 'PAYMENT_COMPLETED', 'Payment completed for order #1', 2, '192.168.1.101'),
('WARN', 'LOGIN_FAILED', 'Failed login attempt for email: test@test.com', NULL, '192.168.1.200'),
('INFO', 'USER_REGISTER', 'New user registered', 10, '192.168.1.102'),
('INFO', 'CREATE_ORDER', 'New order created with total: 5540000', 3, '192.168.1.103'),
('ERROR', 'PAYMENT_FAILED', 'Payment processing failed for order #4', 5, '192.168.1.105'),
('INFO', 'ORDER_SHIPPED', 'Order #2 has been shipped', NULL, 'SYSTEM'),
('INFO', 'ORDER_DELIVERED', 'Order #1 has been delivered', NULL, 'SYSTEM'),
('WARN', 'LOW_STOCK', 'Product variant iPhone 15 Pro Max 1TB low stock: 15 items', NULL, 'SYSTEM'),
('INFO', 'REVIEW_CREATED', 'New review created for product #1', 2, '192.168.1.101'),
('INFO', 'USER_LOGOUT', 'User logged out', 3, '192.168.1.103'),
('ERROR', 'SYSTEM_ERROR', 'Database connection timeout', NULL, 'SYSTEM'),
('INFO', 'DAILY_BACKUP', 'Daily database backup completed successfully', NULL, 'SYSTEM');

-- Update sequences to current values
SELECT setval('users_user_id_seq', (SELECT MAX(user_id) FROM users));
SELECT setval('categories_category_id_seq', (SELECT MAX(category_id) FROM categories));  
SELECT setval('products_product_id_seq', (SELECT MAX(product_id) FROM products));
SELECT setval('product_variants_variant_id_seq', (SELECT MAX(variant_id) FROM product_variants));
SELECT setval('orders_order_id_seq', (SELECT MAX(order_id) FROM orders));
SELECT setval('log_id_seq', (SELECT MAX(id) FROM log));