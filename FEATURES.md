# Danh sách chức năng cần triển khai cho hệ thống Ecommerce JSP-Servlet

## 1. Quản lý người dùng (`users`)
- Đăng ký, đăng nhập, đăng xuất
- Đổi mật khẩu, quên mật khẩu
- Quản lý thông tin cá nhân
- Phân quyền (Admin/User)
- Xem lịch sử hoạt động

## 2. Quản lý danh mục sản phẩm (`categories`)
- Thêm, sửa, xóa danh mục
- Hiển thị sản phẩm theo danh mục cha/con

## 3. Quản lý sản phẩm (`products`, `product_variants`, `product_images`)
- Thêm, sửa, xóa sản phẩm
- Quản lý biến thể (SKU, giá, tồn kho, thuộc tính)
- Quản lý hình ảnh sản phẩm (ảnh chính/phụ)
- Hiển thị chi tiết sản phẩm, biến thể

## 4. Giỏ hàng & Đặt hàng (`orders`, `order_items`)
- Thêm sản phẩm vào giỏ hàng
- Sửa/xóa sản phẩm trong giỏ hàng
- Tạo đơn hàng từ giỏ hàng
- Quản lý trạng thái đơn hàng (PENDING, PROCESSING, SHIPPED, DELIVERED, CANCELLED)
- Xem chi tiết đơn hàng

## 5. Thanh toán (`payments`)
- Chọn phương thức thanh toán
- Quản lý trạng thái thanh toán (PENDING, hoàn tất)
- Ghi nhận thời gian thanh toán

## 6. Vận chuyển (`shipping_info`)
- Quản lý địa chỉ nhận hàng, số điện thoại
- Cập nhật trạng thái giao hàng, tracking, thời gian giao/nhận

## 7. Đánh giá sản phẩm (`reviews`)
- Người dùng tạo đánh giá, bình luận sản phẩm
- Hiển thị điểm đánh giá, bình luận
- Admin kiểm duyệt đánh giá

## 8. Thống kê & báo cáo
- Thống kê doanh số, đơn hàng, sản phẩm bán chạy
- Báo cáo cho admin

## 9. Logging & monitoring
- Ghi log toàn bộ hoạt động (theo yêu cầu chuẩn SLF4J)
- Lưu log ra file và console

## 10. Bảo mật & phân quyền
- Kiểm soát truy cập, phân quyền chức năng
- Bảo vệ chống SQL Injection, XSS
- Xác thực thông tin nhạy cảm

---

### Phụ lục: Cấu trúc bảng chính trong database

- **users:** Quản lý tài khoản người dùng
- **categories:** Danh mục sản phẩm cha/con
- **products:** Sản phẩm
- **product_variants:** Biến thể sản phẩm (SKU, thuộc tính, giá,…)
- **product_images:** Ảnh sản phẩm
- **orders:** Đơn hàng
- **order_items:** Chi tiết đơn hàng
- **payments:** Ghi nhận thanh toán đơn hàng
- **shipping_info:** Vận chuyển, địa chỉ, tracking
- **reviews:** Đánh giá sản phẩm

---