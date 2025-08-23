<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nhật ký Hệ thống - Admin Dashboard</title>
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
                <span class="text-sm text-[#6C757D]">Nhật ký Hệ thống</span>
            </div>
            
            <!-- User Info -->
            <div class="flex items-center space-x-4">
                <span class="text-sm text-[#6C757D]">Xin chào, <strong>hoangdvdinos</strong></span>
                <span class="text-xs text-[#6C757D]">14/08/2025 17:20</span>
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
                                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"/>
                            </svg>
                            <span>??nh gi?</span>
                        </a>
                        <a href="#" class="flex items-center space-x-3 bg-[#0D6EFD] text-white px-3 py-2 rounded-md font-medium">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"/>
                            </svg>
                            <span>Nh?t k?</span>
                        </a>
                    </nav>
                </div>
            </aside>

            <!-- Main Content -->
            <main class="lg:col-span-3">
                <!-- Page Header -->
                <div class="flex items-center justify-between mb-6">
                    <div>
                        <h1 class="text-3xl font-bold text-[#212529]">Nh?t k? H? th?ng</h1>
                        <p class="text-sm text-[#6C757D] mt-1">Theo d?i t?t c? ho?t ??ng v? s? ki?n trong h? th?ng</p>
                    </div>
                    <div class="flex space-x-3">
                        <button onclick="exportLogs()" class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            ? Xu?t logs
                        </button>
                        <button onclick="clearOldLogs()" class="bg-[#FFC107] text-white rounded-md px-5 py-2 font-medium hover:bg-[#E0A800] cursor-pointer transition-colors duration-200">
                            ?? D?n d?p logs c?
                        </button>
                        <button onclick="refreshLogs()" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                            ? L?m m?i
                        </button>
                    </div>
                </div>

                <!-- Stats -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">T?ng logs</p>
                                <p class="text-2xl font-bold text-[#212529]">2,847,659</p>
                                <p class="text-xs text-[#0D6EFD]">H?m nay: +15,247</p>
                            </div>
                            <div class="bg-[#0D6EFD] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">L?i (ERROR)</p>
                                <p class="text-2xl font-bold text-[#DC3545]">1,247</p>
                                <p class="text-xs text-[#DC3545]">24h qua: +23</p>
                            </div>
                            <div class="bg-[#DC3545] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">C?nh b?o (WARN)</p>
                                <p class="text-2xl font-bold text-[#FFC107]">8,456</p>
                                <p class="text-xs text-[#FFC107]">24h qua: +156</p>
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
                                <p class="text-sm text-[#6C757D]">Th?ng tin (INFO)</p>
                                <p class="text-2xl font-bold text-[#198754]">2,837,956</p>
                                <p class="text-xs text-[#198754]">24h qua: +15,068</p>
                            </div>
                            <div class="bg-[#198754] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Log Activity Chart -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <h3 class="text-lg font-bold text-[#212529] mb-4">Ph?n b? theo m?c ??</h3>
                        <div class="space-y-3">
                            <div class="flex items-center space-x-3">
                                <div class="w-8 h-8 bg-[#198754] rounded-full flex items-center justify-center">
                                    <span class="text-white text-xs font-bold">??</span>
                                </div>
                                <div class="flex-1">
                                    <div class="flex justify-between items-center mb-1">
                                        <span class="text-sm font-medium text-[#212529]">INFO</span>
                                        <span class="text-sm text-[#6C757D]">99.7%</span>
                                    </div>
                                    <div class="w-full bg-gray-200 rounded-full h-2">
                                        <div class="bg-[#198754] h-2 rounded-full" style="width: 99.7%"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="flex items-center space-x-3">
                                <div class="w-8 h-8 bg-[#FFC107] rounded-full flex items-center justify-center">
                                    <span class="text-white text-xs font-bold">??</span>
                                </div>
                                <div class="flex-1">
                                    <div class="flex justify-between items-center mb-1">
                                        <span class="text-sm font-medium text-[#212529]">WARN</span>
                                        <span class="text-sm text-[#6C757D]">0.3%</span>
                                    </div>
                                    <div class="w-full bg-gray-200 rounded-full h-2">
                                        <div class="bg-[#FFC107] h-2 rounded-full" style="width: 0.3%"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="flex items-center space-x-3">
                                <div class="w-8 h-8 bg-[#DC3545] rounded-full flex items-center justify-center">
                                    <span class="text-white text-xs font-bold">?</span>
                                </div>
                                <div class="flex-1">
                                    <div class="flex justify-between items-center mb-1">
                                        <span class="text-sm font-medium text-[#212529]">ERROR</span>
                                        <span class="text-sm text-[#6C757D]">0.04%</span>
                                    </div>
                                    <div class="w-full bg-gray-200 rounded-full h-2">
                                        <div class="bg-[#DC3545] h-2 rounded-full" style="width: 0.04%"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <h3 class="text-lg font-bold text-[#212529] mb-4">Ho?t ??ng g?n ??y</h3>
                        <div class="space-y-4">
                            <div class="text-center p-4 bg-[#F8F9FA] rounded-lg">
                                <div class="text-2xl">?</div>
                                <div class="text-sm font-medium text-[#212529] mt-2">Logs/gi?y (trung b?nh)</div>
                                <div class="text-xl font-bold text-[#0D6EFD]">176</div>
                                <div class="text-xs text-[#198754]">H? th?ng ?n ??nh</div>
                            </div>
                            <div class="grid grid-cols-2 gap-3">
                                <div class="text-center p-3 bg-[#FFF3CD] rounded-lg">
                                    <div class="text-sm font-medium text-[#212529]">Cao ?i?m/Ng?y</div>
                                    <div class="text-lg font-bold text-[#FFC107]">14:30</div>
                                </div>
                                <div class="text-center p-3 bg-[#E8F5E8] rounded-lg">
                                    <div class="text-sm font-medium text-[#212529]">Uptime</div>
                                    <div class="text-lg font-bold text-[#198754]">99.9%</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Filters -->
                <div class="bg-white rounded-lg shadow-sm p-4 mb-6">
                    <div class="grid grid-cols-1 md:grid-cols-6 gap-4">
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">M?c ??</label>
                            <select id="levelFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <option value="">T?t c? m?c ??</option>
                                <option value="INFO">INFO</option>
                                <option value="WARN">WARN</option>
                                <option value="ERROR">ERROR</option>
                            </select>
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">H?nh ??ng</label>
                            <select id="actionFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <option value="">T?t c? h?nh ??ng</option>
                                <option value="LOGIN">??ng nh?p</option>
                                <option value="LOGOUT">??ng xu?t</option>
                                <option value="CREATE_ORDER">T?o ??n h?ng</option>
                                <option value="UPDATE_ORDER">C?p nh?t ??n h?ng</option>
                                <option value="PAYMENT">Thanh to?n</option>
                                <option value="SYSTEM_ERROR">L?i h? th?ng</option>
                                <option value="DATABASE_ERROR">L?i database</option>
                                <option value="API_CALL">API call</option>
                            </select>
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">Ng??i d?ng</label>
                            <input type="text" id="userFilter" placeholder="ID ho?c t?n..." class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">IP Address</label>
                            <input type="text" id="ipFilter" placeholder="192.168.1.1" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">T? th?i gian</label>
                            <input type="datetime-local" id="startDateTime" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">??n th?i gian</label>
                            <input type="datetime-local" id="endDateTime" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                        </div>
                    </div>
                    <div class="flex space-x-3 mt-4">
                        <button onclick="applyFilters()" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                            ? T?m ki?m
                        </button>
                        <button onclick="resetFilters()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
                            ? ??t l?i
                        </button>
                        <button onclick="realTimeToggle()" class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            ? Real-time: <span id="realTimeStatus">OFF</span>
                        </button>
                    </div>
                </div>

                <!-- Logs Table -->
                <div class="bg-white rounded-lg shadow-sm">
                    <div class="p-4 border-b border-gray-200">
                        <div class="flex items-center justify-between">
                            <h2 class="text-xl font-bold text-[#212529]">Nh?t k? h? th?ng</h2>
                            <div class="flex items-center space-x-2">
                                <span class="text-sm text-[#6C757D]">Hi?n th? 1-50 trong 2,847,659 logs</span>
                                <div class="flex items-center space-x-1">
                                    <span class="text-xs text-[#6C757D]">Auto-refresh:</span>
                                    <div id="autoRefreshIndicator" class="w-2 h-2 bg-[#6C757D] rounded-full"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="overflow-x-auto">
                        <table class="w-full">
                            <thead class="bg-[#F8F9FA]">
                                <tr>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Th?i gian</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">M?c ??</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">H?nh ??ng</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Th?ng ?i?p</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Ng??i d?ng</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">IP Address</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Chi ti?t</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-200" id="logsTableBody">
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-mono">2025-08-14 17:20:03</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs font-medium">ERROR</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">DATABASE_ERROR</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">Connection timeout to database server</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">system</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">10.0.0.1</td>
                                    <td class="px-4 py-3">
                                        <button onclick="viewLogDetail(1)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-mono">2025-08-14 17:19:58</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">INFO</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">LOGIN</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">User hoangdvdinos logged in successfully</td>
                                    <td class="px-4 py-3 text-sm text-[#0D6EFD]">hoangdvdinos</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">192.168.1.100</td>
                                    <td class="px-4 py-3">
                                        <button onclick="viewLogDetail(2)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-mono">2025-08-14 17:19:45</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">INFO</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">CREATE_ORDER</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">New order #ORD-2025-001 created successfully</td>
                                    <td class="px-4 py-3 text-sm text-[#0D6EFD]">nguyenvanan</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">14.161.22.178</td>
                                    <td class="px-4 py-3">
                                        <button onclick="viewLogDetail(3)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-mono">2025-08-14 17:19:32</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">WARN</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">API_CALL</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">Payment gateway response time exceeded 5 seconds</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">system</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">203.171.19.45</td>
                                    <td class="px-4 py-3">
                                        <button onclick="viewLogDetail(4)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-mono">2025-08-14 17:19:28</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">INFO</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">PAYMENT</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">Payment #PAY-2025-001 processed successfully</td>
                                    <td class="px-4 py-3 text-sm text-[#0D6EFD]">tranthibich</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">118.69.84.211</td>
                                    <td class="px-4 py-3">
                                        <button onclick="viewLogDetail(5)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-mono">2025-08-14 17:19:15</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">INFO</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">UPDATE_ORDER</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">Order #ORD-2025-002 status updated to SHIPPED</td>
                                    <td class="px-4 py-3 text-sm text-[#0D6EFD]">hoangdvdinos</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">192.168.1.100</td>
                                    <td class="px-4 py-3">
                                        <button onclick="viewLogDetail(6)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-mono">2025-08-14 17:19:08</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs font-medium">ERROR</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">SYSTEM_ERROR</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">Failed to send notification email to customer</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">system</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">10.0.0.1</td>
                                    <td class="px-4 py-3">
                                        <button onclick="viewLogDetail(7)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-mono">2025-08-14 17:18:55</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">INFO</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">LOGIN</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">User leminhcuong logged in successfully</td>
                                    <td class="px-4 py-3 text-sm text-[#0D6EFD]">leminhcuong</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">27.71.225.156</td>
                                    <td class="px-4 py-3">
                                        <button onclick="viewLogDetail(8)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-mono">2025-08-14 17:18:42</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">WARN</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">SYSTEM_ERROR</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">High memory usage detected: 87% of available RAM</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">system</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">10.0.0.1</td>
                                    <td class="px-4 py-3">
                                        <button onclick="viewLogDetail(9)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                    </td>
                                </tr>
                                <tr class="hover:bg-[#F8F9FA]">
                                    <td class="px-4 py-3 text-sm text-[#212529] font-mono">2025-08-14 17:18:30</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">INFO</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">LOGOUT</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">User phamthihoa logged out successfully</td>
                                    <td class="px-4 py-3 text-sm text-[#0D6EFD]">phamthihoa</td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">115.78.23.45</td>
                                    <td class="px-4 py-3">
                                        <button onclick="viewLogDetail(10)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">Chi ti?t</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <!-- Pagination -->
                    <div class="p-4 border-t border-gray-200">
                        <div class="flex items-center justify-between">
                            <div class="text-sm text-[#6C757D]">
                                Hi?n th? <strong>1</strong> ??n <strong>50</strong> trong <strong>2,847,659</strong> logs
                            </div>
                            <div class="flex space-x-2">
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 disabled:opacity-50" disabled>
                                    Tr??c
                                </button>
                                <button class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium">1</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">2</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">3</button>
                                <span class="px-2 text-[#6C757D]">...</span>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">56,954</button>
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

    <!-- Log Detail Modal -->
    <div id="logDetailModal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
        <div class="flex items-center justify-center min-h-screen p-4">
            <div class="bg-white rounded-lg shadow-lg max-w-4xl w-full max-h-[90vh] overflow-y-auto">
                <div class="p-4 border-b border-gray-200">
                    <div class="flex items-center justify-between">
                        <h3 class="text-lg font-bold text-[#212529]">Chi ti?t log #1</h3>
                        <button onclick="closeLogModal()" class="text-[#6C757D] hover:text-[#212529]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="p-6 space-y-6">
                    <!-- Log Basic Info -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <h4 class="font-bold text-[#212529] mb-3">Th?ng tin c? b?n</h4>
                            <div class="space-y-2 text-sm">
                                <div><strong>ID:</strong> #1</div>
                                <div><strong>Th?i gian:</strong> 2025-08-14 17:20:03</div>
                                <div><strong>M?c ??:</strong> <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs">ERROR</span></div>
                                <div><strong>H?nh ??ng:</strong> DATABASE_ERROR</div>
                                <div><strong>IP Address:</strong> 10.0.0.1</div>
                                <div><strong>User Agent:</strong> System Process</div>
                            </div>
                        </div>
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <h4 class="font-bold text-[#212529] mb-3">Th?ng tin ng??i d?ng</h4>
                            <div class="space-y-2 text-sm">
                                <div><strong>User ID:</strong> NULL</div>
                                <div><strong>Username:</strong> system</div>
                                <div><strong>Session ID:</strong> -</div>
                                <div><strong>Request ID:</strong> req_1692017203_abc123</div>
                                <div><strong>Module:</strong> Database Connection</div>
                                <div><strong>Function:</strong> connect()</div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Log Message -->
                    <div>
                        <h4 class="font-bold text-[#212529] mb-3">Th?ng ?i?p chi ti?t</h4>
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <p class="text-sm text-[#212529] font-mono leading-relaxed">
                                Connection timeout to database server. Unable to establish connection within 30 seconds timeout period. 
                                Database server: db.ecommerce.local:5432
                                Connection pool: exhausted (10/10 connections in use)
                                Last successful connection: 2025-08-14 17:18:45
                                Retry attempts: 3/3 failed
                            </p>
                        </div>
                    </div>

                    <!-- Stack Trace (for errors) -->
                    <div>
                        <h4 class="font-bold text-[#212529] mb-3">Stack Trace</h4>
                        <div class="bg-[#212529] text-[#F8F9FA] p-4 rounded-lg overflow-x-auto">
                            <pre class="text-xs font-mono whitespace-pre-wrap">
java.sql.SQLException: Connection timeout
    at com.ecommerce.database.ConnectionPool.getConnection(ConnectionPool.java:45)
    at com.ecommerce.service.OrderService.createOrder(OrderService.java:123)
    at com.ecommerce.controller.OrderController.handleCreateOrder(OrderController.java:67)
    at com.ecommerce.framework.RequestHandler.process(RequestHandler.java:89)
    at com.ecommerce.framework.DispatcherServlet.doPost(DispatcherServlet.java:156)
    at javax.servlet.http.HttpServlet.service(HttpServlet.java:755)
    at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)
    at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:220)
                            </pre>
                        </div>
                    </div>

                    <!-- Context Data -->
                    <div>
                        <h4 class="font-bold text-[#212529] mb-3">D? li?u ng? c?nh</h4>
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4 text-sm">
                                <div>
                                    <strong>Request URL:</strong> /api/orders/create<br>
                                    <strong>HTTP Method:</strong> POST<br>
                                    <strong>Response Code:</strong> 500<br>
                                    <strong>Response Time:</strong> 30.045s
                                </div>
                                <div>
                                    <strong>Server:</strong> web-server-01<br>
                                    <strong>Process ID:</strong> 12847<br>
                                    <strong>Thread ID:</strong> pool-2-thread-15<br>
                                    <strong>Memory Usage:</strong> 1.2GB / 2GB
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="p-4 border-t border-gray-200">
                    <div class="flex space-x-3">
                        <button onclick="exportLogDetail()" class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            ? Xu?t log n?y
                        </button>
                        <button onclick="findSimilarLogs()" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                            ? T?m log t??ng t?
                        </button>
                        <button onclick="createAlert()" class="bg-[#FFC107] text-white rounded-md px-5 py-2 font-medium hover:bg-[#E0A800] cursor-pointer transition-colors duration-200">
                            ? T?o c?nh b?o
                        </button>
                        <button onclick="closeLogModal()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
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
        let realTimeEnabled = false;
        let autoRefreshInterval = null;

        // Filter functions
        function applyFilters() {
            const level = document.getElementById('levelFilter').value;
            const action = document.getElementById('actionFilter').value;
            const user = document.getElementById('userFilter').value;
            const ip = document.getElementById('ipFilter').value;
            const startDateTime = document.getElementById('startDateTime').value;
            const endDateTime = document.getElementById('endDateTime').value;
            
            console.log('Log filters applied:', { level, action, user, ip, startDateTime, endDateTime });
            alert('?ang ?p d?ng b? l?c logs...');
        }

        function resetFilters() {
            document.getElementById('levelFilter').value = '';
            document.getElementById('actionFilter').value = '';
            document.getElementById('userFilter').value = '';
            document.getElementById('ipFilter').value = '';
            document.getElementById('startDateTime').value = '';
            document.getElementById('endDateTime').value = '';
            alert('?? ??t l?i b? l?c logs');
        }

        function exportLogs() {
            alert('?ang xu?t logs ra file...');
        }

        function clearOldLogs() {
            if (confirm('B?n c? ch?c ch?n mu?n x?a logs c? h?n 30 ng?y?')) {
                alert('?ang x?a logs c?...');
            }
        }

        function refreshLogs() {
            alert('?ang l?m m?i d? li?u logs...');
            // Simulate refresh
            setTimeout(() => {
                alert('?? l?m m?i th?nh c?ng!');
            }, 1000);
        }

        // Real-time toggle
        function realTimeToggle() {
            realTimeEnabled = !realTimeEnabled;
            const statusElement = document.getElementById('realTimeStatus');
            const indicator = document.getElementById('autoRefreshIndicator');
            
            if (realTimeEnabled) {
                statusElement.textContent = 'ON';
                indicator.classList.remove('bg-[#6C757D]');
                indicator.classList.add('bg-[#198754]', 'animate-pulse');
                
                // Start auto-refresh every 5 seconds
                autoRefreshInterval = setInterval(() => {
                    console.log('Auto-refreshing logs...');
                    // Here you would fetch new logs from API
                }, 5000);
                
                alert('Real-time monitoring ?? B?T');
            } else {
                statusElement.textContent = 'OFF';
                indicator.classList.remove('bg-[#198754]', 'animate-pulse');
                indicator.classList.add('bg-[#6C757D]');
                
                if (autoRefreshInterval) {
                    clearInterval(autoRefreshInterval);
                    autoRefreshInterval = null;
                }
                
                alert('Real-time monitoring ?? T?T');
            }
        }

        // Log detail functions
        function viewLogDetail(logId) {
            document.getElementById('logDetailModal').classList.remove('hidden');
        }

        function closeLogModal() {
            document.getElementById('logDetailModal').classList.add('hidden');
        }

        function exportLogDetail() {
            alert('?ang xu?t chi ti?t log n?y...');
        }

        function findSimilarLogs() {
            alert('?ang t?m ki?m logs t??ng t?...');
        }

        function createAlert() {
            alert('?ang t?o c?nh b?o cho lo?i l?i n?y...');
        }

        // Close modal when clicking outside
        document.getElementById('logDetailModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closeLogModal();
            }
        });

        // Initialize
        document.addEventListener('DOMContentLoaded', function() {
            // Set current time in header
            const now = new Date();
            const timeString = now.toLocaleString('vi-VN', {
                day: '2-digit',
                month: '2-digit',
                year: 'numeric',
                hour: '2-digit',
                minute: '2-digit'
            });
            document.querySelector('header span.text-xs').textContent = timeString;

            // Set default datetime filters (last 24 hours)
            const endDateTime = new Date();
            const startDateTime = new Date(endDateTime.getTime() - (24 * 60 * 60 * 1000));
            
            // Format for datetime-local input
            const formatDateTime = (date) => {
                const year = date.getFullYear();
                const month = String(date.getMonth() + 1).padStart(2, '0');
                const day = String(date.getDate()).padStart(2, '0');
                const hours = String(date.getHours()).padStart(2, '0');
                const minutes = String(date.getMinutes()).padStart(2, '0');
                return `${year}-${month}-${day}T${hours}:${minutes}`;
            };
            
            document.getElementById('endDateTime').value = formatDateTime(endDateTime);
            document.getElementById('startDateTime').value = formatDateTime(startDateTime);

            // Simulate live log updates (for demo)
            setInterval(() => {
                if (realTimeEnabled) {
                    console.log('Simulating new log entry...');
                    // Here you would add new log entries to the table
                }
            }, 10000);
        });
    </script>
</body>
</html>