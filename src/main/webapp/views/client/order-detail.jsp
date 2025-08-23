<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi ti?t ??n h?ng #ORD202508140001 - E-commerce</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', Arial, Helvetica, sans-serif; }
        .timeline-item.active .timeline-dot { background-color: #198754; }
        .timeline-item.active .timeline-line { background-color: #198754; }
        .timeline-item.current .timeline-dot { background-color: #0D6EFD; }
        .timeline-item.current .timeline-line { background-color: #0D6EFD; }
        .timeline-item.pending .timeline-dot { background-color: #E5E7EB; }
        .timeline-item.pending .timeline-line { background-color: #E5E7EB; }
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
                    <span class="text-[#6C757D]">14/08/2025 18:11</span>
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
                        <button class="flex items-center space-x-2 text-[#6C757D] hover:text-[#0D6EFD] transition-colors duration-200">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                            </svg>
                            <span class="hidden md:block text-sm">hoangdvdinos</span>
                        </button>
                        <!-- Dropdown Menu -->
                        <div class="absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg border border-gray-200 hidden group-hover:block z-50">
                            <a href="#" class="block px-4 py-2 text-sm text-[#212529] hover:bg-[#F8F9FA]">T?i kho?n c?a t?i</a>
                            <a href="/orders" class="block px-4 py-2 text-sm text-[#0D6EFD] bg-[#E7F3FF]">??n h?ng</a>
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
                <li><a href="/account" class="text-[#6C757D] hover:text-[#0D6EFD]">T?i kho?n</a></li>
                <li class="text-[#6C757D]">/</li>
                <li><a href="/orders" class="text-[#6C757D] hover:text-[#0D6EFD]">??n h?ng</a></li>
                <li class="text-[#6C757D]">/</li>
                <li class="text-[#212529] font-medium">#ORD202508140001</li>
            </ol>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto max-w-[1200px] px-4 py-6">
        <!-- Order Header -->
        <div class="bg-white rounded-lg shadow-sm p-6 mb-6">
            <div class="flex flex-col lg:flex-row items-start lg:items-center justify-between space-y-4 lg:space-y-0">
                <div>
                    <div class="flex items-center space-x-4 mb-2">
                        <h1 class="text-3xl font-bold text-[#212529]">??n h?ng #ORD202508140001</h1>
                        <span class="bg-[#198754] text-white px-3 py-1 rounded-full text-sm font-medium">
                            ? ?? giao h?ng
                        </span>
                    </div>
                    <div class="flex flex-wrap items-center gap-4 text-sm text-[#6C757D]">
                        <span>? ??t ng?y: 12/08/2025 14:30</span>
                        <span>? Giao ng?y: 14/08/2025 15:30</span>
                        <span>? T?ng ti?n: <span class="font-bold text-[#DC3545]">?42,370,000</span></span>
                    </div>
                </div>
                <div class="flex flex-wrap gap-3">
                    <button onclick="reorderItems()" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200">
                        Mua l?i
                    </button>
                    <button onclick="downloadInvoice()" class="bg-white border border-[#0D6EFD] text-[#0D6EFD] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#E7F3FF] transition-colors duration-200">
                        T?i h?a ??n
                    </button>
                    <button onclick="requestSupport()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                        H? tr?
                    </button>
                </div>
            </div>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
            <!-- Order Items & Timeline -->
            <div class="lg:col-span-2 space-y-6">
                <!-- Order Timeline -->
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <h2 class="text-xl font-bold text-[#212529] mb-6">? Tr?ng th?i ??n h?ng</h2>
                    
                    <div class="relative">
                        <!-- Timeline Line -->
                        <div class="absolute left-4 top-8 bottom-8 w-0.5 bg-gray-200"></div>
                        
                        <div class="space-y-6">
                            <!-- Delivered -->
                            <div class="timeline-item active flex items-start space-x-4">
                                <div class="timeline-dot w-8 h-8 bg-[#198754] rounded-full flex items-center justify-center relative z-10">
                                    <svg class="w-5 h-5 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                                    </svg>
                                </div>
                                <div class="flex-1 min-w-0">
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-lg font-bold text-[#198754]">?? giao h?ng th?nh c?ng</h3>
                                        <span class="text-sm text-[#6C757D]">14/08/2025 15:30</span>
                                    </div>
                                    <p class="text-sm text-[#6C757D] mt-1">??n h?ng ?? ???c giao ??n ??a ch? c?a b?n v? ?? k? nh?n th?nh c?ng</p>
                                    <div class="mt-2 p-3 bg-[#E8F5E8] rounded-lg">
                                        <div class="flex items-center space-x-2">
                                            <svg class="w-5 h-5 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                                <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                                            </svg>
                                            <span class="text-sm font-medium text-[#198754]">Ng??i nh?n: Ho?ng ?inh</span>
                                        </div>
                                        <div class="text-xs text-[#6C757D] mt-1">Shipper: Nguy?n V?n A ? S?T: 0901-234-567</div>
                                    </div>
                                </div>
                            </div>

                            <!-- Shipping -->
                            <div class="timeline-item active flex items-start space-x-4">
                                <div class="timeline-dot w-8 h-8 bg-[#198754] rounded-full flex items-center justify-center relative z-10">
                                    <svg class="w-5 h-5 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M8 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM15 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0z"/>
                                        <path d="M3 4a1 1 0 00-1 1v10a1 1 0 001 1h1.05a2.5 2.5 0 014.9 0H10a1 1 0 001-1V5a1 1 0 00-1-1H3zM14 7a1 1 0 00-1 1v6.05A2.5 2.5 0 0115.95 16H17a1 1 0 001-1v-5a1 1 0 00-.293-.707L16 7.586A1 1 0 0015.414 7H14z"/>
                                    </svg>
                                </div>
                                <div class="flex-1 min-w-0">
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-lg font-medium text-[#212529]">?ang giao h?ng</h3>
                                        <span class="text-sm text-[#6C757D]">14/08/2025 08:00</span>
                                    </div>
                                    <p class="text-sm text-[#6C757D] mt-1">Shipper ?ang tr?n ???ng giao h?ng ??n ??a ch? c?a b?n</p>
                                    <div class="text-xs text-[#17A2B8] mt-1">M? v?n ??n: SPX123456789</div>
                                </div>
                            </div>

                            <!-- Confirmed -->
                            <div class="timeline-item active flex items-start space-x-4">
                                <div class="timeline-dot w-8 h-8 bg-[#198754] rounded-full flex items-center justify-center relative z-10">
                                    <svg class="w-5 h-5 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                                    </svg>
                                </div>
                                <div class="flex-1 min-w-0">
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-lg font-medium text-[#212529]">?? x?c nh?n ??n h?ng</h3>
                                        <span class="text-sm text-[#6C757D]">13/08/2025 09:15</span>
                                    </div>
                                    <p class="text-sm text-[#6C757D] mt-1">??n h?ng ?? ???c x?c nh?n v? ?ang chu?n b? h?ng</p>
                                </div>
                            </div>

                            <!-- Order Placed -->
                            <div class="timeline-item active flex items-start space-x-4">
                                <div class="timeline-dot w-8 h-8 bg-[#198754] rounded-full flex items-center justify-center relative z-10">
                                    <svg class="w-5 h-5 text-white" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-8.293l-3-3a1 1 0 00-1.414 0l-3 3a1 1 0 001.414 1.414L9 9.414V13a1 1 0 102 0V9.414l1.293 1.293a1 1 0 001.414-1.414z"/>
                                    </svg>
                                </div>
                                <div class="flex-1 min-w-0">
                                    <div class="flex items-center justify-between">
                                        <h3 class="text-lg font-medium text-[#212529]">??t h?ng th?nh c?ng</h3>
                                        <span class="text-sm text-[#6C757D]">12/08/2025 14:30</span>
                                    </div>
                                    <p class="text-sm text-[#6C757D] mt-1">??n h?ng ?? ???c ??t th?nh c?ng v? ch? x?c nh?n</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Order Items -->
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <h2 class="text-xl font-bold text-[#212529] mb-6">? S?n ph?m ?? ??t</h2>
                    
                    <div class="space-y-4">
                        <!-- Item 1 -->
                        <div class="flex space-x-4 p-4 border border-gray-200 rounded-lg">
                            <div class="w-20 h-20 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <div class="flex items-start justify-between">
                                    <div class="flex-1">
                                        <h3 class="text-lg font-medium text-[#212529] mb-2">iPhone 15 Pro Max 256GB Titan T? nhi?n</h3>
                                        <div class="text-sm text-[#6C757D] space-y-1">
                                            <div>SKU: IPH15PM256TN</div>
                                            <div>Dung l??ng: 256GB ? M?u s?c: Titan T? nhi?n</div>
                                            <div class="flex items-center space-x-2">
                                                <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded text-xs">Ch?nh h?ng</span>
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">B?o h?nh 12 th?ng</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-right ml-4">
                                        <div class="text-sm text-[#6C757D] mb-1">S? l??ng: 1</div>
                                        <div class="text-lg font-bold text-[#0D6EFD]">?27,990,000</div>
                                        <div class="text-sm text-[#6C757D] line-through">?36,990,000</div>
                                    </div>
                                </div>
                                <div class="flex items-center space-x-3 mt-4">
                                    <button onclick="addToCart('IPH15PM256TN')" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200">
                                        Mua l?i
                                    </button>
                                    <button onclick="writeReview('IPH15PM256TN')" class="bg-white border border-[#FFC107] text-[#FFC107] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#FFF9E6] transition-colors duration-200">
                                        ??nh gi?
                                    </button>
                                    <button onclick="requestReturn('IPH15PM256TN')" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                                        ??i/Tr?
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- Item 2 -->
                        <div class="flex space-x-4 p-4 border border-gray-200 rounded-lg">
                            <div class="w-20 h-20 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <div class="flex items-start justify-between">
                                    <div class="flex-1">
                                        <h3 class="text-lg font-medium text-[#212529] mb-2">AirPods Pro 2nd Generation USB-C</h3>
                                        <div class="text-sm text-[#6C757D] space-y-1">
                                            <div>SKU: APP2USBC</div>
                                            <div>K?t n?i: USB-C ? M?u s?c: Tr?ng</div>
                                            <div class="flex items-center space-x-2">
                                                <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded text-xs">Ch?nh h?ng</span>
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">B?o h?nh 12 th?ng</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-right ml-4">
                                        <div class="text-sm text-[#6C757D] mb-1">S? l??ng: 1</div>
                                        <div class="text-lg font-bold text-[#0D6EFD]">?6,390,000</div>
                                        <div class="text-sm text-[#6C757D] line-through">?7,990,000</div>
                                    </div>
                                </div>
                                <div class="flex items-center space-x-3 mt-4">
                                    <button onclick="addToCart('APP2USBC')" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200">
                                        Mua l?i
                                    </button>
                                    <button onclick="writeReview('APP2USBC')" class="bg-white border border-[#FFC107] text-[#FFC107] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#FFF9E6] transition-colors duration-200">
                                        ??nh gi?
                                    </button>
                                    <button onclick="requestReturn('APP2USBC')" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                                        ??i/Tr?
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- Item 3 -->
                        <div class="flex space-x-4 p-4 border border-gray-200 rounded-lg">
                            <div class="w-20 h-20 bg-gray-200 rounded-lg flex-shrink-0"></div>
                            <div class="flex-1 min-w-0">
                                <div class="flex items-start justify-between">
                                    <div class="flex-1">
                                        <h3 class="text-lg font-medium text-[#212529] mb-2">Magic Keyboard cho iPad Pro 12.9 inch</h3>
                                        <div class="text-sm text-[#6C757D] space-y-1">
                                            <div>SKU: MKBDIPADPRO129</div>
                                            <div>K?ch th??c: 12.9 inch ? M?u s?c: ?en</div>
                                            <div class="flex items-center space-x-2">
                                                <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded text-xs">Ch?nh h?ng</span>
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">B?o h?nh 12 th?ng</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-right ml-4">
                                        <div class="text-sm text-[#6C757D] mb-1">S? l??ng: 1</div>
                                        <div class="text-lg font-bold text-[#0D6EFD]">?7,990,000</div>
                                        <div class="text-sm text-[#6C757D] line-through">?11,290,000</div>
                                    </div>
                                </div>
                                <div class="flex items-center space-x-3 mt-4">
                                    <button onclick="addToCart('MKBDIPADPRO129')" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200">
                                        Mua l?i
                                    </button>
                                    <button onclick="writeReview('MKBDIPADPRO129')" class="bg-white border border-[#FFC107] text-[#FFC107] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#FFF9E6] transition-colors duration-200">
                                        ??nh gi?
                                    </button>
                                    <button onclick="requestReturn('MKBDIPADPRO129')" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                                        ??i/Tr?
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Order Summary & Info -->
            <div class="lg:col-span-1 space-y-6">
                <!-- Order Summary -->
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <h3 class="text-lg font-bold text-[#212529] mb-4">? T?m t?t ??n h?ng</h3>
                    
                    <div class="space-y-3 text-sm">
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">T?m t?nh (3 s?n ph?m)</span>
                            <span class="font-medium text-[#212529]">?42,370,000</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">Gi?m gi? s?n ph?m</span>
                            <span class="font-medium text-[#198754]">-?14,500,000</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">Ph? v?n chuy?n</span>
                            <span class="font-medium text-[#198754]">Mi?n ph?</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">M? gi?m gi? (SAVE10)</span>
                            <span class="font-medium text-[#198754]">-?1,000,000</span>
                        </div>
                        <hr class="border-gray-200">
                        <div class="flex justify-between text-lg">
                            <span class="font-bold text-[#212529]">T?ng thanh to?n</span>
                            <span class="font-bold text-[#DC3545]">?42,370,000</span>
                        </div>
                    </div>
                </div>

                <!-- Delivery Information -->
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <h3 class="text-lg font-bold text-[#212529] mb-4">? Th?ng tin giao h?ng</h3>
                    
                    <div class="space-y-3 text-sm">
                        <div>
                            <span class="text-[#6C757D]">Ng??i nh?n:</span>
                            <span class="text-[#212529] font-medium ml-2">Ho?ng ?inh</span>
                        </div>
                        <div>
                            <span class="text-[#6C757D]">?i?n tho?i:</span>
                            <span class="text-[#212529] font-medium ml-2">(+84) 987-654-321</span>
                        </div>
                        <div>
                            <span class="text-[#6C757D]">??a ch?:</span>
                            <div class="text-[#212529] font-medium mt-1">
                                123 ???ng Nguy?n V?n C?,<br>
                                Ph??ng 4, Qu?n 5,<br>
                                TP. H? Ch? Minh
                            </div>
                        </div>
                        <div>
                            <span class="text-[#6C757D]">Ghi ch?:</span>
                            <span class="text-[#212529] ml-2">G?n si?u th? Co.opMart</span>
                        </div>
                        <div>
                            <span class="text-[#6C757D]">Ph??ng th?c:</span>
                            <span class="text-[#212529] font-medium ml-2">Giao h?ng ti?u chu?n</span>
                        </div>
                        <div>
                            <span class="text-[#6C757D]">Th?i gian giao:</span>
                            <span class="text-[#198754] font-medium ml-2">14/08/2025 15:30</span>
                        </div>
                    </div>
                </div>

                <!-- Payment Information -->
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <h3 class="text-lg font-bold text-[#212529] mb-4">? Th?ng tin thanh to?n</h3>
                    
                    <div class="space-y-3 text-sm">
                        <div>
                            <span class="text-[#6C757D]">Ph??ng th?c:</span>
                            <span class="text-[#212529] font-medium ml-2">Thanh to?n khi nh?n h?ng (COD)</span>
                        </div>
                        <div>
                            <span class="text-[#6C757D]">Tr?ng th?i:</span>
                            <span class="text-[#198754] font-medium ml-2">? ?? thanh to?n</span>
                        </div>
                        <div>
                            <span class="text-[#6C757D]">Ng?y thanh to?n:</span>
                            <span class="text-[#212529] font-medium ml-2">14/08/2025 15:30</span>
                        </div>
                        <div>
                            <span class="text-[#6C757D]">M? giao d?ch:</span>
                            <span class="text-[#212529] font-medium ml-2">TXN202508141530001</span>
                        </div>
                    </div>
                </div>

                <!-- Support Information -->
                <div class="bg-[#E7F3FF] rounded-lg p-6">
                    <h3 class="text-lg font-bold text-[#0D6EFD] mb-4">? C?n h? tr??</h3>
                    
                    <div class="space-y-3 text-sm">
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#0D6EFD]" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z"/>
                            </svg>
                            <span class="text-[#212529]">Hotline: 1900-1234 (24/7)</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#0D6EFD]" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"/>
                                <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"/>
                            </svg>
                            <span class="text-[#212529]">Email: support@ecommerce.vn</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#0D6EFD]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M18 10c0 3.866-3.582 7-8 7a8.841 8.841 0 01-4.083-.98L2 17l1.338-3.123C2.493 12.767 2 11.434 2 10c0-3.866 3.582-7 8-7s8 3.134 8 7zM7 9H5v2h2V9zm8 0h-2v2h2V9zM9 9h2v2H9V9z"/>
                            </svg>
                            <span class="text-[#212529]">Chat tr?c tuy?n</span>
                        </div>
                    </div>
                    
                    <div class="mt-4 space-y-2">
                        <button onclick="contactSupport()" class="w-full bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200">
                            Li?n h? h? tr?
                        </button>
                        <button onclick="openChat()" class="w-full bg-white border border-[#0D6EFD] text-[#0D6EFD] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#E7F3FF] transition-colors duration-200">
                            Chat tr?c tuy?n
                        </button>
                    </div>
                </div>

                <!-- Related Orders -->
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <h3 class="text-lg font-bold text-[#212529] mb-4">? ??n h?ng li?n quan</h3>
                    
                    <div class="space-y-3">
                        <a href="/orders/ORD202508130002" class="block p-3 border border-gray-200 rounded-lg hover:border-[#0D6EFD] transition-colors duration-200">
                            <div class="flex items-center justify-between">
                                <div>
                                    <div class="text-sm font-medium text-[#212529]">#ORD202508130002</div>
                                    <div class="text-xs text-[#6C757D]">13/08/2025 ? 2 s?n ph?m</div>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-bold text-[#0D6EFD]">?27,710,000</div>
                                    <div class="text-xs text-[#17A2B8]">?ang giao</div>
                                </div>
                            </div>
                        </a>
                        
                        <a href="/orders/ORD202508100003" class="block p-3 border border-gray-200 rounded-lg hover:border-[#0D6EFD] transition-colors duration-200">
                            <div class="flex items-center justify-between">
                                <div>
                                    <div class="text-sm font-medium text-[#212529]">#ORD202508100003</div>
                                    <div class="text-xs text-[#6C757D]">10/08/2025 ? 1 s?n ph?m</div>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-bold text-[#0D6EFD]">?18,990,000</div>
                                    <div class="text-xs text-[#198754]">?? giao</div>
                                </div>
                            </div>
                        </a>
                    </div>
                    
                    <div class="mt-4">
                        <a href="/orders" class="text-sm text-[#0D6EFD] hover:underline">Xem t?t c? ??n h?ng Å®</a>
                    </div>
                </div>
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
        const orderData = {
            id: 'ORD202508140001',
            status: 'delivered',
            orderDate: '12/08/2025 14:30',
            deliveryDate: '14/08/2025 15:30',
            total: 42370000,
            items: [
                { id: 'IPH15PM256TN', name: 'iPhone 15 Pro Max 256GB', price: 27990000, quantity: 1 },
                { id: 'APP2USBC', name: 'AirPods Pro 2nd Generation', price: 6390000, quantity: 1 },
                { id: 'MKBDIPADPRO129', name: 'Magic Keyboard', price: 7990000, quantity: 1 }
            ]
        };

        // Reorder all items
        function reorderItems() {
            console.log('Reordering all items from order:', orderData.id);
            
            // Add all items to cart
            orderData.items.forEach(item => {
                console.log('Adding to cart:', item);
            });
            
            alert(`?? th?m t?t c? ${orderData.items.length} s?n ph?m v?o gi? h?ng!`);
            
            // Update cart count
            const cartCount = document.querySelector('.relative.cursor-pointer:last-child span');
            if (cartCount) {
                cartCount.textContent = orderData.items.length;
            }
        }

        // Download invoice
        function downloadInvoice() {
            console.log('Downloading invoice for order:', orderData.id);
            
            // Simulate invoice download
            const link = document.createElement('a');
            link.href = `data:text/plain;charset=utf-8,H?a ??n ??n h?ng ${orderData.id}\nT?ng ti?n: ?${orderData.total.toLocaleString('vi-VN')}`;
            link.download = `invoice-${orderData.id}.txt`;
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
            
            alert('?ang t?i h?a ??n...');
        }

        // Request support
        function requestSupport() {
            console.log('Requesting support for order:', orderData.id);
            alert(`M? ticket h? tr? cho ??n h?ng ${orderData.id}...`);
        }

        // Add individual item to cart
        function addToCart(itemId) {
            const item = orderData.items.find(i => i.id === itemId);
            if (item) {
                console.log('Adding item to cart:', item);
                alert(`?? th?m "${item.name}" v?o gi? h?ng!`);
                
                // Update cart count
                const cartCount = document.querySelector('.relative.cursor-pointer:last-child span');
                if (cartCount) {
                    const currentCount = parseInt(cartCount.textContent);
                    cartCount.textContent = currentCount + 1;
                }
            }
        }

        // Write review
        function writeReview(itemId) {
            const item = orderData.items.find(i => i.id === itemId);
            if (item) {
                console.log('Writing review for item:', item);
                alert(`Chuy?n ??n trang ??nh gi? cho "${item.name}"...`);
                // window.location.href = `/review/product/${itemId}?order=${orderData.id}`;
            }
        }

        // Request return
        function requestReturn(itemId) {
            const item = orderData.items.find(i => i.id === itemId);
            if (item) {
                console.log('Requesting return for item:', item);
                
                if (confirm(`B?n c? mu?n y?u c?u ??i/tr? "${item.name}"?`)) {
                    alert(`?? g?i y?u c?u ??i/tr? cho "${item.name}". Ch?ng t?i s? li?n h? v?i b?n trong 24h.`);
                }
            }
        }

        // Contact support
        function contactSupport() {
            console.log('Contacting support for order:', orderData.id);
            alert('Chuy?n ??n trang li?n h? h? tr?...');
        }

        // Open chat
        function openChat() {
            console.log('Opening chat for order:', orderData.id);
            alert('M? c?a s? chat tr?c tuy?n...');
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
            console.log('Order detail page viewed:', {
                orderId: orderData.id,
                user: 'hoangdvdinos',
                orderValue: orderData.total,
                timestamp: '2025-08-14 18:11:49'
            });
            
            // Auto-refresh order status (if needed)
            if (orderData.status === 'shipping') {
                setInterval(() => {
                    // Check for order status updates
                    console.log('Checking order status updates...');
                }, 30000); // Every 30 seconds
            }
        });

        // Handle URL parameters for specific actions
        const urlParams = new URLSearchParams(window.location.search);
        const action = urlParams.get('action');

        if (action === 'review') {
            const itemId = urlParams.get('item');
            if (itemId) {
                setTimeout(() => writeReview(itemId), 1000);
            }
        } else if (action === 'reorder') {
            setTimeout(() => reorderItems(), 1000);
        } else if (action === 'support') {
            setTimeout(() => requestSupport(), 1000);
        }

        // Print functionality
        function printOrder() {
            window.print();
        }

        // Share order
        function shareOrder() {
            if (navigator.share) {
                navigator.share({
                    title: `??n h?ng ${orderData.id}`,
                    text: `Xem chi ti?t ??n h?ng c?a t?i`,
                    url: window.location.href
                });
            } else {
                // Fallback copy to clipboard
                navigator.clipboard.writeText(window.location.href);
                alert('?? copy link ??n h?ng!');
            }
        }

        // Add keyboard shortcuts
        document.addEventListener('keydown', function(e) {
            // Ctrl/Cmd + P to print
            if ((e.ctrlKey || e.metaKey) && e.key === 'p') {
                e.preventDefault();
                printOrder();
            }
            
            // Ctrl/Cmd + R to reorder
            if ((e.ctrlKey || e.metaKey) && e.key === 'r') {
                e.preventDefault();
                reorderItems();
            }
        });

        // Auto-update timestamp
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