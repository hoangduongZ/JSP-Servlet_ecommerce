<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Người dùng - Admin Dashboard</title>
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
                <span class="text-sm text-[#6C757D]">Quản lý Người dùng</span>
            </div>
            
            <!-- User Info -->
            <div class="flex items-center space-x-4">
                <span class="text-sm text-[#6C757D]">Xin chào, <strong>hoangdvdinos</strong></span>
                <span class="text-xs text-[#6C757D]">14/08/2025 17:10</span>
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
                        <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
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
                        <a href="#" class="flex items-center space-x-3 bg-[#0D6EFD] text-white px-3 py-2 rounded-md font-medium">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3z"/>
                            </svg>
                            <span>Người dùng</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M4 3a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V5a2 2 0 00-2-2H4z"/>
                            </svg>
                            <span>Danh mục</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M4 4a2 2 0 00-2 2v4a2 2 0 002 2V6h10a2 2 0 00-2-2H4zM14 6a2 2 0 012 2v4a2 2 0 01-2 2H8a2 2 0 01-2-2V8a2 2 0 012-2h6zM4 14a2 2 0 002 2h8a2 2 0 002-2v-2a2 2 0 00-2-2H6a2 2 0 00-2 2v2z"/>
                            </svg>
                            <span>Thanh toán</span>
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
                <div class="flex items-center justify-between mb-6">
                    <div>
                        <h1 class="text-3xl font-bold text-[#212529]">Quản lý Người dùng</h1>
                        <p class="text-sm text-[#6C757D] mt-1">Quản lý tất cả người dùng trong hệ thống</p>
                    </div>
                    <div class="flex space-x-3">
                        <button onclick="exportUsers()" class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            Xuất danh sách
                        </button>
                        <button id="addUserBtn" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                            + Thêm người dùng
                        </button>
                    </div>
                </div>

                <!-- Stats -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">T?ng ng??i d?ng</p>
                                <p class="text-2xl font-bold text-[#212529]">8,524</p>
                                <p class="text-xs text-[#198754]">+5.2% t? th?ng tr??c</p>
                            </div>
                            <div class="bg-[#0D6EFD] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">Kh?ch h?ng</p>
                                <p class="text-2xl font-bold text-[#198754]">8,245</p>
                                <p class="text-xs text-[#198754]">96.7% t?ng s?</p>
                            </div>
                            <div class="bg-[#198754] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M9 6a3 3 0 11-6 0 3 3 0 016 0zM17 6a3 3 0 11-6 0 3 3 0 016 0zM12.93 17c.046-.327.07-.66.07-1a6.97 6.97 0 00-1.5-4.33A5 5 0 0119 16v1h-6.07zM6 11a5 5 0 015 5v1H1v-1a5 5 0 015-5z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">Qu?n tr? vi?n</p>
                                <p class="text-2xl font-bold text-[#FFC107]">15</p>
                                <p class="text-xs text-[#6C757D]">Admin + Staff</p>
                            </div>
                            <div class="bg-[#FFC107] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M3 6a3 3 0 013-3h10a1 1 0 01.8 1.6L14.25 8l2.55 3.4A1 1 0 0116 13H6a1 1 0 00-1 1v3a1 1 0 11-2 0V6z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">??ng k? m?i</p>
                                <p class="text-2xl font-bold text-[#0D6EFD]">264</p>
                                <p class="text-xs text-[#0D6EFD]">Th?ng n?y</p>
                            </div>
                            <div class="bg-[#0D6EFD] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M8 9a3 3 0 100-6 3 3 0 000 6zM8 11a6 6 0 016 6H2a6 6 0 016-6zM16 7a1 1 0 10-2 0v1h-1a1 1 0 100 2h1v1a1 1 0 102 0v-1h1a1 1 0 100-2h-1V7z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- User Activity Chart -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <h3 class="text-lg font-bold text-[#212529] mb-4">Ph?n b? theo vai tr?</h3>
                        <div class="space-y-3">
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <div class="w-8 h-8 bg-[#198754] rounded-full flex items-center justify-center">
                                        <span class="text-white text-xs font-bold">?</span>
                                    </div>
                                    <span class="text-sm font-medium text-[#212529]">Kh?ch h?ng</span>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-bold text-[#212529]">8,245</div>
                                    <div class="text-xs text-[#6C757D]">96.7%</div>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <div class="w-8 h-8 bg-[#0D6EFD] rounded-full flex items-center justify-center">
                                        <span class="text-white text-xs font-bold">???</span>
                                    </div>
                                    <span class="text-sm font-medium text-[#212529]">Nh?n vi?n</span>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-bold text-[#212529]">12</div>
                                    <div class="text-xs text-[#6C757D]">0.1%</div>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <div class="w-8 h-8 bg-[#DC3545] rounded-full flex items-center justify-center">
                                        <span class="text-white text-xs font-bold">?</span>
                                    </div>
                                    <span class="text-sm font-medium text-[#212529]">Qu?n tr? vi?n</span>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-bold text-[#212529]">3</div>
                                    <div class="text-xs text-[#6C757D]">0.04%</div>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <div class="w-8 h-8 bg-[#6C757D] rounded-full flex items-center justify-center">
                                        <span class="text-white text-xs font-bold">?</span>
                                    </div>
                                    <span class="text-sm font-medium text-[#212529]">T?i kho?n b? kh?a</span>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-bold text-[#212529]">264</div>
                                    <div class="text-xs text-[#6C757D]">3.1%</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <h3 class="text-lg font-bold text-[#212529] mb-4">Ho?t ??ng g?n ??y</h3>
                        <div class="space-y-4">
                            <div class="text-center p-4 bg-[#F8F9FA] rounded-lg">
                                <div class="text-2xl">?</div>
                                <div class="text-sm font-medium text-[#212529] mt-2">??ng k? m?i h?m nay</div>
                                <div class="text-xl font-bold text-[#0D6EFD]">12</div>
                                <div class="text-xs text-[#198754]">+20% so v?i h?m qua</div>
                            </div>
                            <div class="grid grid-cols-2 gap-3">
                                <div class="text-center p-3 bg-[#E7F3FF] rounded-lg">
                                    <div class="text-sm font-medium text-[#212529]">??ng nh?p/Ng?y</div>
                                    <div class="text-lg font-bold text-[#0D6EFD]">1,847</div>
                                </div>
                                <div class="text-center p-3 bg-[#E8F5E8] rounded-lg">
                                    <div class="text-sm font-medium text-[#212529]">Online hi?n t?i</div>
                                    <div class="text-lg font-bold text-[#198754]">234</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Filters -->
                <div class="bg-white rounded-lg shadow-sm p-4 mb-6">
                    <div class="grid grid-cols-1 md:grid-cols-5 gap-4">
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">Vai tr?</label>
                            <select id="roleFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <option value="">T?t c? vai tr?</option>
                                <option value="customer">Kh?ch h?ng</option>
                                <option value="staff">Nh?n vi?n</option>
                                <option value="admin">Qu?n tr? vi?n</option>
                            </select>
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">Tr?ng th?i</label>
                            <select id="statusFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <option value="">T?t c? tr?ng th?i</option>
                                <option value="active">?ang ho?t ??ng</option>
                                <option value="inactive">Kh?ng ho?t ??ng</option>
                                <option value="banned">B? kh?a</option>
                            </select>
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">T? ng?y</label>
                            <input type="date" id="startDate" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">??n ng?y</label>
                            <input type="date" id="endDate" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">T?m ki?m</label>
                            <input type="text" id="searchUser" placeholder="T?n, email, S?T..." class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                        </div>
                    </div>
                    <div class="flex space-x-3 mt-4">
                        <button onclick="applyFilters()" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                            ? T?m ki?m
                        </button>
                        <button onclick="resetFilters()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                            ? ??t l?i
                        </button>
                    </div>
                </div>

                <!-- Users Table -->
                <div class="bg-white rounded-lg shadow-sm">
                    <div class="p-4 border-b border-gray-200">
                        <div class="flex items-center justify-between">
                            <h2 class="text-xl font-bold text-[#212529]">Danh s?ch ng??i d?ng</h2>
                            <div class="flex items-center space-x-2">
                                <span class="text-sm text-[#6C757D]">Hi?n th? 1-10 trong 8,524 ng??i d?ng</span>
                            </div>
                        </div>
                    </div>
                    <div class="overflow-x-auto">
                        <table class="w-full">
                            <thead class="bg-[#F8F9FA]">
                                <tr>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">ID</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Th?ng tin c? nh?n</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Email & S?T</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Vai tr?</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">??n h?ng</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Ng?y t?o</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Tr?ng th?i</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Thao t?c</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-200">
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#8524</td>
                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-3">
                                            <div class="w-10 h-10 bg-[#0D6EFD] rounded-full flex items-center justify-center">
                                                <span class="text-white text-sm font-bold">NV</span>
                                            </div>
                                            <div>
                                                <div class="text-sm font-medium text-[#212529]">Nguy?n V?n An</div>
                                                <div class="text-xs text-[#6C757D]">Ho?t ??ng: 2 gi? tr??c</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm text-[#212529]">nguyenvanan@gmail.com</div>
                                            <div class="text-xs text-[#6C757D]">0987654321</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Kh?ch h?ng</span>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm text-[#212529]">15 ??n</div>
                                        <div class="text-xs text-[#6C757D]">?125.6M</div>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>10/01/2023</div>
                                        <div class="text-xs">14:30</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Ho?t ??ng</span>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewUser(8524)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="editUser(8524)" class="text-[#FFC107] hover:underline text-xs bg-[#FFF3CD] px-2 py-1 rounded">S?a</button>
                                            <button onclick="toggleUserStatus(8524, 'ban')" class="text-[#DC3545] hover:underline text-xs bg-[#F8D7DA] px-2 py-1 rounded">Kh?a</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#8523</td>
                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-3">
                                            <div class="w-10 h-10 bg-[#DC3545] rounded-full flex items-center justify-center">
                                                <span class="text-white text-sm font-bold">HD</span>
                                            </div>
                                            <div>
                                                <div class="text-sm font-medium text-[#212529]">hoangdvdinos</div>
                                                <div class="text-xs text-[#198754]">? ?ang online</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm text-[#212529]">hoangdvdinos@gmail.com</div>
                                            <div class="text-xs text-[#6C757D]">0912345678</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs font-medium">Admin</span>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm text-[#6C757D]">-</div>
                                        <div class="text-xs text-[#6C757D]">Qu?n tr?</div>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>15/06/2022</div>
                                        <div class="text-xs">09:00</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Ho?t ??ng</span>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewUser(8523)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="editUser(8523)" class="text-[#FFC107] hover:underline text-xs bg-[#FFF3CD] px-2 py-1 rounded">S?a</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#8522</td>
                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-3">
                                            <div class="w-10 h-10 bg-[#FFC107] rounded-full flex items-center justify-center">
                                                <span class="text-white text-sm font-bold">TT</span>
                                            </div>
                                            <div>
                                                <div class="text-sm font-medium text-[#212529]">Tr?n Th? B?ch</div>
                                                <div class="text-xs text-[#6C757D]">Ho?t ??ng: 1 ng?y tr??c</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm text-[#212529]">tranthibich@yahoo.com</div>
                                            <div class="text-xs text-[#6C757D]">0976543210</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs font-medium">Nh?n vi?n</span>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm text-[#6C757D]">-</div>
                                        <div class="text-xs text-[#6C757D]">Nh?n vi?n</div>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>22/03/2023</div>
                                        <div class="text-xs">16:15</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Ho?t ??ng</span>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewUser(8522)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="editUser(8522)" class="text-[#FFC107] hover:underline text-xs bg-[#FFF3CD] px-2 py-1 rounded">S?a</button>
                                            <button onclick="toggleUserStatus(8522, 'ban')" class="text-[#DC3545] hover:underline text-xs bg-[#F8D7DA] px-2 py-1 rounded">Kh?a</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#8521</td>
                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-3">
                                            <div class="w-10 h-10 bg-[#6C757D] rounded-full flex items-center justify-center">
                                                <span class="text-white text-sm font-bold">LM</span>
                                            </div>
                                            <div>
                                                <div class="text-sm font-medium text-[#212529]">L? Minh C??ng</div>
                                                <div class="text-xs text-[#DC3545]">B? kh?a: Vi ph?m ch?nh s?ch</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm text-[#212529]">leminhcuong@outlook.com</div>
                                            <div class="text-xs text-[#6C757D]">0965432187</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Kh?ch h?ng</span>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm text-[#212529]">3 ??n</div>
                                        <div class="text-xs text-[#6C757D]">?8.5M</div>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>05/07/2024</div>
                                        <div class="text-xs">11:22</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs font-medium">B? kh?a</span>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewUser(8521)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="toggleUserStatus(8521, 'unban')" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">M? kh?a</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#8520</td>
                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-3">
                                            <div class="w-10 h-10 bg-[#198754] rounded-full flex items-center justify-center">
                                                <span class="text-white text-sm font-bold">PT</span>
                                            </div>
                                            <div>
                                                <div class="text-sm font-medium text-[#212529]">Ph?m Th? Hoa</div>
                                                <div class="text-xs text-[#6C757D]">Ho?t ??ng: 3 gi? tr??c</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm text-[#212529]">phamthihoa@gmail.com</div>
                                            <div class="text-xs text-[#6C757D]">0934567890</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Kh?ch h?ng</span>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm text-[#212529]">7 ??n</div>
                                        <div class="text-xs text-[#6C757D]">?42.3M</div>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>18/11/2023</div>
                                        <div class="text-xs">20:45</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">Ho?t ??ng</span>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewUser(8520)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="editUser(8520)" class="text-[#FFC107] hover:underline text-xs bg-[#FFF3CD] px-2 py-1 rounded">S?a</button>
                                            <button onclick="toggleUserStatus(8520, 'ban')" class="text-[#DC3545] hover:underline text-xs bg-[#F8D7DA] px-2 py-1 rounded">Kh?a</button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <!-- Pagination -->
                    <div class="p-4 border-t border-gray-200">
                        <div class="flex items-center justify-between">
                            <div class="text-sm text-[#6C757D]">
                                Hi?n th? <strong>1</strong> ??n <strong>10</strong> trong <strong>8,524</strong> ng??i d?ng
                            </div>
                            <div class="flex space-x-2">
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 disabled:opacity-50" disabled>
                                    Tr??c
                                </button>
                                <button class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium">1</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">2</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">3</button>
                                <span class="px-2 text-[#6C757D]">...</span>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">853</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                                    Ti?p
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- User Detail Modal -->
    <div id="userDetailModal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
        <div class="flex items-center justify-center min-h-screen p-4">
            <div class="bg-white rounded-lg shadow-lg max-w-3xl w-full max-h-[90vh] overflow-y-auto">
                <div class="p-4 border-b border-gray-200">
                    <div class="flex items-center justify-between">
                        <h3 class="text-lg font-bold text-[#212529]">Chi ti?t ng??i d?ng #8524</h3>
                        <button onclick="closeUserModal()" class="text-[#6C757D] hover:text-[#212529]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="p-6 space-y-6">
                    <!-- User Info -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <h4 class="font-bold text-[#212529] mb-3">Th?ng tin c? nh?n</h4>
                            <div class="space-y-2 text-sm">
                                <div><strong>ID:</strong> #8524</div>
                                <div><strong>H? t?n:</strong> Nguy?n V?n An</div>
                                <div><strong>Email:</strong> nguyenvanan@gmail.com</div>
                                <div><strong>?i?n tho?i:</strong> 0987654321</div>
                                <div><strong>Vai tr?:</strong> <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs">Kh?ch h?ng</span></div>
                                <div><strong>Ng?y t?o:</strong> 10/01/2023 14:30</div>
                                <div><strong>L?n cu?i:</strong> 14/08/2025 15:10</div>
                            </div>
                        </div>
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <h4 class="font-bold text-[#212529] mb-3">Th?ng k? mua h?ng</h4>
                            <div class="space-y-2 text-sm">
                                <div><strong>T?ng ??n h?ng:</strong> 15 ??n</div>
                                <div><strong>T?ng chi ti?u:</strong> <span class="text-[#0D6EFD] font-medium">?125,600,000</span></div>
                                <div><strong>??n trung b?nh:</strong> ?8,373,333</div>
                                <div><strong>??n l?n nh?t:</strong> ?42,980,000</div>
                                <div><strong>??n th?nh c?ng:</strong> 14/15 (93.3%)</div>
                                <div><strong>??n ?? h?y:</strong> 1/15 (6.7%)</div>
                                <div><strong>?i?m t?n nhi?m:</strong> <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs">Xu?t s?c</span></div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Recent Orders -->
                    <div>
                        <h4 class="font-bold text-[#212529] mb-3">??n h?ng g?n ??y</h4>
                        <div class="border border-gray-200 rounded-lg overflow-hidden">
                            <table class="w-full">
                                <thead class="bg-[#F8F9FA]">
                                    <tr>
                                        <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">M? ??n</th>
                                        <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Ng?y</th>
                                        <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">T?ng ti?n</th>
                                        <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Tr?ng th?i</th>
                                    </tr>
                                </thead>
                                <tbody class="divide-y divide-gray-200">
                                    <tr>
                                        <td class="px-4 py-3 text-sm text-[#0D6EFD] font-medium">#ORD-2025-001</td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">10/08/2025</td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">?42,980,000</td>
                                        <td class="px-4 py-3">
                                            <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs">?? giao</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="px-4 py-3 text-sm text-[#0D6EFD] font-medium">#ORD-2024-156</td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">25/12/2024</td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">?15,990,000</td>
                                        <td class="px-4 py-3">
                                            <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs">?? giao</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="px-4 py-3 text-sm text-[#0D6EFD] font-medium">#ORD-2024-087</td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">15/09/2024</td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">?8,750,000</td>
                                        <td class="px-4 py-3">
                                            <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs">?? h?y</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Activity Log -->
                    <div>
                        <h4 class="font-bold text-[#212529] mb-3">Ho?t ??ng g?n ??y</h4>
                        <div class="space-y-3">
                            <div class="flex items-start space-x-3">
                                <div class="w-8 h-8 bg-[#198754] rounded-full flex items-center justify-center">
                                    <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                                    </svg>
                                </div>
                                <div class="flex-1">
                                    <div class="text-sm font-medium text-[#212529]">??n h?ng #ORD-2025-001 ?? ???c giao th?nh c?ng</div>
                                    <div class="text-xs text-[#6C757D]">10/08/2025 15:45</div>
                                </div>
                            </div>
                            <div class="flex items-start space-x-3">
                                <div class="w-8 h-8 bg-[#0D6EFD] rounded-full flex items-center justify-center">
                                    <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M3 4a1 1 0 011-1h12a1 1 0 011 1v2a1 1 0 01-1 1H4a1 1 0 01-1-1V4zM3 10a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H4a1 1 0 01-1-1v-6zM14 9a1 1 0 00-1 1v6a1 1 0 001 1h2a1 1 0 001-1v-6a1 1 0 00-1-1h-2z"/>
                                    </svg>
                                </div>
                                <div class="flex-1">
                                    <div class="text-sm font-medium text-[#212529]">??t ??n h?ng m?i #ORD-2025-001</div>
                                    <div class="text-xs text-[#6C757D]">08/08/2025 14:30</div>
                                </div>
                            </div>
                            <div class="flex items-start space-x-3">
                                <div class="w-8 h-8 bg-[#FFC107] rounded-full flex items-center justify-center">
                                    <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M11 3.055A9.001 9.001 0 1020.945 9H11V3.055z"/>
                                        <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"/>
                                    </svg>
                                </div>
                                <div class="flex-1">
                                    <div class="text-sm font-medium text-[#212529]">??ng nh?p v?o h? th?ng</div>
                                    <div class="text-xs text-[#6C757D]">14/08/2025 12:30</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="p-4 border-t border-gray-200">
                    <div class="flex space-x-3">
                        <button class="bg-[#FFC107] text-white rounded-md px-5 py-2 font-medium hover:bg-[#E0A800] cursor-pointer transition-colors duration-200">
                            ?? Ch?nh s?a
                        </button>
                        <button class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            ? G?i email
                        </button>
                        <button class="bg-[#DC3545] text-white rounded-md px-5 py-2 font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                            ? Kh?a t?i kho?n
                        </button>
                        <button onclick="closeUserModal()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                            ??ng
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add/Edit User Modal -->
    <div id="userFormModal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
        <div class="flex items-center justify-center min-h-screen p-4">
            <div class="bg-white rounded-lg shadow-lg max-w-md w-full">
                <div class="p-4 border-b border-gray-200">
                    <h3 id="formModalTitle" class="text-lg font-bold text-[#212529]">Th?m ng??i d?ng m?i</h3>
                </div>
                <form id="userForm" class="p-4 space-y-4">
                    <div>
                        <label class="text-sm mb-1 block text-[#212529] font-medium">H? v? t?n</label>
                        <input type="text" id="userFullName" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" placeholder="Nh?p h? v? t?n">
                        <span id="nameError" class="text-xs text-[#DC3545] mt-1 hidden">Vui l?ng nh?p h? v? t?n</span>
                    </div>
                    <div>
                        <label class="text-sm mb-1 block text-[#212529] font-medium">Email</label>
                        <input type="email" id="userEmail" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" placeholder="Nh?p email">
                        <span id="emailError" class="text-xs text-[#DC3545] mt-1 hidden">Email kh?ng h?p l?</span>
                    </div>
                    <div>
                        <label class="text-sm mb-1 block text-[#212529] font-medium">S? ?i?n tho?i</label>
                        <input type="tel" id="userPhone" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" placeholder="Nh?p s? ?i?n tho?i">
                    </div>
                    <div>
                        <label class="text-sm mb-1 block text-[#212529] font-medium">Vai tr?</label>
                                                <select id="userRole" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            <option value="customer">Kh?ch h?ng</option>
                            <option value="staff">Nh?n vi?n</option>
                            <option value="admin">Qu?n tr? vi?n</option>
                        </select>
                    </div>
                    <div id="passwordSection">
                        <label class="text-sm mb-1 block text-[#212529] font-medium">M?t kh?u</label>
                        <input type="password" id="userPassword" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" placeholder="Nh?p m?t kh?u">
                        <span id="passwordError" class="text-xs text-[#DC3545] mt-1 hidden">M?t kh?u ph?i c? ?t nh?t 6 k? t?</span>
                    </div>
                    <div class="flex space-x-3 pt-2">
                        <button type="submit" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 flex-1">
                            L?u
                        </button>
                        <button type="button" onclick="closeUserFormModal()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 flex-1">
                            H?y
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
        let editingUserId = null;

        // Filter functions
        function applyFilters() {
            const role = document.getElementById('roleFilter').value;
            const status = document.getElementById('statusFilter').value;
            const startDate = document.getElementById('startDate').value;
            const endDate = document.getElementById('endDate').value;
            const search = document.getElementById('searchUser').value;
            
            console.log('User filters applied:', { role, status, startDate, endDate, search });
            alert('?ang ?p d?ng b? l?c ng??i d?ng...');
        }

        function resetFilters() {
            document.getElementById('roleFilter').value = '';
            document.getElementById('statusFilter').value = '';
            document.getElementById('startDate').value = '';
            document.getElementById('endDate').value = '';
            document.getElementById('searchUser').value = '';
            alert('?? ??t l?i b? l?c ng??i d?ng');
        }

        function exportUsers() {
            alert('?ang xu?t danh s?ch ng??i d?ng ra file Excel...');
        }

        // User actions
        function viewUser(userId) {
            document.getElementById('userDetailModal').classList.remove('hidden');
        }

        function closeUserModal() {
            document.getElementById('userDetailModal').classList.add('hidden');
        }

        function editUser(userId) {
            editingUserId = userId;
            document.getElementById('formModalTitle').textContent = 'Ch?nh s?a ng??i d?ng';
            
            // Pre-fill form with user data (would normally fetch from API)
            if (userId === 8524) {
                document.getElementById('userFullName').value = 'Nguy?n V?n An';
                document.getElementById('userEmail').value = 'nguyenvanan@gmail.com';
                document.getElementById('userPhone').value = '0987654321';
                document.getElementById('userRole').value = 'customer';
            }
            
            // Hide password field when editing
            document.getElementById('passwordSection').style.display = 'none';
            
            clearFormErrors();
            document.getElementById('userFormModal').classList.remove('hidden');
        }

        function toggleUserStatus(userId, action) {
            const actionText = action === 'ban' ? 'kh?a' : 'm? kh?a';
            if (confirm(`B?n c? ch?c ch?n mu?n ${actionText} ng??i d?ng n?y?`)) {
                alert(`?? ${actionText} ng??i d?ng #${userId}`);
            }
        }

        // Add user modal
        document.getElementById('addUserBtn').addEventListener('click', function() {
            editingUserId = null;
            document.getElementById('formModalTitle').textContent = 'Th?m ng??i d?ng m?i';
            document.getElementById('userForm').reset();
            document.getElementById('passwordSection').style.display = 'block';
            clearFormErrors();
            document.getElementById('userFormModal').classList.remove('hidden');
        });

        function closeUserFormModal() {
            document.getElementById('userFormModal').classList.add('hidden');
        }

        function clearFormErrors() {
            document.getElementById('nameError').classList.add('hidden');
            document.getElementById('emailError').classList.add('hidden');
            document.getElementById('passwordError').classList.add('hidden');
        }

        // Form validation
        function validateEmail(email) {
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }

        // Handle form submission
        document.getElementById('userForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const name = document.getElementById('userFullName').value.trim();
            const email = document.getElementById('userEmail').value.trim();
            const phone = document.getElementById('userPhone').value.trim();
            const role = document.getElementById('userRole').value;
            const password = document.getElementById('userPassword').value;
            
            let hasError = false;
            
            // Validate name
            if (!name) {
                document.getElementById('nameError').classList.remove('hidden');
                hasError = true;
            } else {
                document.getElementById('nameError').classList.add('hidden');
            }
            
            // Validate email
            if (!email || !validateEmail(email)) {
                document.getElementById('emailError').classList.remove('hidden');
                hasError = true;
            } else {
                document.getElementById('emailError').classList.add('hidden');
            }
            
            // Validate password (only for new users)
            if (!editingUserId && (!password || password.length < 6)) {
                document.getElementById('passwordError').classList.remove('hidden');
                hasError = true;
            } else {
                document.getElementById('passwordError').classList.add('hidden');
            }
            
            if (hasError) return;
            
            if (editingUserId) {
                alert(`?? c?p nh?t th?ng tin ng??i d?ng "${name}" (ID: ${editingUserId})`);
            } else {
                alert(`?? th?m ng??i d?ng m?i "${name}" v?i vai tr? "${role}"`);
            }
            
            closeUserFormModal();
        });

        // Close modals when clicking outside
        document.getElementById('userDetailModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closeUserModal();
            }
        });

        document.getElementById('userFormModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closeUserFormModal();
            }
        });

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
            document.querySelector('header span.text-xs').textContent = timeString;

            // Set default date filters (last 30 days)
            const today = new Date();
            const thirtyDaysAgo = new Date(today.getTime() - (30 * 24 * 60 * 60 * 1000));
            
            document.getElementById('endDate').value = today.toISOString().split('T')[0];
            document.getElementById('startDate').value = thirtyDaysAgo.toISOString().split('T')[0];
        });
    </script>
</body>
</html>