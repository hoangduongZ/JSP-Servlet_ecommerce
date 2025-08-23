<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Sản phẩm - Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', Arial, Helvetica, sans-serif; }
        .line-clamp-2 {
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
    </style>
</head>
<body class="bg-[#F8F9FA] leading-relaxed tracking-wide">
<!-- Header -->
<header class="bg-white shadow-sm border-b border-gray-200">
    <div class="container mx-auto max-w-[1200px] flex items-center justify-between px-4 py-3">
        <!-- Logo & Breadcrumb -->
        <div class="flex items-center space-x-4">
            <h1 class="text-xl font-bold text-[#0D6EFD]">Admin Panel</h1>
            <span class="text-[#6C757D]">/</span>
            <span class="text-sm text-[#6C757D]">Quản lý Sản phẩm</span>
        </div>

        <!-- User Info -->
        <div class="flex items-center space-x-4">
            <span class="text-sm text-[#6C757D]">Xin chào, <strong>hoangdvdinos</strong></span>
            <span class="text-xs text-[#6C757D]">14/08/2025 16:58</span>
            <button class="bg-[#DC3545] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                Đăng xuất
            </button>
        </div>
    </div>
</header>

<div class="container mx-auto max-w-[1200px] px-4 py-6">
    <div class="grid grid-cols-1 lg:grid-cols-4 gap-6">
        <!-- Sidebar -->
        <aside class="lg:col-span-1">
            <div class="bg-white rounded-lg shadow-sm p-4">
                <nav class="space-y-2">
                    <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M3 4a1 1 0 011-1h12a1 1 0 011 1v2a1 1 0 01-1 1H4a1 1 0 01-1-1V4zM3 10a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H4a1 1 0 01-1-1v-6zM14 9a1 1 0 00-1 1v6a1 1 0 001 1h2a1 1 0 001-1v-6a1 1 0 00-1-1h-2z"/>
                        </svg>
                        <span>Dashboard</span>
                    </a>
                    <a href="#" class="flex items-center space-x-3 bg-[#0D6EFD] text-white px-3 py-2 rounded-md font-medium">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd" d="M10 2L3 7v11a1 1 0 001 1h3v-7h6v7h3a1 1 0 001-1V7l-7-5z"/>
                        </svg>
                        <span>Sản phẩm</span>
                    </a>
                    <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                        </svg>
                        <span>Đơn hàng</span>
                    </a>
                    <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3z"/>
                        </svg>
                        <span>Khách hàng</span>
                    </a>
                    <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M4 3a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V5a2 2 0 00-2-2H4z"/>
                        </svg>
                        <span>Danh mục</span>
                    </a>
                    <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd" d="M3 3a1 1 0 000 2v8a2 2 0 002 2h2.586l-1.293 1.293a1 1 0 101.414 1.414L10 15.414l2.293 2.293a1 1 0 001.414-1.414L12.414 15H15a2 2 0 002-2V5a1 1 0 100-2H3zm11.707 4.707a1 1 0 00-1.414-1.414L10 9.586 8.707 8.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"/>
                        </svg>
                        <span>Báo cáo</span>
                    </a>
                </nav>
            </div>
        </aside>

        <!-- Main Content -->
        <main class="lg:col-span-3">
            <!-- Page Header -->
            <div class="flex flex-col md:flex-row md:items-center justify-between mb-6 space-y-4 md:space-y-0">
                <div>
                    <h1 class="text-3xl font-bold text-[#212529]">Quản lý Sản phẩm</h1>
                    <p class="text-sm text-[#6C757D] mt-1">Quản lý sản phẩm, biến thể và hình ảnh</p>
                </div>
                <button id="addProductBtn" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                    + Thêm sản phẩm
                </button>
            </div>

            <!-- Stats -->
            <div class="grid grid-cols-1 md:grid-cols-4 gap-4 mb-6">
                <div class="bg-white rounded-lg shadow-sm p-4">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-sm text-[#6C757D]">Tổng sản phẩm</p>
                            <p class="text-2xl font-bold text-[#212529]">856</p>
                        </div>
                        <div class="bg-[#0D6EFD] p-3 rounded-full">
                            <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 2L3 7v11a1 1 0 001 1h3v-7h6v7h3a1 1 0 001-1V7l-7-5z"/>
                            </svg>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-lg shadow-sm p-4">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-sm text-[#6C757D]">Đang hoạt động</p>
                            <p class="text-2xl font-bold text-[#212529]">742</p>
                        </div>
                        <div class="bg-[#198754] p-3 rounded-full">
                            <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                            </svg>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-lg shadow-sm p-4">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-sm text-[#6C757D]">Hết hàng</p>
                            <p class="text-2xl font-bold text-[#212529]">23</p>
                        </div>
                        <div class="bg-[#FFC107] p-3 rounded-full">
                            <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M8.257 3.099c.765-1.36 2.722-1.36 3.486 0l5.58 9.92c.75 1.334-.213 2.98-1.742 2.98H4.42c-1.53 0-2.493-1.646-1.743-2.98l5.58-9.92zM11 13a1 1 0 11-2 0 1 1 0 012 0zm-1-8a1 1 0 00-1 1v3a1 1 0 002 0V6a1 1 0 00-1-1z"/>
                            </svg>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-lg shadow-sm p-4">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-sm text-[#6C757D]">Tạm ngừng</p>
                            <p class="text-2xl font-bold text-[#212529]">91</p>
                        </div>
                        <div class="bg-[#6C757D] p-3 rounded-full">
                            <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M13.477 14.89A6 6 0 015.11 6.524l8.367 8.368zm1.414-1.414L6.524 5.11a6 6 0 018.367 8.367zM18 10a8 8 0 11-16 0 8 8 0 0116 0z"/>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Filters -->
            <div class="bg-white rounded-lg shadow-sm p-4 mb-6">
                <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
                    <div>
                        <label class="text-sm mb-1 block text-[#212529] font-medium">Tìm kiếm</label>
                        <input type="text" id="searchInput" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" placeholder="Tên sản phẩm, SKU...">
                    </div>
                    <div>
                        <label class="text-sm mb-1 block text-[#212529] font-medium">Danh mục</label>
                        <select id="categoryFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            <option value="">Tất cả danh mục</option>
                            <option value="1">Điện tử</option>
                            <option value="7">Thời trang</option>
                            <option value="12">Nhà cửa & Đời sống</option>
                        </select>
                    </div>
                    <div>
                        <label class="text-sm mb-1 block text-[#212529] font-medium">Trạng thái</label>
                        <select id="statusFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            <option value="">Tất cả trạng thái</option>
                            <option value="ACTIVE">Đang hoạt động</option>
                            <option value="INACTIVE">Tạm ngừng</option>
                            <option value="OUT_OF_STOCK">Hết hàng</option>
                        </select>
                    </div>
                    <div>
                        <label class="text-sm mb-1 block text-[#212529] font-medium">Thương hiệu</label>
                        <select id="brandFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            <option value="">Tất cả thương hiệu</option>
                            <option value="Apple">Apple</option>
                            <option value="Samsung">Samsung</option>
                            <option value="Nike">Nike</option>
                            <option value="Adidas">Adidas</option>
                        </select>
                    </div>
                </div>
                <div class="flex space-x-3 mt-4">
                    <button class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                        Áp dụng bộ lọc
                    </button>
                    <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                        Xóa bộ lọc
                    </button>
                </div>
            </div>

            <!-- Product Grid -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-6">
                <!-- Product Card 1 -->
                <div class="bg-white rounded-lg shadow-sm overflow-hidden">
                    <div class="relative">
                        <div class="w-full aspect-[4/3] bg-gray-200 flex items-center justify-center">
                            <span class="text-[#6C757D]">iPhone 15 Pro Max</span>
                        </div>
                        <span class="absolute top-2 right-2 bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Hoạt động</span>
                    </div>
                    <div class="p-4">
                        <div class="flex items-center justify-between mb-2">
                            <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs">ID: 1001</span>
                            <span class="text-xs text-[#6C757D]">SKU: IPH15PM-128</span>
                        </div>
                        <h3 class="text-[#212529] font-medium text-base line-clamp-2 mt-2">iPhone 15 Pro Max 128GB - Titanium Natural</h3>
                        <p class="text-xs text-[#6C757D] mt-1">Điện tử • Apple</p>
                        <div class="mt-2">
                            <p class="text-[#0D6EFD] font-semibold">29,990,000₫</p>
                            <p class="text-xs text-[#6C757D]">Kho: 45 sản phẩm • 3 biến thể</p>
                        </div>
                        <div class="flex space-x-2 mt-3">
                            <button onclick="viewProduct(1001)" class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 flex-1">
                                Xem
                            </button>
                            <button onclick="editProduct(1001)" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 flex-1">
                                Sửa
                            </button>
                            <button onclick="deleteProduct(1001, 'iPhone 15 Pro Max')" class="bg-[#DC3545] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                                Xóa
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Product Card 2 -->
                <div class="bg-white rounded-lg shadow-sm overflow-hidden">
                    <div class="relative">
                        <div class="w-full aspect-[4/3] bg-gray-200 flex items-center justify-center">
                            <span class="text-[#6C757D]">MacBook Air M3</span>
                        </div>
                        <span class="absolute top-2 right-2 bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Hoạt động</span>
                    </div>
                    <div class="p-4">
                        <div class="flex items-center justify-between mb-2">
                            <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs">ID: 1002</span>
                            <span class="text-xs text-[#6C757D]">SKU: MBA-M3-256</span>
                        </div>
                        <h3 class="text-[#212529] font-medium text-base line-clamp-2 mt-2">MacBook Air 13" M3 256GB - Midnight</h3>
                        <p class="text-xs text-[#6C757D] mt-1">Điện tử • Apple</p>
                        <div class="mt-2">
                            <p class="text-[#0D6EFD] font-semibold">28,990,000₫</p>
                            <p class="text-xs text-[#6C757D]">Kho: 23 sản phẩm • 2 biến thể</p>
                        </div>
                        <div class="flex space-x-2 mt-3">
                            <button onclick="viewProduct(1002)" class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 flex-1">
                                Xem
                            </button>
                            <button onclick="editProduct(1002)" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 flex-1">
                                Sửa
                            </button>
                            <button onclick="deleteProduct(1002, 'MacBook Air M3')" class="bg-[#DC3545] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                                Xóa
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Product Card 3 -->
                <div class="bg-white rounded-lg shadow-sm overflow-hidden">
                    <div class="relative">
                        <div class="w-full aspect-[4/3] bg-gray-200 flex items-center justify-center">
                            <span class="text-[#6C757D]">Nike Air Max 270</span>
                        </div>
                        <span class="absolute top-2 right-2 bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">Hết hàng</span>
                    </div>
                    <div class="p-4">
                        <div class="flex items-center justify-between mb-2">
                            <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs">ID: 1003</span>
                            <span class="text-xs text-[#6C757D]">SKU: NK-AM270-42</span>
                        </div>
                        <h3 class="text-[#212529] font-medium text-base line-clamp-2 mt-2">Nike Air Max 270 - Black/White</h3>
                        <p class="text-xs text-[#6C757D] mt-1">Thời trang • Nike</p>
                        <div class="mt-2">
                            <p class="text-[#0D6EFD] font-semibold">3,290,000₫</p>
                            <p class="text-xs text-[#DC3545]">Kho: 0 sản phẩm • 5 biến thể</p>
                        </div>
                        <div class="flex space-x-2 mt-3">
                            <button onclick="viewProduct(1003)" class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 flex-1">
                                Xem
                            </button>
                            <button onclick="editProduct(1003)" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 flex-1">
                                Sửa
                            </button>
                            <button onclick="deleteProduct(1003, 'Nike Air Max 270')" class="bg-[#DC3545] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                                Xóa
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Product Card 4 -->
                <div class="bg-white rounded-lg shadow-sm overflow-hidden">
                    <div class="relative">
                        <div class="w-full aspect-[4/3] bg-gray-200 flex items-center justify-center">
                            <span class="text-[#6C757D]">Samsung Galaxy S24</span>
                        </div>
                        <span class="absolute top-2 right-2 bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs font-medium">Tạm ngừng</span>
                    </div>
                    <div class="p-4">
                        <div class="flex items-center justify-between mb-2">
                            <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs">ID: 1004</span>
                            <span class="text-xs text-[#6C757D]">SKU: SS-GS24-256</span>
                        </div>
                        <h3 class="text-[#212529] font-medium text-base line-clamp-2 mt-2">Samsung Galaxy S24 Ultra 256GB - Titanium Gray</h3>
                        <p class="text-xs text-[#6C757D] mt-1">Điện tử • Samsung</p>
                        <div class="mt-2">
                            <p class="text-[#0D6EFD] font-semibold">31,990,000₫</p>
                            <p class="text-xs text-[#6C757D]">Kho: 12 sản phẩm • 4 biến thể</p>
                        </div>
                        <div class="flex space-x-2 mt-3">
                            <button onclick="viewProduct(1004)" class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 flex-1">
                                Xem
                            </button>
                            <button onclick="editProduct(1004)" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 flex-1">
                                Sửa
                            </button>
                            <button onclick="deleteProduct(1004, 'Samsung Galaxy S24')" class="bg-[#DC3545] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                                Xóa
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Product Card 5 -->
                <div class="bg-white rounded-lg shadow-sm overflow-hidden">
                    <div class="relative">
                        <div class="w-full aspect-[4/3] bg-gray-200 flex items-center justify-center">
                            <span class="text-[#6C757D]">Sofa 3 chỗ ngồi</span>
                        </div>
                        <span class="absolute top-2 right-2 bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Hoạt động</span>
                    </div>
                    <div class="p-4">
                        <div class="flex items-center justify-between mb-2">
                            <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs">ID: 1005</span>
                            <span class="text-xs text-[#6C757D]">SKU: SOFA-3S-GY</span>
                        </div>
                        <h3 class="text-[#212529] font-medium text-base line-clamp-2 mt-2">Sofa 3 chỗ ngồi Scandinavian - Xám nhạt</h3>
                        <p class="text-xs text-[#6C757D] mt-1">Nhà cửa & Đời sống • IKEA</p>
                        <div class="mt-2">
                            <p class="text-[#0D6EFD] font-semibold">8,990,000₫</p>
                            <p class="text-xs text-[#6C757D]">Kho: 8 sản phẩm • 2 biến thể</p>
                        </div>
                        <div class="flex space-x-2 mt-3">
                            <button onclick="viewProduct(1005)" class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 flex-1">
                                Xem
                            </button>
                            <button onclick="editProduct(1005)" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 flex-1">
                                Sửa
                            </button>
                            <button onclick="deleteProduct(1005, 'Sofa 3 chỗ ngồi')" class="bg-[#DC3545] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                                Xóa
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Product Card 6 -->
                <div class="bg-white rounded-lg shadow-sm overflow-hidden">
                    <div class="relative">
                        <div class="w-full aspect-[4/3] bg-gray-200 flex items-center justify-center">
                            <span class="text-[#6C757D]">AirPods Pro 2</span>
                        </div>
                        <span class="absolute top-2 right-2 bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Hoạt động</span>
                    </div>
                    <div class="p-4">
                        <div class="flex items-center justify-between mb-2">
                            <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs">ID: 1006</span>
                            <span class="text-xs text-[#6C757D]">SKU: APP-PRO2-WH</span>
                        </div>
                        <h3 class="text-[#212529] font-medium text-base line-clamp-2 mt-2">AirPods Pro 2nd Generation với MagSafe</h3>
                        <p class="text-xs text-[#6C757D] mt-1">Điện tử • Apple</p>
                        <div class="mt-2">
                            <p class="text-[#0D6EFD] font-semibold">6,990,000₫</p>
                            <p class="text-xs text-[#6C757D]">Kho: 67 sản phẩm • 1 biến thể</p>
                        </div>
                        <div class="flex space-x-2 mt-3">
                            <button onclick="viewProduct(1006)" class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 flex-1">
                                Xem
                            </button>
                            <button onclick="editProduct(1006)" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 flex-1">
                                Sửa
                            </button>
                            <button onclick="deleteProduct(1006, 'AirPods Pro 2')" class="bg-[#DC3545] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                                Xóa
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pagination -->
            <div class="bg-white rounded-lg shadow-sm p-4">
                <div class="flex items-center justify-between">
                    <div class="text-sm text-[#6C757D]">
                        Hiển thị 1-6 của 856 sản phẩm
                    </div>
                    <div class="flex space-x-2">
                        <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                            Trước
                        </button>
                        <button class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium">
                            1
                        </button>
                        <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                            2
                        </button>
                        <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                            3
                        </button>
                        <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                            Sau
                        </button>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<!-- Modal Product Detail -->
<div id="productModal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
    <div class="flex items-center justify-center min-h-screen p-4">
        <div class="bg-white rounded-lg shadow-lg max-w-4xl w-full max-h-[90vh] overflow-y-auto">
            <div class="p-4 border-b border-gray-200">
                <div class="flex items-center justify-between">
                    <h3 id="modalTitle" class="text-lg font-bold text-[#212529]">Chi tiết sản phẩm</h3>
                    <button onclick="closeModal()" class="text-[#6C757D] hover:text-[#212529]">
                        <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"/>
                        </svg>
                    </button>
                </div>
            </div>
            <div class="p-6">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <!-- Product Info -->
                    <div>
                        <div class="w-full aspect-square bg-gray-200 rounded-lg mb-4 flex items-center justify-center">
                            <span class="text-[#6C757D]">Hình ảnh sản phẩm</span>
                        </div>
                        <div class="flex space-x-2">
                            <div class="w-16 h-16 bg-gray-200 rounded-md"></div>
                            <div class="w-16 h-16 bg-gray-200 rounded-md"></div>
                            <div class="w-16 h-16 bg-gray-200 rounded-md"></div>
                        </div>
                    </div>
                    <!-- Product Details -->
                    <div>
                        <h2 class="text-2xl font-bold text-[#212529] mb-2">iPhone 15 Pro Max 128GB</h2>
                        <p class="text-[#6C757D] mb-4">Điện tử • Apple • SKU: IPH15PM-128</p>
                        <div class="space-y-3">
                            <div>
                                <span class="text-sm font-medium text-[#212529]">Mô tả:</span>
                                <p class="text-sm text-[#6C757D] mt-1">iPhone 15 Pro Max với chip A17 Pro, camera 48MP và màn hình Super Retina XDR 6.7 inch.</p>
                            </div>
                            <div>
                                <span class="text-sm font-medium text-[#212529]">Trạng thái:</span>
                                <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium ml-2">Hoạt động</span>
                            </div>
                            <div>
                                <span class="text-sm font-medium text-[#212529]">Ngày tạo:</span>
                                <span class="text-sm text-[#6C757D] ml-2">10/08/2025</span>
                            </div>
                        </div>

                        <!-- Variants -->
                        <div class="mt-6">
                            <h3 class="text-lg font-bold text-[#212529] mb-3">Biến thể sản phẩm</h3>
                            <div class="space-y-3">
                                <div class="border border-gray-200 rounded-md p-3">
                                    <div class="flex items-center justify-between">
                                        <div>
                                            <p class="font-medium text-[#212529]">128GB - Natural Titanium</p>
                                            <p class="text-sm text-[#6C757D]">SKU: IPH15PM-128-NT</p>
                                        </div>
                                        <div class="text-right">
                                            <p class="font-semibold text-[#0D6EFD]">29,990,000₫</p>
                                            <p class="text-sm text-[#6C757D]">Kho: 15</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="border border-gray-200 rounded-md p-3">
                                    <div class="flex items-center justify-between">
                                        <div>
                                            <p class="font-medium text-[#212529]">256GB - Natural Titanium</p>
                                            <p class="text-sm text-[#6C757D]">SKU: IPH15PM-256-NT</p>
                                        </div>
                                        <div class="text-right">
                                            <p class="font-semibold text-[#0D6EFD]">33,990,000₫</p>
                                            <p class="text-sm text-[#6C757D]">Kho: 18</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="border border-gray-200 rounded-md p-3">
                                    <div class="flex items-center justify-between">
                                        <div>
                                            <p class="font-medium text-[#212529]">512GB - Natural Titanium</p>
                                            <p class="text-sm text-[#6C757D]">SKU: IPH15PM-512-NT</p>
                                        </div>
                                        <div class="text-right">
                                            <p class="font-semibold text-[#0D6EFD]">39,990,000₫</p>
                                            <p class="text-sm text-[#6C757D]">Kho: 12</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flex space-x-3 mt-6 pt-4 border-t border-gray-200">
                    <button class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                        Chỉnh sửa sản phẩm
                    </button>
                    <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                        Quản lý biến thể
                    </button>
                    <button onclick="closeModal()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                        Đóng
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-[#F8F9FA] border-t border-gray-200 mt-12">
    <div class="container mx-auto max-w-[1200px] p-6">
        <div class="text-center text-sm text-[#6C757D]">
            © 2025 E-commerce Admin Panel. Phiên bản 1.0.0
        </div>
    </div>
</footer>

<script>
    // Product management functions
    function viewProduct(productId) {
        document.getElementById('productModal').classList.remove('hidden');
        // Here would load product data from API
    }

    function editProduct(productId) {
        alert(`Chuyển đến trang chỉnh sửa sản phẩm ID: ${productId}`);
        // Here would redirect to edit page
    }

    function deleteProduct(productId, productName) {
        if (confirm(`Bạn có chắc chắn muốn xóa sản phẩm "${productName}"?`)) {
            alert(`Đã xóa sản phẩm "${productName}" (ID: ${productId})`);
            // Here would be the API call to delete
        }
    }

    function closeModal() {
        document.getElementById('productModal').classList.add('hidden');
    }

    // Add product
    document.getElementById('addProductBtn').addEventListener('click', function() {
        alert('Chuyển đến trang thêm sản phẩm mới');
        // Here would redirect to add product page
    });

    // Filter functions
    document.querySelector('.bg-\\[\\#0D6EFD\\].text-white').addEventListener('click', function() {
        const search = document.getElementById('searchInput').value;
        const category = document.getElementById('categoryFilter').value;
        const status = document.getElementById('statusFilter').value;
        const brand = document.getElementById('brandFilter').value;

        alert(`Áp dụng bộ lọc:\nTìm kiếm: ${search}\nDanh mục: ${category}\nTrạng thái: ${status}\nThương hiệu: ${brand}`);
    });

    // Clear filters
    document.querySelector('.bg-white.border.border-\\[\\#6C757D\\]').addEventListener('click', function() {
        document.getElementById('searchInput').value = '';
        document.getElementById('categoryFilter').value = '';
        document.getElementById('statusFilter').value = '';
        document.getElementById('brandFilter').value = '';
        alert('Đã xóa tất cả bộ lọc');
    });

    // Close modal when clicking outside
    document.getElementById('productModal').addEventListener('click', function(e) {
        if (e.target === this) {
            closeModal();
        }
    });

    // Set current time
    document.addEventListener('DOMContentLoaded', function() {
        const now = new Date();
        const timeString = now.toLocaleString('vi-VN', {
            day: '2-digit',
            month: '2-digit',
            year: 'numeric',
            hour: '2-digit',
            minute: '2-digit'
        });
        document.querySelector('header span.text-xs').textContent = timeString;
    });
</script>
</body>
</html>