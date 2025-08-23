<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gi? h?ng - E-commerce</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', Arial, Helvetica, sans-serif; }
        .quantity-input::-webkit-outer-spin-button,
        .quantity-input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
        .quantity-input[type=number] {
            -moz-appearance: textfield;
        }
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
                    <span class="text-[#6C757D]">14/08/2025 17:54</span>
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
                        <svg class="w-6 h-6 text-[#0D6EFD]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4m-.4 0L5 5H3m4 8h10m-10 0v6a1 1 0 001 1h8a1 1 0 001-1v-6m-10 0H3"></path>
                        </svg>
                        <span id="cartCount" class="absolute top-0 right-0 bg-[#0D6EFD] text-white rounded-full text-xs w-5 h-5 flex items-center justify-center transform translate-x-2 -translate-y-2">3</span>
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
                <li class="text-[#212529] font-medium">Gi? h?ng</li>
            </ol>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto max-w-[1200px] px-4 py-6">
        <!-- Page Header -->
        <div class="flex items-center justify-between mb-6">
            <div>
                <h1 class="text-3xl font-bold text-[#212529]">Gi? h?ng c?a b?n</h1>
                <p class="text-[#6C757D] mt-1">B?n c? <span id="totalItems" class="font-medium text-[#212529]">3 s?n ph?m</span> trong gi? h?ng</p>
            </div>
            <button onclick="clearCart()" class="text-[#DC3545] hover:underline text-sm font-medium">
                ?? X?a t?t c?
            </button>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-4 gap-6">
            <!-- Cart Items -->
            <div class="lg:col-span-3">
                <div class="bg-white rounded-lg shadow-sm">
                    <!-- Cart Header -->
                    <div class="hidden md:grid grid-cols-12 gap-4 p-4 border-b border-gray-200 text-sm font-medium text-[#6C757D]">
                        <div class="col-span-1">
                            <input type="checkbox" id="selectAll" onchange="toggleSelectAll()" class="rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                        </div>
                        <div class="col-span-5">S?n ph?m</div>
                        <div class="col-span-2 text-center">??n gi?</div>
                        <div class="col-span-2 text-center">S? l??ng</div>
                        <div class="col-span-2 text-center">Th?nh ti?n</div>
                    </div>

                    <!-- Cart Item 1 -->
                    <div class="cart-item border-b border-gray-200 p-4" data-id="1" data-price="27990000">
                        <div class="grid grid-cols-1 md:grid-cols-12 gap-4 items-center">
                            <!-- Select Checkbox -->
                            <div class="hidden md:block col-span-1">
                                <input type="checkbox" class="item-checkbox rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]" checked onchange="updateCartTotals()">
                            </div>

                            <!-- Product Info -->
                            <div class="md:col-span-5">
                                <div class="flex space-x-4">
                                    <div class="w-20 h-20 md:w-24 md:h-24 bg-gray-200 rounded-lg flex-shrink-0"></div>
                                    <div class="flex-1 min-w-0">
                                        <h3 class="font-medium text-[#212529] mb-1 line-clamp-2">iPhone 15 Pro Max 256GB Titan T? nhi?n</h3>
                                        <div class="text-sm text-[#6C757D] space-y-1">
                                            <div>Dung l??ng: 256GB</div>
                                            <div>M?u s?c: Titan T? nhi?n</div>
                                            <div class="flex items-center space-x-2">
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">Freeship</span>
                                                <span class="bg-[#FFC107] text-white px-2 py-1 rounded text-xs">Tr? g?p 0%</span>
                                            </div>
                                        </div>
                                        <!-- Mobile Actions -->
                                        <div class="md:hidden mt-2 flex items-center space-x-4">
                                            <button onclick="toggleWishlist(1)" class="text-[#6C757D] hover:text-[#DC3545] text-sm">?? Y?u th?ch</button>
                                            <button onclick="removeItem(1)" class="text-[#DC3545] hover:underline text-sm">?? X?a</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Price -->
                            <div class="md:col-span-2 text-center">
                                <div class="flex flex-col items-center md:items-center">
                                    <span class="text-lg font-bold text-[#0D6EFD]">?27,990,000</span>
                                    <span class="text-sm text-[#6C757D] line-through">?36,990,000</span>
                                    <span class="text-xs bg-[#DC3545] text-white px-1 rounded">-25%</span>
                                </div>
                            </div>

                            <!-- Quantity -->
                            <div class="md:col-span-2 text-center">
                                <div class="flex items-center justify-center space-x-2">
                                    <button onclick="decreaseQuantity(1)" class="w-8 h-8 border border-[#CED4DA] rounded-lg flex items-center justify-center text-[#6C757D] hover:bg-[#F8F9FA] transition-colors duration-200">
                                        ?
                                    </button>
                                    <input type="number" value="1" min="1" max="10" class="quantity-input w-12 h-8 text-center border border-[#CED4DA] rounded-lg focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" onchange="updateQuantity(1, this.value)">
                                    <button onclick="increaseQuantity(1)" class="w-8 h-8 border border-[#CED4DA] rounded-lg flex items-center justify-center text-[#6C757D] hover:bg-[#F8F9FA] transition-colors duration-200">
                                        +
                                    </button>
                                </div>
                                <div class="text-xs text-[#6C757D] mt-1">C?n 47 s?n ph?m</div>
                            </div>

                            <!-- Subtotal -->
                            <div class="md:col-span-2 text-center">
                                <div class="text-lg font-bold text-[#DC3545] item-subtotal">?27,990,000</div>
                                <div class="hidden md:flex justify-center space-x-2 mt-2">
                                    <button onclick="toggleWishlist(1)" class="text-[#6C757D] hover:text-[#DC3545] text-xs">??</button>
                                    <button onclick="removeItem(1)" class="text-[#DC3545] hover:underline text-xs">??</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Cart Item 2 -->
                    <div class="cart-item border-b border-gray-200 p-4" data-id="2" data-price="25490000">
                        <div class="grid grid-cols-1 md:grid-cols-12 gap-4 items-center">
                            <!-- Select Checkbox -->
                            <div class="hidden md:block col-span-1">
                                <input type="checkbox" class="item-checkbox rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]" checked onchange="updateCartTotals()">
                            </div>

                            <!-- Product Info -->
                            <div class="md:col-span-5">
                                <div class="flex space-x-4">
                                    <div class="w-20 h-20 md:w-24 md:h-24 bg-gray-200 rounded-lg flex-shrink-0"></div>
                                    <div class="flex-1 min-w-0">
                                        <h3 class="font-medium text-[#212529] mb-1 line-clamp-2">MacBook Air M3 13 inch 256GB - Ch?nh h?ng Apple</h3>
                                        <div class="text-sm text-[#6C757D] space-y-1">
                                            <div>Dung l??ng: 256GB SSD</div>
                                            <div>M?u s?c: B?c</div>
                                            <div class="flex items-center space-x-2">
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">Freeship</span>
                                                <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded text-xs">Ch?nh h?ng</span>
                                            </div>
                                        </div>
                                        <!-- Mobile Actions -->
                                        <div class="md:hidden mt-2 flex items-center space-x-4">
                                            <button onclick="toggleWishlist(2)" class="text-[#6C757D] hover:text-[#DC3545] text-sm">?? Y?u th?ch</button>
                                            <button onclick="removeItem(2)" class="text-[#DC3545] hover:underline text-sm">?? X?a</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Price -->
                            <div class="md:col-span-2 text-center">
                                <div class="flex flex-col items-center md:items-center">
                                    <span class="text-lg font-bold text-[#0D6EFD]">?25,490,000</span>
                                    <span class="text-sm text-[#6C757D] line-through">?29,990,000</span>
                                    <span class="text-xs bg-[#DC3545] text-white px-1 rounded">-15%</span>
                                </div>
                            </div>

                            <!-- Quantity -->
                            <div class="md:col-span-2 text-center">
                                <div class="flex items-center justify-center space-x-2">
                                    <button onclick="decreaseQuantity(2)" class="w-8 h-8 border border-[#CED4DA] rounded-lg flex items-center justify-center text-[#6C757D] hover:bg-[#F8F9FA] transition-colors duration-200">
                                        ?
                                    </button>
                                    <input type="number" value="1" min="1" max="10" class="quantity-input w-12 h-8 text-center border border-[#CED4DA] rounded-lg focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" onchange="updateQuantity(2, this.value)">
                                    <button onclick="increaseQuantity(2)" class="w-8 h-8 border border-[#CED4DA] rounded-lg flex items-center justify-center text-[#6C757D] hover:bg-[#F8F9FA] transition-colors duration-200">
                                        +
                                    </button>
                                </div>
                                <div class="text-xs text-[#6C757D] mt-1">C?n 23 s?n ph?m</div>
                            </div>

                            <!-- Subtotal -->
                            <div class="md:col-span-2 text-center">
                                <div class="text-lg font-bold text-[#DC3545] item-subtotal">?25,490,000</div>
                                <div class="hidden md:flex justify-center space-x-2 mt-2">
                                    <button onclick="toggleWishlist(2)" class="text-[#6C757D] hover:text-[#DC3545] text-xs">??</button>
                                    <button onclick="removeItem(2)" class="text-[#DC3545] hover:underline text-xs">??</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Cart Item 3 -->
                    <div class="cart-item border-b border-gray-200 p-4" data-id="3" data-price="6390000">
                        <div class="grid grid-cols-1 md:grid-cols-12 gap-4 items-center">
                            <!-- Select Checkbox -->
                            <div class="hidden md:block col-span-1">
                                <input type="checkbox" class="item-checkbox rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]" checked onchange="updateCartTotals()">
                            </div>

                            <!-- Product Info -->
                            <div class="md:col-span-5">
                                <div class="flex space-x-4">
                                    <div class="w-20 h-20 md:w-24 md:h-24 bg-gray-200 rounded-lg flex-shrink-0"></div>
                                    <div class="flex-1 min-w-0">
                                        <h3 class="font-medium text-[#212529] mb-1 line-clamp-2">AirPods Pro 2nd Generation USB-C - Ch?nh h?ng Apple</h3>
                                        <div class="text-sm text-[#6C757D] space-y-1">
                                            <div>K?t n?i: USB-C</div>
                                            <div>M?u s?c: Tr?ng</div>
                                            <div class="flex items-center space-x-2">
                                                <span class="bg-[#198754] text-white px-2 py-1 rounded text-xs">Freeship</span>
                                                <span class="bg-[#0D6EFD] text-white px-2 py-1 rounded text-xs">Ch?nh h?ng</span>
                                            </div>
                                        </div>
                                        <!-- Mobile Actions -->
                                        <div class="md:hidden mt-2 flex items-center space-x-4">
                                            <button onclick="toggleWishlist(3)" class="text-[#6C757D] hover:text-[#DC3545] text-sm">?? Y?u th?ch</button>
                                            <button onclick="removeItem(3)" class="text-[#DC3545] hover:underline text-sm">?? X?a</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Price -->
                            <div class="md:col-span-2 text-center">
                                <div class="flex flex-col items-center md:items-center">
                                    <span class="text-lg font-bold text-[#0D6EFD]">?6,390,000</span>
                                    <span class="text-sm text-[#6C757D] line-through">?7,990,000</span>
                                    <span class="text-xs bg-[#DC3545] text-white px-1 rounded">-20%</span>
                                </div>
                            </div>

                            <!-- Quantity -->
                            <div class="md:col-span-2 text-center">
                                <div class="flex items-center justify-center space-x-2">
                                    <button onclick="decreaseQuantity(3)" class="w-8 h-8 border border-[#CED4DA] rounded-lg flex items-center justify-center text-[#6C757D] hover:bg-[#F8F9FA] transition-colors duration-200">
                                        ?
                                    </button>
                                    <input type="number" value="1" min="1" max="10" class="quantity-input w-12 h-8 text-center border border-[#CED4DA] rounded-lg focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" onchange="updateQuantity(3, this.value)">
                                    <button onclick="increaseQuantity(3)" class="w-8 h-8 border border-[#CED4DA] rounded-lg flex items-center justify-center text-[#6C757D] hover:bg-[#F8F9FA] transition-colors duration-200">
                                        +
                                    </button>
                                </div>
                                <div class="text-xs text-[#6C757D] mt-1">C?n 156 s?n ph?m</div>
                            </div>

                            <!-- Subtotal -->
                            <div class="md:col-span-2 text-center">
                                <div class="text-lg font-bold text-[#DC3545] item-subtotal">?6,390,000</div>
                                <div class="hidden md:flex justify-center space-x-2 mt-2">
                                    <button onclick="toggleWishlist(3)" class="text-[#6C757D] hover:text-[#DC3545] text-xs">??</button>
                                    <button onclick="removeItem(3)" class="text-[#DC3545] hover:underline text-xs">??</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Empty Cart Message (Hidden by default) -->
                    <div id="emptyCart" class="hidden text-center py-12">
                        <div class="text-6xl mb-4">?</div>
                        <h3 class="text-xl font-bold text-[#212529] mb-2">Gi? h?ng tr?ng</h3>
                        <p class="text-[#6C757D] mb-6">B?n ch?a c? s?n ph?m n?o trong gi? h?ng</p>
                        <a href="/" class="bg-[#0D6EFD] text-white rounded-lg px-6 py-3 font-medium hover:bg-[#084298] transition-colors duration-200 inline-block">
                            Ti?p t?c mua s?m
                        </a>
                    </div>
                </div>

                <!-- Continue Shopping -->
                <div class="mt-6">
                    <a href="/" class="text-[#0D6EFD] hover:underline font-medium inline-flex items-center">
                        Å© Ti?p t?c mua s?m
                    </a>
                </div>
            </div>

            <!-- Order Summary -->
            <div class="lg:col-span-1">
                <div class="bg-white rounded-lg shadow-sm p-6 sticky top-24">
                    <h3 class="text-lg font-bold text-[#212529] mb-4">T?m t?t ??n h?ng</h3>
                    
                    <!-- Summary Details -->
                    <div class="space-y-3 text-sm">
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">T?m t?nh (<span id="selectedItemsCount">3</span> s?n ph?m)</span>
                            <span class="font-medium text-[#212529]" id="subtotal">?59,870,000</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">Gi?m gi?</span>
                            <span class="font-medium text-[#198754]" id="discount">-?14,500,000</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">Ph? v?n chuy?n</span>
                            <span class="font-medium text-[#198754]" id="shipping">Mi?n ph?</span>
                        </div>
                        <hr class="border-gray-200">
                        <div class="flex justify-between text-lg">
                            <span class="font-bold text-[#212529]">T?ng c?ng</span>
                            <span class="font-bold text-[#DC3545]" id="total">?59,870,000</span>
                        </div>
                    </div>

                    <!-- Coupon Code -->
                    <div class="mt-6">
                        <label class="text-sm font-medium text-[#212529] block mb-2">M? gi?m gi?</label>
                        <div class="flex space-x-2">
                            <input type="text" id="couponCode" placeholder="Nh?p m? gi?m gi?" class="flex-1 h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] text-sm">
                            <button onclick="applyCoupon()" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200">
                                ?p d?ng
                            </button>
                        </div>
                        <div id="couponMessage" class="text-xs mt-2 hidden"></div>
                    </div>

                    <!-- Available Coupons -->
                    <div class="mt-4">
                        <button onclick="toggleCoupons()" class="text-sm text-[#0D6EFD] hover:underline">
                            Xem m? gi?m gi? kh? d?ng
                        </button>
                        <div id="availableCoupons" class="hidden mt-3 space-y-2">
                            <div class="border border-[#0D6EFD] rounded-lg p-3 cursor-pointer hover:bg-[#F8F9FA]" onclick="selectCoupon('SAVE10')">
                                <div class="flex justify-between items-center">
                                    <div>
                                        <div class="font-medium text-[#212529]">SAVE10</div>
                                        <div class="text-xs text-[#6C757D]">Gi?m 10% t?i ?a 1M</div>
                                    </div>
                                    <div class="text-[#0D6EFD] font-medium text-sm">Ch?n</div>
                                </div>
                            </div>
                            <div class="border border-[#0D6EFD] rounded-lg p-3 cursor-pointer hover:bg-[#F8F9FA]" onclick="selectCoupon('FREESHIP')">
                                <div class="flex justify-between items-center">
                                    <div>
                                        <div class="font-medium text-[#212529]">FREESHIP</div>
                                        <div class="text-xs text-[#6C757D]">Mi?n ph? v?n chuy?n</div>
                                    </div>
                                    <div class="text-[#0D6EFD] font-medium text-sm">Ch?n</div>
                                </div>
                            </div>
                            <div class="border border-gray-300 rounded-lg p-3 opacity-50">
                                <div class="flex justify-between items-center">
                                    <div>
                                        <div class="font-medium text-[#6C757D]">NEWUSER50</div>
                                        <div class="text-xs text-[#6C757D]">Gi?m 50k (??n t?i thi?u 2M)</div>
                                    </div>
                                    <div class="text-[#6C757D] text-sm">Kh?ng ?? ?i?u ki?n</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Checkout Button -->
                    <button onclick="proceedToCheckout()" class="w-full bg-[#DC3545] text-white rounded-lg px-6 py-3 font-bold text-lg hover:bg-[#BB2D3B] transition-colors duration-200 mt-6" id="checkoutBtn">
                        Thanh to?n ngay
                    </button>

                    <!-- Payment Methods -->
                    <div class="mt-4 text-center">
                        <div class="text-xs text-[#6C757D] mb-2">Thanh to?n an to?n v?i</div>
                        <div class="flex justify-center space-x-2">
                            <div class="w-8 h-6 bg-blue-600 rounded text-white text-xs flex items-center justify-center">V</div>
                            <div class="w-8 h-6 bg-red-600 rounded text-white text-xs flex items-center justify-center">M</div>
                            <div class="w-8 h-6 bg-yellow-500 rounded text-white text-xs flex items-center justify-center">?</div>
                            <div class="w-8 h-6 bg-green-600 rounded text-white text-xs flex items-center justify-center">A</div>
                        </div>
                    </div>

                    <!-- Trust Signals -->
                    <div class="mt-4 space-y-2 text-xs text-[#6C757D]">
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                            </svg>
                            <span>B?o m?t th?ng tin thanh to?n SSL</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                            </svg>
                            <span>??i tr? mi?n ph? trong 30 ng?y</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                            </svg>
                            <span>H? tr? kh?ch h?ng 24/7</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Recommended Products -->
        <div class="mt-12">
            <h2 class="text-2xl font-bold text-[#212529] mb-6">C? th? b?n s? th?ch</h2>
            
            <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-4">
                <!-- Recommended Product 1 -->
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                    <div class="relative mb-3">
                        <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                        <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-30%</span>
                        <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                            <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                            </svg>
                        </button>
                    </div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Magic Keyboard cho iPad Pro</h3>
                    <div class="flex items-center space-x-1 mb-2">
                        <div class="flex text-yellow-400 text-xs">?????</div>
                        <span class="text-xs text-[#6C757D]">(4.8)</span>
                    </div>
                    <div class="space-y-1">
                        <div class="flex items-center space-x-2">
                            <span class="text-[#0D6EFD] font-bold text-lg">?7,990,000</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <span class="text-[#6C757D] line-through text-sm">?11,290,000</span>
                        </div>
                    </div>
                    <button onclick="addToCartQuick('magic-keyboard')" class="w-full bg-[#0D6EFD] text-white rounded-md px-3 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 mt-3 opacity-0 group-hover:opacity-100">
                        Th?m v?o gi?
                    </button>
                </div>

                <!-- Recommended Product 2 -->
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                    <div class="relative mb-3">
                        <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                        <span class="absolute top-2 left-2 bg-[#198754] text-white px-2 py-1 rounded text-xs font-bold">New</span>
                        <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                            <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                            </svg>
                        </button>
                    </div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">Apple Pencil (2nd Gen)</h3>
                    <div class="flex items-center space-x-1 mb-2">
                        <div class="flex text-yellow-400 text-xs">?????</div>
                        <span class="text-xs text-[#6C757D]">(4.6)</span>
                    </div>
                    <div class="space-y-1">
                        <span class="text-[#0D6EFD] font-bold text-lg">?3,490,000</span>
                    </div>
                    <button onclick="addToCartQuick('apple-pencil')" class="w-full bg-[#0D6EFD] text-white rounded-md px-3 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 mt-3 opacity-0 group-hover:opacity-100">
                        Th?m v?o gi?
                    </button>
                </div>

                <!-- Recommended Product 3 -->
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                    <div class="relative mb-3">
                        <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                        <span class="absolute top-2 left-2 bg-[#FFC107] text-white px-2 py-1 rounded text-xs font-bold">Hot</span>
                        <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                            <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                            </svg>
                        </button>
                    </div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">MagSafe Charger</h3>
                    <div class="flex items-center space-x-1 mb-2">
                        <div class="flex text-yellow-400 text-xs">?????</div>
                        <span class="text-xs text-[#6C757D]">(4.9)</span>
                    </div>
                    <div class="space-y-1">
                        <span class="text-[#0D6EFD] font-bold text-lg">?1,190,000</span>
                    </div>
                    <button onclick="addToCartQuick('magsafe-charger')" class="w-full bg-[#0D6EFD] text-white rounded-md px-3 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 mt-3 opacity-0 group-hover:opacity-100">
                        Th?m v?o gi?
                    </button>
                </div>

                <!-- Recommended Product 4 -->
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                    <div class="relative mb-3">
                        <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                        <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                            <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                            </svg>
                        </button>
                    </div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">USB-C to Lightning Cable</h3>
                    <div class="flex items-center space-x-1 mb-2">
                        <div class="flex text-yellow-400 text-xs">?????</div>
                        <span class="text-xs text-[#6C757D]">(4.3)</span>
                    </div>
                    <div class="space-y-1">
                        <span class="text-[#0D6EFD] font-bold text-lg">?590,000</span>
                    </div>
                    <button onclick="addToCartQuick('usb-c-cable')" class="w-full bg-[#0D6EFD] text-white rounded-md px-3 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 mt-3 opacity-0 group-hover:opacity-100">
                        Th?m v?o gi?
                    </button>
                </div>

                <!-- Recommended Product 5 -->
                <div class="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 group cursor-pointer">
                    <div class="relative mb-3">
                        <div class="w-full h-40 bg-gray-200 rounded-lg mb-3"></div>
                        <span class="absolute top-2 left-2 bg-[#DC3545] text-white px-2 py-1 rounded text-xs font-bold">-25%</span>
                        <button class="absolute top-2 right-2 p-1 rounded-full bg-white shadow-sm opacity-0 group-hover:opacity-100 transition-opacity duration-200">
                            <svg class="w-4 h-4 text-[#6C757D] hover:text-[#DC3545]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                            </svg>
                        </button>
                    </div>
                    <h3 class="text-sm font-medium text-[#212529] mb-2 line-clamp-2">AirTag (4 Pack)</h3>
                    <div class="flex items-center space-x-1 mb-2">
                        <div class="flex text-yellow-400 text-xs">?????</div>
                        <span class="text-xs text-[#6C757D]">(4.7)</span>
                    </div>
                    <div class="space-y-1">
                        <div class="flex items-center space-x-2">
                            <span class="text-[#0D6EFD] font-bold text-lg">?2,990,000</span>
                        </div>
                        <div class="flex items-center space-x-2">
                            <span class="text-[#6C757D] line-through text-sm">?3,990,000</span>
                        </div>
                    </div>
                    <button onclick="addToCartQuick('airtag-pack')" class="w-full bg-[#0D6EFD] text-white rounded-md px-3 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200 mt-3 opacity-0 group-hover:opacity-100">
                        Th?m v?o gi?
                    </button>
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
        let cartData = {
            items: [
                { id: 1, name: 'iPhone 15 Pro Max 256GB', price: 27990000, originalPrice: 36990000, quantity: 1, selected: true, stock: 47 },
                { id: 2, name: 'MacBook Air M3 13 inch 256GB', price: 25490000, originalPrice: 29990000, quantity: 1, selected: true, stock: 23 },
                { id: 3, name: 'AirPods Pro 2nd Generation', price: 6390000, originalPrice: 7990000, quantity: 1, selected: true, stock: 156 }
            ],
            appliedCoupon: null
        };

        // Update cart totals
        function updateCartTotals() {
            const selectedItems = cartData.items.filter(item => item.selected);
            const subtotal = selectedItems.reduce((sum, item) => sum + (item.price * item.quantity), 0);
            const originalTotal = selectedItems.reduce((sum, item) => sum + (item.originalPrice * item.quantity), 0);
            const discount = originalTotal - subtotal;
            
            document.getElementById('selectedItemsCount').textContent = selectedItems.length;
            document.getElementById('subtotal').textContent = '?' + subtotal.toLocaleString('vi-VN');
            document.getElementById('discount').textContent = '-?' + discount.toLocaleString('vi-VN');
            document.getElementById('total').textContent = '?' + subtotal.toLocaleString('vi-VN');
            
            // Update checkout button state
            const checkoutBtn = document.getElementById('checkoutBtn');
            if (selectedItems.length === 0) {
                checkoutBtn.disabled = true;
                checkoutBtn.classList.add('opacity-50', 'cursor-not-allowed');
                checkoutBtn.textContent = 'Ch?n s?n ph?m ?? thanh to?n';
            } else {
                checkoutBtn.disabled = false;
                checkoutBtn.classList.remove('opacity-50', 'cursor-not-allowed');
                checkoutBtn.textContent = 'Thanh to?n ngay';
            }
        }

        // Toggle select all
        function toggleSelectAll() {
            const selectAll = document.getElementById('selectAll');
            const checkboxes = document.querySelectorAll('.item-checkbox');
            
            checkboxes.forEach(checkbox => {
                checkbox.checked = selectAll.checked;
            });
            
            cartData.items.forEach(item => {
                item.selected = selectAll.checked;
            });
            
            updateCartTotals();
        }

        // Quantity functions
        function increaseQuantity(itemId) {
            const item = cartData.items.find(i => i.id === itemId);
            if (item && item.quantity < 10 && item.quantity < item.stock) {
                item.quantity++;
                updateItemDisplay(itemId);
                updateCartTotals();
            }
        }

        function decreaseQuantity(itemId) {
            const item = cartData.items.find(i => i.id === itemId);
            if (item && item.quantity > 1) {
                item.quantity--;
                updateItemDisplay(itemId);
                updateCartTotals();
            }
        }

        function updateQuantity(itemId, newQuantity) {
            const item = cartData.items.find(i => i.id === itemId);
            const quantity = parseInt(newQuantity);
            
            if (item && quantity >= 1 && quantity <= 10 && quantity <= item.stock) {
                item.quantity = quantity;
                updateItemDisplay(itemId);
                updateCartTotals();
            } else {
                // Reset to valid value
                const input = document.querySelector(`[data-id="${itemId}"] .quantity-input`);
                input.value = item.quantity;
            }
        }

        function updateItemDisplay(itemId) {
            const item = cartData.items.find(i => i.id === itemId);
            const itemElement = document.querySelector(`[data-id="${itemId}"]`);
            
            // Update quantity input
            const quantityInput = itemElement.querySelector('.quantity-input');
            quantityInput.value = item.quantity;
            
            // Update subtotal
            const subtotal = item.price * item.quantity;
            const subtotalElement = itemElement.querySelector('.item-subtotal');
            subtotalElement.textContent = '?' + subtotal.toLocaleString('vi-VN');
            
            // Update total items count
            const totalItems = cartData.items.reduce((sum, item) => sum + item.quantity, 0);
            document.getElementById('totalItems').textContent = totalItems + ' s?n ph?m';
            document.getElementById('cartCount').textContent = totalItems;
        }

        // Remove item
        function removeItem(itemId) {
            if (confirm('B?n c? ch?c ch?n mu?n x?a s?n ph?m n?y kh?i gi? h?ng?')) {
                cartData.items = cartData.items.filter(item => item.id !== itemId);
                
                // Remove from DOM
                const itemElement = document.querySelector(`[data-id="${itemId}"]`);
                itemElement.remove();
                
                updateCartTotals();
                
                // Show empty cart if no items
                if (cartData.items.length === 0) {
                    showEmptyCart();
                }
                
                // Update total items count
                const totalItems = cartData.items.reduce((sum, item) => sum + item.quantity, 0);
                document.getElementById('totalItems').textContent = totalItems + ' s?n ph?m';
                document.getElementById('cartCount').textContent = totalItems;
            }
        }

        // Toggle wishlist
        function toggleWishlist(itemId) {
            console.log('Toggled wishlist for item:', itemId);
            alert('?? th?m v?o danh s?ch y?u th?ch!');
        }

        // Clear cart
        function clearCart() {
            if (confirm('B?n c? ch?c ch?n mu?n x?a t?t c? s?n ph?m trong gi? h?ng?')) {
                cartData.items = [];
                showEmptyCart();
                document.getElementById('cartCount').textContent = '0';
            }
        }

        function showEmptyCart() {
            // Hide cart items
            document.querySelectorAll('.cart-item').forEach(item => item.remove());
            
            // Show empty cart message
            document.getElementById('emptyCart').classList.remove('hidden');
            
            // Update totals
            document.getElementById('totalItems').textContent = '0 s?n ph?m';
            document.getElementById('selectedItemsCount').textContent = '0';
            document.getElementById('subtotal').textContent = '?0';
            document.getElementById('discount').textContent = '?0';
                        document.getElementById('total').textContent = '?0';
            
            // Disable checkout button
            const checkoutBtn = document.getElementById('checkoutBtn');
            checkoutBtn.disabled = true;
            checkoutBtn.classList.add('opacity-50', 'cursor-not-allowed');
            checkoutBtn.textContent = 'Gi? h?ng tr?ng';
        }

        // Coupon functions
        function applyCoupon() {
            const couponCode = document.getElementById('couponCode').value.trim().toUpperCase();
            const messageElement = document.getElementById('couponMessage');
            
            if (!couponCode) {
                showCouponMessage('Vui l?ng nh?p m? gi?m gi?', 'error');
                return;
            }
            
            // Simulate coupon validation
            const validCoupons = {
                'SAVE10': { type: 'percentage', value: 10, maxDiscount: 1000000, minOrder: 0 },
                'FREESHIP': { type: 'shipping', value: 0, maxDiscount: 50000, minOrder: 0 },
                'NEWUSER50': { type: 'fixed', value: 50000, maxDiscount: 50000, minOrder: 2000000 }
            };
            
            const selectedItems = cartData.items.filter(item => item.selected);
            const subtotal = selectedItems.reduce((sum, item) => sum + (item.price * item.quantity), 0);
            
            if (validCoupons[couponCode]) {
                const coupon = validCoupons[couponCode];
                
                if (subtotal < coupon.minOrder) {
                    showCouponMessage(`??n h?ng t?i thi?u ${coupon.minOrder.toLocaleString('vi-VN')}?`, 'error');
                    return;
                }
                
                cartData.appliedCoupon = couponCode;
                
                let discountAmount = 0;
                if (coupon.type === 'percentage') {
                    discountAmount = Math.min(subtotal * coupon.value / 100, coupon.maxDiscount);
                } else if (coupon.type === 'fixed') {
                    discountAmount = coupon.value;
                } else if (coupon.type === 'shipping') {
                    discountAmount = 50000; // Shipping fee
                }
                
                showCouponMessage(`?p d?ng th?nh c?ng! Gi?m ${discountAmount.toLocaleString('vi-VN')}?`, 'success');
                updateCartTotalsWithCoupon(discountAmount);
                
            } else {
                showCouponMessage('M? gi?m gi? kh?ng h?p l? ho?c ?? h?t h?n', 'error');
            }
        }

        function showCouponMessage(message, type) {
            const messageElement = document.getElementById('couponMessage');
            messageElement.textContent = message;
            messageElement.classList.remove('hidden', 'text-[#198754]', 'text-[#DC3545]');
            messageElement.classList.add(type === 'success' ? 'text-[#198754]' : 'text-[#DC3545]');
        }

        function updateCartTotalsWithCoupon(couponDiscount) {
            const selectedItems = cartData.items.filter(item => item.selected);
            const subtotal = selectedItems.reduce((sum, item) => sum + (item.price * item.quantity), 0);
            const originalTotal = selectedItems.reduce((sum, item) => sum + (item.originalPrice * item.quantity), 0);
            const productDiscount = originalTotal - subtotal;
            const totalDiscount = productDiscount + couponDiscount;
            const finalTotal = subtotal - couponDiscount;
            
            document.getElementById('discount').textContent = '-?' + totalDiscount.toLocaleString('vi-VN');
            document.getElementById('total').textContent = '?' + finalTotal.toLocaleString('vi-VN');
        }

        function toggleCoupons() {
            const couponsDiv = document.getElementById('availableCoupons');
            couponsDiv.classList.toggle('hidden');
        }

        function selectCoupon(couponCode) {
            document.getElementById('couponCode').value = couponCode;
            applyCoupon();
            toggleCoupons();
        }

        // Checkout function
        function proceedToCheckout() {
            const selectedItems = cartData.items.filter(item => item.selected);
            
            if (selectedItems.length === 0) {
                alert('Vui l?ng ch?n ?t nh?t m?t s?n ph?m ?? thanh to?n');
                return;
            }
            
            // Store checkout data
            const checkoutData = {
                items: selectedItems,
                coupon: cartData.appliedCoupon,
                timestamp: '2025-08-14 11:00:34',
                user: 'hoangdvdinos'
            };
            
            localStorage.setItem('checkoutData', JSON.stringify(checkoutData));
            
            // Navigate to checkout
            window.location.href = '/checkout';
        }

        // Quick add to cart
        function addToCartQuick(productId) {
            console.log('Added to cart:', productId);
            
            // Update cart count
            const cartCount = document.getElementById('cartCount');
            const currentCount = parseInt(cartCount.textContent);
            cartCount.textContent = currentCount + 1;
            
            // Show success message
            alert('?? th?m s?n ph?m v?o gi? h?ng!');
        }

        // Initialize page
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
            
            const timeElement = document.querySelector('.hidden.md\\:flex .text-\\[\\#6C757D\\]');
            if (timeElement && timeElement.textContent.includes('/')) {
                timeElement.textContent = timeString;
            }

            // Update initial totals
            updateCartTotals();
            
            // Add event listeners for item checkboxes
            document.querySelectorAll('.item-checkbox').forEach(checkbox => {
                checkbox.addEventListener('change', function() {
                    const itemId = parseInt(this.closest('.cart-item').dataset.id);
                    const item = cartData.items.find(i => i.id === itemId);
                    if (item) {
                        item.selected = this.checked;
                    }
                    updateCartTotals();
                    
                    // Update select all checkbox
                    const allSelected = cartData.items.every(item => item.selected);
                    const anySelected = cartData.items.some(item => item.selected);
                    const selectAllCheckbox = document.getElementById('selectAll');
                    selectAllCheckbox.checked = allSelected;
                    selectAllCheckbox.indeterminate = anySelected && !allSelected;
                });
            });

            // Coupon code enter key
            document.getElementById('couponCode').addEventListener('keypress', function(e) {
                if (e.key === 'Enter') {
                    applyCoupon();
                }
            });

            // Track page view
            console.log('Cart page viewed:', {
                user: 'hoangdvdinos',
                itemCount: cartData.items.length,
                totalValue: cartData.items.reduce((sum, item) => sum + (item.price * item.quantity), 0),
                timestamp: '2025-08-14 11:00:34'
            });

            // Auto-save cart to localStorage
            setInterval(() => {
                localStorage.setItem('cartData', JSON.stringify(cartData));
            }, 5000);

            // Load cart from localStorage if available
            const savedCart = localStorage.getItem('cartData');
            if (savedCart) {
                try {
                    const parsedCart = JSON.parse(savedCart);
                    // Merge with current cart data if needed
                    console.log('Loaded cart from localStorage:', parsedCart);
                } catch (e) {
                    console.error('Error loading cart from localStorage:', e);
                }
            }
        });

        // Handle quantity input validation
        document.addEventListener('input', function(e) {
            if (e.target.classList.contains('quantity-input')) {
                const value = parseInt(e.target.value);
                const itemId = parseInt(e.target.closest('.cart-item').dataset.id);
                const item = cartData.items.find(i => i.id === itemId);
                
                if (isNaN(value) || value < 1) {
                    e.target.value = 1;
                    updateQuantity(itemId, 1);
                } else if (value > 10) {
                    e.target.value = 10;
                    updateQuantity(itemId, 10);
                } else if (item && value > item.stock) {
                    e.target.value = item.stock;
                    updateQuantity(itemId, item.stock);
                    alert(`Ch? c?n ${item.stock} s?n ph?m trong kho`);
                }
            }
        });

        // Keyboard shortcuts
        document.addEventListener('keydown', function(e) {
            // Ctrl/Cmd + A to select all items
            if ((e.ctrlKey || e.metaKey) && e.key === 'a' && e.target.tagName !== 'INPUT') {
                e.preventDefault();
                const selectAllCheckbox = document.getElementById('selectAll');
                selectAllCheckbox.checked = !selectAllCheckbox.checked;
                toggleSelectAll();
            }
            
            // Delete key to remove selected items
            if (e.key === 'Delete' && e.target.tagName !== 'INPUT') {
                const selectedItems = cartData.items.filter(item => item.selected);
                if (selectedItems.length > 0) {
                    if (confirm(`B?n c? ch?c ch?n mu?n x?a ${selectedItems.length} s?n ph?m ?? ch?n?`)) {
                        selectedItems.forEach(item => removeItem(item.id));
                    }
                }
            }
        });

        // Update cart on storage change (sync across tabs)
        window.addEventListener('storage', function(e) {
            if (e.key === 'cartData' && e.newValue) {
                try {
                    cartData = JSON.parse(e.newValue);
                    location.reload(); // Reload to update UI
                } catch (error) {
                    console.error('Error syncing cart data:', error);
                }
            }
        });

        // Performance monitoring
        window.addEventListener('load', function() {
            const loadTime = performance.now();
            console.log('Cart page load time:', Math.round(loadTime), 'ms');
            
            // Track cart abandonment (if user leaves without checkout)
            let hasInteracted = false;
            
            document.addEventListener('click', function() {
                hasInteracted = true;
            });
            
            window.addEventListener('beforeunload', function() {
                if (hasInteracted && cartData.items.length > 0) {
                    console.log('Cart abandonment detected:', {
                        user: 'hoangdvdinos',
                        itemCount: cartData.items.length,
                        totalValue: cartData.items.reduce((sum, item) => sum + (item.price * item.quantity), 0),
                        timeOnPage: Math.round(performance.now()),
                        timestamp: new Date().toISOString()
                    });
                }
            });
        });
    </script>
</body>
</html>