<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lịch sử đơn hàng - E-commerce</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', Arial, Helvetica, sans-serif; }
        .order-status-pending { color: #FFC107; }
        .order-status-confirmed { color: #0D6EFD; }
        .order-status-shipping { color: #17A2B8; }
        .order-status-delivered { color: #198754; }
        .order-status-cancelled { color: #DC3545; }
        .order-status-returned { color: #6C757D; }
    </style>
</head>
<body class="bg-[#F8F9FA] leading-relaxed tracking-wide">
    <!-- Header -->
    <header class="bg-white shadow-sm border-b border-gray-200 sticky top-0 z-40">
        <div class="container mx-auto max-w-[1200px] px-4">
            <!-- Top Bar -->
            <div class="hidden md:flex items-center justify-between py-2 text-xs border-b border-gray-100">
                <div class="flex space-x-4">
                    <span class="text-[#6C757D]">☎ Hotline: 1900-1234</span>
                    <span class="text-[#6C757D]">✉ support@ecommerce.vn</span>
                </div>
                <div class="flex space-x-4">
                    <span class="text-[#6C757D]">14/08/2025 18:07</span>
                </div>
            </div>

            <!-- Main Header -->
            <div class="flex items-center justify-between py-3">
                <!-- Logo -->
                <div class="flex items-center space-x-4">
                    <a href="/" class="text-2xl font-bold text-[#0D6EFD]">E-commerce</a>
                </div>
                
                <!-- Search Bar -->
                <div class="hidden md:flex flex-1 max-w-xl mx-8">
                    <div class="relative w-full">
                        <input type="text" placeholder="Tìm kiếm sản phẩm..." class="w-full h-10 px-4 pr-12 border border-[#CED4DA] rounded-l-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200">
                        <button class="absolute right-0 top-0 h-10 px-4 bg-[#0D6EFD] text-white rounded-r-md hover:bg-[#084298] transition-colors duration-200">
                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- User Actions -->
                <div class="flex items-center space-x-4">
                    <!-- User Account -->
                    <div class="relative group">
                        <button class="flex items-center space-x-2 text-[#6C757D] hover:text-[#0D6EFD] transition-colors duration-200">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                            </svg>
                            <span class="hidden md:block text-sm">hoangdvdinos</span>
                        </button>
                        <!-- Dropdown Menu -->
                        <div class="absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg border border-gray-200 hidden group-hover:block z-50">
                            <a href="#" class="block px-4 py-2 text-sm text-[#212529] hover:bg-[#F8F9FA]">Tài khoản của tôi</a>
                            <a href="/orders" class="block px-4 py-2 text-sm text-[#0D6EFD] bg-[#E7F3FF]">Đơn hàng</a>
                            <a href="#" class="block px-4 py-2 text-sm text-[#212529] hover:bg-[#F8F9FA]">Yêu thích</a>
                            <div class="border-t border-gray-200"></div>
                            <a href="#" class="block px-4 py-2 text-sm text-[#DC3545] hover:bg-[#F8F9FA]">Đăng xuất</a>
                        </div>
                    </div>

                    <!-- Wishlist -->
                    <div class="relative cursor-pointer">
                        <svg class="w-6 h-6 text-[#6C757D] hover:text-[#DC3545] transition-colors duration-200" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                        <span class="absolute top-0 right-0 bg-[#DC3545] text-white rounded-full text-xs w-5 h-5 flex items-center justify-center transform translate-x-2 -translate-y-2">3</span>
                    </div>

                    <!-- Shopping Cart -->
                    <div class="relative cursor-pointer">
                        <svg class="w-6 h-6 text-[#6C757D] hover:text-[#0D6EFD] transition-colors duration-200" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4m-.4 0L5 5H3m4 8h10m-10 0v6a1 1 0 001 1h8a1 1 0 001-1v-6m-10 0H3"></path>
                        </svg>
                        <span class="absolute top-0 right-0 bg-[#0D6EFD] text-white rounded-full text-xs w-5 h-5 flex items-center justify-center transform translate-x-2 -translate-y-2">0</span>
                    </div>
                </div>
            </div>

            <!-- Mobile Search -->
            <div class="md:hidden pb-3">
                <div class="relative">
                    <input type="text" placeholder="Tìm kiếm sản phẩm..." class="w-full h-10 px-4 pr-12 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                    <button class="absolute right-2 top-2">
                        <svg class="w-6 h-6 text-[#6C757D]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                    </button>
                </div>
            </div>
        </div>
    </header>

    <!-- Breadcrumb -->
    <nav class="bg-white border-b border-gray-200">
        <div class="container mx-auto max-w-[1200px] px-4 py-3">
            <ol class="flex items-center space-x-2 text-sm">
                <li><a href="/" class="text-[#6C757D] hover:text-[#0D6EFD]">Trang chủ</a></li>
                <li class="text-[#6C757D]">/</li>
                <li><a href="/account" class="text-[#6C757D] hover:text-[#0D6EFD]">Tài khoản</a></li>
                <li class="text-[#6C757D]">/</li>
                <li class="text-[#212529] font-medium">Đơn hàng của tôi</li>
            </ol>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto max-w-[1200px] px-4 py-6">
        <!-- Page Header -->
        <div class="bg-white rounded-lg shadow-sm p-6 mb-6">
            <div class="flex flex-col md:flex-row items-start md:items-center justify-between space-y-4 md:space-y-0">
                <div>
                    <h1 class="text-3xl font-bold text-[#212529] mb-2">Đơn hàng của tôi</h1>
                    <p class="text-[#6C757D]">Quản lý và theo dõi tất cả đơn hàng của bạn</p>
                </div>
                <div class="flex items-center space-x-4">
                    <div class="relative">
                        <input type="text" id="orderSearch" placeholder="Tìm kiếm đơn hàng..." class="w-64 h-10 px-4 pr-10 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                        <svg class="absolute right-3 top-3 w-4 h-4 text-[#6C757D]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                    </div>
                </div>
            </div>
        </div>

        <!-- Filter Tabs -->
        <div class="bg-white rounded-lg shadow-sm mb-6">
            <div class="flex overflow-x-auto">
                <button onclick="filterOrders('all')" class="filter-tab active flex-1 md:flex-none px-6 py-4 text-center border-b-2 border-[#0D6EFD] text-[#0D6EFD] font-medium whitespace-nowrap">
                    Tất cả (12)
                </button>
                <button onclick="filterOrders('pending')" class="filter-tab flex-1 md:flex-none px-6 py-4 text-center border-b-2 border-transparent text-[#6C757D] hover:text-[#0D6EFD] font-medium whitespace-nowrap">
                    Chờ xác nhận (2)
                </button>
                <button onclick="filterOrders('confirmed')" class="filter-tab flex-1 md:flex-none px-6 py-4 text-center border-b-2 border-transparent text-[#6C757D] hover:text-[#0D6EFD] font-medium whitespace-nowrap">
                    Đã xác nhận (3)
                </button>
                <button onclick="filterOrders('shipping')" class="filter-tab flex-1 md:flex-none px-6 py-4 text-center border-b-2 border-transparent text-[#6C757D] hover:text-[#0D6EFD] font-medium whitespace-nowrap">
                    Đang giao (2)
                </button>
                <button onclick="filterOrders('delivered')" class="filter-tab flex-1 md:flex-none px-6 py-4 text-center border-b-2 border-transparent text-[#6C757D] hover:text-[#0D6EFD] font-medium whitespace-nowrap">
                    Đã giao (4)
                </button>
                <button onclick="filterOrders('cancelled')" class="filter-tab flex-1 md:flex-none px-6 py-4 text-center border-b-2 border-transparent text-[#6C757D] hover:text-[#0D6EFD] font-medium whitespace-nowrap">
                    Đã hủy (1)
                </button>
            </div>
        </div>

        <!-- Orders List -->
        <div class="space-y-4" id="ordersList">
            <!-- Order 1 - Delivered -->
            <div class="order-item bg-white rounded-lg shadow-sm border border-gray-200" data-status="delivered" data-order="ORD202508140001">
                <div class="p-6">
                    <!-- Order Header -->
                    <div class="flex flex-col md:flex-row items-start md:items-center justify-between mb-4">
                        <div class="flex items-center space-x-4 mb-2 md:mb-0">
                            <div>
                                <h3 class="text-lg font-bold text-[#212529]">Đơn hàng #ORD202508140001</h3>
                                <div class="flex items-center space-x-4 text-sm text-[#6C757D]">
                                    <span>🕒 12/08/2025 14:30</span>
                                    <span>•</span>
                                    <span>3 sản phẩm</span>
                                </div>
                            </div>
                        </div>
                        <div class="flex items-center space-x-3">
                            <span class="bg-[#198754] text-white px-3 py-1 rounded-full text-sm font-medium">
                                ✅ Đã giao hàng
                            </span>
                            <button onclick="toggleOrderDetails('ORD202508140001')" class="text-[#0D6EFD] hover:underline text-sm font-medium">
                                Chi tiết
                            </button>
                        </div>
                    </div>

                    <!-- Order Items Preview -->
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-4">
                        <div class="flex space-x-3">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2">iPhone 15 Pro Max 256GB</h4>
                                <div class="text-xs text-[#6C757D]">SL: 1 • 27,990,000₫</div>
                            </div>
                        </div>
                        <div class="flex space-x-3">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2">AirPods Pro 2nd Gen</h4>
                                <div class="text-xs text-[#6C757D]">SL: 1 • 6,390,000₫</div>
                            </div>
                        </div>
                        <div class="flex space-x-3">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2">Magic Keyboard</h4>
                                <div class="text-xs text-[#6C757D]">SL: 1 • 7,990,000₫</div>
                            </div>
                        </div>
                    </div>

                    <!-- Order Summary -->
                    <div class="flex flex-col md:flex-row items-start md:items-center justify-between">
                        <div class="flex items-center space-x-6 text-sm text-[#6C757D] mb-3 md:mb-0">
                            <span>🚚 Giao hàng tiêu chuẩn</span>
                            <span>💰 Thanh toán khi nhận hàng</span>
                            <span>📍 TP.HCM</span>
                        </div>
                        <div class="flex items-center space-x-4">
                            <div class="text-right">
                                <div class="text-sm text-[#6C757D]">Tổng tiền</div>
                                <div class="text-xl font-bold text-[#DC3545]">42,370,000₫</div>
                            </div>
                        </div>
                    </div>

                    <!-- Order Actions -->
                    <div class="flex flex-wrap gap-3 mt-4 pt-4 border-t border-gray-200">
                        <button onclick="reorderItems('ORD202508140001')" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200">
                            Mua lại
                        </button>
                        <button onclick="downloadInvoice('ORD202508140001')" class="bg-white border border-[#0D6EFD] text-[#0D6EFD] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#E7F3FF] transition-colors duration-200">
                            Tải hóa đơn đơn
                        </button>
                        <button onclick="writeReview('ORD202508140001')" class="bg-white border border-[#FFC107] text-[#FFC107] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#FFF9E6] transition-colors duration-200">
                            Đánh giá
                        </button>
                        <button onclick="requestSupport('ORD202508140001')" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                            Hỗ trợ
                        </button>
                    </div>

                    <!-- Order Details (Hidden by default) -->
                    <div id="details-ORD202508140001" class="hidden mt-6 pt-6 border-t border-gray-200">
                        <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
                            <!-- Delivery Info -->
                            <div>
                                <h4 class="font-bold text-[#212529] mb-3">📦 Thông tin giao hàng</h4>
                                <div class="space-y-2 text-sm">
                                    <div class="flex justify-between">
                                        <span class="text-[#6C757D]">Người nhận:</span>
                                        <span class="text-[#212529]">Hoàng Đình</span>
                                    </div>
                                    <div class="flex justify-between">
                                        <span class="text-[#6C757D]">Điện thoại:</span>
                                        <span class="text-[#212529]">0987-654-321</span>
                                    </div>
                                    <div class="flex justify-between">
                                        <span class="text-[#6C757D]">Địa chỉ:</span>
                                        <span class="text-[#212529] text-right">123 Đường Nguyễn Văn Cẩm,<br>Phường 4, Quận 5, TP.HCM</span>
                                    </div>
                                    <div class="flex justify-between">
                                        <span class="text-[#6C757D]">Ngày giao:</span>
                                        <span class="text-[#198754] font-medium">14/08/2025 15:30</span>
                                    </div>
                                </div>
                            </div>

                            <!-- Order Timeline -->
                            <div>
                                <h4 class="font-bold text-[#212529] mb-3">🕒 Lịch sử đơn hàng</h4>
                                <div class="space-y-3">
                                    <div class="flex items-center space-x-3">
                                        <div class="w-3 h-3 bg-[#198754] rounded-full"></div>
                                        <div class="flex-1">
                                            <div class="text-sm font-medium text-[#212529]">✅ giao hàng thành công</div>
                                            <div class="text-xs text-[#6C757D]">14/08/2025 15:30</div>
                                        </div>
                                    </div>
                                    <div class="flex items-center space-x-3">
                                        <div class="w-3 h-3 bg-[#17A2B8] rounded-full"></div>
                                        <div class="flex-1">
                                            <div class="text-sm font-medium text-[#212529]">🚚 đang giao hàng</div>
                                            <div class="text-xs text-[#6C757D]">14/08/2025 08:00</div>
                                        </div>
                                    </div>
                                    <div class="flex items-center space-x-3">
                                        <div class="w-3 h-3 bg-[#0D6EFD] rounded-full"></div>
                                        <div class="flex-1">
                                            <div class="text-sm font-medium text-[#212529]">✅ xác nhận đơn hàng</div>
                                            <div class="text-xs text-[#6C757D]">13/08/2025 09:15</div>
                                        </div>
                                    </div>
                                    <div class="flex items-center space-x-3">
                                        <div class="w-3 h-3 bg-[#FFC107] rounded-full"></div>
                                        <div class="flex-1">
                                            <div class="text-sm font-medium text-[#212529]">📦 đặt hàng thành công</div>
                                            <div class="text-xs text-[#6C757D]">12/08/2025 14:30</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Order 2 - Shipping -->
            <div class="order-item bg-white rounded-lg shadow-sm border border-gray-200" data-status="shipping" data-order="ORD202508130002">
                <div class="p-6">
                    <!-- Order Header -->
                    <div class="flex flex-col md:flex-row items-start md:items-center justify-between mb-4">
                        <div class="flex items-center space-x-4 mb-2 md:mb-0">
                            <div>
                                <h3 class="text-lg font-bold text-[#212529]">Đơn hàng #ORD202508130002</h3>
                                <div class="flex items-center space-x-4 text-sm text-[#6C757D]">
                                    <span>🕒 13/08/2025 10:45</span>
                                    <span>•</span>
                                    <span>2 sản phẩm</span>
                                </div>
                            </div>
                        </div>
                        <div class="flex items-center space-x-3">
                            <span class="bg-[#17A2B8] text-white px-3 py-1 rounded-full text-sm font-medium">
                                🚚 Đang giao hàng
                            </span>
                            <button onclick="toggleOrderDetails('ORD202508130002')" class="text-[#0D6EFD] hover:underline text-sm font-medium">
                                Chi tiết
                            </button>
                        </div>
                    </div>

                    <!-- Order Items Preview -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
                        <div class="flex space-x-3">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2">MacBook Air M3 13 inch 256GB</h4>
                                <div class="text-xs text-[#6C757D]">SL: 1 • 25,490,000₫</div>
                            </div>
                        </div>
                        <div class="flex space-x-3">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2">Magic Mouse</h4>
                                <div class="text-xs text-[#6C757D]">SL: 1 • 2,190,000₫</div>
                            </div>
                        </div>
                    </div>

                    <!-- Order Summary -->
                    <div class="flex flex-col md:flex-row items-start md:items-center justify-between">
                        <div class="flex items-center space-x-6 text-sm text-[#6C757D] mb-3 md:mb-0">
                            <span>🚚 Giao hàng nhanh</span>
                            <span>📱 Vía điện tử MoMo</span>
                            <span>📍 TP.HCM</span>
                        </div>
                        <div class="flex items-center space-x-4">
                            <div class="text-right">
                                <div class="text-sm text-[#6C757D]">Tổng tiền</div>
                                <div class="text-xl font-bold text-[#DC3545]">27,710,000₫</div>
                            </div>
                        </div>
                    </div>

                    <!-- Delivery Tracking -->
                    <div class="mt-4 p-4 bg-[#E8F4FD] rounded-lg">
                        <div class="flex items-center space-x-3">
                            <div class="w-10 h-10 bg-[#17A2B8] rounded-full flex items-center justify-center">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M8 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM15 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0z"/>
                                    <path d="M3 4a1 1 0 00-1 1v10a1 1 0 001 1h1.05a2.5 2.5 0 014.9 0H10a1 1 0 001-1V5a1 1 0 00-1-1H3zM14 7a1 1 0 00-1 1v6.05A2.5 2.5 0 0115.95 16H17a1 1 0 001-1v-5a1 1 0 00-.293-.707L16 7.586A1 1 0 0015.414 7H14z"/>
                                </svg>
                            </div>
                            <div class="flex-1">
                                <div class="text-sm font-medium text-[#212529]">Đơn hàng đang được giao đến bạn</div>
                                <div class="text-xs text-[#6C757D]">Dự kiến giao: Hôm nay, 16:00 - 18:00</div>
                                <div class="text-xs text-[#17A2B8] font-medium">Mã vận đơn: SPX123456789</div>
                            </div>
                            <button onclick="trackOrder('ORD202508130002')" class="bg-[#17A2B8] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#138496] transition-colors duration-200">
                                Theo dõi
                            </button>
                        </div>
                    </div>

                    <!-- Order Actions -->
                    <div class="flex flex-wrap gap-3 mt-4 pt-4 border-t border-gray-200">
                        <button onclick="contactShipper('ORD202508130002')" class="bg-[#17A2B8] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#138496] transition-colors duration-200">
                            Liên hệ shipper
                        </button>
                        <button onclick="requestSupport('ORD202508130002')" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                            Hỗ trợ
                        </button>
                    </div>
                </div>
            </div>

            <!-- Order 3 - Pending -->
            <div class="order-item bg-white rounded-lg shadow-sm border border-gray-200" data-status="pending" data-order="ORD202508140003">
                <div class="p-6">
                    <!-- Order Header -->
                    <div class="flex flex-col md:flex-row items-start md:items-center justify-between mb-4">
                        <div class="flex items-center space-x-4 mb-2 md:mb-0">
                            <div>
                                <h3 class="text-lg font-bold text-[#212529]">Đơn hàng #ORD202508140003</h3>
                                <div class="flex items-center space-x-4 text-sm text-[#6C757D]">
                                    <span>🕒 14/08/2025 09:20</span>
                                    <span>•</span>
                                    <span>1 sản phẩm</span>
                                </div>
                            </div>
                        </div>
                        <div class="flex items-center space-x-3">
                            <span class="bg-[#FFC107] text-white px-3 py-1 rounded-full text-sm font-medium">
                                ⏳ Chờ xác nhận
                            </span>
                            <button onclick="toggleOrderDetails('ORD202508140003')" class="text-[#0D6EFD] hover:underline text-sm font-medium">
                                Chi tiết
                            </button>
                        </div>
                    </div>

                    <!-- Order Items Preview -->
                    <div class="grid grid-cols-1 gap-4 mb-4">
                        <div class="flex space-x-3">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2">iPad Pro 12.9 inch M2 256GB WiFi + Cellular</h4>
                                <div class="text-xs text-[#6C757D]">SL: 1 • 31,990,000₫</div>
                            </div>
                        </div>
                    </div>

                    <!-- Order Summary -->
                    <div class="flex flex-col md:flex-row items-start md:items-center justify-between">
                        <div class="flex items-center space-x-6 text-sm text-[#6C757D] mb-3 md:mb-0">
                            <span>🚚 Giao hàng tiêu chuẩn</span>
                            <span>🏦 Chuyển khoản ngân hàng</span>
                            <span>📍 TP.HCM</span>
                        </div>
                        <div class="flex items-center space-x-4">
                            <div class="text-right">
                                <div class="text-sm text-[#6C757D]">Tổng tiền</div>
                                <div class="text-xl font-bold text-[#DC3545]">31,990,000₫</div>
                            </div>
                        </div>
                    </div>

                    <!-- Payment Warning -->
                    <div class="mt-4 p-4 bg-[#FFF9E6] border border-[#FFC107] rounded-lg">
                        <div class="flex items-center space-x-3">
                            <svg class="w-6 h-6 text-[#FFC107] flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M8.257 3.099c.765-1.36 2.722-1.36 3.486 0l5.58 9.92c.75 1.334-.213 2.98-1.742 2.98H4.42c-1.53 0-2.493-1.646-1.743-2.98l5.58-9.92zM11 13a1 1 0 11-2 0 1 1 0 012 0zm-1-8a1 1 0 00-1 1v3a1 1 0 002 0V6a1 1 0 00-1-1z"/>
                            </svg>
                            <div class="flex-1">
                                <div class="text-sm font-medium text-[#E67E22]">Chưa thanh toán</div>
                                <div class="text-xs text-[#6C757D]">Vui lòng hoàn tất thanh toán để xử lý đơn hàng</div>
                            </div>
                        </div>
                    </div>

                    <!-- Order Actions -->
                    <div class="flex flex-wrap gap-3 mt-4 pt-4 border-t border-gray-200">
                        <button onclick="payNow('ORD202508140003')" class="bg-[#FFC107] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#E0A800] transition-colors duration-200">
                            Thanh toán ngay
                        </button>
                        <button onclick="cancelOrder('ORD202508140003')" class="bg-white border border-[#DC3545] text-[#DC3545] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#FDF2F2] transition-colors duration-200">
                            Hủy đơn hàng
                        </button>
                        <button onclick="requestSupport('ORD202508140003')" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                            Hỗ trợ
                        </button>
                    </div>
                </div>
            </div>

            <!-- Order 4 - Cancelled -->
            <div class="order-item bg-white rounded-lg shadow-sm border border-gray-200" data-status="cancelled" data-order="ORD202508110004">
                <div class="p-6">
                    <!-- Order Header -->
                    <div class="flex flex-col md:flex-row items-start md:items-center justify-between mb-4">
                        <div class="flex items-center space-x-4 mb-2 md:mb-0">
                            <div>
                                <h3 class="text-lg font-bold text-[#212529]">Đơn hàng #ORD202508110004</h3>
                                <div class="flex items-center space-x-4 text-sm text-[#6C757D]">
                                    <span>🕒 11/08/2025 16:15</span>
                                    <span>•</span>
                                    <span>2 sản phẩm</span>
                                </div>
                            </div>
                        </div>
                        <div class="flex items-center space-x-3">
                            <span class="bg-[#DC3545] text-white px-3 py-1 rounded-full text-sm font-medium">
                                ❌ Đã hủy
                            </span>
                            <button onclick="toggleOrderDetails('ORD202508110004')" class="text-[#0D6EFD] hover:underline text-sm font-medium">
                                Chi tiết
                            </button>
                        </div>
                    </div>

                    <!-- Order Items Preview -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
                        <div class="flex space-x-3 opacity-60">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2">Sony WH-1000XM5</h4>
                                <div class="text-xs text-[#6C757D]">SL: 1 • 8,990,000₫</div>
                            </div>
                        </div>
                        <div class="flex space-x-3 opacity-60">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2">Apple Watch Series 9</h4>
                                <div class="text-xs text-[#6C757D]">SL: 1 • 12,290,000₫</div>
                            </div>
                        </div>
                    </div>

                    <!-- Cancellation Reason -->
                    <div class="mt-4 p-4 bg-[#FDF2F2] border border-[#DC3545] rounded-lg">
                        <div class="flex items-start space-x-3">
                            <svg class="w-5 h-5 text-[#DC3545] mt-0.5 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z"/>
                            </svg>
                            <div>
                                <div class="text-sm font-medium text-[#DC3545]">Lý do hủy: Thay đổi ý định mua hàng</div>
                                <div class="text-xs text-[#6C757D] mt-1">Đã hoàn tiền: 21,280,000₫ Ngày hủy: 11/08/2025 18:30</div>
                            </div>
                        </div>
                    </div>

                    <!-- Order Actions -->
                    <div class="flex flex-wrap gap-3 mt-4 pt-4 border-t border-gray-200">
                        <button onclick="reorderItems('ORD202508110004')" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200">
                            Mua lại
                        </button>
                        <button onclick="requestSupport('ORD202508110004')" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                            Hỗ trợ
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Empty State (Hidden by default) -->
        <div id="emptyState" class="hidden text-center py-12">
            <div class="text-6xl mb-4">📦</div>
            <h3 class="text-xl font-bold text-[#212529] mb-2">Không tìm thấy đơn hàng</h3>
            <p class="text-[#6C757D] mb-6">Bạn chưa có đơn hàng nào hoặc không có kết quả phù hợp</p>
            <a href="/" class="bg-[#0D6EFD] text-white rounded-lg px-6 py-3 font-medium hover:bg-[#084298] transition-colors duration-200 inline-block">
                Tiếp tục mua sắm
            </a>
        </div>

        <!-- Load More -->
        <div class="text-center mt-8">
            <button id="loadMoreBtn" onclick="loadMoreOrders()" class="bg-white border border-[#0D6EFD] text-[#0D6EFD] rounded-lg px-6 py-3 font-medium hover:bg-[#E7F3FF] transition-colors duration-200">
                Tải thêm đơn hàng
            </button>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-[#212529] text-white py-12 mt-12">
        <div class="container mx-auto max-w-[1200px] px-4">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div>
                    <h3 class="text-xl font-bold text-[#0D6EFD] mb-4">E-commerce</h3>
                    <p class="text-sm text-gray-300 mb-4">Nền tảng mua sắm trực tuyến hàng đầu Việt Nam.</p>
                </div>
                <div>
                    <h4 class="font-bold mb-4">Về chúng tôi</h4>
                    <div class="space-y-2 text-sm">
                        <a href="#" class="block text-gray-300 hover:text-white">Giới thiệu</a>
                        <a href="#" class="block text-gray-300 hover:text-white">Tuyển dụng</a>
                        <a href="#" class="block text-gray-300 hover:text-white">Tin tức</a>
                    </div>
                </div>
                <div>
                    <h4 class="font-bold mb-4">Hỗ trợ</h4>
                    <div class="space-y-2 text-sm">
                        <a href="#" class="block text-gray-300 hover:text-white">Hotline: 1900-1234</a>
                        <a href="#" class="block text-gray-300 hover:text-white">Hướng dẫn mua hàng</a>
                        <a href="#" class="block text-gray-300 hover:text-white">Chính sách đổi trả</a>
                    </div>
                </div>
                <div>
                    <h4 class="font-bold mb-4">Kết nối</h4>
                    <div class="flex space-x-4">
                        <a href="#" class="text-gray-300 hover:text-white">Facebook</a>
                        <a href="#" class="text-gray-300 hover:text-white">Twitter</a>
                        <a href="#" class="text-gray-300 hover:text-white">Instagram</a>
                    </div>
                </div>
            </div>
            <div class="border-t border-gray-700 mt-8 pt-8 text-center text-sm text-gray-300">
                <p>© 2025 E-commerce Vietnam. Tất cả quyền được bảo lưu.</p>
            </div>
        </div>
    </footer>

    <script>
        let currentFilter = 'all';
        let orderData = [
            {
                id: 'ORD202508140001',
                date: '12/08/2025 14:30',
                status: 'delivered',
                items: 3,
                total: 42370000,
                shipping: 'standard',
                payment: 'cod'
            },
            {
                id: 'ORD202508130002',
                date: '13/08/2025 10:45',
                status: 'shipping',
                items: 2,
                total: 27710000,
                shipping: 'fast',
                payment: 'momo'
            },
            {
                id: 'ORD202508140003',
                date: '14/08/2025 09:20',
                status: 'pending',
                items: 1,
                total: 31990000,
                shipping: 'standard',
                payment: 'bank'
            },
            {
                id: 'ORD202508110004',
                date: '11/08/2025 16:15',
                status: 'cancelled',
                items: 2,
                total: 21280000,
                shipping: 'standard',
                payment: 'bank'
            }
        ];

        // Filter orders
        function filterOrders(status) {
            currentFilter = status;
            
            // Update tab appearance
            document.querySelectorAll('.filter-tab').forEach(tab => {
                tab.classList.remove('active', 'border-[#0D6EFD]', 'text-[#0D6EFD]');
                tab.classList.add('border-transparent', 'text-[#6C757D]');
            });
            
            event.target.classList.add('active', 'border-[#0D6EFD]', 'text-[#0D6EFD]');
            event.target.classList.remove('border-transparent', 'text-[#6C757D]');
            
            // Filter orders
            const orders = document.querySelectorAll('.order-item');
            let visibleCount = 0;
            
            orders.forEach(order => {
                const orderStatus = order.dataset.status;
                if (status === 'all' || orderStatus === status) {
                    order.style.display = 'block';
                    visibleCount++;
                } else {
                    order.style.display = 'none';
                }
            });
            
            // Show/hide empty state
            const emptyState = document.getElementById('emptyState');
            const ordersList = document.getElementById('ordersList');
            
            if (visibleCount === 0) {
                ordersList.style.display = 'none';
                emptyState.classList.remove('hidden');
            } else {
                ordersList.style.display = 'block';
                emptyState.classList.add('hidden');
            }
        }

        // Search orders
        function searchOrders() {
            const searchTerm = document.getElementById('orderSearch').value.toLowerCase();
            const orders = document.querySelectorAll('.order-item');
            let visibleCount = 0;
            
            orders.forEach(order => {
                const orderId = order.dataset.order.toLowerCase();
                const orderText = order.textContent.toLowerCase();
                
                if (orderId.includes(searchTerm) || orderText.includes(searchTerm)) {
                    if (currentFilter === 'all' || order.dataset.status === currentFilter) {
                        order.style.display = 'block';
                        visibleCount++;
                    }
                } else {
                    order.style.display = 'none';
                }
            });
            
            // Show/hide empty state
            const emptyState = document.getElementById('emptyState');
            const ordersList = document.getElementById('ordersList');
            
            if (visibleCount === 0) {
                ordersList.style.display = 'none';
                emptyState.classList.remove('hidden');
            } else {
                ordersList.style.display = 'block';
                emptyState.classList.add('hidden');
            }
        }

        // Toggle order details
        function toggleOrderDetails(orderId) {
            const detailsElement = document.getElementById(`details-${orderId}`);
            detailsElement.classList.toggle('hidden');
        }

        // Order actions
        function reorderItems(orderId) {
            console.log('Reordering items from order:', orderId);
            alert(`Đang thêm sản phẩm từ đơn hàng ${orderId} vào giỏ hàng...`);
            // Redirect to cart or show success message
        }

        function downloadInvoice(orderId) {
            console.log('Downloading invoice for order:', orderId);
            alert(`Đang tải hóa đơn cho đơn hàng ${orderId}...`);
            // Trigger download
        }

        function writeReview(orderId) {
            console.log('Writing review for order:', orderId);
            alert(`Chuyển đến trang đánh giá cho đơn hàng ${orderId}...`);
            // Redirect to review page
        }

        function trackOrder(orderId) {
            console.log('Tracking order:', orderId);
            alert(`Hiện thị thông tin theo dõi cho đơn hàng ${orderId}...`);
            // Show tracking modal or redirect
        }

        function contactShipper(orderId) {
            console.log('Contacting shipper for order:', orderId);
            alert(`Liên hệ với shipper cho đơn hàng ${orderId}...`);
        }

        function payNow(orderId) {
            console.log('Processing payment for order:', orderId);
            alert(`Chuyển đến trang thanh toán cho đơn hàng ${orderId}...`);
            // Redirect to payment page
        }

        function cancelOrder(orderId) {
            if (confirm('Bạn có chắc chắn muốn hủy đơn hàng này?')) {
                console.log('Cancelling order:', orderId);
                alert(`Đang xử lý hủy đơn hàng ${orderId}...`);
                // Process cancellation
            }
        }

        function requestSupport(orderId) {
            console.log('Requesting support for order:', orderId);
            alert(`Mở ticket hỗ trợ cho đơn hàng ${orderId}...`);
        }

        function loadMoreOrders() {
            const loadMoreBtn = document.getElementById('loadMoreBtn');
            loadMoreBtn.textContent = 'Đang tải...';
            loadMoreBtn.disabled = true;
            
            setTimeout(() => {
                loadMoreBtn.textContent = 'Không còn đơn hàng nào';
                loadMoreBtn.disabled = true;
                loadMoreBtn.classList.add('opacity-50', 'cursor-not-allowed');
            }, 1500);
        }

        // Initialize page
        document.addEventListener('DOMContentLoaded', function() {
            // Add search functionality
            const searchInput = document.getElementById('orderSearch');
            let searchTimeout;
            
            searchInput.addEventListener('input', function() {
                clearTimeout(searchTimeout);
                searchTimeout = setTimeout(searchOrders, 300);
            });
            
            // Update current time
            const now = new Date();
            const timeString = now.toLocaleString('vi-VN', {
                day: '2-digit',
                month: '2-digit',
                year: 'numeric',
                hour: '2-digit',
                minute: '2-digit'
            });
            
            const timeElement = document.querySelector('.hidden.md\\:flex .text-\\[\\#6C757D\\]');
            if (timeElement && timeElement.textContent.includes('/')) {
                timeElement.textContent = timeString;
            }
            
            // Track page view
            console.log('Order history page viewed:', {
                user: 'hoangdvdinos',
                totalOrders: orderData.length,
                timestamp: '2025-08-14 18:07:43'
            });
        });

        // Update time every minute
        setInterval(() => {
            const now = new Date();
            const timeString = now.toLocaleString('vi-VN', {
                day: '2-digit',
                month: '2-digit',
                year: 'numeric',
                hour: '2-digit',
                minute: '2-digit'
            });
            
            const timeElements = document.querySelectorAll('.text-\\[\\#6C757D\\]');
            timeElements.forEach(el => {
                if (el.textContent.includes('/2025')) {
                    el.textContent = timeString;
                }
            });
        }, 60000);
    </script>
</body>
</html>