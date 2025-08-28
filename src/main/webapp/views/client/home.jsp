<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-commerce - Mua sắm trực tuyến hang dau Viet Nam</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', Arial, Helvetica, sans-serif;
        }

        .hero-gradient {
            background: linear-gradient(135deg, #86a9df 0%, #4d7cc8 100%);
        }

        .animate-float {
            animation: float 3s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-10px);
            }
        }
    </style>
</head>
<body class="bg-[#F8F9FA] leading-relaxed tracking-wide">
<!-- Header -->
<header class="bg-white shadow-sm border-b border-gray-200 sticky top-0 z-40">
    <div class="container mx-auto max-w-[1200px] px-4">
        <!-- Top Bar -->
        <div class="hidden md:flex items-center justify-between py-2 text-xs border-b border-gray-100">
            <div class="flex space-x-4">
                <span class="text-[#6C757D]">Hotlike2: 1900-1235</span>
                <span class="text-[#6C757D]">support@ecommerce.vn</span>
                <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD]">Về chúng tôi</a>
                <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD]">Liên hệ</a>
                <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD]">Hỗ trợ</a>
            </div>
        </div>

        <!-- Main Header -->
        <div class="flex items-center justify-between py-3">
            <!-- Logo -->
            <div class="flex items-center space-x-4">
                <h1 class="text-2xl font-bold text-[#0D6EFD]">E-commerce</h1>
            </div>

            <!-- Search Bar -->
            <div class="hidden md:flex flex-1 max-w-xl mx-8">
                <div class="relative w-full">
                    <label for="search-input" class="sr-only">Search:</label>
                    <input id="search-input" type="text" placeholder="Tìm kiếm sản phẩm..."
                           class="w-full h-10 px-4 pr-12 border border-[#CED4DA] rounded-l-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200">
                    <button class="absolute right-0 top-0 h-10 px-4 bg-[#0D6EFD] text-white rounded-r-md hover:bg-[#084298] transition-colors duration-200">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
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
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                        </svg>
                        <span class="hidden md:block text-sm">hoangdvdinos</span>
                    </button>
                    <!-- Dropdown Menu -->
                    <div class="absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg border border-gray-200 hidden group-hover:block">
                        <a href="#" class="block px-4 py-2 text-sm text-[#212529] hover:bg-[#F8F9FA]">Tài khoản của
                            tôi</a>
                        <a href="#" class="block px-4 py-2 text-sm text-[#212529] hover:bg-[#F8F9FA]">Đơn hàng</a>
                        <a href="#" class="block px-4 py-2 text-sm text-[#212529] hover:bg-[#F8F9FA]">Yêu thích</a>
                        <div class="border-t border-gray-200"></div>
                        <a href="#" class="block px-4 py-2 text-sm text-[#DC3545] hover:bg-[#F8F9FA]">Đăng xuất</a>
                    </div>
                </div>

                <!-- Wishlist -->
                <div class="relative cursor-pointer">
                    <svg class="w-6 h-6 text-[#6C757D] hover:text-[#DC3545] transition-colors duration-200" fill="none"
                         stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                    </svg>
                    <span class="absolute top-0 right-0 bg-[#DC3545] text-white rounded-full text-xs w-5 h-5 flex items-center justify-center transform translate-x-2 -translate-y-2">3</span>
                </div>

                <!-- Shopping Cart -->
                <div class="relative cursor-pointer">
                    <svg class="w-6 h-6 text-[#6C757D] hover:text-[#0D6EFD] transition-colors duration-200" fill="none"
                         stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M3 3h2l.4 2M7 13h10l4-8H5.4m-.4 0L5 5H3m4 8h10m-10 0v6a1 1 0 001 1h8a1 1 0 001-1v-6m-10 0H3"></path>
                    </svg>
                    <span class="absolute top-0 right-0 bg-[#0D6EFD] text-white rounded-full text-xs w-5 h-5 flex items-center justify-center transform translate-x-2 -translate-y-2">2</span>
                </div>

                <!-- Mobile Menu Button -->
                <button class="md:hidden text-[#6C757D] hover:text-[#0D6EFD]">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M4 6h16M4 12h16M4 18h16"></path>
                    </svg>
                </button>
            </div>
        </div>

        <!-- Mobile Search -->
        <div class="md:hidden pb-3">
            <div class="relative">
                <label for="mobile-search-input" class="sr-only">Search:</label>
                <input id="mobile-search-input" type="text" placeholder="Tìm kiểm sản phẩm..."
                       class="w-full h-10 px-4 pr-12 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                <button class="absolute right-2 top-2">
                    <svg class="w-6 h-6 text-[#6C757D]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Navigation -->
    <nav class="bg-[#F8F9FA] border-t border-gray-200">
        <div class="container mx-auto max-w-[1200px] px-4">
            <div class="flex space-x-8 overflow-x-auto py-3">
                <a href="#"
                   class="text-sm font-medium text-[#212529] hover:text-[#0D6EFD] whitespace-nowrap transition-colors duration-200">
                    Điện tử</a>
                <a href="#"
                   class="text-sm font-medium text-[#6C757D] hover:text-[#0D6EFD] whitespace-nowrap transition-colors duration-200">
                    Thời trang</a>
                <a href="#"
                   class="text-sm font-medium text-[#6C757D] hover:text-[#0D6EFD] whitespace-nowrap transition-colors duration-200">
                    Nhà cửa</a>
                <a href="#"
                   class="text-sm font-medium text-[#6C757D] hover:text-[#0D6EFD] whitespace-nowrap transition-colors duration-200">
                    Sách</a>
                <a href="#"
                   class="text-sm font-medium text-[#6C757D] hover:text-[#0D6EFD] whitespace-nowrap transition-colors duration-200">
                    Thể thao</a>
                <a href="#"
                   class="text-sm font-medium text-[#6C757D] hover:text-[#0D6EFD] whitespace-nowrap transition-colors duration-200">
                    Game</a>
                <a href="#"
                   class="text-sm font-medium text-[#6C757D] hover:text-[#0D6EFD] whitespace-nowrap transition-colors duration-200">
                    Làm đẹp</a>
                <a href="#"
                   class="text-sm font-medium text-[#6C757D] hover:text-[#0D6EFD] whitespace-nowrap transition-colors duration-200">
                    Mẹ & Bé</a>
            </div>
        </div>
    </nav>
