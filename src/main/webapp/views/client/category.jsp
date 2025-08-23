<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>?i?n t? - E-commerce</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', Arial, Helvetica, sans-serif; }
        .price-range-slider { appearance: none; background: transparent; cursor: pointer; }
        .price-range-slider::-webkit-slider-track { background: #E5E7EB; height: 4px; border-radius: 2px; }
        .price-range-slider::-webkit-slider-thumb { appearance: none; background: #0D6EFD; height: 20px; width: 20px; border-radius: 50%; }
        .price-range-slider::-moz-range-track { background: #E5E7EB; height: 4px; border-radius: 2px; border: none; }
        .price-range-slider::-moz-range-thumb { background: #0D6EFD; height: 20px; width: 20px; border-radius: 50%; border: none; }
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
                    <span class="text-[#6C757D]">14/08/2025 17:39</span>
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
                        <input type="text" id="searchInput" placeholder="T?m ki?m trong ?i?n t?..." class="w-full h-10 px-4 pr-12 border border-[#CED4DA] rounded-l-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200">
                        <button onclick="performSearch()" class="absolute right-0 top-0 h-10 px-4 bg-[#0D6EFD] text-white rounded-r-md hover:bg-[#084298] transition-colors duration-200">
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
                            <a href="#" class="block px-4 py-2 text-sm text-[#212529] hover:bg-[#F8F9FA]">??n h?ng</a>
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
                        <span class="absolute top-0 right-0 bg-[#0D6EFD] text-white rounded-full text-xs w-5 h-5 flex items-center justify-center transform translate-x-2 -translate-y-2">2</span>
                    </div>
                    
                    <!-- Mobile Menu Button -->
                    <button id="mobileMenuBtn" class="md:hidden text-[#6C757D] hover:text-[#0D6EFD]">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                        </svg>
                    </button>
                </div>
            </div>

            <!-- Mobile Search -->
            <div class="md:hidden pb-3">
                <div class="relative">
                    <input type="text" placeholder="T?m ki?m trong ?i?n t?..." class="w-full h-10 px-4 pr-12 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
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
                <li class="text-[#212529] font-medium">?i?n t?</li>
            </ol>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto max-w-[1200px] px-4 py-6">
        <div class="grid grid-cols-1 lg:grid-cols-4 gap-6">
            <!-- Sidebar Filters -->
            <aside class="lg:col-span-1">
                <div class="bg-white rounded-lg shadow-sm p-4 sticky top-24">
                    <div class="flex items-center justify-between mb-4">
                        <h2 class="text-lg font-bold text-[#212529]">B? l?c</h2>
                        <button onclick="clearAllFilters()" class="text-sm text-[#0D6EFD] hover:underline">X?a t?t c?</button>
                    </div>

                    <!-- Categories -->
                    <div class="mb-6">
                        <h3 class="font-medium text-[#212529] mb-3">Danh m?c con</h3>
                        <div class="space-y-2">
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="category" data-value="smartphone" checked class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">?i?n tho?i (1,234)</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="category" data-value="laptop" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Laptop (567)</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="category" data-value="tablet" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Tablet (234)</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="category" data-value="headphone" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Tai nghe (456)</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="category" data-value="accessory" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Ph? ki?n (789)</span>
                            </label>
                        </div>
                    </div>

                    <!-- Price Range -->
                    <div class="mb-6">
                        <h3 class="font-medium text-[#212529] mb-3">Kho?ng gi?</h3>
                        <div class="space-y-4">
                            <div class="flex items-center space-x-2">
                                <input type="number" id="minPrice" placeholder="T?" class="w-full h-8 px-2 text-sm border border-[#CED4DA] rounded focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <span class="text-[#6C757D]">-</span>
                                <input type="number" id="maxPrice" placeholder="??n" class="w-full h-8 px-2 text-sm border border-[#CED4DA] rounded focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            </div>
                            <div class="relative">
                                <input type="range" id="priceRangeMin" min="0" max="100000000" value="0" class="price-range-slider w-full">
                                <input type="range" id="priceRangeMax" min="0" max="100000000" value="100000000" class="price-range-slider w-full absolute top-0">
                            </div>
                            <div class="flex justify-between text-xs text-[#6C757D]">
                                <span>0?</span>
                                <span>100M?</span>
                            </div>
                            <div class="space-y-2">
                                <label class="flex items-center space-x-2 cursor-pointer">
                                    <input type="radio" name="priceRange" value="under-5m" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">D??i 5 tri?u</span>
                                </label>
                                <label class="flex items-center space-x-2 cursor-pointer">
                                    <input type="radio" name="priceRange" value="5m-15m" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">5 - 15 tri?u</span>
                                </label>
                                <label class="flex items-center space-x-2 cursor-pointer">
                                    <input type="radio" name="priceRange" value="15m-30m" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">15 - 30 tri?u</span>
                                </label>
                                <label class="flex items-center space-x-2 cursor-pointer">
                                    <input type="radio" name="priceRange" value="over-30m" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <span class="text-sm text-[#212529]">Tr?n 30 tri?u</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <!-- Brand -->
                    <div class="mb-6">
                        <h3 class="font-medium text-[#212529] mb-3">Th??ng hi?u</h3>
                        <div class="space-y-2 max-h-40 overflow-y-auto">
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="brand" data-value="apple" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Apple (456)</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="brand" data-value="samsung" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Samsung (234)</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="brand" data-value="sony" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Sony (123)</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="brand" data-value="dell" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Dell (89)</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="brand" data-value="hp" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">HP (67)</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="brand" data-value="xiaomi" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Xiaomi (345)</span>
                            </label>
                        </div>
                    </div>

                    <!-- Rating -->
                    <div class="mb-6">
                        <h3 class="font-medium text-[#212529] mb-3">??nh gi?</h3>
                        <div class="space-y-2">
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="rating" data-value="5" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <div class="flex items-center space-x-1">
                                    <div class="flex text-yellow-400 text-sm">?????</div>
                                    <span class="text-sm text-[#6C757D]">(234)</span>
                                </div>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="rating" data-value="4" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <div class="flex items-center space-x-1">
                                    <div class="flex text-yellow-400 text-sm">?????</div>
                                    <span class="text-sm text-[#6C757D]">t? 4 sao (567)</span>
                                </div>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="rating" data-value="3" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <div class="flex items-center space-x-1">
                                    <div class="flex text-yellow-400 text-sm">?????</div>
                                    <span class="text-sm text-[#6C757D]">t? 3 sao (890)</span>
                                </div>
                            </label>
                        </div>
                    </div>

                    <!-- Special Features -->
                    <div class="mb-6">
                        <h3 class="font-medium text-[#212529] mb-3">T?nh n?ng</h3>
                        <div class="space-y-2">
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="feature" data-value="discount" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">?ang gi?m gi?</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="feature" data-value="freeship" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Mi?n ph? v?n chuy?n</span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="checkbox" class="filter-checkbox" data-filter="feature" data-value="installment" class="text-[#0D6EFD] rounded focus:ring-[#0D6EFD]">
                                <span class="text-sm text-[#212529]">Tr? g?p 0%</span>
                            </label>
                        </div>
                    </div>

                    <!-- Apply Filters Button -->
                    <button onclick="applyFilters()" class="w-full bg-[#0D6EFD] text-white rounded-md px-4 py-2 font-medium hover:bg-[#084298] transition-colors duration-200">
                        ?p d?ng l?c
                    </button>
                </div>
            </aside>

            <!-- Product Listing -->
            <main class="lg:col-span-3">
                <!-- Category Header -->
                <div class="bg-white rounded-lg shadow-sm p-6 mb-6">
                    <div class="flex items-center justify-between mb-4">
                        <div>
                            <h1 class="text-3xl font-bold text-[#212529] mb-2">? ?i?n t?</h1>
                            <p class="text-[#6C757D]">Kh?m ph? h?ng ngh?n s?n ph?m ?i?n t? ch?nh h?ng v?i gi? t?t nh?t</p>
                        </div>
                        <div class="text-right">
                            <div class="text-2xl font-bold text-[#0D6EFD]">3,280</div>
                            <div class="text-sm text-[#6C757D]">s?n ph?m</div>
                        </div>
                    </div>
                    
                    <!-- Quick Filter Tags -->
                    <div class="flex flex-wrap gap-2" id="activeFilters">
                        <span class="bg-[#0D6EFD] text-white px-3 py-1 rounded-full text-sm">
                            ?i?n tho?i
                            <button onclick="removeFilter('category', 'smartphone')" class="ml-1 text-white hover:text-gray-200">Å~</button>
                        </span>
                    </div>
                </div>

                <!-- Sort and View Options -->
                <div class="bg-white rounded-lg shadow-sm p-4 mb-6">
                    <div class="flex flex-col md:flex-row items-center justify-between space-y-4 md:space-y-0">
                        <div class="flex items-center space-x-4">
                            <span class="text-sm text-[#6C757D]">S?p x?p theo:</span>
                            <select id="sortSelect" class="text-sm border border-[#CED4DA] rounded px-3 py-1 focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                <option value="popularity">Ph? bi?n</option>
                                <option value="newest">M?i nh?t</option>
                                <option value="price-asc">Gi? th?p ??n cao</option>
                                <option value="price-desc">Gi? cao ??n th?p</option>
                                <option value="rating">??nh gi? cao</option>
                                <option value="bestseller">B?n ch?y</option>
                            </select>
                        </div>
                        
                        <div class="flex items-center space-x-4">
                            <span class="text-sm text-[#6C757D]">Hi?n th?:</span>
                            <div class="flex space-x-2">
                                <button id="gridView2" onclick="setGridView(2)" class="p-2 border border-[#CED4DA] rounded hover:bg-[#F8F9FA] transition-colors duration-200">
                                    <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                                        <rect x="3" y="3" width="7" height="7"/>
                                        <rect x="14" y="3" width="7" height="7"/>
                                        <rect x="3" y="14" width="7" height="7"/>
                                        <rect x="14" y="14" width="7" height="7"/>
                                    </svg>
                                </button>
                                <button id="gridView3" onclick="setGridView(3)" class="p-2 border border-[#CED4DA] rounded bg-[#0D6EFD] text-white">
                                    <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                                        <rect x="2" y="2" width="6" height="6"/>
                                        <rect x="9" y="2" width="6" height="6"/>
                                        <rect x="16" y="2" width="6" height="6"/>
                                        <rect x="2" y="9" width="6" height="6"/>
                                        <rect x="9" y="9" width="6" height="6"/>
                                        <rect x="16" y="9" width="6" height="6"/>
                                    </svg>
                                </button>
                                <button id="listView" onclick="setGridView('list')" class="p-2 border border-[#CED4DA] rounded hover:bg-[#F8F9FA] transition-colors duration-200">
                                    <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                                        <rect x="3" y="6" width="18" height="2"/>
                                        <rect x="3" y="12" width="18" height="2"/>
                                        <rect x="3" y="18" width="18" height="2"/>
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Products Grid -->
                <div id="productsGrid" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <!-- Product 1 -->
                    <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                        <div class="relative mb-4">
                            <div class="w-full h-48 bg-gray-200 rounded-lg mb-3"></div>
                            <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-25%</span>
                            <span class="absolute top-2 right-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">Freeship</span>
                            <button class="absolute bottom-2 right-2 p-2 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                                <svg class="w-5 h-5 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="space-y-2">
                            <h3 class="text-sm font-medium text-[#212529] line-clamp-2 hover:text-[#0D6EFD]">iPhone 15 Pro Max 256GB Titan T? nhi?n - Ch?nh h?ng VN/A</h3>
                            <div class="flex items-center space-x-1">
                                <div class="flex text-yellow-400 text-xs">?????</div>
                                <span class="text-xs text-[#6C757D]">(4.8)</span>
                                <span class="text-xs text-[#6C757D]">?</span>
                                <span class="text-xs text-[#6C757D]">?? b?n 1,234</span>
                            </div>
                            <div class="space-y-1">
                                <div class="flex items-center space-x-2">
                                    <span class="text-[#0D6EFD] font-bold text-lg">?27,990,000</span>
                                    <span class="text-[#6C757D] line-through text-sm">?36,990,000</span>
                                </div>
                                <div class="text-xs text-[#198754]">Tr? g?p 0% ? Freeship ? B?o h?nh 12 th?ng</div>
                            </div>
                            <div class="pt-2">
                                <button class="w-full bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 opacity-0 group-hover:opacity-100">
                                    Th?m v?o gi?
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Product 2 -->
                    <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                        <div class="relative mb-4">
                            <div class="w-full h-48 bg-gray-200 rounded-lg mb-3"></div>
                            <span class="absolute top-2 left-2 bg-[#FFC107] text-white px-2 py-1 rounded text-xs font-bold">Hot</span>
                            <button class="absolute bottom-2 right-2 p-2 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                                <svg class="w-5 h-5 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="space-y-2">
                            <h3 class="text-sm font-medium text-[#212529] line-clamp-2 hover:text-[#0D6EFD]">Samsung Galaxy S24 Ultra 512GB - Ch?nh h?ng Samsung Vi?t Nam</h3>
                            <div class="flex items-center space-x-1">
                                <div class="flex text-yellow-400 text-xs">?????</div>
                                <span class="text-xs text-[#6C757D]">(4.7)</span>
                                <span class="text-xs text-[#6C757D]">?</span>
                                <span class="text-xs text-[#6C757D]">?? b?n 987</span>
                            </div>
                            <div class="space-y-1">
                                <div class="flex items-center space-x-2">
                                    <span class="text-[#0D6EFD] font-bold text-lg">?33,990,000</span>
                                </div>
                                <div class="text-xs text-[#198754]">Tr? g?p 0% ? Freeship ? B?o h?nh 12 th?ng</div>
                            </div>
                            <div class="pt-2">
                                <button class="w-full bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 opacity-0 group-hover:opacity-100">
                                    Th?m v?o gi?
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Product 3 -->
                    <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                        <div class="relative mb-4">
                            <div class="w-full h-48 bg-gray-200 rounded-lg mb-3"></div>
                            <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-15%</span>
                            <button class="absolute bottom-2 right-2 p-2 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                                <svg class="w-5 h-5 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="space-y-2">
                            <h3 class="text-sm font-medium text-[#212529] line-clamp-2 hover:text-[#0D6EFD]">MacBook Air M3 13 inch 256GB - Ch?nh h?ng Apple Vi?t Nam</h3>
                            <div class="flex items-center space-x-1">
                                <div class="flex text-yellow-400 text-xs">?????</div>
                                <span class="text-xs text-[#6C757D]">(4.3)</span>
                                <span class="text-xs text-[#6C757D]">?</span>
                                <span class="text-xs text-[#6C757D]">?? b?n 543</span>
                            </div>
                            <div class="space-y-1">
                                <div class="flex items-center space-x-2">
                                    <span class="text-[#0D6EFD] font-bold text-lg">?25,490,000</span>
                                    <span class="text-[#6C757D] line-through text-sm">?29,990,000</span>
                                </div>
                                <div class="text-xs text-[#198754]">Tr? g?p 0% ? Freeship ? B?o h?nh 12 th?ng</div>
                            </div>
                            <div class="pt-2">
                                <button class="w-full bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 opacity-0 group-hover:opacity-100">
                                    Th?m v?o gi?
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Product 4 -->
                    <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                        <div class="relative mb-4">
                            <div class="w-full h-48 bg-gray-200 rounded-lg mb-3"></div>
                            <span class="absolute top-2 left-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">New</span>
                            <button class="absolute bottom-2 right-2 p-2 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                                <svg class="w-5 h-5 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="space-y-2">
                            <h3 class="text-sm font-medium text-[#212529] line-clamp-2 hover:text-[#0D6EFD]">iPad Pro 12.9 inch M2 256GB WiFi + Cellular - Ch?nh h?ng Apple</h3>
                            <div class="flex items-center space-x-1">
                                <div class="flex text-yellow-400 text-xs">?????</div>
                                <span class="text-xs text-[#6C757D]">(4.9)</span>
                                <span class="text-xs text-[#6C757D]">?</span>
                                <span class="text-xs text-[#6C757D]">?? b?n 321</span>
                            </div>
                            <div class="space-y-1">
                                <div class="flex items-center space-x-2">
                                    <span class="text-[#0D6EFD] font-bold text-lg">?31,990,000</span>
                                </div>
                                <div class="text-xs text-[#198754]">Tr? g?p 0% ? Freeship ? B?o h?nh 12 th?ng</div>
                            </div>
                            <div class="pt-2">
                                <button class="w-full bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 opacity-0 group-hover:opacity-100">
                                    Th?m v?o gi?
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Product 5 -->
                    <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                        <div class="relative mb-4">
                            <div class="w-full h-48 bg-gray-200 rounded-lg mb-3"></div>
                            <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-20%</span>
                            <button class="absolute bottom-2 right-2 p-2 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                                <svg class="w-5 h-5 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="space-y-2">
                            <h3 class="text-sm font-medium text-[#212529] line-clamp-2 hover:text-[#0D6EFD]">AirPods Pro 2nd Generation USB-C - Ch?nh h?ng Apple Vi?t Nam</h3>
                            <div class="flex items-center space-x-1">
                                <div class="flex text-yellow-400 text-xs">?????</div>
                                <span class="text-xs text-[#6C757D]">(4.8)</span>
                                <span class="text-xs text-[#6C757D]">?</span>
                                <span class="text-xs text-[#6C757D]">?? b?n 2,156</span>
                            </div>
                            <div class="space-y-1">
                                <div class="flex items-center space-x-2">
                                    <span class="text-[#0D6EFD] font-bold text-lg">?6,390,000</span>
                                    <span class="text-[#6C757D] line-through text-sm">?7,990,000</span>
                                </div>
                                <div class="text-xs text-[#198754]">Tr? g?p 0% ? Freeship ? B?o h?nh 12 th?ng</div>
                            </div>
                            <div class="pt-2">
                                <button class="w-full bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 opacity-0 group-hover:opacity-100">
                                    Th?m v?o gi?
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Product 6 -->
                    <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                        <div class="relative mb-4">
                            <div class="w-full h-48 bg-gray-200 rounded-lg mb-3"></div>
                            <span class="absolute top-2 left-2 bg-[#FFC107] text-white px-2 py-1 rounded text-xs font-bold">Bestseller</span>
                            <button class="absolute bottom-2 right-2 p-2 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                                <svg class="w-5 h-5 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="space-y-2">
                            <h3 class="text-sm font-medium text-[#212529] line-clamp-2 hover:text-[#0D6EFD]">Apple Watch Series 9 45mm GPS + Cellular - Ch?nh h?ng Apple VN</h3>
                            <div class="flex items-center space-x-1">
                                <div class="flex text-yellow-400 text-xs">?????</div>
                                <span class="text-xs text-[#6C757D]">(4.5)</span>
                                <span class="text-xs text-[#6C757D]">?</span>
                                <span class="text-xs text-[#6C757D]">?? b?n 876</span>
                            </div>
                            <div class="space-y-1">
                                <div class="flex items-center space-x-2">
                                    <span class="text-[#0D6EFD] font-bold text-lg">?12,290,000</span>
                                </div>
                                <div class="text-xs text-[#198754]">Tr? g?p 0% ? Freeship ? B?o h?nh 12 th?ng</div>
                            </div>
                            <div class="pt-2">
                                <button class="w-full bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 opacity-0 group-hover:opacity-100">
                                    Th?m v?o gi?
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pagination -->
                <div class="mt-8 flex items-center justify-center">
                    <nav class="flex space-x-2">
                        <button class="px-3 py-2 text-sm border border-[#CED4DA] text-[#6C757D] rounded-md hover:bg-[#F8F9FA] disabled:opacity-50" disabled>
                            Tr??c
                        </button>
                        <button class="px-3 py-2 text-sm bg-[#0D6EFD] text-white rounded-md">1</button>
                        <button class="px-3 py-2 text-sm border border-[#CED4DA] text-[#6C757D] rounded-md hover:bg-[#F8F9FA]">2</button>
                        <button class="px-3 py-2 text-sm border border-[#CED4DA] text-[#6C757D] rounded-md hover:bg-[#F8F9FA]">3</button>
                        <span class="px-3 py-2 text-sm text-[#6C757D]">...</span>
                        <button class="px-3 py-2 text-sm border border-[#CED4DA] text-[#6C757D] rounded-md hover:bg-[#F8F9FA]">109</button>
                        <button class="px-3 py-2 text-sm border border-[#CED4DA] text-[#6C757D] rounded-md hover:bg-[#F8F9FA]">
                            Ti?p
                        </button>
                    </nav>
                </div>
            </main>
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
        let currentFilters = {
            category: ['smartphone'],
            brand: [],
            rating: [],
            feature: [],
            priceRange: null,
            sort: 'popularity',
            view: 3
        };

        // Search functionality
        function performSearch() {
            const query = document.getElementById('searchInput').value.trim();
            if (query) {
                console.log('Searching for:', query);
                // In real app: window.location.href = `/search?q=${encodeURIComponent(query)}&category=electronics`;
                alert(`T?m ki?m "${query}" trong danh m?c ?i?n t?`);
            }
        }

        // Filter functions
        function applyFilters() {
            console.log('Applying filters:', currentFilters);
            // Simulate API call and update products
            updateProductCount();
            alert('?? ?p d?ng b? l?c');
        }

        function clearAllFilters() {
            currentFilters = {
                category: [],
                brand: [],
                rating: [],
                feature: [],
                priceRange: null,
                sort: 'popularity',
                view: 3
            };
            
            // Clear all checkboxes
            document.querySelectorAll('.filter-checkbox').forEach(cb => cb.checked = false);
            document.querySelectorAll('input[name="priceRange"]').forEach(rb => rb.checked = false);
            document.getElementById('minPrice').value = '';
            document.getElementById('maxPrice').value = '';
            
            updateActiveFilters();
            updateProductCount();
        }

        function removeFilter(type, value) {
            if (currentFilters[type]) {
                const index = currentFilters[type].indexOf(value);
                if (index > -1) {
                    currentFilters[type].splice(index, 1);
                }
            }
            
            // Update corresponding checkbox
            const checkbox = document.querySelector(`[data-filter="${type}"][data-value="${value}"]`);
            if (checkbox) checkbox.checked = false;
            
            updateActiveFilters();
            updateProductCount();
        }

        function updateActiveFilters() {
            const container = document.getElementById('activeFilters');
            container.innerHTML = '';
            
            // Add category filters
            currentFilters.category.forEach(cat => {
                const tag = createFilterTag(getCategoryName(cat), 'category', cat);
                container.appendChild(tag);
            });
            
            // Add brand filters
            currentFilters.brand.forEach(brand => {
                const tag = createFilterTag(getBrandName(brand), 'brand', brand);
                container.appendChild(tag);
            });
            
            // Add other filters...
        }

        function createFilterTag(label, type, value) {
            const span = document.createElement('span');
            span.className = 'bg-[#0D6EFD] text-white px-3 py-1 rounded-full text-sm';
            span.innerHTML = `
                ${label}
                <button onclick="removeFilter('${type}', '${value}')" class="ml-1 text-white hover:text-gray-200">Å~</button>
            `;
            return span;
        }

        function getCategoryName(value) {
            const names = {
                'smartphone': '?i?n tho?i',
                'laptop': 'Laptop',
                'tablet': 'Tablet',
                'headphone': 'Tai nghe',
                'accessory': 'Ph? ki?n'
            };
            return names[value] || value;
        }

        function getBrandName(value) {
            const names = {
                'apple': 'Apple',
                'samsung': 'Samsung',
                'sony': 'Sony',
                'dell': 'Dell',
                'hp': 'HP',
                'xiaomi': 'Xiaomi'
            };
            return names[value] || value;
        }

        // View functions
        function setGridView(cols) {
            currentFilters.view = cols;
            const grid = document.getElementById('productsGrid');
            
            // Update grid classes
            grid.className = 'grid gap-6';
            
            if (cols === 'list') {
                grid.className += ' grid-cols-1';
                // Update view buttons
                document.getElementById('listView').className = 'p-2 border border-[#CED4DA] rounded bg-[#0D6EFD] text-white';
                document.getElementById('gridView2').className = 'p-2 border border-[#CED4DA] rounded hover:bg-[#F8F9FA] transition-colors duration-200';
                document.getElementById('gridView3').className = 'p-2 border border-[#CED4DA] rounded hover:bg-[#F8F9FA] transition-colors duration-200';
            } else if (cols === 2) {
                grid.className += ' grid-cols-1 md:grid-cols-2';
                document.getElementById('gridView2').className = 'p-2 border border-[#CED4DA] rounded bg-[#0D6EFD] text-white';
                document.getElementById('gridView3').className = 'p-2 border border-[#CED4DA] rounded hover:bg-[#F8F9FA] transition-colors duration-200';
                document.getElementById('listView').className = 'p-2 border border-[#CED4DA] rounded hover:bg-[#F8F9FA] transition-colors duration-200';
            } else {
                grid.className += ' grid-cols-1 md:grid-cols-2 lg:grid-cols-3';
                document.getElementById('gridView3').className = 'p-2 border border-[#CED4DA] rounded bg-[#0D6EFD] text-white';
                document.getElementById('gridView2').className = 'p-2 border border-[#CED4DA] rounded hover:bg-[#F8F9FA] transition-colors duration-200';
                document.getElementById('listView').className = 'p-2 border border-[#CED4DA] rounded hover:bg-[#F8F9FA] transition-colors duration-200';
            }
        }

        function updateProductCount() {
            // Simulate filtering and update count
            const baseCount = 3280;
            const filteredCount = Math.max(100, baseCount - (currentFilters.category.length * 200) - (currentFilters.brand.length * 150));
            
            document.querySelector('.text-2xl.font-bold.text-\\[\\#0D6EFD\\]').textContent = filteredCount.toLocaleString();
        }

        // Event listeners
        document.addEventListener('DOMContentLoaded', function() {
            // Filter checkboxes
            document.querySelectorAll('.filter-checkbox').forEach(checkbox => {
                checkbox.addEventListener('change', function() {
                    const filter = this.dataset.filter;
                    const value = this.dataset.value;
                    
                    if (this.checked) {
                        if (!currentFilters[filter].includes(value)) {
                            current}
                                                    if (!currentFilters[filter].includes(value)) {
                            currentFilters[filter].push(value);
                        }
                    } else {
                        const index = currentFilters[filter].indexOf(value);
                        if (index > -1) {
                            currentFilters[filter].splice(index, 1);
                        }
                    }
                    
                    updateActiveFilters();
                });
            });

            // Sort select
            document.getElementById('sortSelect').addEventListener('change', function() {
                currentFilters.sort = this.value;
                console.log('Sort changed to:', this.value);
                // Simulate resort
                alert(`?? s?p x?p theo: ${this.options[this.selectedIndex].text}`);
            });

            // Price range inputs
            document.getElementById('minPrice').addEventListener('input', function() {
                updatePriceRange();
            });

            document.getElementById('maxPrice').addEventListener('input', function() {
                updatePriceRange();
            });

            // Price range radio buttons
            document.querySelectorAll('input[name="priceRange"]').forEach(radio => {
                radio.addEventListener('change', function() {
                    if (this.checked) {
                        currentFilters.priceRange = this.value;
                        setPresetPriceRange(this.value);
                    }
                });
            });

            // Search on Enter
            document.getElementById('searchInput').addEventListener('keypress', function(e) {
                if (e.key === 'Enter') {
                    performSearch();
                }
            });

            // Initialize active filters
            updateActiveFilters();

            // Wishlist functionality
            document.querySelectorAll('.group button').forEach(btn => {
                if (btn.querySelector('svg path[d*="M4.318 6.318"]')) {
                    btn.addEventListener('click', function(e) {
                        e.stopPropagation();
                        e.preventDefault();
                        
                        const icon = this.querySelector('svg');
                        const isLiked = icon.classList.contains('text-[#DC3545]');
                        
                        if (isLiked) {
                            icon.classList.remove('text-[#DC3545]', 'fill-current');
                            icon.classList.add('text-[#6C757D]');
                            console.log('Removed from wishlist');
                        } else {
                            icon.classList.remove('text-[#6C757D]');
                            icon.classList.add('text-[#DC3545]', 'fill-current');
                            console.log('Added to wishlist');
                            
                            // Update wishlist count
                            const wishlistBadge = document.querySelector('.relative.cursor-pointer span');
                            if (wishlistBadge) {
                                const currentCount = parseInt(wishlistBadge.textContent);
                                wishlistBadge.textContent = currentCount + 1;
                            }
                        }
                    });
                }
            });

            // Product card click navigation
            document.querySelectorAll('.group.cursor-pointer').forEach(card => {
                card.addEventListener('click', function(e) {
                    // Don't trigger if clicking on buttons
                    if (e.target.closest('button')) return;
                    
                    const productName = this.querySelector('h3').textContent;
                    console.log('Navigate to product:', productName);
                    // window.location.href = '/product/detail';
                    alert(`Xem chi ti?t: ${productName}`);
                });
            });

            // Add to cart functionality
            document.querySelectorAll('button:contains("Th?m v?o gi?")').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    e.preventDefault();
                    
                    const productCard = this.closest('.group');
                    const productName = productCard.querySelector('h3').textContent;
                    
                    console.log('Added to cart:', productName);
                    alert(`?? th?m "${productName}" v?o gi? h?ng`);
                    
                    // Update cart count
                    const cartBadge = document.querySelector('.relative.cursor-pointer:last-child span');
                    if (cartBadge) {
                        const currentCount = parseInt(cartBadge.textContent);
                        cartBadge.textContent = currentCount + 1;
                    }
                });
            });

            // Mobile menu toggle
            document.getElementById('mobileMenuBtn').addEventListener('click', function() {
                console.log('Toggle mobile menu');
                // Implementation for mobile menu
            });

            // Price range sliders
            const minSlider = document.getElementById('priceRangeMin');
            const maxSlider = document.getElementById('priceRangeMax');

            minSlider.addEventListener('input', function() {
                const min = parseInt(this.value);
                const max = parseInt(maxSlider.value);
                
                if (min >= max) {
                    this.value = max - 1000000;
                }
                
                document.getElementById('minPrice').value = formatPrice(this.value);
                updatePriceRange();
            });

            maxSlider.addEventListener('input', function() {
                const min = parseInt(minSlider.value);
                const max = parseInt(this.value);
                
                if (max <= min) {
                    this.value = min + 1000000;
                }
                
                document.getElementById('maxPrice').value = formatPrice(this.value);
                updatePriceRange();
            });
        });

        function updatePriceRange() {
            const minPrice = document.getElementById('minPrice').value;
            const maxPrice = document.getElementById('maxPrice').value;
            
            if (minPrice || maxPrice) {
                currentFilters.priceRange = `${minPrice || 0}-${maxPrice || 'max'}`;
            } else {
                currentFilters.priceRange = null;
            }
        }

        function setPresetPriceRange(range) {
            const ranges = {
                'under-5m': { min: 0, max: 5000000 },
                '5m-15m': { min: 5000000, max: 15000000 },
                '15m-30m': { min: 15000000, max: 30000000 },
                'over-30m': { min: 30000000, max: 100000000 }
            };
            
            const selected = ranges[range];
            if (selected) {
                document.getElementById('minPrice').value = formatPrice(selected.min);
                document.getElementById('maxPrice').value = selected.max === 100000000 ? '' : formatPrice(selected.max);
                document.getElementById('priceRangeMin').value = selected.min;
                document.getElementById('priceRangeMax').value = selected.max;
            }
        }

        function formatPrice(price) {
            if (!price) return '';
            return parseInt(price).toLocaleString('vi-VN');
        }

        // Infinite scroll or load more (optional)
        function loadMoreProducts() {
            // Implementation for loading more products
            console.log('Loading more products...');
        }

        // Analytics tracking
        function trackFilterUsage(filterType, filterValue) {
            console.log('Filter used:', filterType, filterValue);
            // Send to analytics service
        }

        function trackProductView(productId, productName) {
            console.log('Product viewed:', productId, productName);
            // Send to analytics service
        }

        // Update current time in header
        function updateCurrentTime() {
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
        }

        // Update time every minute
        setInterval(updateCurrentTime, 60000);
        updateCurrentTime();

        // Lazy loading for product images (if real images were used)
        if ('IntersectionObserver' in window) {
            const imageObserver = new IntersectionObserver((entries, observer) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        const img = entry.target;
                        if (img.dataset.src) {
                            img.src = img.dataset.src;
                            img.classList.remove('lazy');
                            imageObserver.unobserve(img);
                        }
                    }
                });
            });

            document.querySelectorAll('img[data-src]').forEach(img => {
                imageObserver.observe(img);
            });
        }

        // Smooth scroll for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });

        // Page view tracking
        console.log('Page view tracked:', {
            page: 'category_listing',
            category: 'electronics',
            user: 'hoangdvdinos',
            timestamp: '2025-08-14 10:43:30',
            filters: currentFilters
        });
    </script>
</body>
</html>