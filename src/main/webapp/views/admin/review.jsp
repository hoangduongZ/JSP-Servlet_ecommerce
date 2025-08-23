<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Đánh giá - Admin Dashboard</title>
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
                <span class="text-sm text-[#6C757D]">Quản lý Đánh giá</span>
            </div>
            
            <!-- User Info -->
            <div class="flex items-center space-x-4">
                <span class="text-sm text-[#6C757D]">Xin chào, <strong>hoangdvdinos</strong></span>
                <span class="text-xs text-[#6C757D]">14/08/2025 17:15</span>
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
                        <a href="#" class="flex items-center space-x-3 bg-[#0D6EFD] text-white px-3 py-2 rounded-md font-medium">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"/>
                            </svg>
                            <span>Đánh giá</span>
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
                        <h1 class="text-3xl font-bold text-[#212529]">Quản lý Đánh giá</h1>
                        <p class="text-sm text-[#6C757D] mt-1">Quản lý tất cả đánh giá sản phẩm từ khách hàng</p>
                    </div>
                    <div class="flex space-x-3">
                        <button onclick="exportReviews()" class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            Xuất báo cáo
                        </button>
                        <button onclick="moderateReviews()" class="bg-[#FFC107] text-white rounded-md px-5 py-2 font-medium hover:bg-[#E0A800] cursor-pointer transition-colors duration-200">
                            Kiểm duyệt hàng loạt
                        </button>
                    </div>
                </div>

                <!-- Stats -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5 gap-4 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">T?ng ??nh gi?</p>
                                <p class="text-2xl font-bold text-[#212529]">15,624</p>
                                <p class="text-xs text-[#198754]">+8.5% th?ng n?y</p>
                            </div>
                            <div class="bg-[#0D6EFD] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-sm text-[#6C757D]">?i?m TB</p>
                                <p class="text-2xl font-bold text-[#198754]">4.2</p>
                                <p class="text-xs text-[#198754]">? R?t t?t</p>
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
                                <p class="text-sm text-[#6C757D]">Ch? duy?t</p>
                                <p class="text-2xl font-bold text-[#FFC107]">247</p>
                                <p class="text-xs text-[#FFC107]">C?n x? l?</p>
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
                                <p class="text-sm text-[#6C757D]">?? duy?t</p>
                                <p class="text-2xl font-bold text-[#198754]">14,987</p>
                                <p class="text-xs text-[#198754]">95.9%</p>
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
                                <p class="text-sm text-[#6C757D]">?? ?n</p>
                                <p class="text-2xl font-bold text-[#DC3545]">390</p>
                                <p class="text-xs text-[#DC3545]">2.5%</p>
                            </div>
                            <div class="bg-[#DC3545] p-3 rounded-full">
                                <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M13.477 14.89A6 6 0 015.11 6.524l8.367 8.368zm1.414-1.414L6.524 5.11a6 6 0 018.367 8.367zM18 10a8 8 0 11-16 0 8 8 0 0116 0z"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Rating Distribution -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <h3 class="text-lg font-bold text-[#212529] mb-4">Ph?n b? ??nh gi?</h3>
                        <div class="space-y-3">
                            <div class="flex items-center space-x-3">
                                <div class="flex items-center space-x-1">
                                    <span class="text-sm font-medium text-[#212529]">5?</span>
                                </div>
                                <div class="flex-1 bg-gray-200 rounded-full h-2">
                                    <div class="bg-[#198754] h-2 rounded-full" style="width: 62%"></div>
                                </div>
                                <span class="text-sm text-[#6C757D] min-w-[60px] text-right">9,687 (62%)</span>
                            </div>
                            <div class="flex items-center space-x-3">
                                <div class="flex items-center space-x-1">
                                    <span class="text-sm font-medium text-[#212529]">4?</span>
                                </div>
                                <div class="flex-1 bg-gray-200 rounded-full h-2">
                                    <div class="bg-[#0D6EFD] h-2 rounded-full" style="width: 23%"></div>
                                </div>
                                <span class="text-sm text-[#6C757D] min-w-[60px] text-right">3,593 (23%)</span>
                            </div>
                            <div class="flex items-center space-x-3">
                                <div class="flex items-center space-x-1">
                                    <span class="text-sm font-medium text-[#212529]">3?</span>
                                </div>
                                <div class="flex-1 bg-gray-200 rounded-full h-2">
                                    <div class="bg-[#FFC107] h-2 rounded-full" style="width: 9%"></div>
                                </div>
                                <span class="text-sm text-[#6C757D] min-w-[60px] text-right">1,406 (9%)</span>
                            </div>
                            <div class="flex items-center space-x-3">
                                <div class="flex items-center space-x-1">
                                    <span class="text-sm font-medium text-[#212529]">2?</span>
                                </div>
                                <div class="flex-1 bg-gray-200 rounded-full h-2">
                                    <div class="bg-[#FD7E14] h-2 rounded-full" style="width: 4%"></div>
                                </div>
                                <span class="text-sm text-[#6C757D] min-w-[60px] text-right">625 (4%)</span>
                            </div>
                            <div class="flex items-center space-x-3">
                                <div class="flex items-center space-x-1">
                                    <span class="text-sm font-medium text-[#212529]">1?</span>
                                </div>
                                <div class="flex-1 bg-gray-200 rounded-full h-2">
                                    <div class="bg-[#DC3545] h-2 rounded-full" style="width: 2%"></div>
                                </div>
                                <span class="text-sm text-[#6C757D] min-w-[60px] text-right">313 (2%)</span>
                            </div>
                        </div>
                    </div>

                    <div class="bg-white rounded-lg shadow-sm p-4">
                        <h3 class="text-lg font-bold text-[#212529] mb-4">Ho?t ??ng g?n ??y</h3>
                        <div class="space-y-4">
                            <div class="text-center p-4 bg-[#F8F9FA] rounded-lg">
                                <div class="text-2xl">?</div>
                                <div class="text-sm font-medium text-[#212529] mt-2">??nh gi? m?i h?m nay</div>
                                <div class="text-xl font-bold text-[#0D6EFD]">47</div>
                                <div class="text-xs text-[#198754]">+15% so v?i h?m qua</div>
                            </div>
                            <div class="grid grid-cols-2 gap-3">
                                <div class="text-center p-3 bg-[#E7F3FF] rounded-lg">
                                    <div class="text-sm font-medium text-[#212529]">??nh gi? TB/Ng?y</div>
                                    <div class="text-lg font-bold text-[#0D6EFD]">52</div>
                                </div>
                                <div class="text-center p-3 bg-[#FFF3CD] rounded-lg">
                                    <div class="text-sm font-medium text-[#212529]">Ph?n h?i c?n x? l?</div>
                                    <div class="text-lg font-bold text-[#FFC107]">18</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Filters -->
                <div class="bg-white rounded-lg shadow-sm p-4 mb-6">
                    <div class="grid grid-cols-1 md:grid-cols-6 gap-4">
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">??nh gi?</label>
                            <select id="ratingFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <option value="">T?t c? sao</option>
                                <option value="5">5 sao</option>
                                <option value="4">4 sao</option>
                                <option value="3">3 sao</option>
                                <option value="2">2 sao</option>
                                <option value="1">1 sao</option>
                            </select>
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">Tr?ng th?i</label>
                            <select id="statusFilter" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <option value="">T?t c? tr?ng th?i</option>
                                <option value="pending">Ch? duy?t</option>
                                <option value="approved">?? duy?t</option>
                                <option value="hidden">?? ?n</option>
                            </select>
                        </div>
                        <div>
                            <label class="text-sm mb-1 block text-[#212529] font-medium">S?n ph?m</label>
                            <input type="text" id="productFilter" placeholder="T?n s?n ph?m..." class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
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
                            <input type="text" id="searchReview" placeholder="N?i dung, kh?ch h?ng..." class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
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

                <!-- Reviews Table -->
                <div class="bg-white rounded-lg shadow-sm">
                    <div class="p-4 border-b border-gray-200">
                        <div class="flex items-center justify-between">
                            <h2 class="text-xl font-bold text-[#212529]">Danh s?ch ??nh gi?</h2>
                            <div class="flex items-center space-x-2">
                                <span class="text-sm text-[#6C757D]">Hi?n th? 1-10 trong 15,624 ??nh gi?</span>
                            </div>
                        </div>
                    </div>
                    <div class="divide-y divide-gray-200">
                        <!-- Review Item 1 -->
                        <div class="p-4 hover:bg-[#F8F9FA] transition-colors duration-200">
                            <div class="flex space-x-4">
                                <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                                <div class="flex-1 min-w-0">
                                    <div class="flex items-start justify-between">
                                        <div class="flex-1">
                                            <div class="flex items-center space-x-2 mb-2">
                                                <h3 class="text-sm font-medium text-[#0D6EFD] hover:underline cursor-pointer">iPhone 15 Pro Max 256GB</h3>
                                                <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">Ch? duy?t</span>
                                            </div>
                                            <div class="flex items-center space-x-2 mb-2">
                                                <div class="flex text-yellow-400">
                                                    ?????
                                                </div>
                                                <span class="text-sm font-medium text-[#212529]">5.0</span>
                                                <span class="text-xs text-[#6C757D]">?</span>
                                                <span class="text-xs text-[#6C757D]">Nguy?n V?n An</span>
                                                <span class="text-xs text-[#6C757D]">?</span>
                                                <span class="text-xs text-[#6C757D]">12/08/2025 14:30</span>
                                            </div>
                                            <p class="text-sm text-[#212529] mb-3 line-clamp-3">
                                                S?n ph?m r?t t?t, ch?t l??ng v??t mong ??i. Camera ch?p ?nh c?c k? s?c n?t, m?n h?nh hi?n th? r?t ??p. Giao h?ng nhanh, ??ng g?i c?n th?n. S? ?ng h? shop l?n sau. R?t h?i l?ng v?i l?n mua h?ng n?y!
                                            </p>
                                            <div class="flex space-x-2">
                                                <button onclick="approveReview(1)" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">? Duy?t</button>
                                                <button onclick="hideReview(1)" class="text-[#DC3545] hover:underline text-xs bg-[#F8D7DA] px-2 py-1 rounded">? ?n</button>
                                                <button onclick="viewReview(1)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">?? Chi ti?t</button>
                                                <button onclick="replyReview(1)" class="text-[#FFC107] hover:underline text-xs bg-[#FFF3CD] px-2 py-1 rounded">? Ph?n h?i</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Review Item 2 -->
                        <div class="p-4 hover:bg-[#F8F9FA] transition-colors duration-200">
                            <div class="flex space-x-4">
                                <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                                <div class="flex-1 min-w-0">
                                    <div class="flex items-start justify-between">
                                        <div class="flex-1">
                                            <div class="flex items-center space-x-2 mb-2">
                                                <h3 class="text-sm font-medium text-[#0D6EFD] hover:underline cursor-pointer">MacBook Air M3 13 inch</h3>
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">?? duy?t</span>
                                            </div>
                                            <div class="flex items-center space-x-2 mb-2">
                                                <div class="flex text-yellow-400">
                                                    ?????
                                                </div>
                                                <span class="text-sm font-medium text-[#212529]">4.0</span>
                                                <span class="text-xs text-[#6C757D]">?</span>
                                                <span class="text-xs text-[#6C757D]">Tr?n Th? B?ch</span>
                                                <span class="text-xs text-[#6C757D]">?</span>
                                                <span class="text-xs text-[#6C757D]">11/08/2025 09:15</span>
                                            </div>
                                            <p class="text-sm text-[#212529] mb-3 line-clamp-3">
                                                Laptop ch?y r?t m??t, thi?t k? ??p v? nh?. Pin tr?u, c? th? s? d?ng c? ng?y kh?ng c?n s?c. Tuy nhi?n gi? h?i cao so v?i c?u h?nh. Nh?n chung v?n h?i l?ng v?i s?n ph?m.
                                            </p>
                                            <div class="flex space-x-2">
                                                <span class="text-xs text-[#198754] bg-[#E8F5E8] px-2 py-1 rounded">? ?? duy?t</span>
                                                <button onclick="hideReview(2)" class="text-[#DC3545] hover:underline text-xs bg-[#F8D7DA] px-2 py-1 rounded">? ?n</button>
                                                <button onclick="viewReview(2)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">?? Chi ti?t</button>
                                                <button onclick="replyReview(2)" class="text-[#FFC107] hover:underline text-xs bg-[#FFF3CD] px-2 py-1 rounded">? Ph?n h?i</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Review Item 3 -->
                        <div class="p-4 hover:bg-[#F8F9FA] transition-colors duration-200">
                            <div class="flex space-x-4">
                                <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                                <div class="flex-1 min-w-0">
                                    <div class="flex items-start justify-between">
                                        <div class="flex-1">
                                            <div class="flex items-center space-x-2 mb-2">
                                                <h3 class="text-sm font-medium text-[#0D6EFD] hover:underline cursor-pointer">AirPods Pro 2nd Generation</h3>
                                                <span class="bg-[#DC3545] text-white px-2 py-1 rounded-full text-xs font-medium">?? ?n</span>
                                            </div>
                                            <div class="flex items-center space-x-2 mb-2">
                                                <div class="flex text-yellow-400">
                                                    ?????
                                                </div>
                                                <span class="text-sm font-medium text-[#212529]">1.0</span>
                                                <span class="text-xs text-[#6C757D]">?</span>
                                                <span class="text-xs text-[#6C757D]">L? Minh C??ng</span>
                                                <span class="text-xs text-[#6C757D]">?</span>
                                                <span class="text-xs text-[#6C757D]">10/08/2025 20:45</span>
                                            </div>
                                            <p class="text-sm text-[#212529] mb-3 line-clamp-3">
                                                S?n ph?m k?m ch?t l??ng, kh?ng gi?ng nh? qu?ng c?o. ?m thanh kh?ng t?t, k?t n?i th??ng xuy?n b? ??t. Shop l?a ??o, kh?ng n?n mua!!!
                                            </p>
                                            <div class="flex space-x-2">
                                                <button onclick="approveReview(3)" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">? Duy?t</button>
                                                <span class="text-xs text-[#DC3545] bg-[#F8D7DA] px-2 py-1 rounded">? ?? ?n</span>
                                                <button onclick="viewReview(3)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">?? Chi ti?t</button>
                                                <button onclick="replyReview(3)" class="text-[#FFC107] hover:underline text-xs bg-[#FFF3CD] px-2 py-1 rounded">? Ph?n h?i</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Review Item 4 -->
                        <div class="p-4 hover:bg-[#F8F9FA] transition-colors duration-200">
                            <div class="flex space-x-4">
                                <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                                <div class="flex-1 min-w-0">
                                    <div class="flex items-start justify-between">
                                        <div class="flex-1">
                                            <div class="flex items-center space-x-2 mb-2">
                                                <h3 class="text-sm font-medium text-[#0D6EFD] hover:underline cursor-pointer">iPad Pro 12.9 inch M2</h3>
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs font-medium">?? duy?t</span>
                                            </div>
                                            <div class="flex items-center space-x-2 mb-2">
                                                <div class="flex text-yellow-400">
                                                    ?????
                                                </div>
                                                <span class="text-sm font-medium text-[#212529]">5.0</span>
                                                <span class="text-xs text-[#6C757D]">?</span>
                                                <span class="text-xs text-[#6C757D]">Ph?m Th? Hoa</span>
                                                <span class="text-xs text-[#6C757D]">?</span>
                                                <span class="text-xs text-[#6C757D]">09/08/2025 16:20</span>
                                            </div>
                                            <p class="text-sm text-[#212529] mb-3 line-clamp-3">
                                                iPad tuy?t v?i cho c?ng vi?c design. M?n h?nh s?c n?t, hi?u n?ng m?nh m?. Apple Pencil ho?t ??ng r?t m??t m?. R?t ph? h?p cho l?m vi?c di ??ng.
                                            </p>
                                            <div class="bg-[#E7F3FF] p-3 rounded-lg mb-3">
                                                <div class="flex items-start space-x-2">
                                                    <div class="w-6 h-6 bg-[#0D6EFD] rounded-full flex items-center justify-center flex-shrink-0">
                                                        <span class="text-white text-xs">S</span>
                                                    </div>
                                                    <div class="flex-1">
                                                        <div class="text-xs text-[#6C757D] mb-1">Shop ph?n h?i - 09/08/2025 18:30</div>
                                                        <p class="text-sm text-[#212529]">C?m ?n b?n ?? tin t??ng v? l?a ch?n s?n ph?m c?a shop. Ch?c b?n s? d?ng s?n ph?m hi?u qu?!</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="flex space-x-2">
                                                <span class="text-xs text-[#198754] bg-[#E8F5E8] px-2 py-1 rounded">? ?? duy?t</span>
                                                <button onclick="hideReview(4)" class="text-[#DC3545] hover:underline text-xs bg-[#F8D7DA] px-2 py-1 rounded">? ?n</button>
                                                <button onclick="viewReview(4)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">?? Chi ti?t</button>
                                                <span class="text-xs text-[#6C757D] bg-[#F8F9FA] px-2 py-1 rounded">? ?? ph?n h?i</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Review Item 5 -->
                        <div class="p-4 hover:bg-[#F8F9FA] transition-colors duration-200">
                            <div class="flex space-x-4">
                                <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0"></div>
                                <div class="flex-1 min-w-0">
                                    <div class="flex items-start justify-between">
                                        <div class="flex-1">
                                            <div class="flex items-center space-x-2 mb-2">
                                                <h3 class="text-sm font-medium text-[#0D6EFD] hover:underline cursor-pointer">Apple Watch Series 9</h3>
                                                <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">Ch? duy?t</span>
                                            </div>
                                            <div class="flex items-center space-x-2 mb-2">
                                                <div class="flex text-yellow-400">
                                                    ?????
                                                </div>
                                                <span class="text-sm font-medium text-[#212529]">3.0</span>
                                                <span class="text-xs text-[#6C757D]">?</span>
                                                <span class="text-xs text-[#6C757D]">V? Thanh T?ng</span>
                                                <span class="text-xs text-[#6C757D]">?</span>
                                                <span class="text-xs text-[#6C757D]">08/08/2025 12:15</span>
                                            </div>
                                            <p class="text-sm text-[#212529] mb-3 line-clamp-3">
                                                ??ng h? ?n, t?nh n?ng ??y ?? nh?ng pin h?i y?u. Ph?i s?c m?i ng?y. Thi?t k? ??p, giao di?n d? s? d?ng. Gi? h?i cao so v?i t?nh n?ng.
                                            </p>
                                            <div class="flex space-x-2">
                                                <button onclick="approveReview(5)" class="text-[#198754] hover:underline text-xs bg-[#E8F5E8] px-2 py-1 rounded">? Duy?t</button>
                                                <button onclick="hideReview(5)" class="text-[#DC3545] hover:underline text-xs bg-[#F8D7DA] px-2 py-1 rounded">? ?n</button>
                                                <button onclick="viewReview(5)" class="text-[#0D6EFD] hover:underline text-xs bg-[#E7F3FF] px-2 py-1 rounded">?? Chi ti?t</button>
                                                <button onclick="replyReview(5)" class="text-[#FFC107] hover:underline text-xs bg-[#FFF3CD] px-2 py-1 rounded">? Ph?n h?i</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Pagination -->
                    <div class="p-4 border-t border-gray-200">
                        <div class="flex items-center justify-between">
                            <div class="text-sm text-[#6C757D]">
                                Hi?n th? <strong>1</strong> ??n <strong>10</strong> trong <strong>15,624</strong> ??nh gi?
                            </div>
                            <div class="flex space-x-2">
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 disabled:opacity-50" disabled>
                                    Tr??c
                                </button>
                                <button class="bg-[#0D6EFD] text-white rounded-md px-3 py-1 text-sm font-medium">1</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">2</button>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">3</button>
                                <span class="px-2 text-[#6C757D]">...</span>
                                <button class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-3 py-1 text-sm font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">1,563</button>
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

    <!-- Review Detail Modal -->
    <div id="reviewDetailModal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
        <div class="flex items-center justify-center min-h-screen p-4">
            <div class="bg-white rounded-lg shadow-lg max-w-2xl w-full max-h-[90vh] overflow-y-auto">
                <div class="p-4 border-b border-gray-200">
                    <div class="flex items-center justify-between">
                        <h3 class="text-lg font-bold text-[#212529]">Chi ti?t ??nh gi?</h3>
                        <button onclick="closeReviewModal()" class="text-[#6C757D] hover:text-[#212529]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="p-6 space-y-6">
                    <!-- Product & Customer Info -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <h4 class="font-bold text-[#212529] mb-3">S?n ph?m</h4>
                            <div class="flex items-center space-x-3">
                                <div class="w-16 h-16 bg-gray-200 rounded-lg"></div>
                                <div>
                                    <div class="text-sm font-medium text-[#212529]">iPhone 15 Pro Max 256GB</div>
                                    <div class="text-xs text-[#6C757D]">M?u: Titan T? nhi?n</div>
                                    <div class="text-xs text-[#0D6EFD]">?34,990,000</div>
                                </div>
                            </div>
                        </div>
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <h4 class="font-bold text-[#212529] mb-3">Kh?ch h?ng</h4>
                            <div class="space-y-2 text-sm">
                                <div><strong>H? t?n:</strong> Nguy?n V?n An</div>
                                <div><strong>Email:</strong> nguyenvanan@gmail.com</div>
                                <div><strong>?? mua:</strong> 15 s?n ph?m</div>
                                <div><strong>T?n nhi?m:</strong> <span class="bg-[#198754] text-white px-2 py-1 rounded-full text-xs">Xu?t s?c</span></div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Review Content -->
                    <div>
                        <h4 class="font-bold text-[#212529] mb-3">N?i dung ??nh gi?</h4>
                        <div class="bg-[#F8F9FA] p-4 rounded-lg">
                            <div class="flex items-center space-x-2 mb-3">
                                <div class="flex text-yellow-400 text-lg">
                                    ?????
                                </div>
                                <span class="text-lg font-bold text-[#212529]">5.0</span>
                                <span class="text-sm text-[#6C757D]">? 12/08/2025 14:30</span>
                                <span class="bg-[#FFC107] text-white px-2 py-1 rounded-full text-xs font-medium">Ch? duy?t</span>
                            </div>
                            <p class="text-sm text-[#212529] leading-relaxed">
                                S?n ph?m r?t t?t, ch?t l??ng v??t mong ??i. Camera ch?p ?nh c?c k? s?c n?t, m?n h?nh hi?n th? r?t ??p. Giao h?ng nhanh, ??ng g?i c?n th?n. S? ?ng h? shop l?n sau. R?t h?i l?ng v?i l?n mua h?ng n?y!
                            </p>
                        </div>
                    </div>

                    <!-- Review Images (if any) -->
                    <div>
                        <h4 class="font-bold text-[#212529] mb-3">H?nh ?nh ??nh k?m</h4>
                        <div class="grid grid-cols-3 gap-3">
                            <div class="w-full h-24 bg-gray-200 rounded-lg"></div>
                            <div class="w-full h-24 bg-gray-200 rounded-lg"></div>
                            <div class="w-full h-24 bg-gray-200 rounded-lg"></div>
                        </div>
                    </div>

                    <!-- Reply Section -->
                    <div>
                        <h4 class="font-bold text-[#212529] mb-3">Ph?n h?i c?a shop</h4>
                        <textarea id="replyContent" class="w-full h-24 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" placeholder="Nh?p ph?n h?i c?a b?n..."></textarea>
                    </div>
                </div>
                <div class="p-4 border-t border-gray-200">
                    <div class="flex space-x-3">
                        <button onclick="approveReviewModal()" class="bg-[#198754] text-white rounded-md px-5 py-2 font-medium hover:bg-[#157347] cursor-pointer transition-colors duration-200">
                            ? Duy?t ??nh gi?
                        </button>
                        <button onclick="replyAndApprove()" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200">
                            ? Ph?n h?i & Duy?t
                        </button>
                        <button onclick="hideReviewModal()" class="bg-[#DC3545] text-white rounded-md px-5 py-2 font-medium hover:bg-[#BB2D3B] cursor-pointer transition-colors duration-200">
                            ? ?n ??nh gi?
                        </button>
                        <button onclick="closeReviewModal()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200">
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
            const rating = document.getElementById('ratingFilter').value;
            const status = document.getElementById('statusFilter').value;
            const product = document.getElementById('productFilter').value;
            const startDate = document.getElementById('startDate').value;
            const endDate = document.getElementById('endDate').value;
            const search = document.getElementById('searchReview').value;
            
            console.log('Review filters applied:', { rating, status, product, startDate, endDate, search });
            alert('?ang ?p d?ng b? l?c ??nh gi?...');
        }

        function resetFilters() {
            document.getElementById('ratingFilter').value = '';
            document.getElementById('statusFilter').value = '';
            document.getElementById('productFilter').value = '';
            document.getElementById('startDate').value = '';
            document.getElementById('endDate').value = '';
            document.getElementById('searchReview').value = '';
            alert('?? ??t l?i b? l?c ??nh gi?');
        }

        function exportReviews() {
            alert('?ang xu?t b?o c?o ??nh gi? ra file Excel...');
        }

        function moderateReviews() {
            alert('M? c?ng c? ki?m duy?t h?ng lo?t...');
        }

        // Review actions
        function approveReview(reviewId) {
            if (confirm('B?n c? ch?c ch?n mu?n duy?t ??nh gi? n?y?')) {
                alert(`?? duy?t ??nh gi? #${reviewId}`);
                // Update UI here
            }
        }

        function hideReview(reviewId) {
            if (confirm('B?n c? ch?c ch?n mu?n ?n ??nh gi? n?y?')) {
                alert(`?? ?n ??nh gi? #${reviewId}`);
                // Update UI here
            }
        }

        function viewReview(reviewId) {
            document.getElementById('reviewDetailModal').classList.remove('hidden');
        }

        function replyReview(reviewId) {
            // Focus on reply textarea in modal
            document.getElementById('reviewDetailModal').classList.remove('hidden');
            setTimeout(() => {
                document.getElementById('replyContent').focus();
            }, 100);
        }

        function closeReviewModal() {
            document.getElementById('reviewDetailModal').classList.add('hidden');
        }

        function approveReviewModal() {
            if (confirm('B?n c? ch?c ch?n mu?n duy?t ??nh gi? n?y?')) {
                alert('?? duy?t ??nh gi? th?nh c?ng');
                closeReviewModal();
            }
        }

        function hideReviewModal() {
            if (confirm('B?n c? ch?c ch?n mu?n ?n ??nh gi? n?y?')) {
                alert('?? ?n ??nh gi? th?nh c?ng');
                closeReviewModal();
            }
        }

        function replyAndApprove() {
            const replyContent = document.getElementById('replyContent').value.trim();
            if (!replyContent) {
                alert('Vui l?ng nh?p n?i dung ph?n h?i');
                return;
            }
            if (confirm('B?n c? ch?c ch?n mu?n g?i ph?n h?i v? duy?t ??nh gi? n?y?')) {
                alert('?? g?i ph?n h?i v? duy?t ??nh gi? th?nh c?ng');
                closeReviewModal();
            }
        }

        // Close modal when clicking outside
        document.getElementById('reviewDetailModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closeReviewModal();
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