</header>

<!-- Hero Section -->
<section class="hero-gradient text-white py-16 md:py-24">
    <div class="container mx-auto max-w-[1200px] px-4">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 items-center">
            <div class="text-center lg:text-left">
                <h1 class="text-4xl md:text-6xl font-bold mb-6">
                    Mua sắm thông minh<br>
                    <span class="text-yellow-300">Giá tốt nhất</span>
                </h1>
                <p class="text-xl md:text-2xl mb-8 opacity-90">
                    Hàng trăm sản phẩm chính hãng, giao hàng toàn quốc, đổi trả dễ dàng
                </p>
                <div class="flex flex-col sm:flex-row gap-4 justify-center lg:justify-start">
                    <button class="bg-white text-[#0D6EFD] font-bold py-3 px-8 rounded-lg hover:bg-gray-100 transition-colors duration-200">
                        Khám phá ngay
                    </button>
                    <button class="border-2 border-white text-white font-bold py-3 px-8 rounded-lg hover:bg-white hover:text-[#0D6EFD] transition-colors duration-200">
                        Xem ưu đãi
                    </button>
                </div>
            </div>
            <div class="text-center">
                <div class="animate-float">
                    <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-8 mx-auto max-w-md">
                        <div class="bg-white rounded-xl p-6 mb-4">
                            <div class="w-full h-48 bg-gray-200 rounded-lg mb-4"
                                 style="overflow: hidden; object-fit: contain;">
                                <img src="/assets/img/dev.png" alt="Download on App Store"
                                     alt="Download on App Store">
                            </div>
                            <h3 class="text-[#212529] font-bold text-lg mb-2">iPhone 15 Pro Max</h3>
                            <div class="flex items-center justify-between">
                                <span class="text-[#0D6EFD] font-bold text-xl">?34,990,000</span>
                                <span class="bg-[#DC3545] text-white px-2 py-1 rounded text-sm">-15%</span>
                            </div>
                        </div>
                        <p class="text-yellow-300 font-semibold">Giảm giá lên đến 50%</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Flash Sale -->
