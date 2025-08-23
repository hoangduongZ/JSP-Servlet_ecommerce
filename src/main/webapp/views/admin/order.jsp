<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Qu?n l? ??n h?ng - Admin Dashboard</title>
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
                <span class="text-sm text-[#6C757D]">Qu?n l? ??n h?ng</span>
            </div>
            
            <!-- User Info -->
            <div class="flex items-center space-x-4">
                <span class="text-sm text-[#6C757D]">Xin ch?o, <strong>hoangdvdinos</strong></span>
                <span class="text-xs text-[#6C757D]">14/08/2025 17:01</span>
                <button class="bg-[#DC3545] text-white rounded-md px-3 py-1 text-sm font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                    ??ng xu?t
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
                            <span>S?n ph?m</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 bg-[#0D6EFD] text-white px-3 py-2 rounded-md font-medium">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                            </svg>
                            <span>??n h?ng</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3z"/>
                            </svg>
                            <span>Kh?ch h?ng</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M4 3a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V5a2 2 0 00-2-2H4z"/>
                            </svg>
                            <span>Danh m?c</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M3 3a1 1 0 000 2v8a2 2 0 002 2h2.586l-1.293 1.293a1 1 0 101.414 1.414L10 15.414l2.293 2.293a1 1 0 001.414-1.414L12.414 15H15a2 2 0 002-2V5a1 1 0 100-2H3zm11.707 4.707a1 1 0 00-1.414-1.414L10 9.586 8.707 8.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"/>
                            </svg>
                            <span>B?o c?o</span>
                        </a>
                    </nav>
                </div>
            </aside>

            <!-- Main Content -->
            <main class="lg:col-span-3">
                <!-- Page Header -->
                <div class="flex items-center justify-between mb-6">
                    <div>
                        <h1 class="text-3xl font-bold text-[#212529]">Qu?n l? ??n h?ng</h1>
                        <p class="text-sm text-[#6C757D] mt-1">Qu?n l? t?t c? ??n h?ng trong h? th?ng</p>
                    </div>
                    <button class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                        ? Xu?t b?o c?o
                    </button>
                </div>

                <!-- Stats -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5 gap-4 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">T?ng ??n h?ng</p>
                                <p class="text-2xl font-bold text-[#212529]">2,847</p>
                            </div>
                            <div class="bg-[#0D6EFD] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M3 4a1 1 0 011-1h12a1 1 0 011 1v2a1 1 0 01-1 1H4a1 1 0 01-1-1V4zM3 10a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H4a1 1 0 01-1-1v-6zM14 9a1 1 0 00-1 1v6a1 1 0 001 1h2a1 1 0 001-1v-6a1 1 0 00-1-1h-2z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">Ch? x? l?</p>
                                <p class="text-2xl font-bold text-[#FFC107]">78</p>
                            </div>
                            <div class="bg-[#FFC107] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">?ang x? l?</p>
                                <p class="text-2xl font-bold text-[#0D6EFD]">145</p>
                            </div>
                            <div class="bg-[#0D6EFD] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M4 2a1 1 0 011 1v2.101a7.002 7.002 0 0111.601 2.566 1 1 0 11-1.885.666A5.002 5.002 0 005.999 7H9a1 1 0 010 2H4a1 1 0 01-1-1V3a1 1 0 011-1zm.008 9.057a1 1 0 011.276.61A5.002 5.002 0 0014.001 13H11a1 1 0 110-2h5a1 1 0 011 1v5a1 1 0 11-2 0v-2.101a7.002 7.002 0 01-11.601-2.566 1 1 0 01.61-1.276z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">?? giao</p>
                                <p class="text-2xl font-bold text-[#198754]">2,456</p>
                            </div>
                            <div class="bg-[#198754] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">?? h?y</p>
                                <p class="text-2xl font-bold text-[#DC3545]">168</p>
                            </div>
                            <div class="bg-[#DC3545] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Filters -->
                <div class="bg-white rounded-lg shadow-sm p-4 mb-6">
                    <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">Tr?ng th?i</label>
                            <select id="statusFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <option value="">T?t c? tr?ng th?i</option>
                                <option value="PENDING">Ch? x? l?</option>
                                <option value="PROCESSING">?ang x? l?</option>
                                <option value="SHIPPED">?? v?n chuy?n</option>
                                <option value="DELIVERED">?? giao</option>
                                <option value="CANCELLED">?? h?y</option>
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
                            <input type="text" id="searchOrder" placeholder="M? ??n, t?n kh?ch h?ng..." class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
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

                <!-- Orders Table -->
                <div class="bg-white rounded-lg shadow-sm">
                    <div class="p-4 border-b border-gray-200">
                        <div class="flex items-center justify-between">
                            <h2 class="text-xl font-bold text-[#212529]">Danh s?ch ??n h?ng</h2>
                            <div class="flex items-center space-x-2">
                                <span class="text-sm text-[#6C757D]">Hi?n th? 1-10 trong 2,847 ??n h?ng</span>
                            </div>
                        </div>
                    </div>
                    <div class="overflow-x-auto">
                        <table class="w-full">
                            <thead class="bg-[#F8F9FA]">
                                <tr>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">M? ??n h?ng</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Kh?ch h?ng</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">S?n ph?m</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">T?ng ti?n</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Thanh to?n</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Tr?ng th?i</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Ng?y t?o</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Thao t?c</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-200">
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#ORD-2025-001</td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm font-medium text-[#212529]">Nguy?n V?n An</div>
                                            <div class="text-xs text-[#6C757D]">nguyenvanan@gmail.com</div>
                                            <div class="text-xs text-[#6C757D]">0987654321</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm text-[#212529]">3 s?n ph?m</div>
                                        <div class="text-xs text-[#6C757D]">iPhone 15 Pro Max, AirPods...</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm font-medium text-[#212529]">?42,980,000</div>
                                        <div class="text-xs text-[#6C757D]">Ph? ship: ?50,000</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">?? thanh to?n</span>
                                        <div class="text-xs text-[#6C757D] mt-1">COD</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">?? giao</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>10/08/2025</div>
                                        <div class="text-xs">14:30</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewOrder(1)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="printOrder(1)" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">In</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#ORD-2025-002</td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm font-medium text-[#212529]">Tr?n Th? B?ch</div>
                                            <div class="text-xs text-[#6C757D]">tranthibich@yahoo.com</div>
                                            <div class="text-xs text-[#6C757D]">0912345678</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm text-[#212529]">1 s?n ph?m</div>
                                        <div class="text-xs text-[#6C757D]">MacBook Air M3</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm font-medium text-[#212529]">?28,990,000</div>
                                        <div class="text-xs text-[#6C757D]">Ph? ship: ?0</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">Ch? thanh to?n</span>
                                        <div class="text-xs text-[#6C757D] mt-1">Chuy?n kho?n</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs font-medium">?ang x? l?</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>12/08/2025</div>
                                        <div class="text-xs">09:15</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewOrder(2)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="updateStatus(2)" class="text-[#FFC107] hover:underline text-xs bg-[#FFF3CD] px-2 py-1 rounded">C?p nh?t</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#ORD-2025-003</td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm font-medium text-[#212529]">L? Minh C??ng</div>
                                            <div class="text-xs text-[#6C757D]">leminhcuong@outlook.com</div>
                                            <div class="text-xs text-[#6C757D]">0976543210</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm text-[#212529]">2 s?n ph?m</div>
                                        <div class="text-xs text-[#6C757D]">iPad Pro, Apple Pencil</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm font-medium text-[#212529]">?29,490,000</div>
                                        <div class="text-xs text-[#6C757D]">Ph? ship: ?30,000</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">?? thanh to?n</span>
                                        <div class="text-xs text-[#6C757D] mt-1">V? ?i?n t?</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#6C757D] text-white px-2 py-1 rounded-full text-xs font-medium">?? v?n chuy?n</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>13/08/2025</div>
                                        <div class="text-xs">16:45</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewOrder(3)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="trackShipping(3)" class="text-[#6C757D] hover:underline text-xs bg-[#F8F9FA] px-2 py-1 rounded">Theo d?i</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#ORD-2025-004</td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm font-medium text-[#212529]">Ph?m Th? Hoa</div>
                                            <div class="text-xs text-[#6C757D]">phamthihoa@gmail.com</div>
                                            <div class="text-xs text-[#6C757D]">0965432189</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm text-[#212529]">1 s?n ph?m</div>
                                        <div class="text-xs text-[#6C757D]">AirPods Pro 2nd Gen</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm font-medium text-[#212529]">?6,990,000</div>
                                        <div class="text-xs text-[#6C757D]">Ph? ship: ?25,000</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs font-medium">Ch?a thanh to?n</span>
                                        <div class="text-xs text-[#6C757D] mt-1">COD</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs font-medium">?? h?y</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>14/08/2025</div>
                                        <div class="text-xs">11:20</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewOrder(4)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="restoreOrder(4)" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">Kh?i ph?c</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#ORD-2025-005</td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm font-medium text-[#212529]">V? Thanh T?ng</div>
                                            <div class="text-xs text-[#6C757D]">vothanhtung@hotmail.com</div>
                                            <div class="text-xs text-[#6C757D]">0934567890</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm text-[#212529]">4 s?n ph?m</div>
                                        <div class="text-xs text-[#6C757D]">Apple Watch, Case, D?y...</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm font-medium text-[#212529]">?15,750,000</div>
                                        <div class="text-xs text-[#6C757D]">Ph? ship: ?40,000</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">Ch? thanh to?n</span>
                                        <div class="text-xs text-[#6C757D] mt-1">Th? t?n d?ng</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">Ch? x? l?</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>14/08/2025</div>
                                        <div class="text-xs">15:30</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewOrder(5)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="processOrder(5)" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">X? l?</button>
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
                                Hi?n th? <strong>1</strong> ??n <strong>10</strong> trong <strong>2,847</strong> ??n h?ng
                            </div>
                            <div class="flex space-x-2">
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 disabled:opacity-50" disabled>
                                    Tr??c
                                </button>
                                <button class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium">1</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">2</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">3</button>
                                <span class="px-2 text-[#6C757D]">...</span>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">285</button>
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

    <!-- Order Detail Modal -->
    <div id="orderDetailModal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
        <div class="flex items-center justify-center min-h-screen p-4">
            <div class="bg-white rounded-lg shadow-lg max-w-4xl w-full max-h-[90vh] overflow-y-auto">
                <div class="p-4 border-b border-gray-200">
                    <div class="flex items-center justify-between">
                        <h3 class="text-lg font-bold text-[#212529]">Chi ti?t ??n h?ng #ORD-2025-001</h3>
                        <button onclick="closeOrderModal()" class="text-[#6C757D] hover:text-[#212529]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="p-6 space-y-6">
                    <!-- Order Info -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <h4 class="font-bold text-[#212529] mb-3">Th?ng tin ??n h?ng</h4>
                            <div class="space-y-2 text-sm">
                                <div><strong>M? ??n:</strong> #ORD-2025-001</div>
                                <div><strong>Ng?y t?o:</strong> 10/08/2025 14:30</div>
                                <div><strong>Tr?ng th?i:</strong> <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs">?? giao</span></div>
                                <div><strong>Thanh to?n:</strong> <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs">?? thanh to?n</span></div>
                                <div><strong>Ph??ng th?c:</strong> COD</div>
                            </div>
                        </div>
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <h4 class="font-bold text-[#212529] mb-3">Th?ng tin kh?ch h?ng</h4>
                            <div class="space-y-2 text-sm">
                                <div><strong>H? t?n:</strong> Nguy?n V?n An</div>
                                <div><strong>Email:</strong> nguyenvanan@gmail.com</div>
                                <div><strong>?i?n tho?i:</strong> 0987654321</div>
                                <div><strong>??a ch?:</strong> 123 ???ng ABC, Qu?n 1, TP.HCM</div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Order Items -->
                    <div>
                        <h4 class="font-bold text-[#212529] mb-3">S?n ph?m ?? ??t</h4>
                        <div class="border border-gray-200 rounded-lg overflow-hidden">
                            <table class="w-full">
                                <thead class="bg-[#F8F9FA]">
                                    <tr>
                                        <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">S?n ph?m</th>
                                        <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">??n gi?</th>
                                        <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">S? l??ng</th>
                                        <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Th?nh ti?n</th>
                                    </tr>
                                </thead>
                                <tbody class="divide-y divide-gray-200">
                                    <tr>
                                        <td class="px-4 py-3">
                                            <div class="flex items-center space-x-3">
                                                <div class="w-12 h-12 bg-gray-200 rounded-md"></div>
                                                <div>
                                                    <div class="text-sm font-medium text-[#212529]">iPhone 15 Pro Max 256GB</div>
                                                    <div class="text-xs text-[#6C757D]">M?u: Titan T? nhi?n</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">?34,990,000</td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">1</td>
                                        <td class="px-4 py-3 text-sm font-medium text-[#212529]">?34,990,000</td>
                                    </tr>
                                    <tr>
                                        <td class="px-4 py-3">
                                            <div class="flex items-center space-x-3">
                                                <div class="w-12 h-12 bg-gray-200 rounded-md"></div>
                                                <div>
                                                    <div class="text-sm font-medium text-[#212529]">AirPods Pro 2nd Gen</div>
                                                    <div class="text-xs text-[#6C757D]">USB-C</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">?6,990,000</td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">1</td>
                                        <td class="px-4 py-3 text-sm font-medium text-[#212529]">?6,990,000</td>
                                    </tr>
                                    <tr>
                                        <td class="px-4 py-3">
                                            <div class="flex items-center space-x-3">
                                                <div class="w-12 h-12 bg-gray-200 rounded-md"></div>
                                                <div>
                                                    <div class="text-sm font-medium text-[#212529]">?p l?ng MagSafe</div>
                                                    <div class="text-xs text-[#6C757D]">Silicone - Xanh d??ng</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">?950,000</td>
                                        <td class="px-4 py-3 text-sm text-[#212529]">1</td>
                                        <td class="px-4 py-3 text-sm font-medium text-[#212529]">?950,000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    <!-- Order Summary -->
                    <div class="bg-[#F8F9FA] p-4 rounded-lg">
                        <h4 class="font-bold text-[#212529] mb-3">T?m t?t ??n h?ng</h4>
                        <div class="space-y-2 text-sm">
                            <div class="flex justify-between">
                                <span>T?m t?nh:</span>
                                <span>?42,930,000</span>
                            </div>
                            <div class="flex justify-between">
                                <span>Ph? v?n chuy?n:</span>
                                <span>?50,000</span>
                            </div>
                            <div class="flex justify-between border-t border-gray-300 pt-2 font-bold text-base">
                                <span>T?ng c?ng:</span>
                                <span class="text-[#0D6EFD]">?42,980,000</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="p-4 border-t border-gray-200">
                    <div class="flex space-x-3">
                        <button class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                            ? In h?a ??n
                        </button>
                        <button class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            ? G?i email
                        </button>
                        <button onclick="closeOrderModal()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                            ??ng
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
                ? 2025 E-commerce Admin Panel. Phi?n b?n 1.0.0
            </div>
        </div>
    </footer>

    <script>
        // Filter functions
        function applyFilters() {
            const status = document.getElementById('statusFilter').value;
            const startDate = document.getElementById('startDate').value;
            const endDate = document.getElementById('endDate').value;
            const search = document.getElementById('searchOrder').value;
            
            console.log('Filters applied:', { status, startDate, endDate, search });
            alert('?ang ?p d?ng b? l?c...');
        }

        function resetFilters() {
            document.getElementById('statusFilter').value = '';
            document.getElementById('startDate').value = '';
            document.getElementById('endDate').value = '';
            document.getElementById('searchOrder').value = '';
            alert('?? ??t l?i b? l?c');
        }

        // Order actions
        function viewOrder(orderId) {
            document.getElementById('orderDetailModal').classList.remove('hidden');
        }

        function closeOrderModal() {
            document.getElementById('orderDetailModal').classList.add('hidden');
        }

        function printOrder(orderId) {
            alert(`In h?a ??n ??n h?ng #${orderId}`);
        }

        function updateStatus(orderId) {
            alert(`C?p nh?t tr?ng th?i ??n h?ng #${orderId}`);
        }

        function trackShipping(orderId) {
            alert(`Theo d?i v?n chuy?n ??n h?ng #${orderId}`);
        }

        function restoreOrder(orderId) {
            if (confirm('B?n c? mu?n kh?i ph?c ??n h?ng n?y?')) {
                alert(`?? kh?i ph?c ??n h?ng #${orderId}`);
            }
        }

        function processOrder(orderId) {
            alert(`X? l? ??n h?ng #${orderId}`);
        }

        // Close modal when clicking outside
        document.getElementById('orderDetailModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closeOrderModal();
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