<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Danh mục - Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', Arial, Helvetica, sans-serif; }
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
                <span class="text-sm text-[#6C757D]">Quản lý Danh mục</span>
            </div>
            
            <!-- User Info -->
            <div class="flex items-center space-x-4">
                <span class="text-sm text-[#6C757D]">Xin chào, <strong>hoangdvdinos</strong></span>
                <span class="text-xs text-[#6C757D]">14/08/2025 16:54</span>
                <button class="bg-[#DC3545] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                    Đăng xuất
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
                        <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 2L3 7v11a1 1 0 001 1h3v-7h6v7h3a1 1 0 001-1V7l-7-5z"/>
                            </svg>
                            <span>Sản phẩm</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                            </svg>
                            <span>Đơn hàng</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3z"/>
                            </svg>
                            <span>Khách hàng</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 bg-[#0D6EFD] text-white px-3 py-2 rounded-md font-medium">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M4 3a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V5a2 2 0 00-2-2H4z"/>
                            </svg>
                            <span>Danh mục</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M3 3a1 1 0 000 2v8a2 2 0 002 2h2.586l-1.293 1.293a1 1 0 101.414 1.414L10 15.414l2.293 2.293a1 1 0 001.414-1.414L12.414 15H15a2 2 0 002-2V5a1 1 0 100-2H3zm11.707 4.707a1 1 0 00-1.414-1.414L10 9.586 8.707 8.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"/>
                            </svg>
                            <span>Báo cáo</span>
                        </a>
                    </nav>
                </div>
            </aside>

            <!-- Main Content -->
            <main class="lg:col-span-3">
                <!-- Page Header -->
                <div class="flex items-center justify-between mb-6">
                    <div>
                        <h1 class="text-3xl font-bold text-[#212529]">Quản lý Danh mục</h1>
                        <p class="text-sm text-[#6C757D] mt-1">Quản lí danh mục sản phẩm</p>
                    </div>
                    <button id="addCategoryBtn" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                        + Thêm danh mục
                    </button>
                </div>

                <!-- Stats -->
                <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">Tổng danh mục</p>
                                <p class="text-2xl font-bold text-[#212529]">24</p>
                            </div>
                            <div class="bg-[#0D6EFD] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M4 3a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V5a2 2 0 00-2-2H4z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">Danh mục cha</p>
                                <p class="text-2xl font-bold text-[#212529]">8</p>
                            </div>
                            <div class="bg-[#198754] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M3 4a1 1 0 011-1h12a1 1 0 011 1v2a1 1 0 01-1 1H4a1 1 0 01-1-1V4zM3 10a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H4a1 1 0 01-1-1v-6zM14 9a1 1 0 00-1 1v6a1 1 0 001 1h2a1 1 0 001-1v-6a1 1 0 00-1-1h-2z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">Danh mục con</p>
                                <p class="text-2xl font-bold text-[#212529]">16</p>
                            </div>
                            <div class="bg-[#FFC107] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Category Tree -->
                <div class="bg-white rounded-lg shadow-sm mb-6">
                    <div class="p-4 border-b border-gray-200">
                        <h2 class="text-xl font-bold text-[#212529]">Cây danh mục</h2>
                    </div>
                    <div class="p-4">
                        <!-- Parent Categories -->
                        <div class="space-y-3">
                            <!-- Electronics -->
                            <div class="border border-gray-200 rounded-lg">
                                <div class="flex items-center justify-between p-3 cursor-pointer hover:bg-[#F8F9FA]" onclick="toggleCategory('electronics')">
                                    <div class="flex items-center space-x-3">
                                        <svg id="electronics-icon" class="w-4 h-4 text-[#6C757D] transform transition-transform duration-200" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"/>
                                        </svg>
                                        <span class="font-medium text-[#212529]">Điện tử</span>
                                        <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs">ID: 1</span>
                                    </div>
                                    <div class="flex items-center space-x-2">
                                        <span class="text-sm text-[#6C757D]">5 danh mục con</span>
                                        <button class="text-[#0D6EFD] hover:underline text-sm" onclick="event.stopPropagation(); editCategory(1, 'Điện tử', null)">Sửa</button>
                                        <button class="text-[#DC3545] hover:underline text-sm" onclick="event.stopPropagation(); deleteCategory(1, 'Điện tử')">Xóa</button>
                                    </div>
                                </div>
                                <div id="electronics-children" class="hidden border-t border-gray-200 bg-[#F8F9FA]">
                                    <div class="pl-8 pr-3 py-2 space-y-2">
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">Điện thoại</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 2</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(2, 'Điện thoại', 1)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(2, 'Điện thoại')">Xóa</button>
                                            </div>
                                        </div>
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">? Laptop</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 3</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(3, 'Laptop', 1)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(3, 'Laptop')">Xóa</button>
                                            </div>
                                        </div>
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">? Tai nghe</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 4</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(4, 'Tai nghe', 1)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(4, 'Tai nghe')">Xóa</button>
                                            </div>
                                        </div>
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">? ??ng h? th?ng minh</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 5</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(5, '??ng h? th?ng minh', 1)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(5, '??ng h? th?ng minh')">Xóa</button>
                                            </div>
                                        </div>
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">? Camera</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 6</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(6, 'Camera', 1)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(6, 'Camera')">Xóa</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Fashion -->
                            <div class="border border-gray-200 rounded-lg">
                                <div class="flex items-center justify-between p-3 cursor-pointer hover:bg-[#F8F9FA]" onclick="toggleCategory('fashion')">
                                    <div class="flex items-center space-x-3">
                                        <svg id="fashion-icon" class="w-4 h-4 text-[#6C757D] transform transition-transform duration-200" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"/>
                                        </svg>
                                        <span class="font-medium text-[#212529]">? Thời trang</span>
                                        <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs">ID: 7</span>
                                    </div>
                                    <div class="flex items-center space-x-2">
                                        <span class="text-sm text-[#6C757D]">4 danh mục con</span>
                                        <button class="text-[#0D6EFD] hover:underline text-sm" onclick="event.stopPropagation(); editCategory(7, 'Thời trang', null)">Sửa</button>
                                        <button class="text-[#DC3545] hover:underline text-sm" onclick="event.stopPropagation(); deleteCategory(7, 'Thời trang')">Xóa</button>
                                    </div>
                                </div>
                                <div id="fashion-children" class="hidden border-t border-gray-200 bg-[#F8F9FA]">
                                    <div class="pl-8 pr-3 py-2 space-y-2">
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">? ?o nam</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 8</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(8, '?o nam', 7)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(8, '?o nam')">Xóa</button>
                                            </div>
                                        </div>
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">? V?y n?</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 9</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(9, 'V?y n?', 7)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(9, 'V?y n?')">Xóa</button>
                                            </div>
                                        </div>
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">? Qu?n jean</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 10</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(10, 'Qu?n jean', 7)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(10, 'Qu?n jean')">Xóa</button>
                                            </div>
                                        </div>
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">? Gi?y th? thao</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 11</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(11, 'Gi?y th? thao', 7)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(11, 'Gi?y th? thao')">Xóa</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Home & Garden -->
                            <div class="border border-gray-200 rounded-lg">
                                <div class="flex items-center justify-between p-3 cursor-pointer hover:bg-[#F8F9FA]" onclick="toggleCategory('home')">
                                    <div class="flex items-center space-x-3">
                                        <svg id="home-icon" class="w-4 h-4 text-[#6C757D] transform transition-transform duration-200" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"/>
                                        </svg>
                                        <span class="font-medium text-[#212529]">? Nh? c?a & ??i s?ng</span>
                                        <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs">ID: 12</span>
                                    </div>
                                    <div class="flex items-center space-x-2">
                                        <span class="text-sm text-[#6C757D]">3 danh mục con</span>
                                        <button class="text-[#0D6EFD] hover:underline text-sm" onclick="event.stopPropagation(); editCategory(12, 'Nh? c?a & ??i s?ng', null)">Sửa</button>
                                        <button class="text-[#DC3545] hover:underline text-sm" onclick="event.stopPropagation(); deleteCategory(12, 'Nh? c?a & ??i s?ng')">Xóa</button>
                                    </div>
                                </div>
                                <div id="home-children" class="hidden border-t border-gray-200 bg-[#F8F9FA]">
                                    <div class="pl-8 pr-3 py-2 space-y-2">
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">?? N?i th?t</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 13</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(13, 'N?i th?t', 12)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(13, 'N?i th?t')">Xóa</button>
                                            </div>
                                        </div>
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">? Trang tr?</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 14</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(14, 'Trang tr?', 12)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(14, 'Trang tr?')">Xóa</button>
                                            </div>
                                        </div>
                                        <div class="flex items-center justify-between p-2 bg-white rounded-md">
                                            <div class="flex items-center space-x-3">
                                                <span class="text-sm text-[#212529]">? D?ng c?</span>
                                                <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs">ID: 15</span>
                                            </div>
                                            <div class="flex items-center space-x-2">
                                                <button class="text-[#0D6EFD] hover:underline text-xs" onclick="editCategory(15, 'D?ng c?', 12)">Sửa</button>
                                                <button class="text-[#DC3545] hover:underline text-xs" onclick="deleteCategory(15, 'D?ng c?')">Xóa</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Modal Add/Edit Category -->
    <div id="categoryModal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
        <div class="flex items-center justify-center min-h-screen p-4">
            <div class="bg-white rounded-lg shadow-lg max-w-md w-full">
                <div class="p-4 border-b border-gray-200">
                    <h3 id="modalTitle" class="text-lg font-bold text-[#212529]">Th?m danh mục m?i</h3>
                </div>
                <form id="categoryForm" class="p-4 space-y-4">
                    <div>
                        <label class="text-sm mb-1 block text-[#212529] font-medium">T?n danh mục</label>
                        <input type="text" id="categoryName" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" placeholder="Nh?p t?n danh mục">
                        <span id="nameError" class="text-xs text-[#DC3545] mt-1 hidden">Vui l?ng nh?p t?n danh mục</span>
                    </div>
                    <div>
                        <label class="text-sm mb-1 block text-[#212529] font-medium">Danh mục cha (t?y Chọn)</label>
                        <select id="parentCategory" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            <option value="">-- Chọn danh mục cha --</option>
                            <option value="1">? ?i?n t?</option>
                            <option value="7">? Thời trang</option>
                            <option value="12">? Nh? c?a & ??i s?ng</option>
                        </select>
                    </div>
                    <div class="flex space-x-3 pt-2">
                        <button type="submit" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 flex-1">
                            Lưu
                        </button>
                        <button type="button" onclick="closeModal()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 flex-1">
                            Hủy
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-[#F8F9FA] border-t border-gray-200 mt-12">
        <div class="container mx-auto max-w-[1200px] p-6">
            <div class="text-center text-sm text-[#6C757D]">
                ? 2025 E-commerce Admin Panel. Phi?n b?n 1.0.0
            </div>
        </div>
    </footer>

    <script>
        let editingCategoryId = null;

        // Toggle category children
        function toggleCategory(categoryId) {
            const children = document.getElementById(categoryId + '-children');
            const icon = document.getElementById(categoryId + '-icon');
            
            if (children.classList.contains('hidden')) {
                children.classList.remove('hidden');
                icon.style.transform = 'rotate(90deg)';
            } else {
                children.classList.add('hidden');
                icon.style.transform = 'rotate(0deg)';
            }
        }

        // Open add category modal
        document.getElementById('addCategoryBtn').addEventListener('click', function() {
            editingCategoryId = null;
            document.getElementById('modalTitle').textContent = 'Th?m danh mục m?i';
            document.getElementById('categoryName').value = '';
            document.getElementById('parentCategory').value = '';
            document.getElementById('nameError').classList.add('hidden');
            document.getElementById('categoryModal').classList.remove('hidden');
        });

        // Edit category
        function editCategory(id, name, parentId) {
            editingCategoryId = id;
            document.getElementById('modalTitle').textContent = 'Sửa danh mục';
            document.getElementById('categoryName').value = name;
            document.getElementById('parentCategory').value = parentId || '';
            document.getElementById('nameError').classList.add('hidden');
            document.getElementById('categoryModal').classList.remove('hidden');
        }

        // Close modal
        function closeModal() {
            document.getElementById('categoryModal').classList.add('hidden');
        }

        // Delete category
        function deleteCategory(id, name) {
            if (confirm(`B?n c? ch?c Chọn mu?n Xóa danh mục "${name}"?`)) {
                // Here would be the API call to delete
                alert(`?? Xóa danh mục "${name}" (ID: ${id})`);
            }
        }

        // Handle form submission
        document.getElementById('categoryForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const name = document.getElementById('categoryName').value.trim();
            const nameError = document.getElementById('nameError');
            
            if (!name) {
                nameError.classList.remove('hidden');
                return;
            }
            
            nameError.classList.add('hidden');
            
            const parentId = document.getElementById('parentCategory').value;
            
            if (editingCategoryId) {
                alert(`?? c?p nh?t danh mục "${name}" (ID: ${editingCategoryId})`);
            } else {
                alert(`?? th?m danh mục m?i "${name}"`);
            }
            
            closeModal();
        });

        // Close modal when clicking outside
        document.getElementById('categoryModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closeModal();
            }
        });

        // Navigation active state
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
            document.querySelector('header span.text-xs').textContent = timeString;
        });
    </script>
</body>
</html>