<section class="bg-[#DC3545] text-white py-4">
    <div class="container mx-auto max-w-[1200px] px-4">
        <div class="flex items-center justify-between">
            <div class="flex items-center space-x-4">
                <h2 class="text-lg font-bold">? FLASH SALE</h2>
                <div class="flex items-center space-x-2 text-sm">
                    <span>Kết thúc trong:</span>
                    <div class="flex space-x-1">
                        <span class="bg-white text-[#DC3545] px-2 py-1 rounded font-bold" id="hours">12</span>
                        <span>:</span>
                        <span class="bg-white text-[#DC3545] px-2 py-1 rounded font-bold" id="minutes">34</span>
                        <span>:</span>
                        <span class="bg-white text-[#DC3545] px-2 py-1 rounded font-bold" id="seconds">56</span>
                    </div>
                </div>
            </div>
            <a href="#" class="text-sm font-medium hover:underline">Xem tất cả</a>
        </div>
    </div>
</section>

<!-- Features -->
<section class="py-12">
    <div class="container mx-auto max-w-[1200px] px-4">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-6">
            <div class="text-center p-6 bg-white rounded-lg shadow-sm">
                <div class="bg-[#E7F3FF] p-4 rounded-full w-16 h-16 mx-auto mb-4 flex items-center justify-center">
                    <svg class="w-8 h-8 text-[#0D6EFD]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4"></path>
                    </svg>
                </div>
                <h3 class="font-bold text-[#212529] mb-2">Miễn phí vận chuyển</h3>
                <p class="text-sm text-[#6C757D]">Mặt hàng từ 500.000</p>
            </div>
            <div class="text-center p-6 bg-white rounded-lg shadow-sm">
                <div class="bg-[#E8F5E8] p-4 rounded-full w-16 h-16 mx-auto mb-4 flex items-center justify-center">
                    <svg class="w-8 h-8 text-[#198754]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                </div>
                <h3 class="font-bold text-[#212529] mb-2">Đảm bảo chính hãng</h3>
                <p class="text-sm text-[#6C757D]">100% sản phẩm chính hãng</p>
            </div>
            <div class="text-center p-6 bg-white rounded-lg shadow-sm">
                <div class="bg-[#FFF3CD] p-4 rounded-full w-16 h-16 mx-auto mb-4 flex items-center justify-center">
                    <svg class="w-8 h-8 text-[#FFC107]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"></path>
                    </svg>
                </div>
                <h3 class="font-bold text-[#212529] mb-2">Đổi trả 30 ngày</h3>
                <p class="text-sm text-[#6C757D]">Miễn phí chi trả</p>
            </div>
            <div class="text-center p-6 bg-white rounded-lg shadow-sm">
                <div class="bg-[#F8D7DA] p-4 rounded-full w-16 h-16 mx-auto mb-4 flex items-center justify-center">
                    <svg class="w-8 h-8 text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192L5.636 18.364M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z"></path>
                    </svg>
                </div>
                <h3 class="font-bold text-[#212529] mb-2">Hỗ trợ 24/7</h3>
                <p class="text-sm text-[#6C757D]">Tư vấn mọi lúc mọi nơi</p>
            </div>
        </div>
    </div>
</section>

