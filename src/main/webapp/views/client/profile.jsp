<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý tài khoản - E-commerce</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', Arial, Helvetica, sans-serif; }
        .tab-button.active { background-color: #0D6EFD; color: white; }
        .tab-content { display: none; }
        .tab-content.active { display: block; }
    </style>
</head>
<body class="bg-[#F8F9FA] leading-relaxed tracking-wide">
    <!-- Header -->
    <header class="bg-white shadow-sm border-b border-gray-200 sticky top-0 z-40">
        <div class="container mx-auto max-w-[1200px] px-4">
            <!-- Top Bar -->
            <div class="hidden md:flex items-center justify-between py-2 text-xs border-b border-gray-100">
                <div class="flex space-x-4">
                    <span class="text-[#6C757D]">? Hotline: 1900-1234</span>
                    <span class="text-[#6C757D]">? support@ecommerce.vn</span>
                </div>
                <div class="flex space-x-4">
                    <span class="text-[#6C757D]">14/08/2025 18:27</span>
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
                        <input type="text" placeholder="T?m ki?m s?n ph?m..." class="w-full h-10 px-4 pr-12 border border-[#CED4DA] rounded-l-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200">
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
                        <button class="flex items-center space-x-2 text-[#0D6EFD] font-medium transition-colors duration-200">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                            </svg>
                            <span class="hidden md:block text-sm">hoangdvdinos</span>
                        </button>
                        <!-- Dropdown Menu -->
                        <div class="absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg border border-gray-200 hidden group-hover:block z-50">
                            <a href="/account" class="block px-4 py-2 text-sm text-[#0D6EFD] bg-[#E7F3FF]">T?i kho?n c?a t?i</a>
                            <a href="/orders" class="block px-4 py-2 text-sm text-[#212529] hover:bg-[#F8F9FA]">??n h?ng</a>
                            <a href="#" class="block px-4 py-2 text-sm text-[#212529] hover:bg-[#F8F9FA]">Y?u th?ch</a>
                            <div class="border-t border-gray-200"></div>
                            <a href="#" class="block px-4 py-2 text-sm text-[#DC3545] hover:bg-[#F8F9FA]">??ng xu?t</a>
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
                    <div class="relative cursor-pointer">
                        <svg class="w-6 h-6 text-[#6C757D] hover:text-[#0D6EFD] transition-colors duration-200" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4m-.4 0L5 5H3m4 8h10m-10 0v6a1 1 0 001 1h8a1 1 0 001-1v-6m-10 0H3"></path>
                        </svg>
                        <span class="absolute top-0 right-0 bg-[#0D6EFD] text-white rounded-full text-xs w-5 h-5 flex items-center justify-center transform translate-x-2 -translate-y-2">0</span>
                    </div>
                </div>
            </div>

            <!-- Mobile Search -->
            <div class="md:hidden pb-3">
                <div class="relative">
                    <input type="text" placeholder="T?m ki?m s?n ph?m..." class="w-full h-10 px-4 pr-12 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
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
                <li><a href="/" class="text-[#6C757D] hover:text-[#0D6EFD]">Trang ch?</a></li>
                <li class="text-[#6C757D]">/</li>
                <li class="text-[#212529] font-medium">T?i kho?n c?a t?i</li>
            </ol>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto max-w-[1200px] px-4 py-6">
        <!-- Account Header -->
        <div class="bg-white rounded-lg shadow-sm p-6 mb-6">
            <div class="flex flex-col md:flex-row items-start md:items-center space-y-4 md:space-y-0 md:space-x-6">
                <!-- Avatar -->
                <div class="relative">
                    <div class="w-24 h-24 bg-[#0D6EFD] rounded-full flex items-center justify-center text-white text-2xl font-bold">
                        H
                    </div>
                    <button onclick="uploadAvatar()" class="absolute bottom-0 right-0 bg-white border border-gray-200 rounded-full p-2 shadow-sm hover:shadow-md transition-shadow duration-200">
                        <svg class="w-4 h-4 text-[#6C757D]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 9a2 2 0 012-2h.93a2 2 0 001.664-.89l.812-1.22A2 2 0 0110.07 4h3.86a2 2 0 011.664.89l.812 1.22A2 2 0 0018.07 7H19a2 2 0 012 2v9a2 2 0 01-2 2H5a2 2 0 01-2-2V9z"></path>
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 13a3 3 0 11-6 0 3 3 0 016 0z"></path>
                        </svg>
                    </button>
                    <input type="file" id="avatarInput" accept="image/*" class="hidden">
                </div>

                <!-- User Info -->
                <div class="flex-1">
                    <h1 class="text-2xl font-bold text-[#212529] mb-2">Hoang Linh</h1>
                    <div class="flex flex-wrap items-center gap-4 text-sm">
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#6C757D]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207"></path>
                            </svg>
                            <span class="text-[#6C757D]">hoangdvdinos@gmail.com</span>
                            <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">? ?? x?c th?c</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#6C757D]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path>
                            </svg>
                            <span class="text-[#6C757D]">(+84) 987-654-321</span>
                            <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">? ?? x?c th?c</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#6C757D]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3a2 2 0 012-2h4a2 2 0 012 2v4m-6 4V9a2 2 0 012-2h4a2 2 0 012 2v2m-6 4h.01M16 15h.01M12 15h.01M8 15h.01"></path>
                            </svg>
                            <span class="text-[#FFC107]">Th?nh vi?n V?ng</span>
                        </div>
                    </div>
                </div>

                <!-- Quick Stats -->
                <div class="grid grid-cols-3 gap-4 text-center">
                    <div class="bg-[#F8F9FA] rounded-lg p-3">
                        <div class="text-2xl font-bold text-[#0D6EFD]">12</div>
                        <div class="text-xs text-[#6C757D]">??n h?ng</div>
                    </div>
                    <div class="bg-[#F8F9FA] rounded-lg p-3">
                        <div class="text-2xl font-bold text-[#198754]">?2.5M</div>
                        <div class="text-xs text-[#6C757D]">?? chi ti?u</div>
                    </div>
                    <div class="bg-[#F8F9FA] rounded-lg p-3">
                        <div class="text-2xl font-bold text-[#FFC107]">1,250</div>
                        <div class="text-xs text-[#6C757D]">?i?m t?ch l?y</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Account Navigation -->
        <div class="grid grid-cols-1 lg:grid-cols-4 gap-6">
            <!-- Sidebar Navigation -->
            <div class="lg:col-span-1">
                <div class="bg-white rounded-lg shadow-sm">
                    <!-- Mobile Tab Toggle -->
                    <div class="lg:hidden border-b border-gray-200">
                        <button onclick="toggleMobileMenu()" class="w-full flex items-center justify-between p-4 text-[#212529] font-medium">
                            <span id="currentTabName">Th?ng tin c? nh?n</span>
                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                            </svg>
                        </button>
                    </div>

                    <!-- Navigation Menu -->
                    <nav id="sidebarMenu" class="hidden lg:block p-4">
                        <div class="space-y-2">
                            <button onclick="switchTab('profile')" class="tab-button active w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-left hover:bg-[#F8F9FA] transition-colors duration-200">
                                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                                </svg>
                                <span>Th?ng tin c? nh?n</span>
                            </button>

                            <button onclick="switchTab('addresses')" class="tab-button w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-left hover:bg-[#F8F9FA] transition-colors duration-200">
                                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                </svg>
                                <span>??a ch? giao h?ng</span>
                            </button>

                            <button onclick="switchTab('security')" class="tab-button w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-left hover:bg-[#F8F9FA] transition-colors duration-200">
                                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                                </svg>
                                <span>B?o m?t t?i kho?n</span>
                            </button>

                            <button onclick="switchTab('notifications')" class="tab-button w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-left hover:bg-[#F8F9FA] transition-colors duration-200">
                                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-5-5m0 5v-5H9m6 5H3"></path>
                                </svg>
                                <span>Th?ng b?o</span>
                            </button>

                            <button onclick="switchTab('preferences')" class="tab-button w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-left hover:bg-[#F8F9FA] transition-colors duration-200">
                                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                </svg>
                                <span>T?y ch?n</span>
                            </button>

                            <div class="border-t border-gray-200 pt-2 mt-2">
                                <a href="/orders" class="w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-left hover:bg-[#F8F9FA] transition-colors duration-200">
                                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z"></path>
                                    </svg>
                                    <span>??n h?ng c?a t?i</span>
                                </a>

                                <a href="#" class="w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-left hover:bg-[#F8F9FA] transition-colors duration-200">
                                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                                    </svg>
                                    <span>S?n ph?m y?u th?ch</span>
                                </a>

                                <button onclick="logout()" class="w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-left text-[#DC3545] hover:bg-[#FDF2F2] transition-colors duration-200">
                                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path>
                                    </svg>
                                    <span>??ng xu?t</span>
                                </button>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>

            <!-- Main Content Area -->
            <div class="lg:col-span-3">
                <!-- Profile Tab -->
                <div id="profile-tab" class="tab-content active bg-white rounded-lg shadow-sm p-6">
                    <h2 class="text-xl font-bold text-[#212529] mb-6">Th?ng tin c? nh?n</h2>
                    
                    <form id="profileForm" class="space-y-6">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-2">H? v? t?n *</label>
                                <input type="text" value="Ho?ng ?inh" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" required>
                            </div>
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-2">Email *</label>
                                <div class="relative">
                                    <input type="email" value="hoangdvdinos@gmail.com" class="w-full h-10 px-3 py-2 pr-10 border border-[#CED4DA] rounded-md bg-gray-50" readonly>
                                    <svg class="absolute right-3 top-3 w-4 h-4 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                                    </svg>
                                </div>
                                <div class="text-xs text-[#198754] mt-1">? ?? x?c th?c</div>
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-2">S? ?i?n tho?i *</label>
                                <div class="relative">
                                    <input type="tel" value="0987654321" class="w-full h-10 px-3 py-2 pr-10 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                    <svg class="absolute right-3 top-3 w-4 h-4 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                                    </svg>
                                </div>
                                <div class="text-xs text-[#198754] mt-1">? ?? x?c th?c</div>
                            </div>
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-2">Ng?y sinh</label>
                                <input type="date" value="1990-05-15" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-2">Gi?i t?nh</label>
                                <select class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                    <option value="">Kh?ng x?c ??nh</option>
                                    <option value="male" selected>Nam</option>
                                    <option value="female">N?</option>
                                    <option value="other">Kh?c</option>
                                </select>
                            </div>
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-2">Ngh? nghi?p</label>
                                <input type="text" value="L?p tr?nh vi?n" placeholder="VD: L?p tr?nh vi?n, Gi?o vi?n..." class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            </div>
                        </div>

                        <div>
                            <label class="text-sm font-medium text-[#212529] block mb-2">Bio</label>
                            <textarea rows="3" placeholder="Gi?i thi?u ng?n v? b?n th?n..." class="w-full px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] resize-none">Y?u th?ch c?ng ngh? v? mua s?m online. L? kh?ch h?ng th?n thi?t c?a E-commerce t? n?m 2023.</textarea>
                        </div>

                        <div class="flex space-x-4">
                            <button type="submit" class="bg-[#0D6EFD] text-white rounded-md px-6 py-3 font-medium hover:bg-[#084298] transition-colors duration-200">
                                C?p nh?t th?ng tin
                            </button>
                            <button type="button" onclick="resetForm()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-6 py-3 font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                                ??t l?i
                            </button>
                        </div>
                    </form>
                </div>

                <!-- Addresses Tab -->
                <div id="addresses-tab" class="tab-content bg-white rounded-lg shadow-sm p-6">
                    <div class="flex items-center justify-between mb-6">
                        <h2 class="text-xl font-bold text-[#212529]">??a ch? giao h?ng</h2>
                        <button onclick="addNewAddress()" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 font-medium hover:bg-[#084298] transition-colors duration-200">
                            + Th?m ??a ch? m?i
                        </button>
                    </div>

                    <div class="space-y-4">
                        <!-- Default Address -->
                        <div class="border-2 border-[#0D6EFD] bg-[#E7F3FF] rounded-lg p-4">
                            <div class="flex items-start justify-between">
                                <div class="flex-1">
                                    <div class="flex items-center space-x-2 mb-2">
                                        <span class="font-medium text-[#212529]">Ho?ng ?inh</span>
                                        <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded text-xs">M?c ??nh</span>
                                    </div>
                                    <div class="text-sm text-[#6C757D] space-y-1">
                                        <div>? (+84) 987-654-321</div>
                                        <div>? 123 ???ng Nguy?n V?n C?, Ph??ng 4, Qu?n 5, TP.HCM</div>
                                        <div>? G?n si?u th? Co.opMart</div>
                                    </div>
                                </div>
                                <div class="flex space-x-2">
                                    <button onclick="editAddress(1)" class="text-[#0D6EFD] hover:underline text-sm">S?a</button>
                                    <button onclick="deleteAddress(1)" class="text-[#DC3545] hover:underline text-sm">X?a</button>
                                </div>
                            </div>
                        </div>

                        <!-- Secondary Address -->
                        <div class="border border-gray-200 rounded-lg p-4">
                            <div class="flex items-start justify-between">
                                <div class="flex-1">
                                    <div class="flex items-center space-x-2 mb-2">
                                        <span class="font-medium text-[#212529]">Ho?ng ?inh</span>
                                        <span class="bg-[#6C757D] text-white px-2 py-1 rounded text-xs">V?n ph?ng</span>
                                    </div>
                                    <div class="text-sm text-[#6C757D] space-y-1">
                                        <div>? (+84) 987-654-321</div>
                                        <div>? 456 ???ng L? V?n S?, Ph??ng 14, Qu?n 3, TP.HCM</div>
                                        <div>? T?a nh? ABC, t?ng 12</div>
                                    </div>
                                </div>
                                <div class="flex space-x-2">
                                    <button onclick="setDefault(2)" class="text-[#0D6EFD] hover:underline text-sm">??t m?c ??nh</button>
                                    <button onclick="editAddress(2)" class="text-[#0D6EFD] hover:underline text-sm">S?a</button>
                                    <button onclick="deleteAddress(2)" class="text-[#DC3545] hover:underline text-sm">X?a</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Security Tab -->
                <div id="security-tab" class="tab-content bg-white rounded-lg shadow-sm p-6">
                    <h2 class="text-xl font-bold text-[#212529] mb-6">B?o m?t t?i kho?n</h2>

                    <div class="space-y-6">
                        <!-- Change Password -->
                        <div class="border border-gray-200 rounded-lg p-4">
                            <h3 class="font-bold text-[#212529] mb-4">??i m?t kh?u</h3>
                            <form class="space-y-4">
                                <div>
                                    <label class="text-sm font-medium text-[#212529] block mb-2">M?t kh?u hi?n t?i *</label>
                                    <input type="password" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" required>
                                </div>
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                    <div>
                                        <label class="text-sm font-medium text-[#212529] block mb-2">M?t kh?u m?i *</label>
                                        <input type="password" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" required>
                                    </div>
                                    <div>
                                        <label class="text-sm font-medium text-[#212529] block mb-2">X?c nh?n m?t kh?u *</label>
                                        <input type="password" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" required>
                                    </div>
                                </div>
                                <button type="submit" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 font-medium hover:bg-[#084298] transition-colors duration-200">
                                    ??i m?t kh?u
                                </button>
                            </form>
                        </div>

                        <!-- Two-Factor Authentication -->
                        <div class="border border-gray-200 rounded-lg p-4">
                            <div class="flex items-center justify-between mb-4">
                                <div>
                                    <h3 class="font-bold text-[#212529]">X?c th?c hai b??c (2FA)</h3>
                                    <p class="text-sm text-[#6C757D]">B?o v? t?i kho?n v?i l?p b?o m?t b? sung</p>
                                </div>
                                <button onclick="toggle2FA()" class="bg-[#198754] text-white rounded-md px-4 py-2 font-medium hover:bg-[#157347] transition-colors duration-200">
                                    ?? b?t
                                </button>
                            </div>
                            <div class="text-sm text-[#198754]">
                                ? X?c th?c qua SMS: ????????321
                            </div>
                        </div>

                        <!-- Login History -->
                        <div class="border border-gray-200 rounded-lg p-4">
                            <h3 class="font-bold text-[#212529] mb-4">L?ch s? ??ng nh?p</h3>
                            <div class="space-y-3">
                                <div class="flex items-center justify-between py-2 border-b border-gray-100">
                                    <div>
                                        <div class="text-sm font-medium text-[#212529]">Chrome on Windows</div>
                                        <div class="text-xs text-[#6C757D]">14/08/2025 18:27 ? TP.HCM, Vi?t Nam</div>
                                    </div>
                                    <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">Hi?n t?i</span>
                                </div>
                                <div class="flex items-center justify-between py-2 border-b border-gray-100">
                                    <div>
                                        <div class="text-sm font-medium text-[#212529]">Safari on iPhone</div>
                                        <div class="text-xs text-[#6C757D]">13/08/2025 09:15 ? TP.HCM, Vi?t Nam</div>
                                    </div>
                                    <button class="text-[#DC3545] text-xs hover:underline">??ng xu?t</button>
                                </div>
                                <div class="flex items-center justify-between py-2">
                                    <div>
                                        <div class="text-sm font-medium text-[#212529]">Chrome on Android</div>
                                        <div class="text-xs text-[#6C757D]">12/08/2025 14:30 ? TP.HCM, Vi?t Nam</div>
                                    </div>
                                    <span class="text-[#6C757D] text-xs">?? ??ng xu?t</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Notifications Tab -->
                <div id="notifications-tab" class="tab-content bg-white rounded-lg shadow-sm p-6">
                    <h2 class="text-xl font-bold text-[#212529] mb-6">C?i ??t th?ng b?o</h2>

                    <div class="space-y-6">
                        <!-- Email Notifications -->
                        <div class="border border-gray-200 rounded-lg p-4">
                            <h3 class="font-bold text-[#212529] mb-4">Th?ng b?o qua Email</h3>
                            <div class="space-y-3">
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" checked class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">X?c nh?n ??n h?ng</span>
                                </label>
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" checked class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">C?p nh?t tr?ng th?i giao h?ng</span>
                                </label>
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">Khuy?n m?i v? ?u ??i</span>
                                </label>
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" checked class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">S?n ph?m m?i</span>
                                </label>
                            </div>
                        </div>

                        <!-- SMS Notifications -->
                        <div class="border border-gray-200 rounded-lg p-4">
                            <h3 class="font-bold text-[#212529] mb-4">Th?ng b?o qua SMS</h3>
                            <div class="space-y-3">
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" checked class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">X?c nh?n ??n h?ng</span>
                                </label>
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" checked class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">Giao h?ng th?nh c?ng</span>
                                </label>
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">Khuy?n m?i ??c bi?t</span>
                                </label>
                            </div>
                        </div>

                        <!-- Push Notifications -->
                        <div class="border border-gray-200 rounded-lg p-4">
                            <h3 class="font-bold text-[#212529] mb-4">Th?ng b?o tr?n ?ng d?ng</h3>
                            <div class="space-y-3">
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" checked class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">C?p nh?t ??n h?ng</span>
                                </label>
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">Flash sale</span>
                                </label>
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" checked class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">S?n ph?m y?u th?ch gi?m gi?</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="mt-6">
                        <button class="bg-[#0D6EFD] text-white rounded-md px-6 py-3 font-medium hover:bg-[#084298] transition-colors duration-200">
                            L?u c?i ??t
                        </button>
                    </div>
                </div>

                <!-- Preferences Tab -->
                <div id="preferences-tab" class="tab-content bg-white rounded-lg shadow-sm p-6">
                    <h2 class="text-xl font-bold text-[#212529] mb-6">T?y ch?n c? nh?n</h2>

                    <div class="space-y-6">
                        <!-- Language & Region -->
                        <div class="border border-gray-200 rounded-lg p-4">
                            <h3 class="font-bold text-[#212529] mb-4">Ng?n ng? & Khu v?c</h3>
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div>
                                    <label class="text-sm font-medium text-[#212529] block mb-2">Ng?n ng?</label>
                                    <select class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                        <option value="vi" selected>Ti?ng Vi?t</option>
                                        <option value="en">English</option>
                                    </select>
                                </div>
                                <div>
                                    <label class="text-sm font-medium text-[#212529] block mb-2">M?i gi?</label>
                                    <select class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                        <option value="asia/ho_chi_minh" selected>Vi?t Nam (UTC+7)</option>
                                        <option value="asia/bangkok">Bangkok (UTC+7)</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <!-- Display Preferences -->
                        <div class="border border-gray-200 rounded-lg p-4">
                            <h3 class="font-bold text-[#212529] mb-4">Giao di?n</h3>
                            <div class="space-y-3">
                                <div>
                                    <label class="text-sm font-medium text-[#212529] block mb-2">Ch? ?? hi?n th?</label>
                                    <div class="flex space-x-4">
                                        <label class="flex items-center space-x-2 cursor-pointer">
                                            <input type="radio" name="theme" value="light" checked class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                            <span class="text-sm text-[#212529]">S?ng</span>
                                        </label>
                                        <label class="flex items-center space-x-2 cursor-pointer">
                                            <input type="radio" name="theme" value="dark" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                            <span class="text-sm text-[#212529]">T?i</span>
                                        </label>
                                        <label class="flex items-center space-x-2 cursor-pointer">
                                            <input type="radio" name="theme" value="auto" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                            <span class="text-sm text-[#212529]">T? ??ng</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Privacy Settings -->
                        <div class="border border-gray-200 rounded-lg p-4">
                            <h3 class="font-bold text-[#212529] mb-4">Quy?n ri?ng t?</h3>
                            <div class="space-y-3">
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" checked class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">Cho ph?p s? d?ng cookies</span>
                                </label>
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">Chia s? d? li?u ?? c?i thi?n d?ch v?</span>
                                </label>
                                <label class="flex items-center space-x-3 cursor-pointer">
                                    <input type="checkbox" checked class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">Hi?n th? tr?ng th?i online</span>
                                </label>
                            </div>
                        </div>

                        <!-- Account Actions -->
                        <div class="border border-[#DC3545] rounded-lg p-4">
                            <h3 class="font-bold text-[#DC3545] mb-4">H?nh ??ng t?i kho?n</h3>
                            <div class="space-y-3">
                                <button onclick="exportData()" class="w-full md:w-auto bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                                    Xu?t d? li?u c? nh?n
                                </button>
                                <button onclick="deactivateAccount()" class="w-full md:w-auto bg-[#FFC107] text-white rounded-md px-4 py-2 font-medium hover:bg-[#E0A800] transition-colors duration-200 md:ml-2">
                                    T?m kh?a t?i kho?n
                                </button>
                                <button onclick="deleteAccount()" class="w-full md:w-auto bg-[#DC3545] text-white rounded-md px-4 py-2 font-medium hover:bg-[#BB2D3B] transition-colors duration-200 md:ml-2">
                                    X?a t?i kho?n
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="mt-6">
                        <button class="bg-[#0D6EFD] text-white rounded-md px-6 py-3 font-medium hover:bg-[#084298] transition-colors duration-200">
                            L?u t?y ch?n
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Address Modal -->
    <div id="addressModal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50 flex items-center justify-center">
        <div class="bg-white rounded-lg shadow-lg max-w-2xl w-full mx-4 max-h-screen overflow-y-auto">
            <div class="p-6">
                <div class="flex items-center justify-between mb-6">
                    <h3 class="text-xl font-bold text-[#212529]">Th?m ??a ch? m?i</h3>
                    <button onclick="closeAddressModal()" class="text-[#6C757D] hover:text-[#212529]">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                        </svg>
                    </button>
                </div>

                <form id="addressForm" class="space-y-4">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <label class="text-sm font-medium text-[#212529] block mb-2">H? v? t?n *</label>
                            <input type="text" value="Ho?ng ?inh" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" required>
                        </div>
                        <div>
                            <label class="text-sm font-medium text-[#212529] block mb-2">S? ?i?n tho?i *</label>
                            <input type="tel" value="0987654321" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" required>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                        <div>
                            <label class="text-sm font-medium text-[#212529] block mb-2">T?nh/Th?nh ph? *</label>
                            <select class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" required>
                                <option value="">Ch?n t?nh/th?nh ph?</option>
                                <option value="hcm" selected>TP. H? Ch? Minh</option>
                                <option value="hn">H? N?i</option>
                                <option value="dn">?? N?ng</option>
                            </select>
                        </div>
                        <div>
                            <label class="text-sm font-medium text-[#212529] block mb-2">Qu?n/Huy?n *</label>
                            <select class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" required>
                                <option value="">Ch?n qu?n/huy?n</option>
                                <option value="q1">Qu?n 1</option>
                                <option value="q3">Qu?n 3</option>
                                <option value="q5" selected>Qu?n 5</option>
                            </select>
                        </div>
                        <div>
                            <label class="text-sm font-medium text-[#212529] block mb-2">Ph??ng/X? *</label>
                            <select class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" required>
                                <option value="">Ch?n ph??ng/x?</option>
                                <option value="p1">Ph??ng 1</option>
                                <option value="p4" selected>Ph??ng 4</option>
                            </select>
                        </div>
                    </div>

                    <div>
                        <label class="text-sm font-medium text-[#212529] block mb-2">??a ch? c? th? *</label>
                        <input type="text" placeholder="S? nh?, t?n ???ng" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" required>
                    </div>

                    <div>
                        <label class="text-sm font-medium text-[#212529] block mb-2">Ghi ch? ??a ch?</label>
                        <input type="text" placeholder="VD: G?n ng? t?, ??i di?n c?ng vi?n..." class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                    </div>

                    <div>
                                                <label class="text-sm font-medium text-[#212529] block mb-2">Lo?i ??a ch?</label>
                        <div class="flex space-x-4">
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="radio" name="addressType" value="home" checked class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Nh? ri?ng</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="radio" name="addressType" value="office" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">V?n ph?ng</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="radio" name="addressType" value="other" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Kh?c</span>
                            </label>
                        </div>
                    </div>

                    <div class="flex items-center space-x-2">
                        <input type="checkbox" id="setDefault" class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                        <label for="setDefault" class="text-sm text-[#212529]">??t l?m ??a ch? m?c ??nh</label>
                    </div>

                    <div class="flex space-x-4 pt-4">
                        <button type="submit" class="bg-[#0D6EFD] text-white rounded-md px-6 py-3 font-medium hover:bg-[#084298] transition-colors duration-200">
                            L?u ??a ch?
                        </button>
                        <button type="button" onclick="closeAddressModal()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-6 py-3 font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                            H?y
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-[#212529] text-white py-12 mt-12">
        <div class="container mx-auto max-w-[1200px] px-4">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div>
                    <h3 class="text-xl font-bold text-[#0D6EFD] mb-4">E-commerce</h3>
                    <p class="text-sm text-gray-300 mb-4">N?n t?ng mua s?m tr?c tuy?n h?ng ??u Vi?t Nam.</p>
                </div>
                <div>
                    <h4 class="font-bold mb-4">V? ch?ng t?i</h4>
                    <div class="space-y-2 text-sm">
                        <a href="#" class="block text-gray-300 hover:text-white">Gi?i thi?u</a>
                        <a href="#" class="block text-gray-300 hover:text-white">Tuy?n d?ng</a>
                        <a href="#" class="block text-gray-300 hover:text-white">Tin t?c</a>
                    </div>
                </div>
                <div>
                    <h4 class="font-bold mb-4">H? tr?</h4>
                    <div class="space-y-2 text-sm">
                        <a href="#" class="block text-gray-300 hover:text-white">Hotline: 1900-1234</a>
                        <a href="#" class="block text-gray-300 hover:text-white">H??ng d?n mua h?ng</a>
                        <a href="#" class="block text-gray-300 hover:text-white">Ch?nh s?ch ??i tr?</a>
                    </div>
                </div>
                <div>
                    <h4 class="font-bold mb-4">K?t n?i</h4>
                    <div class="flex space-x-4">
                        <a href="#" class="text-gray-300 hover:text-white">Facebook</a>
                        <a href="#" class="text-gray-300 hover:text-white">Twitter</a>
                        <a href="#" class="text-gray-300 hover:text-white">Instagram</a>
                    </div>
                </div>
            </div>
            <div class="border-t border-gray-700 mt-8 pt-8 text-center text-sm text-gray-300">
                <p>? 2025 E-commerce Vietnam. T?t c? quy?n ???c b?o l?u.</p>
            </div>
        </div>
    </footer>

    <script>
        // Tab management
        function switchTab(tabName) {
            // Hide all tab contents
            document.querySelectorAll('.tab-content').forEach(content => {
                content.classList.remove('active');
            });
            
            // Remove active state from all buttons
            document.querySelectorAll('.tab-button').forEach(button => {
                button.classList.remove('active');
            });
            
            // Show selected tab
            document.getElementById(tabName + '-tab').classList.add('active');
            
            // Update button state
            event.target.classList.add('active');
            
            // Update mobile menu text
            const tabNames = {
                'profile': 'Th?ng tin c? nh?n',
                'addresses': '??a ch? giao h?ng',
                'security': 'B?o m?t t?i kho?n',
                'notifications': 'Th?ng b?o',
                'preferences': 'T?y ch?n'
            };
            document.getElementById('currentTabName').textContent = tabNames[tabName];
            
            // Hide mobile menu
            document.getElementById('sidebarMenu').classList.add('hidden');
            document.getElementById('sidebarMenu').classList.remove('lg:block');
            setTimeout(() => {
                document.getElementById('sidebarMenu').classList.add('lg:block');
            }, 100);
            
            console.log('Switched to tab:', tabName);
        }

        function toggleMobileMenu() {
            const menu = document.getElementById('sidebarMenu');
            menu.classList.toggle('hidden');
        }

        // Profile management
        function uploadAvatar() {
            document.getElementById('avatarInput').click();
        }

        document.getElementById('avatarInput').addEventListener('change', function(e) {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    console.log('Avatar uploaded:', file.name);
                    alert('?? t?i l?n avatar m?i th?nh c?ng!');
                };
                reader.readAsDataURL(file);
            }
        });

        document.getElementById('profileForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const formData = new FormData(this);
            const profileData = {
                fullName: formData.get('fullName') || this.querySelector('input[type="text"]').value,
                email: 'hoangdvdinos@gmail.com', // readonly
                phone: this.querySelector('input[type="tel"]').value,
                birthDate: this.querySelector('input[type="date"]').value,
                gender: this.querySelector('select').value,
                occupation: this.querySelectorAll('input[type="text"]')[1].value,
                bio: this.querySelector('textarea').value,
                updatedAt: '2025-08-14 18:30:32',
                user: 'hoangdvdinos'
            };
            
            console.log('Updating profile:', profileData);
            
            // Simulate API call
            setTimeout(() => {
                alert('? C?p nh?t th?ng tin th?nh c?ng!');
            }, 1000);
        });

        function resetForm() {
            document.getElementById('profileForm').reset();
            // Restore original values
            document.querySelector('input[type="text"]').value = 'Ho?ng ?inh';
            document.querySelector('input[type="tel"]').value = '0987654321';
            document.querySelector('input[type="date"]').value = '1990-05-15';
            document.querySelector('select').value = 'male';
            document.querySelectorAll('input[type="text"]')[1].value = 'L?p tr?nh vi?n';
            document.querySelector('textarea').value = 'Y?u th?ch c?ng ngh? v? mua s?m online. L? kh?ch h?ng th?n thi?t c?a E-commerce t? n?m 2023.';
        }

        // Address management
        function addNewAddress() {
            document.getElementById('addressModal').classList.remove('hidden');
            document.body.style.overflow = 'hidden';
        }

        function closeAddressModal() {
            document.getElementById('addressModal').classList.add('hidden');
            document.body.style.overflow = 'auto';
        }

        function editAddress(addressId) {
            console.log('Editing address:', addressId);
            // In a real app, this would populate the modal with existing data
            addNewAddress();
        }

        function deleteAddress(addressId) {
            if (confirm('B?n c? ch?c ch?n mu?n x?a ??a ch? n?y?')) {
                console.log('Deleting address:', addressId);
                alert('?? x?a ??a ch? th?nh c?ng!');
                // Remove from DOM or reload
            }
        }

        function setDefault(addressId) {
            console.log('Setting default address:', addressId);
            alert('?? ??t l?m ??a ch? m?c ??nh!');
            // Update UI to reflect default address
        }

        document.getElementById('addressForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const formData = new FormData(this);
            const addressData = {
                fullName: formData.get('fullName') || this.querySelector('input[type="text"]').value,
                phone: this.querySelector('input[type="tel"]').value,
                province: this.querySelector('select').value,
                district: this.querySelectorAll('select')[1].value,
                ward: this.querySelectorAll('select')[2].value,
                street: this.querySelectorAll('input[type="text"]')[1].value,
                note: this.querySelectorAll('input[type="text"]')[2].value,
                type: formData.get('addressType'),
                isDefault: document.getElementById('setDefault').checked,
                userId: 'hoangdvdinos',
                createdAt: '2025-08-14 18:30:32'
            };
            
            console.log('Adding new address:', addressData);
            
            setTimeout(() => {
                alert('? ?? th?m ??a ch? m?i th?nh c?ng!');
                closeAddressModal();
                // In real app, would reload addresses list
            }, 1000);
        });

        // Security functions
        function toggle2FA() {
            const button = event.target;
            const isEnabled = button.textContent.trim() === '?? b?t';
            
            if (isEnabled) {
                if (confirm('B?n c? ch?c ch?n mu?n t?t x?c th?c hai b??c?')) {
                    button.textContent = '?? t?t';
                    button.classList.remove('bg-[#198754]', 'hover:bg-[#157347]');
                    button.classList.add('bg-[#6C757D]', 'hover:bg-[#495057]');
                    console.log('2FA disabled');
                }
            } else {
                button.textContent = '?? b?t';
                button.classList.remove('bg-[#6C757D]', 'hover:bg-[#495057]');
                button.classList.add('bg-[#198754]', 'hover:bg-[#157347]');
                console.log('2FA enabled');
            }
        }

        // Account actions
        function exportData() {
            console.log('Exporting user data...');
            alert('Y?u c?u xu?t d? li?u ?? ???c g?i. B?n s? nh?n ???c file qua email trong v?ng 24h.');
        }

        function deactivateAccount() {
            if (confirm('B?n c? ch?c ch?n mu?n t?m kh?a t?i kho?n? B?n c? th? k?ch ho?t l?i b?t c? l?c n?o.')) {
                console.log('Account deactivated');
                alert('T?i kho?n ?? ???c t?m kh?a. B?n s? ???c chuy?n ??n trang ??ng nh?p.');
                // Redirect to login
            }
        }

        function deleteAccount() {
            const confirmation = prompt('?? x?c nh?n x?a t?i kho?n, vui l?ng nh?p "XOA TAI KHOAN":');
            if (confirmation === 'XOA TAI KHOAN') {
                if (confirm('?? C?NH B?O: H?nh ??ng n?y kh?ng th? ho?n t?c! T?t c? d? li?u s? b? x?a v?nh vi?n.')) {
                    console.log('Account deletion requested');
                    alert('Y?u c?u x?a t?i kho?n ?? ???c g?i. T?i kho?n s? b? x?a sau 7 ng?y.');
                }
            } else if (confirmation !== null) {
                alert('X?c nh?n kh?ng ??ng. Vui l?ng th? l?i.');
            }
        }

        function logout() {
            if (confirm('B?n c? ch?c ch?n mu?n ??ng xu?t?')) {
                console.log('User logged out');
                // Clear session/localStorage
                localStorage.removeItem('userSession');
                // Redirect to homepage
                window.location.href = '/';
            }
        }

        // Initialize page
        document.addEventListener('DOMContentLoaded', function() {
            // Update current time
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

            // Track page view
            console.log('Account management page viewed:', {
                user: 'hoangdvdinos',
                timestamp: '2025-08-14 18:30:32',
                userAgent: navigator.userAgent
            });

            // Auto-save form data
            const forms = document.querySelectorAll('form');
            forms.forEach(form => {
                const inputs = form.querySelectorAll('input, select, textarea');
                inputs.forEach(input => {
                    input.addEventListener('change', function() {
                        // Auto-save to localStorage
                        const formData = new FormData(form);
                        const data = Object.fromEntries(formData);
                        localStorage.setItem(`form_${form.id}`, JSON.stringify(data));
                    });
                });
            });

            // Load saved form data
            forms.forEach(form => {
                if (form.id) {
                    const savedData = localStorage.getItem(`form_${form.id}`);
                    if (savedData) {
                        try {
                            const data = JSON.parse(savedData);
                            Object.keys(data).forEach(key => {
                                const input = form.querySelector(`[name="${key}"]`);
                                if (input && input.type !== 'password') {
                                    input.value = data[key];
                                }
                            });
                        } catch (e) {
                            console.error('Error loading saved form data:', e);
                        }
                    }
                }
            });
        });

        // Close modal when clicking outside
        document.getElementById('addressModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closeAddressModal();
            }
        });

        // Keyboard shortcuts
        document.addEventListener('keydown', function(e) {
            // ESC to close modal
            if (e.key === 'Escape') {
                closeAddressModal();
            }
            
            // Ctrl/Cmd + S to save current form
            if ((e.ctrlKey || e.metaKey) && e.key === 's') {
                e.preventDefault();
                const activeTab = document.querySelector('.tab-content.active');
                const form = activeTab.querySelector('form');
                if (form) {
                    form.dispatchEvent(new Event('submit'));
                }
            }
        });

        // Real-time form validation
        function setupValidation() {
            const inputs = document.querySelectorAll('input[required], select[required]');
            inputs.forEach(input => {
                input.addEventListener('blur', function() {
                    if (!this.value.trim()) {
                        this.classList.add('border-[#DC3545]');
                        this.classList.remove('border-[#CED4DA]');
                    } else {
                        this.classList.remove('border-[#DC3545]');
                        this.classList.add('border-[#CED4DA]');
                    }
                });
            });
        }

        setupValidation();

        // Update time every minute
        setInterval(() => {
            const now = new Date();
            const timeString = now.toLocaleString('vi-VN', {
                day: '2-digit',
                month: '2-digit', 
                year: 'numeric',
                hour: '2-digit',
                minute: '2-digit'
            });
            
            const timeElements = document.querySelectorAll('.text-\\[\\#6C757D\\]');
            timeElements.forEach(el => {
                if (el.textContent.includes('/2025') && el.textContent.includes(':')) {
                    el.textContent = timeString;
                }
            });
        }, 60000);
    </script>
</body>
</html>

