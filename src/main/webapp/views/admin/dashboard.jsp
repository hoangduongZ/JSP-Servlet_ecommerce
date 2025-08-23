<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - E-commerce</title>
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
            <!-- Logo -->
            <div class="flex items-center space-x-4">
                <h1 class="text-xl font-bold text-[#0D6EFD]">Admin Panel</h1>
            </div>
            
            <!-- User Info -->
            <div class="flex items-center space-x-4">
                <span class="text-sm text-[#6C757D]">Xin chào, <strong>hoangdvdinos</strong></span>
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
                        <a href="#" class="flex items-center space-x-3 bg-[#0D6EFD] text-white px-3 py-2 rounded-md font-medium">
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
                        <a href="order.jsp" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
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
                        <a href="category.jsp" class="flex items-center space-x-3 text-[#6C757D] hover:bg-[#F8F9FA] px-3 py-2 rounded-md font-medium transition-colors duration-200">
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
                <!-- Stats Cards -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">Tổng đơn hàng</p>
                                <p class="text-2xl font-bold text-[#212529]">1,247</p>
                                <p class="text-xs text-[#198754]">+12.5% từ tháng trước</p>
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
                                <p class="text-sm text-[#6C757D]">Doanh thu</p>
                                <p class="text-2xl font-bold text-[#212529]">?89.2M</p>
                                <p class="text-xs text-[#198754]">+8.1% t? th?ng tr??c</p>
                            </div>
                            <div class="bg-[#198754] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M8.433 7.418c.155-.103.346-.196.567-.267v1.698a2.305 2.305 0 01-.567-.267C8.07 8.34 8 8.114 8 8c0-.114.07-.34.433-.582zM11 12.849v-1.698c.22.071.412.164.567.267.364.243.433.468.433.582 0 .114-.07.34-.433.582a2.305 2.305 0 01-.567.267z"/>
                                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-13a1 1 0 10-2 0v.092a4.535 4.535 0 00-1.676.662C6.602 6.234 6 7.009 6 8c0 .99.602 1.765 1.324 2.246.48.32 1.054.545 1.676.662v1.941c-.391-.127-.68-.317-.843-.504a1 1 0 10-1.51 1.31c.562.649 1.413 1.076 2.353 1.253V15a1 1 0 102 0v-.092a4.535 4.535 0 001.676-.662C13.398 13.766 14 12.991 14 12c0-.99-.602-1.765-1.324-2.246A4.535 4.535 0 0011 9.092V7.151c.391.127.68.317.843.504a1 1 0 101.511-1.31c-.563-.649-1.413-1.076-2.354-1.253V5z"/>
                                </svg>
                            </div>
                        </div>
                    </div>

                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">S?n ph?m</p>
                                <p class="text-2xl font-bold text-[#212529]">856</p>
                                <p class="text-xs text-[#FFC107]">23 h?t h?ng</p>
                            </div>
                            <div class="bg-[#FFC107] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 2L3 7v11a1 1 0 001 1h3v-7h6v7h3a1 1 0 001-1V7l-7-5z"/>
                                </svg>
                            </div>
                        </div>
                    </div>

                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">Kh?ch h?ng</p>
                                <p class="text-2xl font-bold text-[#212529]">3,429</p>
                                <p class="text-xs text-[#198754]">+15.3% t? th?ng tr??c</p>
                            </div>
                            <div class="bg-[#DC3545] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Recent Orders -->
                <div class="bg-white rounded-lg shadow-sm mb-6">
                    <div class="p-4 border-b border-gray-200">
                        <div class="flex items-center justify-between">
                            <h2 class="text-xl font-bold text-[#212529]">??n h?ng g?n ??y</h2>
                            <a href="#" class="text-[#0D6EFD] text-sm font-medium hover:underline">Xem t?t c?</a>
                        </div>
                    </div>
                    <div class="overflow-x-auto">
                        <table class="w-full">
                            <thead class="bg-[#F8F9FA]">
                                <tr>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">M? ??n</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Kh?ch h?ng</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">T?ng ti?n</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Tr?ng th?i</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Ng?y t?o</th>
                                    <th class="text-left px-4 py-3 text-sm font-medium text-[#6C757D]">Thao t?c</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-200">
                                <tr>
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#ORD-1001</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">Nguy?n V?n A</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">?1,250,000</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">?? giao</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">12/08/2025</td>
                                    <td class="px-4 py-3">
                                        <button class="text-[#0D6EFD] hover:underline text-sm">Xem</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#ORD-1002</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">Tr?n Th? B</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">?890,000</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded-full text-xs font-medium">?ang x? l?</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">13/08/2025</td>
                                    <td class="px-4 py-3">
                                        <button class="text-[#0D6EFD] hover:underline text-sm">Xem</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#ORD-1003</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">L? V?n C</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">?2,100,000</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">Ch? thanh to?n</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">14/08/2025</td>
                                    <td class="px-4 py-3">
                                        <button class="text-[#0D6EFD] hover:underline text-sm">Xem</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="px-4 py-3 text-sm text-[#212529] font-medium">#ORD-1004</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">Ph?m Th? D</td>
                                    <td class="px-4 py-3 text-sm text-[#212529]">?675,000</td>
                                    <td class="px-4 py-3">
                                        <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs font-medium">?? h?y</span>
                                    </td>
                                    <td class="px-4 py-3 text-sm text-[#6C757D]">14/08/2025</td>
                                    <td class="px-4 py-3">
                                        <button class="text-[#0D6EFD] hover:underline text-sm">Xem</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Quick Actions & Analytics -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <!-- Quick Actions -->
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <h3 class="text-lg font-bold text-[#212529] mb-4">Thao t?c nhanh</h3>
                        <div class="space-y-3">
                            <button class="w-full bg-[#0D6EFD] text-white rounded-md px-4 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 text-left">
                                + Th?m s?n ph?m m?i
                            </button>
                            <button class="w-full bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 text-left">
                                ? Xem b?o c?o doanh thu
                            </button>
                            <button class="w-full bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 text-left">
                                ? Qu?n l? kho h?ng
                            </button>
                            <button class="w-full bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 text-left">
                                ?? T?o m? gi?m gi?
                            </button>
                        </div>
                    </div>

                    <!-- Top Products -->
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <h3 class="text-lg font-bold text-[#212529] mb-4">S?n ph?m b?n ch?y</h3>
                        <div class="space-y-3">
                            <div class="flex items-center justify-between p-2 hover:bg-[#F8F9FA] rounded-md">
                                <div class="flex items-center space-x-3">
                                    <div class="w-10 h-10 bg-gray-200 rounded-md"></div>
                                    <div>
                                        <p class="text-sm font-medium text-[#212529]">iPhone 15 Pro Max</p>
                                        <p class="text-xs text-[#6C757D]">128 l??t b?n</p>
                                    </div>
                                </div>
                                <span class="text-sm font-medium text-[#0D6EFD]">?29,990,000</span>
                            </div>
                            <div class="flex items-center justify-between p-2 hover:bg-[#F8F9FA] rounded-md">
                                <div class="flex items-center space-x-3">
                                    <div class="w-10 h-10 bg-gray-200 rounded-md"></div>
                                    <div>
                                        <p class="text-sm font-medium text-[#212529]">MacBook Air M3</p>
                                        <p class="text-xs text-[#6C757D]">89 l??t b?n</p>
                                    </div>
                                </div>
                                <span class="text-sm font-medium text-[#0D6EFD]">?28,990,000</span>
                            </div>
                            <div class="flex items-center justify-between p-2 hover:bg-[#F8F9FA] rounded-md">
                                <div class="flex items-center space-x-3">
                                    <div class="w-10 h-10 bg-gray-200 rounded-md"></div>
                                    <div>
                                        <p class="text-sm font-medium text-[#212529]">AirPods Pro 2</p>
                                        <p class="text-xs text-[#6C757D]">76 l??t b?n</p>
                                    </div>
                                </div>
                                <span class="text-sm font-medium text-[#0D6EFD]">?6,990,000</span>
                            </div>
                            <div class="flex items-center justify-between p-2 hover:bg-[#F8F9FA] rounded-md">
                                <div class="flex items-center space-x-3">
                                    <div class="w-10 h-10 bg-gray-200 rounded-md"></div>
                                    <div>
                                        <p class="text-sm font-medium text-[#212529]">iPad Pro 12.9"</p>
                                        <p class="text-xs text-[#6C757D]">54 l??t b?n</p>
                                    </div>
                                </div>
                                <span class="text-sm font-medium text-[#0D6EFD]">?25,990,000</span>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
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
        // Simple JavaScript for interactivity
        document.addEventListener('DOMContentLoaded', function() {
            // Add click handlers for navigation
            const navLinks = document.querySelectorAll('aside nav a');
            navLinks.forEach(link => {
                link.addEventListener('click', function(e) {
                    e.preventDefault();
                    // Remove active class from all links
                    navLinks.forEach(l => {
                        l.classList.remove('bg-[#0D6EFD]', 'text-white');
                        l.classList.add('text-[#6C757D]', 'hover:bg-[#F8F9FA]');
                    });
                    // Add active class to clicked link
                    this.classList.add('bg-[#0D6EFD]', 'text-white');
                    this.classList.remove('text-[#6C757D]', 'hover:bg-[#F8F9FA]');
                });
            });

            // Update time
            const now = new Date();
            const timeString = now.toLocaleString('vi-VN', {
                year: 'numeric',
                month: '2-digit',
                day: '2-digit',
                hour: '2-digit',
                minute: '2-digit'
            });
            
            // Add real-time clock (optional)
            setInterval(() => {
                const now = new Date();
                // Update any time displays if needed
            }, 60000);
        });
    </script>
</body>
</html>