<!-- Flash Sale Products -->
<section class="py-12 bg-white">
    <div class="container mx-auto max-w-[1200px] px-4">
        <div class="flex items-center justify-between mb-8">
            <h2 class="text-3xl font-bold text-[#212529]">? Flash Sale h?m nay</h2>
            <a href="#" class="text-[#0D6EFD] hover:underline font-medium">Xem tất cả</a>
        </div>

        <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-4">
            <!-- Product 1 -->
            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-45%</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">iPhone 15 Pro Max 256GB Titan T?
                    nhi?n</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(1,234)</span>
                </div>
                <div class="space-y-1">
                    <div class="flex items-center space-x-2">
                        <span class="text-[#0D6EFD] font-bold text-lg">?19,990,000</span>
                    </div>
                    <div class="flex items-center space-x-2">
                        <span class="text-[#6C757D] line-through text-sm">?36,990,000</span>
                    </div>
                </div>
                <div class="mt-3">
                    <div class="bg-gray-200 rounded-full h-2 mb-1">
                        <div class="bg-[#FFC107] h-2 rounded-full" style="width: 75%"></div>
                    </div>
                    <span class="text-xs text-[#6C757D]">?? b?n 1,876</span>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-30%</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">MacBook Air M3 13 inch 256GB</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(856)</span>
                </div>
                <div class="space-y-1">
                    <div class="flex items-center space-x-2">
                        <span class="text-[#0D6EFD] font-bold text-lg">?20,990,000</span>
                    </div>
                    <div class="flex items-center space-x-2">
                        <span class="text-[#6C757D] line-through text-sm">?29,990,000</span>
                    </div>
                </div>
                <div class="mt-3">
                    <div class="bg-gray-200 rounded-full h-2 mb-1">
                        <div class="bg-[#FFC107] h-2 rounded-full" style="width: 45%"></div>
                    </div>
                    <span class="text-xs text-[#6C757D]">?? b?n 567</span>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-25%</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">AirPods Pro 2nd Generation USB-C</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(2,143)</span>
                </div>
                <div class="space-y-1">
                    <div class="flex items-center space-x-2">
                        <span class="text-[#0D6EFD] font-bold text-lg">?5,990,000</span>
                    </div>
                    <div class="flex items-center space-x-2">
                        <span class="text-[#6C757D] line-through text-sm">?7,990,000</span>
                    </div>
                </div>
                <div class="mt-3">
                    <div class="bg-gray-200 rounded-full h-2 mb-1">
                        <div class="bg-[#FFC107] h-2 rounded-full" style="width: 85%"></div>
                    </div>
                    <span class="text-xs text-[#6C757D]">Da ban 3,421</span>
                </div>
            </div>

            <!-- Product 4 -->
            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-40%</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">iPad Pro 12.9 inch M2 256GB</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(987)</span>
                </div>
                <div class="space-y-1">
                    <div class="flex items-center space-x-2">
                        <span class="text-[#0D6EFD] font-bold text-lg">?18,990,000</span>
                    </div>
                    <div class="flex items-center space-x-2">
                        <span class="text-[#6C757D] line-through text-sm">?31,990,000</span>
                    </div>
                </div>
                <div class="mt-3">
                    <div class="bg-gray-200 rounded-full h-2 mb-1">
                        <div class="bg-[#FFC107] h-2 rounded-full" style="width: 60%"></div>
                    </div>
                    <span class="text-xs text-[#6C757D]">?? b?n 892</span>
                </div>
            </div>

            <!-- Product 5 -->
            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-35%</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Apple Watch Series 9 45mm GPS</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(654)</span>
                </div>
                <div class="space-y-1">
                    <div class="flex items-center space-x-2">
                        <span class="text-[#0D6EFD] font-bold text-lg">?7,990,000</span>
                    </div>
                    <div class="flex items-center space-x-2">
                        <span class="text-[#6C757D] line-through text-sm">?12,290,000</span>
                    </div>
                </div>
                <div class="mt-3">
                    <div class="bg-gray-200 rounded-full h-2 mb-1">
                        <div class="bg-[#FFC107] h-2 rounded-full" style="width: 35%"></div>
                    </div>
                    <span class="text-xs text-[#6C757D]">?? b?n 423</span>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Categories -->
