<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Thanh toán - Admin Dashboard</title>
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
                <span class="text-sm text-[#6C757D]">Quản lý Thanh toán</span>
            </div>
            
            <!-- User Info -->
            <div class="flex items-center space-x-4">
                <span class="text-sm text-[#6C757D]">Xin chào, <strong>hoangdvdinos</strong></span>
                <span class="text-xs text-[#6C757D]">14/08/2025 17:05</span>
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
                        <a href="#" class="flex items-center space-x-3 bg-[#0D6EFD] text-white px-3 py-2 rounded-md font-medium">
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
                        <h1 class="text-3xl font-bold text-[#212529]">Qu?n l? Thanh to?n</h1>
                        <p class="text-sm text-[#6C757D] mt-1">Qu?n l? t?t c? giao d?ch thanh to?n trong h? th?ng</p>
                    </div>
                    <div class="flex space-x-3">
                        <button class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            ? B?o c?o doanh thu
                        </button>
                        <button class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                            ? ??i so?t thanh to?n
                        </button>
                    </div>
                </div>

                <!-- Stats -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">T?ng giao d?ch</p>
                                <p class="text-2xl font-bold text-[#212529]">4,562</p>
                                <p class="text-xs text-[#198754]">+8.2% t? th?ng tr??c</p>
                            </div>
                            <div class="bg-[#0D6EFD] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M4 4a2 2 0 00-2 2v4a2 2 0 002 2V6h10a2 2 0 00-2-2H4zM14 6a2 2 0 012 2v4a2 2 0 01-2 2H8a2 2 0 01-2-2V8a2 2 0 012-2h6zM4 14a2 2 0 002 2h8a2 2 0 002-2v-2a2 2 0 00-2-2H6a2 2 0 00-2 2v2z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">?? thanh to?n</p>
                                <p class="text-2xl font-bold text-[#198754]">?1.24B</p>
                                <p class="text-xs text-[#198754]">+12.5% t? th?ng tr??c</p>
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
                                <p class="text-sm text-[#6C757D]">Ch? thanh to?n</p>
                                <p class="text-2xl font-bold text-[#FFC107]">?89.2M</p>
                                <p class="text-xs text-[#FFC107]">245 giao d?ch</p>
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
                                <p class="text-sm text-[#6C757D]">Th?t b?i</p>
                                <p class="text-2xl font-bold text-[#DC3545]">?15.6M</p>
                                <p class="text-xs text-[#DC3545]">67 giao d?ch</p>
                            </div>
                            <div class="bg-[#DC3545] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Payment Methods Stats -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <h3 class="text-lg font-bold text-[#212529] mb-4">Ph??ng th?c thanh to?n</h3>
                        <div class="space-y-3">
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <div class="w-8 h-8 bg-[#0D6EFD] rounded-full flex items-center justify-center">
                                        <span class="text-white text-xs font-bold">COD</span>
                                    </div>
                                    <span class="text-sm font-medium text-[#212529]">Thanh to?n khi nh?n h?ng</span>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-bold text-[#212529]">?487M</div>
                                    <div class="text-xs text-[#6C757D]">39.3%</div>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <div class="w-8 h-8 bg-[#198754] rounded-full flex items-center justify-center">
                                        <span class="text-white text-xs font-bold">ATM</span>
                                    </div>
                                    <span class="text-sm font-medium text-[#212529]">Chuy?n kho?n ng?n h?ng</span>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-bold text-[#212529]">?356M</div>
                                    <div class="text-xs text-[#6C757D]">28.7%</div>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <div class="w-8 h-8 bg-[#FFC107] rounded-full flex items-center justify-center">
                                        <span class="text-white text-xs font-bold">eWL</span>
                                    </div>
                                    <span class="text-sm font-medium text-[#212529]">V? ?i?n t?</span>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-bold text-[#212529]">?298M</div>
                                    <div class="text-xs text-[#6C757D]">24.1%</div>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <div class="w-8 h-8 bg-[#DC3545] rounded-full flex items-center justify-center">
                                        <span class="text-white text-xs font-bold">CC</span>
                                    </div>
                                    <span class="text-sm font-medium text-[#212529]">Th? t?n d?ng</span>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-bold text-[#212529]">?98M</div>
                                    <div class="text-xs text-[#6C757D]">7.9%</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <h3 class="text-lg font-bold text-[#212529] mb-4">Xu h??ng thanh to?n</h3>
                        <div class="space-y-4">
                            <div class="text-center p-4 bg-[#F8F9FA] rounded-lg">
                                <div class="text-2xl">?</div>
                                <div class="text-sm font-medium text-[#212529] mt-2">Doanh thu th?ng n?y</div>
                                <div class="text-xl font-bold text-[#0D6EFD]">?1.24B</div>
                                <div class="text-xs text-[#198754]">+12.5% so v?i th?ng tr??c</div>
                            </div>
                            <div class="grid grid-cols-2 gap-3">
                                <div class="text-center p-3 bg-[#E7F3FF] rounded-lg">
                                    <div class="text-sm font-medium text-[#212529]">Giao d?ch/Ng?y</div>
                                    <div class="text-lg font-bold text-[#0D6EFD]">163</div>
                                </div>
                                <div class="text-center p-3 bg-[#E8F5E8] rounded-lg">
                                    <div class="text-sm font-medium text-[#212529]">Gi? tr? TB/GD</div>
                                    <div class="text-lg font-bold text-[#198754]">?271K</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Filters -->
                <div class="bg-white rounded-lg shadow-sm p-4 mb-6">
                    <div class="grid grid-cols-1 md:grid-cols-5 gap-4">
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">Tr?ng th?i</label>
                            <select id="paymentStatusFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <option value="">T?t c? tr?ng th?i</option>
                                <option value="PENDING">Ch? thanh to?n</option>
                                <option value="PAID">?? thanh to?n</option>
                                <option value="FAILED">Th?t b?i</option>
                                <option value="REFUNDED">?? ho?n ti?n</option>
                            </select>
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">Ph??ng th?c</label>
                            <select id="paymentMethodFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <option value="">T?t c? ph??ng th?c</option>
                                <option value="COD">COD</option>
                                <option value="BANK_TRANSFER">Chuy?n kho?n</option>
                                <option value="E_WALLET">V? ?i?n t?</option>
                                <option value="CREDIT_CARD">Th? t?n d?ng</option>
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
                            <input type="text" id="searchPayment" placeholder="M? GD, m? ??n..." class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                        </div>
                    </div>
                    <div class="flex space-x-3 mt-4">
                        <button onclick="applyFilters()" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                            ? T?m ki?m
                        </button>
                        <button onclick="resetFilters()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                            ? ??t l?i
                        </button>
                        <button onclick="exportPayments()" class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            ? Xu?t Excel
                        </button>
                    </div>
                </div>

                <!-- Payments Table -->
                <div class="bg-white rounded-lg shadow-sm">
                    <div class="p-4 border-b border-gray-200">
                        <div class="flex items-center justify-between">
                            <h2 class="text-xl font-bold text-[#212529]">Danh s?ch giao d?ch</h2>
                            <div class="flex items-center space-x-2">
                                <span class="text-sm text-[#6C757D]">Hi?n th? 1-10 trong 4,562 giao d?ch</span>
                            </div>
                        </div>
                    </div>
                    <div class="overflow-x-auto">
                        <table class="w-full">
                            <thead class="bg-[#F8F9FA]">
                                <tr>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">M? giao d?ch</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">??n h?ng</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Kh?ch h?ng</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Ph??ng th?c</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">S? ti?n</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Tr?ng th?i</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Ng?y thanh to?n</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Thao t?c</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-200">
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#PAY-2025-001</td>
                                    <td class="px-4 py-3">
                                        <a href="#" class="text-[#0D6EFD] hover:underline text-sm font-medium">#ORD-2025-001</a>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm font-medium text-[#212529]">Nguy?n V?n An</div>
                                            <div class="text-xs text-[#6C757D]">nguyenvanan@gmail.com</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-2">
                                            <div class="w-6 h-6 bg-[#0D6EFD] rounded-full flex items-center justify-center">
                                                <span class="text-white text-xs font-bold">C</span>
                                            </div>
                                            <span class="text-sm text-[#212529]">COD</span>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm font-medium text-[#212529]">?42,980,000</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">?? thanh to?n</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>10/08/2025</div>
                                        <div class="text-xs">15:45</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewPayment(1)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="printReceipt(1)" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">In bi?n lai</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#PAY-2025-002</td>
                                    <td class="px-4 py-3">
                                        <a href="#" class="text-[#0D6EFD] hover:underline text-sm font-medium">#ORD-2025-002</a>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm font-medium text-[#212529]">Tr?n Th? B?ch</div>
                                            <div class="text-xs text-[#6C757D]">tranthibich@yahoo.com</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-2">
                                            <div class="w-6 h-6 bg-[#198754] rounded-full flex items-center justify-center">
                                                <span class="text-white text-xs font-bold">B</span>
                                            </div>
                                            <span class="text-sm text-[#212529]">Chuy?n kho?n</span>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm font-medium text-[#212529]">?28,990,000</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">Ch? thanh to?n</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>-</div>
                                        <div class="text-xs">Ch?a c?</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewPayment(2)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="confirmPayment(2)" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">X?c nh?n</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#PAY-2025-003</td>
                                    <td class="px-4 py-3">
                                        <a href="#" class="text-[#0D6EFD] hover:underline text-sm font-medium">#ORD-2025-003</a>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm font-medium text-[#212529]">L? Minh C??ng</div>
                                            <div class="text-xs text-[#6C757D]">leminhcuong@outlook.com</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-2">
                                            <div class="w-6 h-6 bg-[#FFC107] rounded-full flex items-center justify-center">
                                                <span class="text-white text-xs font-bold">W</span>
                                            </div>
                                            <span class="text-sm text-[#212529]">V? ?i?n t?</span>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm font-medium text-[#212529]">?29,490,000</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">?? thanh to?n</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>13/08/2025</div>
                                        <div class="text-xs">09:22</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewPayment(3)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="printReceipt(3)" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">In bi?n lai</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#PAY-2025-004</td>
                                    <td class="px-4 py-3">
                                        <a href="#" class="text-[#0D6EFD] hover:underline text-sm font-medium">#ORD-2025-004</a>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm font-medium text-[#212529]">Ph?m Th? Hoa</div>
                                            <div class="text-xs text-[#6C757D]">phamthihoa@gmail.com</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-2">
                                            <div class="w-6 h-6 bg-[#0D6EFD] rounded-full flex items-center justify-center">
                                                <span class="text-white text-xs font-bold">C</span>
                                            </div>
                                            <span class="text-sm text-[#212529]">COD</span>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm font-medium text-[#212529]">?6,990,000</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs font-medium">Th?t b?i</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>-</div>
                                        <div class="text-xs">??n ?? h?y</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewPayment(4)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="retryPayment(4)" class="text-[#FFC107] hover:underline text-xs bg-[#FFF3CD] px-2 py-1 rounded">Th? l?i</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#PAY-2025-005</td>
                                    <td class="px-4 py-3">
                                        <a href="#" class="text-[#0D6EFD] hover:underline text-sm font-medium">#ORD-2025-005</a>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div>
                                            <div class="text-sm font-medium text-[#212529]">V? Thanh T?ng</div>
                                            <div class="text-xs text-[#6C757D]">vothanhtung@hotmail.com</div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-2">
                                            <div class="w-6 h-6 bg-[#DC3545] rounded-full flex items-center justify-center">
                                                <span class="text-white text-xs font-bold">CC</span>
                                            </div>
                                            <span class="text-sm text-[#212529]">Th? t?n d?ng</span>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="text-sm font-medium text-[#212529]">?15,750,000</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">Ch? thanh to?n</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">
                                        <div>-</div>
                                        <div class="text-xs">Ch?a c?</div>
                                    </td>
                                    <td class="px-4 py-3">
                                        <div class="flex space-x-1">
                                            <button onclick="viewPayment(5)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                            <button onclick="processPayment(5)" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">X? l?</button>
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
                                Hi?n th? <strong>1</strong> ??n <strong>10</strong> trong <strong>4,562</strong> giao d?ch
                            </div>
                            <div class="flex space-x-2">
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 disabled:opacity-50" disabled>
                                    Tr??c
                                </button>
                                <button class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium">1</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">2</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">3</button>
                                <span class="px-2 text-[#6C757D]">...</span>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">457</button>
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

    <!-- Payment Detail Modal -->
    <div id="paymentDetailModal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
        <div class="flex items-center justify-center min-h-screen p-4">
            <div class="bg-white rounded-lg shadow-lg max-w-2xl w-full max-h-[90vh] overflow-y-auto">
                <div class="p-4 border-b border-gray-200">
                    <div class="flex items-center justify-between">
                        <h3 class="text-lg font-bold text-[#212529]">Chi ti?t giao d?ch #PAY-2025-001</h3>
                        <button onclick="closePaymentModal()" class="text-[#6C757D] hover:text-[#212529]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="p-6 space-y-6">
                    <!-- Payment Info -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <h4 class="font-bold text-[#212529] mb-3">Th?ng tin giao d?ch</h4>
                            <div class="space-y-2 text-sm">
                                <div><strong>M? giao d?ch:</strong> #PAY-2025-001</div>
                                <div><strong>??n h?ng:</strong> <a href="#" class="text-[#0D6EFD] hover:underline">#ORD-2025-001</a></div>
                                <div><strong>Ph??ng th?c:</strong> COD</div>
                                <div><strong>S? ti?n:</strong> <span class="text-[#0D6EFD] font-medium">?42,980,000</span></div>
                                <div><strong>Tr?ng th?i:</strong> <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs">?? thanh to?n</span></div>
                                <div><strong>Ng?y thanh to?n:</strong> 10/08/2025 15:45</div>
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
                    
                    <!-- Transaction Timeline -->
                    <div>
                        <h4 class="font-bold text-[#212529] mb-3">L?ch s? giao d?ch</h4>
                        <div class="space-y-3">
                            <div class="flex items-start space-x-3">
                                <div class="w-8 h-8 bg-[#198754] rounded-full flex items-center justify-center">
                                    <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                                    </svg>
                                </div>
                                <div class="flex-1">
                                    <div class="text-sm font-medium text-[#212529]">Thanh to?n th?nh c?ng</div>
                                    <div class="text-xs text-[#6C757D]">10/08/2025 15:45 - Kh?ch h?ng ?? thanh to?n khi nh?n h?ng</div>
                                </div>
                            </div>
                            <div class="flex items-start space-x-3">
                                <div class="w-8 h-8 bg-[#0D6EFD] rounded-full flex items-center justify-center">
                                    <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                                    </svg>
                                </div>
                                <div class="flex-1">
                                    <div class="text-sm font-medium text-[#212529]">??n h?ng ?? giao</div>
                                    <div class="text-xs text-[#6C757D]">10/08/2025 14:30 - Shipper ?? giao h?ng th?nh c?ng</div>
                                </div>
                            </div>
                            <div class="flex items-start space-x-3">
                                <div class="w-8 h-8 bg-[#6C757D] rounded-full flex items-center justify-center">
                                    <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3z"/>
                                    </svg>
                                </div>
                                <div class="flex-1">
                                    <div class="text-sm font-medium text-[#212529]">?ang v?n chuy?n</div>
                                    <div class="text-xs text-[#6C757D]">09/08/2025 08:00 - ??n h?ng ?ang ???c v?n chuy?n</div>
                                </div>
                            </div>
                            <div class="flex items-start space-x-3">
                                <div class="w-8 h-8 bg-[#FFC107] rounded-full flex items-center justify-center">
                                    <svg class="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z"/>
                                    </svg>
                                </div>
                                <div class="flex-1">
                                    <div class="text-sm font-medium text-[#212529]">??n h?ng ???c t?o</div>
                                    <div class="text-xs text-[#6C757D]">08/08/2025 14:30 - Kh?ch h?ng ??t ??n h?ng, ch?n COD</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="p-4 border-t border-gray-200">
                    <div class="flex space-x-3">
                        <button class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                            ? In bi?n lai
                        </button>
                        <button class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            ? G?i email
                        </button>
                        <button onclick="closePaymentModal()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
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
            const status = document.getElementById('paymentStatusFilter').value;
            const method = document.getElementById('paymentMethodFilter').value;
            const startDate = document.getElementById('startDate').value;
            const endDate = document.getElementById('endDate').value;
            const search = document.getElementById('searchPayment').value;
            
            console.log('Payment filters applied:', { status, method, startDate, endDate, search });
            alert('?ang ?p d?ng b? l?c thanh to?n...');
        }

        function resetFilters() {
            document.getElementById('paymentStatusFilter').value = '';
            document.getElementById('paymentMethodFilter').value = '';
            document.getElementById('startDate').value = '';
            document.getElementById('endDate').value = '';
            document.getElementById('searchPayment').value = '';
            alert('?? ??t l?i b? l?c thanh to?n');
        }

        function exportPayments() {
            alert('?ang xu?t b?o c?o thanh to?n ra file Excel...');
        }

        // Payment actions
        function viewPayment(paymentId) {
            document.getElementById('paymentDetailModal').classList.remove('hidden');
        }

        function closePaymentModal() {
            document.getElementById('paymentDetailModal').classList.add('hidden');
        }

        function printReceipt(paymentId) {
            alert(`In bi?n lai giao d?ch #${paymentId}`);
        }

        function confirmPayment(paymentId) {
            if (confirm('X?c nh?n giao d?ch n?y ?? ???c thanh to?n?')) {
                alert(`?? x?c nh?n thanh to?n cho giao d?ch #${paymentId}`);
            }
        }

        function retryPayment(paymentId) {
            if (confirm('Th? l?i giao d?ch thanh to?n n?y?')) {
                alert(`?ang th? l?i giao d?ch #${paymentId}`);
            }
        }

        function processPayment(paymentId) {
            alert(`X? l? giao d?ch #${paymentId}`);
        }

        // Close modal when clicking outside
        document.getElementById('paymentDetailModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closePaymentModal();
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