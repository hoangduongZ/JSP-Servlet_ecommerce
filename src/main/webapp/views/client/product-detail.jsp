<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iPhone 15 Pro Max 256GB Titan Tự nhiên - E-commerce</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', Arial, Helvetica, sans-serif; }
        .image-thumbnail.active { border-color: #0D6EFD; }
        .image-thumbnail:hover { border-color: #0D6EFD; }
        .zoom-container { position: relative; overflow: hidden; cursor: crosshair; }
        .zoom-image { transition: transform 0.2s ease; }
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
                    <span class="text-[#6C757D]">14/08/2025 17:45</span>
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
                            <a href="#" class="block px-4 py-2 text-sm text-[#212529] hover:bg-[#F8F9FA]">Đơn hàng</a>
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
                    <div class="relative cursor-pointer" onclick="openCartDrawer()">
                        <svg class="w-6 h-6 text-[#6C757D] hover:text-[#0D6EFD] transition-colors duration-200" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4m-.4 0L5 5H3m4 8h10m-10 0v6a1 1 0 001 1h8a1 1 0 001-1v-6m-10 0H3"></path>
                        </svg>
                        <span id="cartCount" class="absolute top-0 right-0 bg-[#0D6EFD] text-white rounded-full text-xs w-5 h-5 flex items-center justify-center transform translate-x-2 -translate-y-2">2</span>
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
                <li><a href="/category/electronics" class="text-[#6C757D] hover:text-[#0D6EFD]">Điện tử</a></li>
                <li class="text-[#6C757D]">/</li>
                <li><a href="/category/smartphone" class="text-[#6C757D] hover:text-[#0D6EFD]">Điện thoại</a></li>
                <li class="text-[#6C757D]">/</li>
                <li class="text-[#212529] font-medium">iPhone 15 Pro Max 256GB</li>
            </ol>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto max-w-[1200px] px-4 py-6">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
            <!-- Product Images -->
            <div class="space-y-4">
                <!-- Main Image -->
                <div class="zoom-container bg-white rounded-lg shadow-sm p-4">
                    <img id="mainImage" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='500' height='500' viewBox='0 0 500 500'%3E%3Crect width='500' height='500' fill='%23F3F4F6'/%3E%3Ctext x='250' y='250' text-anchor='middle' dy='.3em' font-family='Arial' font-size='24' fill='%236B7280'%3EiPhone 15 Pro Max%3C/text%3E%3C/svg%3E" alt="iPhone 15 Pro Max 256GB" class="zoom-image w-full h-96 object-cover rounded-lg">
                    
                    <!-- Badges -->
                    <div class="absolute top-6 left-6 space-y-2">
                        <span class="bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-25%</span>
                        <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">Freeship</span>
                    </div>
                    
                    <!-- Wishlist -->
                    <button onclick="toggleWishlist()" class="absolute top-6 right-6 p-2 bg-white rounded-full shadow-md hover:shadow-lg transition-shadow duration-200">
                        <svg id="wishlistIcon" class="w-6 h-6 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </button>
                    
                    <!-- Share -->
                    <button onclick="shareProduct()" class="absolute bottom-6 right-6 p-2 bg-white rounded-full shadow-md hover:shadow-lg transition-shadow duration-200">
                        <svg class="w-6 h-6 text-[#6C757D] hover:text-[#0D6EFD]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8.684 13.342C8.886 12.938 9 12.482 9 12c0-.482-.114-.938-.316-1.342m0 2.684a3 3 0 110-2.684m0 2.684l6.632 3.316m-6.632-6l6.632-3.316m0 0a3 3 0 105.367-2.684 3 3 0 00-5.367 2.684zm0 9.316a3 3 0 105.367 2.684 3 3 0 00-5.367-2.684z"></path>
                        </svg>
                    </button>
                </div>
                
                <!-- Thumbnail Images -->
                <div class="grid grid-cols-5 gap-2">
                    <img onclick="changeMainImage(this)" class="image-thumbnail active w-full h-20 object-cover rounded-lg border-2 border-transparent cursor-pointer hover:border-[#0D6EFD] transition-colors duration-200" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Crect width='100' height='100' fill='%23F3F4F6'/%3E%3Ctext x='50' y='50' text-anchor='middle' dy='.3em' font-family='Arial' font-size='12' fill='%236B7280'%3E1%3C/text%3E%3C/svg%3E" alt="iPhone view 1">
                    <img onclick="changeMainImage(this)" class="image-thumbnail w-full h-20 object-cover rounded-lg border-2 border-transparent cursor-pointer hover:border-[#0D6EFD] transition-colors duration-200" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Crect width='100' height='100' fill='%23E5E7EB'/%3E%3Ctext x='50' y='50' text-anchor='middle' dy='.3em' font-family='Arial' font-size='12' fill='%236B7280'%3E2%3C/text%3E%3C/svg%3E" alt="iPhone view 2">
                    <img onclick="changeMainImage(this)" class="image-thumbnail w-full h-20 object-cover rounded-lg border-2 border-transparent cursor-pointer hover:border-[#0D6EFD] transition-colors duration-200" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Crect width='100' height='100' fill='%23D1D5DB'/%3E%3Ctext x='50' y='50' text-anchor='middle' dy='.3em' font-family='Arial' font-size='12' fill='%236B7280'%3E3%3C/text%3E%3C/svg%3E" alt="iPhone view 3">
                    <img onclick="changeMainImage(this)" class="image-thumbnail w-full h-20 object-cover rounded-lg border-2 border-transparent cursor-pointer hover:border-[#0D6EFD] transition-colors duration-200" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Crect width='100' height='100' fill='%23F9FAFB'/%3E%3Ctext x='50' y='50' text-anchor='middle' dy='.3em' font-family='Arial' font-size='12' fill='%236B7280'%3E4%3C/text%3E%3C/svg%3E" alt="iPhone view 4">
                    <img onclick="changeMainImage(this)" class="image-thumbnail w-full h-20 object-cover rounded-lg border-2 border-transparent cursor-pointer hover:border-[#0D6EFD] transition-colors duration-200" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'%3E%3Crect width='100' height='100' fill='%23111827'/%3E%3Ctext x='50' y='50' text-anchor='middle' dy='.3em' font-family='Arial' font-size='12' fill='%23FFFFFF'%3E5%3C/text%3E%3C/svg%3E" alt="iPhone view 5">
                </div>
            </div>

            <!-- Product Info -->
            <div class="space-y-6">
                <!-- Product Title & Rating -->
                <div>
                    <h1 class="text-3xl font-bold text-[#212529] mb-3">iPhone 15 Pro Max 256GB Titan Tự nhiên</h1>
                    <div class="flex items-center space-x-4 mb-3">
                        <div class="flex items-center space-x-1">
                            <div class="flex text-yellow-400">?????</div>
                            <span class="text-sm font-medium text-[#212529]">4.8</span>
                            <span class="text-sm text-[#6C757D]">(1,234 đánh giá)</span>
                        </div>
                        <div class="text-sm text-[#6C757D]">?</div>
                        <div class="text-sm text-[#6C757D]">Đã bán 2,567</div>
                        <div class="text-sm text-[#6C757D]">?</div>
                        <div class="text-sm text-[#198754]">Còn hàng</div>
                    </div>
                    <div class="flex items-center space-x-2">
                        <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded text-xs font-medium">Chính hãng</span>
                        <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs font-medium">Bảo hành 12 tháng</span>
                        <span class="bg-[#FFC107] text-white px-2 py-1 rounded text-xs font-medium">Trả góp 0%</span>
                    </div>
                </div>

                <!-- Price -->
                <div class="bg-[#F8F9FA] rounded-lg p-4">
                    <div class="space-y-2">
                        <div class="flex items-center space-x-3">
                            <span class="text-3xl font-bold text-[#DC3545]">đ27,990,000</span>
                            <span class="text-xl text-[#6C757D] line-through">đ36,990,000</span>
                            <span class="bg-[#DC3545] text-white px-2 py-1 rounded text-sm font-bold">-25%</span>
                        </div>
                        <div class="text-sm text-[#198754]">Tiết kiệm: đ9,000,000</div>
                        <div class="text-xs text-[#6C757D]">Giá đã bao gồm VAT</div>
                    </div>
                </div>

                <!-- Options -->
                <div class="space-y-4">
                    <!-- Storage -->
                    <div>
                        <h3 class="text-sm font-medium text-[#212529] mb-2">Dung lượng</h3>
                        <div class="grid grid-cols-3 gap-2">
                            <button onclick="selectOption('storage', '128GB')" class="storage-option border-2 border-[#CED4DA] rounded-lg p-3 text-center hover:border-[#0D6EFD] transition-colors duration-200">
                                <div class="text-sm font-medium">128GB</div>
                                <div class="text-xs text-[#6C757D]">đ25,990,000</div>
                            </button>
                            <button onclick="selectOption('storage', '256GB')" class="storage-option border-2 border-[#0D6EFD] bg-[#E7F3FF] rounded-lg p-3 text-center">
                                <div class="text-sm font-medium text-[#0D6EFD]">256GB</div>
                                <div class="text-xs text-[#0D6EFD]">đ27,990,000</div>
                            </button>
                            <button onclick="selectOption('storage', '512GB')" class="storage-option border-2 border-[#CED4DA] rounded-lg p-3 text-center hover:border-[#0D6EFD] transition-colors duration-200">
                                <div class="text-sm font-medium">512GB</div>
                                <div class="text-xs text-[#6C757D]">đ32,990,000</div>
                            </button>
                        </div>
                    </div>

                    <!-- Color -->
                    <div>
                        <h3 class="text-sm font-medium text-[#212529] mb-2">Màu sắc</h3>
                        <div class="flex space-x-2">
                            <button onclick="selectOption('color', 'natural')" class="color-option w-12 h-12 rounded-full border-4 border-[#0D6EFD] bg-gray-300 relative">
                                <span class="absolute inset-0 flex items-center justify-center text-white text-xs">?</span>
                            </button>
                            <button onclick="selectOption('color', 'blue')" class="color-option w-12 h-12 rounded-full border-2 border-gray-300 bg-blue-600 hover:border-[#0D6EFD] transition-colors duration-200"></button>
                            <button onclick="selectOption('color', 'white')" class="color-option w-12 h-12 rounded-full border-2 border-gray-300 bg-white hover:border-[#0D6EFD] transition-colors duration-200"></button>
                            <button onclick="selectOption('color', 'black')" class="color-option w-12 h-12 rounded-full border-2 border-gray-300 bg-black hover:border-[#0D6EFD] transition-colors duration-200"></button>
                        </div>
                        <div class="text-sm text-[#6C757D] mt-1">Titan Tự nhiên</div>
                    </div>
                </div>

                <!-- Quantity -->
                <div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2">Số lượng</h3>
                    <div class="flex items-center space-x-3">
                        <div class="flex items-center border border-[#CED4DA] rounded-lg">
                            <button onclick="decreaseQuantity()" class="px-3 py-2 text-[#6C757D] hover:bg-[#F8F9FA] rounded-l-lg transition-colors duration-200">?</button>
                            <input type="number" id="quantity" value="1" min="1" max="5" class="w-16 text-center border-none focus:outline-none">
                            <button onclick="increaseQuantity()" class="px-3 py-2 text-[#6C757D] hover:bg-[#F8F9FA] rounded-r-lg transition-colors duration-200">+</button>
                        </div>
                        <span class="text-sm text-[#6C757D]">Còn 47 sản phẩm</span>
                    </div>
                </div>

                <!-- Action Buttons -->
                <div class="space-y-3">
                    <button onclick="addToCart()" class="w-full bg-[#0D6EFD] text-white rounded-lg px-6 py-3 font-bold text-lg hover:bg-[#084298] transition-colors duration-200">
                        Thêm vào giỏ hàng
                    </button>
                    <div class="grid grid-cols-2 gap-3">
                        <button onclick="buyNow()" class="bg-[#198754] text-white rounded-lg px-6 py-3 font-medium hover:bg-[#157347] transition-colors duration-200">
                            Mua ngay
                        </button>
                        <button onclick="installmentPurchase()" class="bg-[#FFC107] text-white rounded-lg px-6 py-3 font-medium hover:bg-[#E0A800] transition-colors duration-200">
                            Trả góp 0%
                        </button>
                    </div>
                </div>

                <!-- Services -->
                <div class="bg-white rounded-lg border border-gray-200 p-4">
                    <h3 class="text-sm font-bold text-[#212529] mb-3">Dịch vụ kèm theo</h3>
                    <div class="space-y-2 text-sm">
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                            </svg>
                            <span class="text-[#212529]">Miễn phí giao hàng toàn quốc</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                            </svg>
                            <span class="text-[#212529]">Đổi trả trong 30 ngày</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                            </svg>
                            <span class="text-[#212529]">Bảo hành chính hãng 12 tháng</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                            </svg>
                            <span class="text-[#212529]">Hỗ trợ kỹ thuật 24/7</span>
                        </div>
                    </div>
                </div>

                <!-- Store Info -->
                <div class="bg-[#F8F9FA] rounded-lg p-4">
                    <div class="flex items-center space-x-3">
                        <div class="w-12 h-12 bg-[#0D6EFD] rounded-full flex items-center justify-center">
                            <span class="text-white font-bold">E</span>
                        </div>
                        <div class="flex-1">
                            <h4 class="font-medium text-[#212529]">E-commerce Official Store</h4>
                            <div class="flex items-center space-x-2 text-sm text-[#6C757D]">
                                <span>★ 4.9 (98.5% phản hồi tích cực)</span>
                                <span>•</span>
                                <span>Online 15 phút trước</span>
                            </div>
                        </div>
                        <button class="bg-white border border-[#0D6EFD] text-[#0D6EFD] rounded-lg px-4 py-2 text-sm font-medium hover:bg-[#0D6EFD] hover:text-white transition-colors duration-200">
                            Xem shop
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product Details Tabs -->
        <div class="mt-12">
            <div class="bg-white rounded-lg shadow-sm">
                <!-- Tab Headers -->
                <div class="border-b border-gray-200">
                    <nav class="flex space-x-8 px-6">
                        <button onclick="switchTab('description')" class="tab-button py-4 border-b-2 border-[#0D6EFD] text-[#0D6EFD] font-medium">
                            Mô tả sản phẩm
                        </button>
                        <button onclick="switchTab('specifications')" class="tab-button py-4 border-b-2 border-transparent text-[#6C757D] hover:text-[#0D6EFD] font-medium">
                            Thông số kỹ thuật
                        </button>
                        <button onclick="switchTab('reviews')" class="tab-button py-4 border-b-2 border-transparent text-[#6C757D] hover:text-[#0D6EFD] font-medium">
                            Đánh giá (1,234)
                        </button>
                        <button onclick="switchTab('shipping')" class="tab-button py-4 border-b-2 border-transparent text-[#6C757D] hover:text-[#0D6EFD] font-medium">
                            Vận chuyển
                        </button>
                    </nav>
                </div>

                <!-- Tab Content -->
                <div class="p-6">
                    <!-- Description Tab -->
                    <div id="description-tab" class="tab-content">
                        <div class="prose max-w-none">
                            <h3 class="text-xl font-bold text-[#212529] mb-4">iPhone 15 Pro Max - Siêu phẩm công nghệ 2024</h3>
                            <p class="text-[#6C757D] mb-4">
                                iPhone 15 Pro Max mang đến trải nghiệm hoàn toàn mới với chip A17 Pro mạnh mẽ, camera tiên tiến và thiết kế titan cao cấp.
                                Đây là chiếc iPhone Pro Max mỏng nhẹ nhất từ trước đến nay với nhiều tính năng đột phá.
                            </p>
                            
                            <h4 class="text-lg font-bold text-[#212529] mb-3">Tính năng nổi bật:</h4>
                            <ul class="list-disc list-inside space-y-2 text-[#6C757D] mb-6">
                                <li>Chip A17 Pro với GPU 6 nhân mạnh mẽ nhất từ trước đến nay</li>
                                <li>Camera chính 48MP với tele 5x và siêu góc rộng</li>
                                <li>Màn hình Super Retina XDR 6.7 inch với ProMotion 120Hz</li>
                                <li>Thiết kế titan nhẹ và bền bỉ</li>
                                <li>Cổng USB-C với hỗ trợ sạc nhanh</li>
                                <li>Pin sử dụng cả ngày với khả năng quay video 4K</li>
                            </ul>

                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <div class="bg-[#F8F9FA] rounded-lg p-4">
                                    <h4 class="font-bold text-[#212529] mb-3">• Thiết kế & Màn hình</h4>
                                    <ul class="text-sm text-[#6C757D] space-y-1">
                                        <li>• Khung viền Titan cấp độ hàng không vũ trụ</li>
                                        <li>• Màn hình 6.7" Super Retina XDR</li>
                                        <li>• Độ phân giải 2796 x 1290 pixel</li>
                                        <li>• ProMotion với tần số quét lên đến 120Hz</li>
                                    </ul>
                                </div>
                                
                                <div class="bg-[#F8F9FA] rounded-lg p-4">
                                    <h4 class="font-bold text-[#212529] mb-3">• Camera & Video</h4>
                                    <ul class="text-sm text-[#6C757D] space-y-1">
                                        <li>• Camera chính 48MP với f/1.78</li>
                                        <li>• Camera tele 12MP với zoom quang học 5x</li>
                                        <li>• Camera siêu góc rộng 12MP</li>
                                        <li>• Quay video ProRes 4K, Action Mode</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Specifications Tab -->
                    <div id="specifications-tab" class="tab-content hidden">
                        <div class="space-y-6">
                            <h3 class="text-xl font-bold text-[#212529]">Thông số kỹ thuật chi tiết</h3>

                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <div class="space-y-4">
                                    <div class="bg-[#F8F9FA] rounded-lg p-4">
                                        <h4 class="font-bold text-[#212529] mb-3">Thiết kế & Trọng lượng</h4>
                                        <table class="w-full text-sm">
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">Kích thước</td>
                                                <td class="py-2 text-[#212529]">159.9 x 76.7 x 8.25 mm</td>
                                            </tr>
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">Trọng lượng</td>
                                                <td class="py-2 text-[#212529]">221g</td>
                                            </tr>
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">Chất liệu</td>
                                                <td class="py-2 text-[#212529]">Khung Titan, mặt lưng kính</td>
                                            </tr>
                                            <tr>
                                                <td class="py-2 text-[#6C757D]">Kháng nước</td>
                                                <td class="py-2 text-[#212529]">IP68 (6m, 30 phút)</td>
                                            </tr>
                                        </table>
                                    </div>

                                    <div class="bg-[#F8F9FA] rounded-lg p-4">
                                        <h4 class="font-bold text-[#212529] mb-3">Hiệu năng</h4>
                                        <table class="w-full text-sm">
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">Chip xử lý</td>
                                                <td class="py-2 text-[#212529]">A17 Pro 6 nhân</td>
                                            </tr>
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">GPU</td>
                                                <td class="py-2 text-[#212529]">6 nhân</td>
                                            </tr>
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">Neural Engine</td>
                                                <td class="py-2 text-[#212529]">16 nhân</td>
                                            </tr>
                                            <tr>
                                                <td class="py-2 text-[#6C757D]">Bộ nhớ trong</td>
                                                <td class="py-2 text-[#212529]">256GB</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="space-y-4">
                                    <div class="bg-[#F8F9FA] rounded-lg p-4">
                                        <h4 class="font-bold text-[#212529] mb-3">Màn hình</h4>
                                        <table class="w-full text-sm">
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">Kích thước</td>
                                                <td class="py-2 text-[#212529]">6.7 inch</td>
                                            </tr>
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">Công nghệ</td>
                                                <td class="py-2 text-[#212529]">Super Retina XDR OLED</td>
                                            </tr>
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">Độ phân giải</td>
                                                <td class="py-2 text-[#212529]">2796 x 1290 pixel</td>
                                            </tr>
                                            <tr>
                                                <td class="py-2 text-[#6C757D]">Tần số quét</td>
                                                <td class="py-2 text-[#212529]">ProMotion 120Hz</td>
                                            </tr>
                                        </table>
                                    </div>

                                    <div class="bg-[#F8F9FA] rounded-lg p-4">
                                        <h4 class="font-bold text-[#212529] mb-3">Kết nối</h4>
                                        <table class="w-full text-sm">
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">Cổng sạc</td>
                                                <td class="py-2 text-[#212529]">USB-C</td>
                                            </tr>
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">WiFi</td>
                                                <td class="py-2 text-[#212529]">Wi-Fi 6E (802.11ax)</td>
                                            </tr>
                                            <tr class="border-b border-gray-200">
                                                <td class="py-2 text-[#6C757D]">Bluetooth</td>
                                                <td class="py-2 text-[#212529]">5.3</td>
                                            </tr>
                                            <tr>
                                                <td class="py-2 text-[#6C757D]">5G</td>
                                                <td class="py-2 text-[#212529]">Sub-6 GHz và mmWave</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Reviews Tab -->
                    <div id="reviews-tab" class="tab-content hidden">
                        <div class="space-y-6">
                            <!-- Review Summary -->
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <div class="bg-[#F8F9FA] rounded-lg p-6 text-center">
                                    <div class="text-4xl font-bold text-[#0D6EFD] mb-2">4.8</div>
                                    <div class="flex justify-center text-yellow-400 text-xl mb-2">?????</div>
                                    <div class="text-sm text-[#6C757D]">1,234 đánh giá</div>
                                </div>

                                <div class="space-y-2">
                                    <div class="flex items-center space-x-2">
                                        <span class="text-sm w-8">5?</span>
                                        <div class="flex-1 bg-gray-200 rounded-full h-2">
                                            <div class="bg-[#198754] h-2 rounded-full" style="width: 75%"></div>
                                        </div>
                                        <span class="text-sm text-[#6C757D] w-12">926</span>
                                    </div>
                                    <div class="flex items-center space-x-2">
                                        <span class="text-sm w-8">4?</span>
                                        <div class="flex-1 bg-gray-200 rounded-full h-2">
                                            <div class="bg-[#0D6EFD] h-2 rounded-full" style="width: 15%"></div>
                                        </div>
                                        <span class="text-sm text-[#6C757D] w-12">185</span>
                                    </div>
                                    <div class="flex items-center space-x-2">
                                        <span class="text-sm w-8">3?</span>
                                        <div class="flex-1 bg-gray-200 rounded-full h-2">
                                            <div class="bg-[#FFC107] h-2 rounded-full" style="width: 6%"></div>
                                        </div>
                                        <span class="text-sm text-[#6C757D] w-12">74</span>
                                    </div>
                                    <div class="flex items-center space-x-2">
                                        <span class="text-sm w-8">2?</span>
                                        <div class="flex-1 bg-gray-200 rounded-full h-2">
                                            <div class="bg-[#FD7E14] h-2 rounded-full" style="width: 3%"></div>
                                        </div>
                                        <span class="text-sm text-[#6C757D] w-12">37</span>
                                    </div>
                                    <div class="flex items-center space-x-2">
                                        <span class="text-sm w-8">1?</span>
                                        <div class="flex-1 bg-gray-200 rounded-full h-2">
                                            <div class="bg-[#DC3545] h-2 rounded-full" style="width: 1%"></div>
                                        </div>
                                        <span class="text-sm text-[#6C757D] w-12">12</span>
                                    </div>
                                </div>
                            </div>

                            <!-- Review Filters -->
                            <div class="flex space-x-4 border-b border-gray-200 pb-4">
                                <button class="bg-[#0D6EFD] text-white px-4 py-2 rounded-lg text-sm font-medium">Tất cả</button>
                                <button class="bg-white border border-[#CED4DA] text-[#6C757D] px-4 py-2 rounded-lg text-sm font-medium hover:bg-[#F8F9FA]">5 sao (926)</button>
                                <button class="bg-white border border-[#CED4DA] text-[#6C757D] px-4 py-2 rounded-lg text-sm font-medium hover:bg-[#F8F9FA]">Có hình ảnh (234)</button>
                                <button class="bg-white border border-[#CED4DA] text-[#6C757D] px-4 py-2 rounded-lg text-sm font-medium hover:bg-[#F8F9FA]">Đã mua (1,156)</button>
                            </div>

                            <!-- Individual Reviews -->
                            <div class="space-y-6">
                                <!-- Review 1 -->
                                <div class="border-b border-gray-200 pb-6">
                                    <div class="flex items-start space-x-4">
                                        <div class="w-10 h-10 bg-[#0D6EFD] rounded-full flex items-center justify-center text-white font-bold">N</div>
                                        <div class="flex-1">
                                            <div class="flex items-center space-x-2 mb-2">
                                                <span class="font-medium text-[#212529]">Nguy?n V?n An</span>
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">?? mua h?ng</span>
                                            </div>
                                            <div class="flex items-center space-x-2 mb-2">
                                                <div class="flex text-yellow-400">?????</div>
                                                <span class="text-sm text-[#6C757D]">12/08/2025 14:30</span>
                                            </div>
                                            <p class="text-[#212529] mb-3">
                                                Sản phẩm tuyệt vời! iPhone 15 Pro Max thực sự vượt mong đợi. Camera chụp ảnh cực kỳ sắc nét,
                                                màn hình hiển thị rất đẹp và mượt mà. Pin sử dụng cả ngày mà vẫn còn dư. Giao hàng nhanh,
                                                đóng gói cẩn thận. Rất hài lòng với lần mua hàng này!
                                            </p>
                                            <div class="grid grid-cols-4 gap-2 mb-3">
                                                <div class="w-full h-20 bg-gray-200 rounded"></div>
                                                <div class="w-full h-20 bg-gray-200 rounded"></div>
                                                <div class="w-full h-20 bg-gray-200 rounded"></div>
                                                <div class="w-full h-20 bg-gray-200 rounded"></div>
                                            </div>
                                            <div class="flex items-center space-x-4 text-sm">
                                                <button class="text-[#6C757D] hover:text-[#0D6EFD] flex items-center space-x-1">
                                                    <span>?</span>
                                                    <span>Hữu ích (23)</span>
                                                </button>
                                                <button class="text-[#6C757D] hover:text-[#0D6EFD]">Phản hồi</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Review 2 -->
                                <div class="border-b border-gray-200 pb-6">
                                    <div class="flex items-start space-x-4">
                                        <div class="w-10 h-10 bg-[#198754] rounded-full flex items-center justify-center text-white font-bold">T</div>
                                        <div class="flex-1">
                                            <div class="flex items-center space-x-2 mb-2">
                                                <span class="font-medium text-[#212529]">Tr?n Th? B?ch</span>
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">?? mua h?ng</span>
                                            </div>
                                            <div class="flex items-center space-x-2 mb-2">
                                                <div class="flex text-yellow-400">?????</div>
                                                <span class="text-sm text-[#6C757D]">10/08/2025 09:15</span>
                                            </div>
                                            <p class="text-[#212529] mb-3">
                                                Điện thoại chạy rất mượt, thiết kế đẹp và cầm tay rất chắc chắn. Camera chụp ảnh đêm tốt hơn so với phiên bản cũ.
                                                Tuy nhiên giá hơi cao so với mong đợi. Nhận chung vẫn hài lòng với sản phẩm.
                                            </p>
                                            <div class="flex items-center space-x-4 text-sm">
                                                <button class="text-[#6C757D] hover:text-[#0D6EFD] flex items-center space-x-1">
                                                    <span>?</span>
                                                    <span>Hữu ích (15)</span>
                                                </button>
                                                <button class="text-[#6C757D] hover:text-[#0D6EFD]">Phản hồi</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Review 3 -->
                                <div class="border-b border-gray-200 pb-6">
                                    <div class="flex items-start space-x-4">
                                        <div class="w-10 h-10 bg-[#FFC107] rounded-full flex items-center justify-center text-white font-bold">L</div>
                                        <div class="flex-1">
                                            <div class="flex items-center space-x-2 mb-2">
                                                <span class="font-medium text-[#212529]">L? Minh Ho?ng</span>
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">?? mua h?ng</span>
                                            </div>
                                            <div class="flex items-center space-x-2 mb-2">
                                                <div class="flex text-yellow-400">?????</div>
                                                <span class="text-sm text-[#6C757D]">08/08/2025 16:45</span>
                                            </div>
                                            <p class="text-[#212529] mb-3">
                                                Tuyệt vời! Chip A17 Pro thực sự mạnh mẽ, chơi game rất mượt mà. Màn hình 120Hz mượt như lụa.
                                                Camera zoom 5x rất ấn tượng. Đáng đồng tiền bát gạo!
                                            </p>
                                            <div class="flex items-center space-x-4 text-sm">
                                                <button class="text-[#6C757D] hover:text-[#0D6EFD] flex items-center space-x-1">
                                                    <span>?</span>
                                                    <span>Hữu ích (31)</span>
                                                </button>
                                                <button class="text-[#6C757D] hover:text-[#0D6EFD]">Phản hồi</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Load More Reviews -->
                            <div class="text-center">
                                <button class="bg-white border border-[#CED4DA] text-[#6C757D] px-6 py-2 rounded-lg font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                                    Xem thêm đánh giá
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Shipping Tab -->
                    <div id="shipping-tab" class="tab-content hidden">
                        <div class="space-y-6">
                            <h3 class="text-xl font-bold text-[#212529]">Thông tin vận chuyển</h3>

                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <div class="bg-[#F8F9FA] rounded-lg p-4">
                                    <h4 class="font-bold text-[#212529] mb-3">• Giao hàng tiêu chuẩn</h4>
                                    <ul class="text-sm text-[#6C757D] space-y-2">
                                        <li>• <strong>Miễn phí</strong> cho đơn hàng từ 500.000đ</li>
                                        <li>• Thời gian: 2-3 ngày làm việc</li>
                                        <li>• Giao hàng tại nhà hoặc văn phòng</li>
                                        <li>• Thanh toán khi nhận hàng (COD)</li>
                                    </ul>
                                </div>

                                <div class="bg-[#F8F9FA] rounded-lg p-4">
                                    <h4 class="font-bold text-[#212529] mb-3">• Giao hàng nhanh</h4>
                                    <ul class="text-sm text-[#6C757D] space-y-2">
                                        <li>• Phí: 30.000đ</li>
                                        <li>• Thời gian: 24 giờ</li>
                                        <li>• Chỉ áp dụng trong nội thành</li>
                                        <li>• Giao hàng 7 ngày/tuần</li>
                                    </ul>
                                </div>
                            </div>

                            <div class="bg-white border border-gray-200 rounded-lg p-4">
                                <h4 class="font-bold text-[#212529] mb-3">• Kiểm tra thời gian giao hàng</h4>
                                <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                                    <select class="border border-[#CED4DA] rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                        <option>Chọn Tỉnh/Thành phố</option>
                                        <option>Hồ Chí Minh</option>
                                        <option>Hà Nội</option>
                                        <option>Đà Nẵng</option>
                                        <option>Cần Thơ</option>
                                    </select>
                                    <select class="border border-[#CED4DA] rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                        <option>Chọn Quận/Huyện</option>
                                        <option>Quận 1</option>
                                        <option>Quận 2</option>
                                        <option>Quận 3</option>
                                    </select>
                                    <button class="bg-[#0D6EFD] text-white rounded-lg px-4 py-2 font-medium hover:bg-[#084298] transition-colors duration-200">
                                        Kiểm tra
                                    </button>
                                </div>
                                <div class="mt-4 p-3 bg-[#E7F3FF] rounded-lg text-sm">
                                    <strong class="text-[#0D6EFD]">Dự kiến giao hàng:</strong>
                                    <span class="text-[#212529]">Thứ 3, 16/08/2025 (2-3 ngày làm việc)</span>
                                </div>
                            </div>

                            <div class="space-y-4">
                                <h4 class="font-bold text-[#212529]">• Chính sách đổi trả</h4>
                                <div class="bg-[#F8F9FA] rounded-lg p-4">
                                    <ul class="text-sm text-[#6C757D] space-y-2">
                                        <li>• <strong class="text-[#212529]">30 ngày đổi trả:</strong> Miễn phí đổi trả trong vòng 30 ngày</li>
                                        <li>• <strong class="text-[#212529]">Điều kiện:</strong> Sản phẩm còn nguyên seal, chưa sử dụng</li>
                                        <li>• <strong class="text-[#212529]">Hoàn tiền:</strong> 100% giá trị sản phẩm nếu lỗi do nhà sản xuất</li>
                                        <li>• <strong class="text-[#212529]">Đổi mới:</strong> 1 đổi 1 trong 7 ngày đầu nếu có lỗi</li>
                                        <li>• <strong class="text-[#212529]">Bảo hành:</strong> 12 tháng chính hãng tại Apple Store</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Related Products -->
        <div class="mt-12">
            <div class="flex items-center justify-between mb-6">
                <h2 class="text-2xl font-bold text-[#212529]">Sản phẩm liên quan</h2>
                <a href="/category/smartphone" class="text-[#0D6EFD] hover:underline font-medium">Xem tất cả →</a>
            </div>
            
            <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-4">
                <!-- Related Product 1 -->
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                    <div class="relative mb-3">
                        <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                        <span class="absolute top-2 left-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">New</span>
                    </div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">iPhone 15 128GB</h3>
                    <div class="flex items-center space-x-1 mb-2">
                        <div class="flex text-yellow-400 text-xs">?????</div>
                        <span class="text-xs text-[#6C757D]">(4.6)</span>
                    </div>
                    <div class="space-y-1">
                        <span class="text-[#0D6EFD] font-bold text-base">đ22,990,000</span>
                    </div>
                </div>

                <!-- Related Product 2 -->
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                    <div class="relative mb-3">
                        <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                        <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-20%</span>
                    </div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">iPhone 14 Pro Max 512GB</h3>
                    <div class="flex items-center space-x-1 mb-2">
                        <div class="flex text-yellow-400 text-xs">?????</div>
                        <span class="text-xs text-[#6C757D]">(4.4)</span>
                    </div>
                    <div class="space-y-1">
                        <span class="text-[#0D6EFD] font-bold text-base">đ31,990,000</span>
                        <span class="text-[#6C757D] line-through text-xs">đ39,990,000</span>
                    </div>
                </div>

                <!-- Related Product 3 -->
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                    <div class="relative mb-3">
                        <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                        <span class="absolute top-2 left-2 bg-[#FFC107] text-white px-2 py-1 rounded text-xs font-bold">Hot</span>
                    </div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Samsung Galaxy S24 Ultra</h3>
                    <div class="flex items-center space-x-1 mb-2">
                        <div class="flex text-yellow-400 text-xs">?????</div>
                        <span class="text-xs text-[#6C757D]">(4.7)</span>
                    </div>
                    <div class="space-y-1">
                        <span class="text-[#0D6EFD] font-bold text-base">đ33,990,000</span>
                    </div>
                </div>

                <!-- Related Product 4 -->
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                    <div class="relative mb-3">
                        <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                    </div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">AirPods Pro 2nd Gen</h3>
                    <div class="flex items-center space-x-1 mb-2">
                        <div class="flex text-yellow-400 text-xs">?????</div>
                        <span class="text-xs text-[#6C757D]">(4.8)</span>
                    </div>
                    <div class="space-y-1">
                        <span class="text-[#0D6EFD] font-bold text-base">đ6,390,000</span>
                    </div>
                </div>

                <!-- Related Product 5 -->
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                    <div class="relative mb-3">
                        <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                        <span class="absolute top-2 left-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">Freeship</span>
                    </div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Apple Watch Series 9</h3>
                    <div class="flex items-center space-x-1 mb-2">
                        <div class="flex text-yellow-400 text-xs">?????</div>
                        <span class="text-xs text-[#6C757D]">(4.5)</span>
                    </div>
                    <div class="space-y-1">
                        <span class="text-[#0D6EFD] font-bold text-base">đ12,290,000</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Recently Viewed -->
        <div class="mt-12">
            <h2 class="text-2xl font-bold text-[#212529] mb-6">Sản phẩm đã xem</h2>

            <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 cursor-pointer">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <h3 class="text-sm font-medium text-[#212529] mb-1 line-clamp-2">MacBook Air M3</h3>
                    <span class="text-[#0D6EFD] font-bold text-sm">đ25,490,000</span>
                </div>
                
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 cursor-pointer">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <h3 class="text-sm font-medium text-[#212529] mb-1 line-clamp-2">iPad Pro 11 inch</h3>
                    <span class="text-[#0D6EFD] font-bold text-sm">đ24,990,000</span>
                </div>
                
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 cursor-pointer">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <h3 class="text-sm font-medium text-[#212529] mb-1 line-clamp-2">Sony WH-1000XM5</h3>
                    <span class="text-[#0D6EFD] font-bold text-sm">đ8,990,000</span>
                </div>
                
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 cursor-pointer">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <h3 class="text-sm font-medium text-[#212529] mb-1 line-clamp-2">MacBook Pro 16"</h3>
                    <span class="text-[#0D6EFD] font-bold text-sm">đ62,990,000</span>
                </div>
                
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 cursor-pointer">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <h3 class="text-sm font-medium text-[#212529] mb-1 line-clamp-2">Samsung Galaxy Tab S9</h3>
                    <span class="text-[#0D6EFD] font-bold text-sm">đ18,990,000</span>
                </div>
                
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 cursor-pointer">
                    <div class="w-full h-32 bg-gray-200 rounded-lg mb-3"></div>
                    <h3 class="text-sm font-medium text-[#212529] mb-1 line-clamp-2">Nintendo Switch OLED</h3>
                    <span class="text-[#0D6EFD] font-bold text-sm">đ8,490,000</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Cart Drawer -->
    <div id="cartDrawer" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
        <div class="absolute right-0 top-0 h-full w-full max-w-md bg-white shadow-lg">
            <div class="flex items-center justify-between p-4 border-b border-gray-200">
                <h3 class="text-lg font-bold text-[#212529]">Giỏ hàng (2)</h3>
                <button onclick="closeCartDrawer()" class="text-[#6C757D] hover:text-[#212529]">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                    </svg>
                </button>
            </div>
            
            <div class="flex-1 overflow-y-auto p-4 space-y-4">
                <!-- Cart Item 1 -->
                <div class="flex space-x-3 bg-[#F8F9FA] rounded-lg p-3">
                    <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                    <div class="flex-1 min-w-0">
                        <h4 class="text-sm font-medium text-[#212529] line-clamp-2 mb-1">MacBook Air M3 13 inch 256GB</h4>
                        <div class="text-sm text-[#0D6EFD] font-bold mb-2">đ25,490,000</div>
                        <div class="flex items-center justify-between">
                            <div class="flex items-center border border-[#CED4DA] rounded">
                                <button class="px-2 py-1 text-xs">?</button>
                                <span class="px-2 py-1 text-xs">1</span>
                                <button class="px-2 py-1 text-xs">+</button>
                            </div>
                            <button class="text-[#DC3545] text-xs">Xóa</button>
                        </div>
                    </div>
                </div>

                <!-- Cart Item 2 -->
                <div class="flex space-x-3 bg-[#F8F9FA] rounded-lg p-3">
                    <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                    <div class="flex-1 min-w-0">
                        <h4 class="text-sm font-medium text-[#212529] line-clamp-2 mb-1">AirPods Pro 2nd Generation</h4>
                        <div class="text-sm text-[#0D6EFD] font-bold mb-2">đ6,390,000</div>
                        <div class="flex items-center justify-between">
                            <div class="flex items-center border border-[#CED4DA] rounded">
                                <button class="px-2 py-1 text-xs">?</button>
                                <span class="px-2 py-1 text-xs">1</span>
                                <button class="px-2 py-1 text-xs">+</button>
                            </div>
                            <button class="text-[#DC3545] text-xs">Xóa</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="border-t border-gray-200 p-4">
                <div class="flex items-center justify-between mb-4">
                    <span class="text-lg font-bold text-[#212529]">Tổng cộng:</span>
                    <span class="text-lg font-bold text-[#DC3545]">đ31,880,000</span>
                </div>
                <button onclick="goToCheckout()" class="w-full bg-[#0D6EFD] text-white rounded-lg px-4 py-3 font-bold hover:bg-[#084298] transition-colors duration-200">
                    Thanh toán
                </button>
                <button onclick="viewCart()" class="w-full mt-2 bg-white border border-[#0D6EFD] text-[#0D6EFD] rounded-lg px-4 py-3 font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                    Xem giỏ hàng
                </button>
            </div>
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
        let selectedOptions = {
            storage: '256GB',
            color: 'natural',
            quantity: 1
        };

        let currentPrice = 27990000;
        let isWishlisted = false;

        // Image functions
        function changeMainImage(thumbnail) {
            const mainImage = document.getElementById('mainImage');
            mainImage.src = thumbnail.src.replace('100x100', '500x500');
            
            // Update active thumbnail
            document.querySelectorAll('.image-thumbnail').forEach(img => img.classList.remove('active'));
            thumbnail.classList.add('active');
        }

        // Option selection
        function selectOption(type, value) {
            selectedOptions[type] = value;
            
            if (type === 'storage') {
                // Update price based on storage
                const prices = {
                    '128GB': 25990000,
                    '256GB': 27990000,
                    '512GB': 32990000
                };
                currentPrice = prices[value];
                updatePrice();
                
                // Update active storage option
                document.querySelectorAll('.storage-option').forEach(btn => {
                    btn.classList.remove('border-[#0D6EFD]', 'bg-[#E7F3FF]');
                    btn.classList.add('border-[#CED4DA]');
                    btn.querySelector('.text-sm').classList.remove('text-[#0D6EFD]');
                    btn.querySelector('.text-xs').classList.remove('text-[#0D6EFD]');
                });
                
                event.target.classList.add('border-[#0D6EFD]', 'bg-[#E7F3FF]');
                event.target.querySelector('.text-sm').classList.add('text-[#0D6EFD]');
                event.target.querySelector('.text-xs').classList.add('text-[#0D6EFD]');
                
            } else if (type === 'color') {
                // Update active color option
                document.querySelectorAll('.color-option').forEach(btn => {
                    btn.classList.remove('border-[#0D6EFD]');
                    btn.classList.add('border-gray-300');
                    btn.querySelector('span').style.display = 'none';
                });
                
                event.target.classList.add('border-[#0D6EFD]');
                event.target.querySelector('span').style.display = 'flex';
                
                // Update color name
                const colorNames = {
                    'natural': 'Titan Tự nhiên',
                    'blue': 'Titan Xanh',
                    'white': 'Titan Tr?ng',
                    'black': 'Titan ?en'
                };
                document.querySelector('.text-sm.text-\\[\\#6C757D\\].mt-1').textContent = colorNames[value];
            }
        }

        function updatePrice() {
            const priceElement = document.querySelector('.text-3xl.font-bold.text-\\[\\#DC3545\\]');
            priceElement.textContent = '?' + currentPrice.toLocaleString('vi-VN');
        }

        // Quantity functions
        function increaseQuantity() {
            const quantityInput = document.getElementById('quantity');
            const currentQty = parseInt(quantityInput.value);
            if (currentQty < 5) {
                quantityInput.value = currentQty + 1;
                selectedOptions.quantity = currentQty + 1;
            }
        }

        function decreaseQuantity() {
            const quantityInput = document.getElementById('quantity');
            const currentQty = parseInt(quantityInput.value);
            if (currentQty > 1) {
                quantityInput.value = currentQty - 1;
                selectedOptions.quantity = currentQty - 1;
            }
        }

        // Action functions
        function addToCart() {
            const product = {
                id: 'iphone-15-pro-max-256gb',
                name: 'iPhone 15 Pro Max 256GB Titan Tự nhiên',
                price: currentPrice,
                options: selectedOptions,
                image: document.getElementById('mainImage').src
            };
            
            console.log('Added to cart:', product);
            
            // Update cart count
            const cartCount = document.getElementById('cartCount');
            const currentCount = parseInt(cartCount.textContent);
            cartCount.textContent = currentCount + selectedOptions.quantity;
            
            // Show success message
            alert(`Đã thêm ${selectedOptions.quantity} sản phẩm vào giỏ hàng!`);

            // Open cart drawer
            openCartDrawer();
        }

        function buyNow() {
            addToCart();
            setTimeout(() => {
                goToCheckout();
            }, 500);
        }

        function installmentPurchase() {
            alert('Chuyển hướng đến trang trả góp 0%...');
        }

        function toggleWishlist() {
            const icon = document.getElementById('wishlistIcon');
            isWishlisted = !isWishlisted;
            
            if (isWishlisted) {
                icon.classList.add('text-[#DC3545]', 'fill-current');
                icon.classList.remove('text-[#6C757D]');
                alert('Đã thêm vào danh sách yêu thích!');
            } else {
                icon.classList.remove('text-[#DC3545]', 'fill-current');
                icon.classList.add('text-[#6C757D]');
                alert('Đã xóa khỏi danh sách yêu thích!');
            }
        }

        function shareProduct() {
            if (navigator.share) {
                navigator.share({
                    title: 'iPhone 15 Pro Max 256GB Titan Tự nhiên',
                    text: 'Xem sản phẩm này trên E-commerce',
                    url: window.location.href
                });
            } else {
                // Fallback copy to clipboard
                navigator.clipboard.writeText(window.location.href);
                alert('Đã copy link sản phẩm!');
            }
        }

        // Tab functions
        function switchTab(tabName) {
            // Hide all tab contents
            document.querySelectorAll('.tab-content').forEach(content => content.classList.add('hidden'));
            
            // Show selected tab content
            document.getElementById(tabName + '-tab').classList.remove('hidden');
            
            // Update tab buttons
            document.querySelectorAll('.tab-button').forEach(btn => {
                btn.classList.remove('border-[#0D6EFD]', 'text-[#0D6EFD]');
                btn.classList.add('border-transparent', 'text-[#6C757D]');
            });
            
            event.target.classList.add('border-[#0D6EFD]', 'text-[#0D6EFD]');
            event.target.classList.remove('border-transparent', 'text-[#6C757D]');
        }

        // Cart drawer functions
        function openCartDrawer() {
            document.getElementById('cartDrawer').classList.remove('hidden');
        }

        function closeCartDrawer() {
            document.getElementById('cartDrawer').classList.add('hidden');
        }

        function goToCheckout() {
            closeCartDrawer();
            window.location.href = '/checkout';
        }

        function viewCart() {
            closeCartDrawer();
            window.location.href = '/cart';
        }

        // Initialize
        document.addEventListener('DOMContentLoaded', function() {
            // Set current time
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

            // Initialize zoom functionality
            const zoomContainer = document.querySelector('.zoom-container');
            const zoomImage = document.querySelector('.zoom-image');

            zoomContainer.addEventListener('mousemove', function(e) {
                const rect = this.getBoundingClientRect();
                const x = ((e.clientX - rect.left) / rect.width) * 100;
                const y = ((e.clientY - rect.top) / rect.height) * 100;
                
                zoomImage.style.transformOrigin = `${x}% ${y}%`;
                zoomImage.style.transform = 'scale(2)';
            });

            zoomContainer.addEventListener('mouseleave', function() {
                zoomImage.style.transform = 'scale(1)';
            });

            // Track page view
            console.log('Product viewed:', {
                productId: 'iphone-15-pro-max-256gb',
                productName: 'iPhone 15 Pro Max 256GB Titan Tự nhiên',
                price: currentPrice,
                user: 'hoangdvdinos',
                timestamp: '2025-08-14 10:51:01',
                referrer: document.referrer
            });
        });

        // Close cart drawer when clicking outside
        document.getElementById('cartDrawer').addEventListener('click', function(e) {
            if (e.target === this) {
                closeCartDrawer();
            }
        });

        // Quantity input validation
        document.getElementById('quantity').addEventListener('change', function() {
            const value = parseInt(this.value);
            if (value < 1) {
                this.value = 1;
            } else if (value > 5) {
                this.value = 5;
            }
            selectedOptions.quantity = parseInt(this.value);
        });
    </script>
</body>
</html>