<section class="py-12 bg-[#F8F9FA]">
    <div class="container mx-auto max-w-[1200px] px-4">
        <h2 class="text-3xl font-bold text-[#212529] text-center mb-8">Danh m?c n?i b?t</h2>

        <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-8 gap-4">
            <div class="text-center p-4 bg-white rounded-lg hover:shadow-sm transition-shadow duration-200 cursor-pointer">
                <div class="text-4xl mb-2">?</div>
                <h3 class="text-sm font-medium text-[#212529]">?i?n tho?i</h3>
            </div>
            <div class="text-center p-4 bg-white rounded-lg hover:shadow-sm transition-shadow duration-200 cursor-pointer">
                <div class="text-4xl mb-2">?</div>
                <h3 class="text-sm font-medium text-[#212529]">Laptop</h3>
            </div>
            <div class="text-center p-4 bg-white rounded-lg hover:shadow-sm transition-shadow duration-200 cursor-pointer">
                <div class="text-4xl mb-2">?</div>
                <h3 class="text-sm font-medium text-[#212529]">Tai nghe</h3>
            </div>
            <div class="text-center p-4 bg-white rounded-lg hover:shadow-sm transition-shadow duration-200 cursor-pointer">
                <div class="text-4xl mb-2">?</div>
                <h3 class="text-sm font-medium text-[#212529]">??ng h?</h3>
            </div>
            <div class="text-center p-4 bg-white rounded-lg hover:shadow-sm transition-shadow duration-200 cursor-pointer">
                <div class="text-4xl mb-2">?</div>
                <h3 class="text-sm font-medium text-[#212529]">Th?i trang</h3>
            </div>
            <div class="text-center p-4 bg-white rounded-lg hover:shadow-sm transition-shadow duration-200 cursor-pointer">
                <div class="text-4xl mb-2">?</div>
                <h3 class="text-sm font-medium text-[#212529]">Gi?y d?p</h3>
            </div>
            <div class="text-center p-4 bg-white rounded-lg hover:shadow-sm transition-shadow duration-200 cursor-pointer">
                <div class="text-4xl mb-2">?</div>
                <h3 class="text-sm font-medium text-[#212529]">Nh? c?a</h3>
            </div>
            <div class="text-center p-4 bg-white rounded-lg hover:shadow-sm transition-shadow duration-200 cursor-pointer">
                <div class="text-4xl mb-2">?</div>
                <h3 class="text-sm font-medium text-[#212529]">L?m ??p</h3>
            </div>
        </div>
    </div>
</section>

<!-- Top Products -->
<section class="py-12 bg-white">
    <div class="container mx-auto max-w-[1200px] px-4">
        <h2 class="text-3xl font-bold text-[#212529] text-center mb-8">S?n ph?m b?n ch?y</h2>

        <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
            <!-- Repeat product cards similar to flash sale section -->
            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">Bestseller</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Samsung Galaxy S24 Ultra</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(3,542)</span>
                </div>
                <div class="space-y-1">
                    <span class="text-[#0D6EFD] font-bold text-base">?33,990,000</span>
                </div>
            </div>

            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">Bestseller</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Sony WH-1000XM5</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(2,876)</span>
                </div>
                <div class="space-y-1">
                    <span class="text-[#0D6EFD] font-bold text-base">?8,990,000</span>
                </div>
            </div>

            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">Bestseller</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Nintendo Switch OLED</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(1,654)</span>
                </div>
                <div class="space-y-1">
                    <span class="text-[#0D6EFD] font-bold text-base">?8,490,000</span>
                </div>
            </div>

            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">Bestseller</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Canon EOS R6 Mark II</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(987)</span>
                </div>
                <div class="space-y-1">
                    <span class="text-[#0D6EFD] font-bold text-base">?62,990,000</span>
                </div>
            </div>

            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">Bestseller</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Dyson V15 Detect</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(743)</span>
                </div>
                <div class="space-y-1">
                    <span class="text-[#0D6EFD] font-bold text-base">?18,990,000</span>
                </div>
            </div>

            <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                <div class="relative mb-3">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <span class="absolute top-2 left-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">Bestseller</span>
                    <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                        <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor"
                             viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                </div>
                <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Tesla Model 3 Accessories Kit</h3>
                <div class="flex items-center space-x-1 mb-2">
                    <div class="flex text-yellow-400 text-xs">
                        ?????
                    </div>
                    <span class="text-xs text-[#6C757D]">(432)</span>
                </div>
                <div class="space-y-1">
                    <span class="text-[#0D6EFD] font-bold text-base">?2,990,000</span>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Newsletter -->
<section class="py-12 bg-[#0D6EFD] text-white">
    <div class="container mx-auto max-w-[1200px] px-4">
        <div class="max-w-2xl mx-auto text-center">
            <h2 class="text-3xl font-bold mb-4">Đăng kí nhận tin khuyến mãi</h2>
            <p class="text-xl mb-8 opacity-90">Nhận thông báo sớm nhất và chương trình ưu đãi đặc biệt</p>
            <div class="flex flex-col sm:flex-row gap-4 max-w-md mx-auto">
                <label for="email-input" class="sr-only">Email:</label>
                <input id="email-input" type="email" placeholder="Nhập email của bạn"
                       class="flex-1 h-12 px-4 rounded-lg text-[#212529] focus:outline-none focus:ring-2 focus:ring-white">
                <button class="bg-white text-[#0D6EFD] font-bold px-8 py-3 rounded-lg hover:bg-gray-100 transition-colors duration-200">
                    Đăng kí
                </button>
            </div>
            <p class="text-sm opacity-75 mt-4">Chúng tôi cam kết bảo mật thông tin cá nhân của bạn</p>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="bg-[#212529] text-white py-12">
    <div class="container mx-auto max-w-[1200px] px-4">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
            <div>
                <h3 class="text-xl font-bold text-[#0D6EFD] mb-4">E-commerce</h3>
                <p class="text-sm text-gray-300 mb-4">N?n t?ng mua s?m tr?c tuy?n h?ng ??u Vi?t Nam v?i h?ng tri?u s?n
                    ph?m ch?t l??ng cao.</p>
                <div class="flex space-x-4">
                    <a href="#" class="text-gray-300 hover:text-white">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z">
                                Fallback content
                            </path>
                        </svg>
                    </a>
                    <a href="#" class="text-gray-300 hover:text-white">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
                        </svg>
                    </a>
                    <a href="#" class="text-gray-300 hover:text-white">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12.017 0C5.396 0 .029 5.367.029 11.987c0 5.079 3.158 9.417 7.618 11.174-.105-.949-.199-2.403.041-3.439.219-.937 1.406-5.957 1.406-5.957s-.359-.72-.359-1.781c0-1.663.967-2.911 2.168-2.911 1.024 0 1.518.769 1.518 1.688 0 1.029-.653 2.567-.992 3.992-.285 1.193.6 2.165 1.775 2.165 2.128 0 3.768-2.245 3.768-5.487 0-2.861-2.063-4.869-5.008-4.869-3.41 0-5.409 2.562-5.409 5.199 0 1.033.394 2.143.889 2.741.097.118.112.221.085.341-.09.394-.293 1.199-.334 1.363-.053.225-.172.271-.402.165-1.495-.69-2.433-2.878-2.433-4.646 0-3.776 2.748-7.252 7.92-7.252 4.158 0 7.392 2.967 7.392 6.923 0 4.135-2.607 7.462-6.233 7.462-1.214 0-2.357-.629-2.746-1.378l-.748 2.853c-.271 1.043-1.002 2.35-1.492 3.146C9.57 23.812 10.763 24.009 12.017 24.009c6.624 0 11.99-5.367 11.99-11.988C24.007 5.367 18.641.001.012.001z">
                                Fallback content
                            </path>
                        </svg>
                    </a>
                    <a href="#" class="text-gray-300 hover:text-white">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12.027 0c-6.627 0-12.027 5.373-12.027 12 0 5.303 3.438 9.8 8.206 11.387.599.111.793-.26.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z">
                                Fallback content
                            </path>
                        </svg>
                    </a>
                </div>
            </div>
            <div>
                <h4 class="font-bold mb-4">V? E-commerce</h4>
                <div class="space-y-2 text-sm">
                    <a href="#" class="block text-gray-300 hover:text-white">Gi?i thi?u</a>
                    <a href="#" class="block text-gray-300 hover:text-white">Tuy?n d?ng</a>
                    <a href="#" class="block text-gray-300 hover:text-white">Tin t?c</a>
                    <a href="#" class="block text-gray-300 hover:text-white">?i?u kho?n</a>
                    <a href="#" class="block text-gray-300 hover:text-white">Ch?nh s?ch b?o m?t</a>
                </div>
            </div>
            <div>
                <h4 class="font-bold mb-4">H? tr? kh?ch h?ng</h4>
                <div class="space-y-2 text-sm">
                    <a href="#" class="block text-gray-300 hover:text-white">Hotline: 1900-1234</a>
                    <a href="#" class="block text-gray-300 hover:text-white">Email: support@ecommerce.vn</a>
                    <a href="#" class="block text-gray-300 hover:text-white">H??ng d?n mua h?ng</a>
                    <a href="#" class="block text-gray-300 hover:text-white">H??ng d?n thanh to�n</a>
                    <a href="#" class="block text-gray-300 hover:text-white">Ch?nh s?ch ??i tr?</a>
                </div>
            </div>
            <div>
                <h4 class="font-bold mb-4">Download apps</h4>
                <div class="space-y-3">
                    <a href="#" class="block">
                        <img src="/assets/img/dev.png" alt="Download on App Store"
                             alt="Download on App Store" class="h-10">
                    </a>
                    <a href="#" class="block">
                        <img src="/assets/img/dev.png" alt="Download on App Store"
                             alt="Download on App Store" class="h-10">
                    </a>
                </div>
                <div class="mt-4">
                    <h5 class="font-medium mb-2">Ph??ng th?c thanh to�n</h5>
                    <div class="flex space-x-2">
                        <div class="w-8 h-6 bg-blue-600 rounded text-white text-xs flex items-center justify-center">V
                        </div>
                        <div class="w-8 h-6 bg-red-600 rounded text-white text-xs flex items-center justify-center">M
                        </div>
                        <div class="w-8 h-6 bg-yellow-500 rounded text-white text-xs flex items-center justify-center">
                            ?
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="border-t border-gray-700 mt-8 pt-8 text-center text-sm text-gray-300">
            <p>? 2025 E-commerce Vietnam. T?t c? quy?n ???c b?o l?u. | Gi?y ph?p kinh doanh s?: 0123456789</p>
            <p class="mt-2">??a ch?: 123 ???ng ABC, Qu?n 1, TP.HCM | Email: info@ecommerce.vn</p>
        </div>
    </div>
</footer>

<script>
    // Flash Sale Countdown Timer
    function updateCountdown() {
        const now = new Date();
        const endTime = new Date();
        endTime.setHours(23, 59, 59, 999); // End of day

        const timeDiff = endTime - now;

        if (timeDiff > 0) {
            const hours = Math.floor(timeDiff / (1000 * 60 * 60));
            const minutes = Math.floor((timeDiff % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((timeDiff % (1000 * 60)) / 1000);

            document.getElementById('hours').textContent = hours.toString().padStart(2, '0');
            document.getElementById('minutes').textContent = minutes.toString().padStart(2, '0');
            document.getElementById('seconds').textContent = seconds.toString().padStart(2, '0');
        } else {
            // Reset to next day
            document.getElementById('hours').textContent = '24';
            document.getElementById('minutes').textContent = '00';
            document.getElementById('seconds').textContent = '00';
        }
    }

    // Update countdown every second
    setInterval(updateCountdown, 1000);
    updateCountdown(); // Initial call

    // Product card interactions
    document.addEventListener('DOMContentLoaded', function () {
        // Add to cart functionality
        const productCards = document.querySelectorAll('.group');

        productCards.forEach(card => {
            card.addEventListener('click', function (e) {
                // Don't trigger if clicking on wishlist button
                if (e.target.closest('button')) return;

                // Navigate to product detail page
                console.log('Navigate to product detail');
                // window.location.href = '/product/detail';
            });
        });

        // Wishlist functionality
        const wishlistBtns = document.querySelectorAll('.group button');

        wishlistBtns.forEach(btn => {
            btn.addEventListener('click', function (e) {
                e.stopPropagation();

                const icon = this.querySelector('svg');
                const isLiked = icon.classList.contains('text-[#DC3545]');

                if (isLiked) {
                    icon.classList.remove('text-[#DC3545]', 'fill-current');
                    icon.classList.add('text-[#6C757D]');
                    console.log('Removed from wishlist');
                } else {
                    icon.classList.remove('text-[#6C757D]');
                    icon.classList.add('text-[#DC3545]', 'fill-current');
                    console.log('Added to wishlist');
                }
            });
        });

        // Search functionality
        const searchInputs = document.querySelectorAll('input[type="text"]');

        searchInputs.forEach(input => {
            if (input.placeholder.includes('T?m ki?m')) {
                input.addEventListener('keypress', function (e) {
                    if (e.key === 'Enter') {
                        performSearch(this.value);
                    }
                });
            }
        });

        // Newsletter subscription
        const newsletterForm = document.querySelector('.flex.flex-col.sm\\:flex-row');
        if (newsletterForm) {
            const emailInput = newsletterForm.querySelector('input[type="email"]');
            const submitBtn = newsletterForm.querySelector('button');

            submitBtn.addEventListener('click', function () {
                const email = emailInput.value.trim();
                if (email && validateEmail(email)) {
                    alert('Đăng ký thành công! Cảm ơn bạn đã đăng ký nhận tin khuyến mãi.');
                    emailInput.value = '';
                } else {
                    alert('Vui lòng nhập email hợp lệ.');
                }
            });
        }
    });

    function performSearch(query) {
        if (query && query.trim()) {
            console.log('Tìm kiếm:', query);
            window.location.href = "/search?q=" + encodeURIComponent(query);
        } else {
            alert('Vui lòng nhập từ khóa tìm kiếm hợp lệ.');
        }
    }

    function validateEmail(email) {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }

    // Mobile menu toggle (if needed)
    function toggleMobileMenu() {
        // Implementation for mobile menu
        console.log('Toggle mobile menu');
    }

    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });

    // Lazy loading for images (if real images were used)
    if ('IntersectionObserver' in window) {
        const imageObserver = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const image = entry.target;
                    image.src = image.dataset.src;
                    imageObserver.unobserve(image);
                }
            });
        });

        document.querySelectorAll('img[data-src]').forEach(img => {
            imageObserver.observe(img);
        });
    }

    // Analytics tracking (placeholder)
    function trackEvent(eventName, properties = {}) {
        console.log('Track event:', eventName, properties);
        // In real implementation, send to analytics service
    }

    // Track page view
    trackEvent('page_view', {
        page: 'homepage',
        user: 'hoangdvdinos',
        timestamp: '2025-08-14 10:36:33'
    });
</script>
</body>
</html>
