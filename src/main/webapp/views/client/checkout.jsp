<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh to?n - E-commerce</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', Arial, Helvetica, sans-serif; }
        .step-active { color: #0D6EFD; }
        .step-completed { color: #198754; }
        .payment-option.selected { border-color: #0D6EFD; background-color: #E7F3FF; }
        .shipping-option.selected { border-color: #0D6EFD; background-color: #E7F3FF; }
    </style>
</head>
<body class="bg-[#F8F9FA] leading-relaxed tracking-wide">
    <!-- Header -->
    <header class="bg-white shadow-sm border-b border-gray-200">
        <div class="container mx-auto max-w-[1200px] px-4 py-4">
            <div class="flex items-center justify-between">
                <!-- Logo -->
                <div class="flex items-center space-x-4">
                    <a href="/" class="text-2xl font-bold text-[#0D6EFD]">E-commerce</a>
                    <span class="text-[#6C757D]">|</span>
                    <span class="text-lg font-medium text-[#212529]">Thanh to?n</span>
                </div>
                
                <!-- User Info -->
                <div class="flex items-center space-x-4">
                    <div class="flex items-center space-x-2 text-[#6C757D]">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                        </svg>
                        <span class="text-sm">hoangdvdinos</span>
                    </div>
                    <div class="text-sm text-[#6C757D]">14/08/2025 18:03</div>
                </div>
            </div>
        </div>
    </header>

    <!-- Progress Steps -->
    <div class="bg-white border-b border-gray-200">
        <div class="container mx-auto max-w-[1200px] px-4 py-4">
            <div class="flex items-center justify-center space-x-8">
                <!-- Step 1: Cart -->
                <div class="flex items-center space-x-2 step-completed">
                    <div class="w-8 h-8 bg-[#198754] text-white rounded-full flex items-center justify-center text-sm font-bold">?</div>
                    <span class="text-sm font-medium">Gi? h?ng</span>
                </div>
                <div class="w-12 h-0.5 bg-[#198754]"></div>
                
                <!-- Step 2: Checkout -->
                <div class="flex items-center space-x-2 step-active">
                    <div class="w-8 h-8 bg-[#0D6EFD] text-white rounded-full flex items-center justify-center text-sm font-bold">2</div>
                    <span class="text-sm font-medium">Thanh to?n</span>
                </div>
                <div class="w-12 h-0.5 bg-gray-300"></div>
                
                <!-- Step 3: Complete -->
                <div class="flex items-center space-x-2 text-[#6C757D]">
                    <div class="w-8 h-8 bg-gray-300 text-white rounded-full flex items-center justify-center text-sm font-bold">3</div>
                    <span class="text-sm font-medium">Ho?n th?nh</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container mx-auto max-w-[1200px] px-4 py-6">
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
            <!-- Checkout Form -->
            <div class="lg:col-span-2 space-y-6">
                <!-- Shipping Address -->
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <div class="flex items-center justify-between mb-4">
                        <h2 class="text-xl font-bold text-[#212529]">? ??a ch? giao h?ng</h2>
                        <button onclick="toggleAddressForm()" class="text-[#0D6EFD] hover:underline text-sm font-medium">Thay ??i</button>
                    </div>
                    
                    <!-- Current Address -->
                    <div id="currentAddress" class="border border-[#0D6EFD] bg-[#E7F3FF] rounded-lg p-4">
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
                            <button class="text-[#0D6EFD] text-sm hover:underline">S?a</button>
                        </div>
                    </div>

                    <!-- Address Form (Hidden by default) -->
                    <div id="addressForm" class="hidden mt-4 space-y-4">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-1">H? v? t?n *</label>
                                <input type="text" value="Ho?ng ?inh" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            </div>
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-1">S? ?i?n tho?i *</label>
                                <input type="tel" value="0987654321" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            </div>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-1">T?nh/Th?nh ph? *</label>
                                <select class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                    <option value="hcm" selected>TP. H? Ch? Minh</option>
                                    <option value="hn">H? N?i</option>
                                    <option value="dn">?? N?ng</option>
                                </select>
                            </div>
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-1">Qu?n/Huy?n *</label>
                                <select class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                    <option value="q5" selected>Qu?n 5</option>
                                    <option value="q1">Qu?n 1</option>
                                    <option value="q3">Qu?n 3</option>
                                </select>
                            </div>
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-1">Ph??ng/X? *</label>
                                <select class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                                    <option value="p4" selected>Ph??ng 4</option>
                                    <option value="p1">Ph??ng 1</option>
                                    <option value="p2">Ph??ng 2</option>
                                </select>
                            </div>
                        </div>
                        <div>
                            <label class="text-sm font-medium text-[#212529] block mb-1">??a ch? c? th? *</label>
                            <input type="text" value="123 ???ng Nguy?n V?n C?" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" placeholder="S? nh?, t?n ???ng">
                        </div>
                        <div>
                            <label class="text-sm font-medium text-[#212529] block mb-1">Ghi ch? ??a ch?</label>
                            <input type="text" value="G?n si?u th? Co.opMart" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" placeholder="V? d?: G?n ng? t?, ??i di?n c?ng vi?n...">
                        </div>
                        <div class="flex space-x-3">
                            <button onclick="saveAddress()" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200">
                                L?u ??a ch?
                            </button>
                            <button onclick="cancelAddressEdit()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-4 py-2 text-sm font-medium hover:bg-[#F8F9FA] transition-colors duration-200">
                                H?y
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Shipping Method -->
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <h2 class="text-xl font-bold text-[#212529] mb-4">? Ph??ng th?c v?n chuy?n</h2>
                    
                    <div class="space-y-3">
                        <!-- Standard Shipping -->
                        <div class="shipping-option selected border-2 rounded-lg p-4 cursor-pointer" onclick="selectShipping('standard')">
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <input type="radio" name="shipping" value="standard" checked class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <div>
                                        <div class="font-medium text-[#212529]">Giao h?ng ti?u chu?n</div>
                                        <div class="text-sm text-[#6C757D]">2-3 ng?y l?m vi?c ? Mi?n ph?</div>
                                        <div class="text-xs text-[#198754]">D? ki?n giao: Th? 3, 17/08/2025</div>
                                    </div>
                                </div>
                                <div class="text-right">
                                    <div class="font-bold text-[#198754]">Mi?n ph?</div>
                                </div>
                            </div>
                        </div>

                        <!-- Fast Shipping -->
                        <div class="shipping-option border-2 border-gray-200 rounded-lg p-4 cursor-pointer hover:border-[#0D6EFD] transition-colors duration-200" onclick="selectShipping('fast')">
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <input type="radio" name="shipping" value="fast" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <div>
                                        <div class="font-medium text-[#212529]">Giao h?ng nhanh</div>
                                        <div class="text-sm text-[#6C757D]">24 gi? ? Ch? n?i th?nh TP.HCM</div>
                                        <div class="text-xs text-[#0D6EFD]">D? ki?n giao: Ng?y mai, 15/08/2025</div>
                                    </div>
                                </div>
                                <div class="text-right">
                                    <div class="font-bold text-[#212529]">?30,000</div>
                                </div>
                            </div>
                        </div>

                        <!-- Express Shipping -->
                        <div class="shipping-option border-2 border-gray-200 rounded-lg p-4 cursor-pointer hover:border-[#0D6EFD] transition-colors duration-200" onclick="selectShipping('express')">
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <input type="radio" name="shipping" value="express" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <div>
                                        <div class="flex items-center space-x-2">
                                            <span class="font-medium text-[#212529]">Giao h?ng si?u t?c</span>
                                            <span class="bg-[#FFC107] text-white px-2 py-1 rounded text-xs font-bold">? HOT</span>
                                        </div>
                                        <div class="text-sm text-[#6C757D]">2-4 gi? ? Trong ng?y</div>
                                        <div class="text-xs text-[#DC3545]">D? ki?n giao: H?m nay, 18:00-22:00</div>
                                    </div>
                                </div>
                                <div class="text-right">
                                    <div class="font-bold text-[#212529]">?80,000</div>
                                    <div class="text-xs text-[#6C757D] line-through">?120,000</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Payment Method -->
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <h2 class="text-xl font-bold text-[#212529] mb-4">? Ph??ng th?c thanh to?n</h2>
                    
                    <div class="space-y-3">
                        <!-- COD -->
                        <div class="payment-option selected border-2 rounded-lg p-4 cursor-pointer" onclick="selectPayment('cod')">
                            <div class="flex items-center space-x-3">
                                <input type="radio" name="payment" value="cod" checked class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                <div class="flex items-center space-x-3">
                                    <div class="w-10 h-10 bg-[#198754] rounded-lg flex items-center justify-center">
                                        <span class="text-white font-bold text-sm">?</span>
                                    </div>
                                    <div>
                                        <div class="font-medium text-[#212529]">Thanh to?n khi nh?n h?ng (COD)</div>
                                        <div class="text-sm text-[#6C757D]">Thanh to?n b?ng ti?n m?t khi nh?n h?ng</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Bank Transfer -->
                        <div class="payment-option border-2 border-gray-200 rounded-lg p-4 cursor-pointer hover:border-[#0D6EFD] transition-colors duration-200" onclick="selectPayment('bank')">
                            <div class="flex items-center space-x-3">
                                <input type="radio" name="payment" value="bank" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                <div class="flex items-center space-x-3">
                                    <div class="w-10 h-10 bg-[#0D6EFD] rounded-lg flex items-center justify-center">
                                        <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                            <path d="M4 4a2 2 0 00-2 2v1h16V6a2 2 0 00-2-2H4z"/>
                                            <path fill-rule="evenodd" d="M18 9H2v5a2 2 0 002 2h12a2 2 0 002-2V9zM4 13a1 1 0 011-1h1a1 1 0 110 2H5a1 1 0 01-1-1zm5-1a1 1 0 100 2h1a1 1 0 100-2H9z"/>
                                        </svg>
                                    </div>
                                    <div>
                                        <div class="font-medium text-[#212529]">Chuy?n kho?n ng?n h?ng</div>
                                        <div class="text-sm text-[#6C757D]">Chuy?n kho?n qua Internet Banking</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Credit/Debit Card -->
                        <div class="payment-option border-2 border-gray-200 rounded-lg p-4 cursor-pointer hover:border-[#0D6EFD] transition-colors duration-200" onclick="selectPayment('card')">
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <input type="radio" name="payment" value="card" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <div class="flex items-center space-x-3">
                                        <div class="w-10 h-10 bg-gray-700 rounded-lg flex items-center justify-center">
                                            <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                                                <path d="M4 4a2 2 0 00-2 2v1h16V6a2 2 0 00-2-2H4z"/>
                                                <path fill-rule="evenodd" d="M18 9H2v5a2 2 0 002 2h12a2 2 0 002-2V9zM4 13a1 1 0 011-1h1a1 1 0 110 2H5a1 1 0 01-1-1zm5-1a1 1 0 100 2h1a1 1 0 100-2H9z"/>
                                            </svg>
                                        </div>
                                        <div>
                                            <div class="font-medium text-[#212529]">Th? t?n d?ng/ghi n?</div>
                                            <div class="text-sm text-[#6C757D]">Visa, Mastercard, JCB</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="flex space-x-1">
                                    <div class="w-8 h-6 bg-blue-600 rounded text-white text-xs flex items-center justify-center">V</div>
                                    <div class="w-8 h-6 bg-red-600 rounded text-white text-xs flex items-center justify-center">M</div>
                                    <div class="w-8 h-6 bg-blue-800 rounded text-white text-xs flex items-center justify-center">J</div>
                                </div>
                            </div>
                        </div>

                        <!-- Digital Wallet -->
                        <div class="payment-option border-2 border-gray-200 rounded-lg p-4 cursor-pointer hover:border-[#0D6EFD] transition-colors duration-200" onclick="selectPayment('wallet')">
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <input type="radio" name="payment" value="wallet" class="text-[#0D6EFD] focus:ring-[#0D6EFD]">
                                    <div class="flex items-center space-x-3">
                                        <div class="w-10 h-10 bg-[#FF6B35] rounded-lg flex items-center justify-center">
                                            <span class="text-white font-bold text-sm">?</span>
                                        </div>
                                        <div>
                                            <div class="font-medium text-[#212529]">V? ?i?n t?</div>
                                            <div class="text-sm text-[#6C757D]">MoMo, ZaloPay, ShopeePay</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="flex space-x-1">
                                    <div class="w-8 h-6 bg-pink-600 rounded text-white text-xs flex items-center justify-center">M</div>
                                    <div class="w-8 h-6 bg-blue-500 rounded text-white text-xs flex items-center justify-center">Z</div>
                                    <div class="w-8 h-6 bg-orange-500 rounded text-white text-xs flex items-center justify-center">S</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Payment Details (Conditional) -->
                    <div id="cardDetails" class="hidden mt-4 space-y-4 p-4 bg-[#F8F9FA] rounded-lg">
                        <h3 class="font-medium text-[#212529]">Th?ng tin th?</h3>
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div class="md:col-span-2">
                                <label class="text-sm font-medium text-[#212529] block mb-1">S? th? *</label>
                                <input type="text" placeholder="1234 5678 9012 3456" maxlength="19" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            </div>
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-1">Ng?y h?t h?n *</label>
                                <input type="text" placeholder="MM/YY" maxlength="5" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            </div>
                            <div>
                                <label class="text-sm font-medium text-[#212529] block mb-1">M? CVV *</label>
                                <input type="password" placeholder="123" maxlength="4" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            </div>
                            <div class="md:col-span-2">
                                <label class="text-sm font-medium text-[#212529] block mb-1">T?n tr?n th? *</label>
                                <input type="text" placeholder="HOANG DINH" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Order Notes -->
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <h2 class="text-xl font-bold text-[#212529] mb-4">? Ghi ch? ??n h?ng</h2>
                    <textarea rows="4" placeholder="Ghi ch? cho ng??i b?n (tu? ch?n)" class="w-full px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] resize-none"></textarea>
                    <div class="text-xs text-[#6C757D] mt-2">V? d?: G?i tr??c khi giao, giao v?o bu?i chi?u...</div>
                </div>
            </div>

            <!-- Order Summary -->
            <div class="lg:col-span-1">
                <div class="bg-white rounded-lg shadow-sm p-6 sticky top-6">
                    <h3 class="text-xl font-bold text-[#212529] mb-4">? T?m t?t ??n h?ng</h3>
                    
                    <!-- Order Items -->
                    <div class="space-y-4 mb-6">
                        <!-- Item 1 -->
                        <div class="flex space-x-3">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0 relative">
                                <span class="absolute -top-2 -right-2 bg-[#0D6EFD] text-white rounded-full w-5 h-5 flex items-center justify-center text-xs">1</span>
                            </div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2 mb-1">iPhone 15 Pro Max 256GB Titan T? nhi?n</h4>
                                <div class="text-xs text-[#6C757D] mb-1">256GB ? Titan T? nhi?n</div>
                                <div class="flex items-center justify-between">
                                    <span class="text-sm text-[#6C757D]">SL: 1</span>
                                    <span class="text-sm font-bold text-[#0D6EFD]">?27,990,000</span>
                                </div>
                            </div>
                        </div>

                        <!-- Item 2 -->
                        <div class="flex space-x-3">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0 relative">
                                <span class="absolute -top-2 -right-2 bg-[#0D6EFD] text-white rounded-full w-5 h-5 flex items-center justify-center text-xs">1</span>
                            </div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2 mb-1">MacBook Air M3 13 inch 256GB</h4>
                                <div class="text-xs text-[#6C757D] mb-1">256GB SSD ? B?c</div>
                                <div class="flex items-center justify-between">
                                    <span class="text-sm text-[#6C757D]">SL: 1</span>
                                    <span class="text-sm font-bold text-[#0D6EFD]">?25,490,000</span>
                                </div>
                            </div>
                        </div>

                        <!-- Item 3 -->
                        <div class="flex space-x-3">
                            <div class="w-16 h-16 bg-gray-200 rounded-lg flex-shrink-0 relative">
                                <span class="absolute -top-2 -right-2 bg-[#0D6EFD] text-white rounded-full w-5 h-5 flex items-center justify-center text-xs">1</span>
                            </div>
                            <div class="flex-1 min-w-0">
                                <h4 class="text-sm font-medium text-[#212529] line-clamp-2 mb-1">AirPods Pro 2nd Generation USB-C</h4>
                                <div class="text-xs text-[#6C757D] mb-1">USB-C ? Tr?ng</div>
                                <div class="flex items-center justify-between">
                                    <span class="text-sm text-[#6C757D]">SL: 1</span>
                                    <span class="text-sm font-bold text-[#0D6EFD]">?6,390,000</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <hr class="border-gray-200 mb-4">

                    <!-- Pricing Breakdown -->
                    <div class="space-y-3 text-sm mb-6">
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">T?m t?nh (3 s?n ph?m)</span>
                            <span class="font-medium text-[#212529]">?59,870,000</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">Gi?m gi? s?n ph?m</span>
                            <span class="font-medium text-[#198754]">-?14,500,000</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">Ph? v?n chuy?n</span>
                            <span class="font-medium text-[#198754]" id="shippingFee">Mi?n ph?</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-[#6C757D]">M? gi?m gi?</span>
                            <span class="font-medium text-[#198754]">-?0</span>
                        </div>
                        <hr class="border-gray-200">
                        <div class="flex justify-between text-lg">
                            <span class="font-bold text-[#212529]">T?ng thanh to?n</span>
                            <span class="font-bold text-[#DC3545]" id="totalAmount">?59,870,000</span>
                        </div>
                    </div>

                    <!-- Coupon Code -->
                    <div class="mb-6">
                        <div class="flex space-x-2">
                            <input type="text" id="checkoutCoupon" placeholder="M? gi?m gi?" class="flex-1 h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] text-sm">
                            <button onclick="applyCheckoutCoupon()" class="bg-[#0D6EFD] text-white rounded-md px-4 py-2 text-sm font-medium hover:bg-[#084298] transition-colors duration-200">
                                ?p d?ng
                            </button>
                        </div>
                        <div id="checkoutCouponMessage" class="text-xs mt-2 hidden"></div>
                    </div>

                    <!-- Terms and Conditions -->
                    <div class="mb-6">
                        <label class="flex items-start space-x-2 cursor-pointer">
                            <input type="checkbox" id="agreeTerms" class="mt-1 rounded border-[#CED4DA] text-[#0D6EFD] focus:ring-[#0D6EFD]">
                            <span class="text-sm text-[#6C757D] leading-5">
                                T?i ??ng ? v?i 
                                <a href="#" class="text-[#0D6EFD] hover:underline">?i?u kho?n s? d?ng</a> 
                                v? 
                                <a href="#" class="text-[#0D6EFD] hover:underline">Ch?nh s?ch b?o m?t</a> 
                                c?a website
                            </span>
                        </label>
                    </div>

                    <!-- Place Order Button -->
                    <button onclick="placeOrder()" id="placeOrderBtn" class="w-full bg-[#DC3545] text-white rounded-lg px-6 py-4 font-bold text-lg hover:bg-[#BB2D3B] transition-colors duration-200 disabled:opacity-50 disabled:cursor-not-allowed">
                        <span id="orderBtnText">??t h?ng ngay</span>
                        <span id="orderBtnLoading" class="hidden">
                            <svg class="animate-spin -ml-1 mr-3 h-5 w-5 text-white inline" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                                <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                            </svg>
                            ?ang x? l?...
                        </span>
                    </button>

                    <!-- Security Info -->
                    <div class="mt-4 space-y-2 text-xs text-[#6C757D] text-center">
                        <div class="flex items-center justify-center space-x-2">
                            <svg class="w-4 h-4 text-[#198754]" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z"/>
                            </svg>
                            <span>B?o m?t th?ng tin thanh to?n SSL 256-bit</span>
                        </div>
                        <div>Th?ng tin th? ???c m? h?a v? b?o m?t tuy?t ??i</div>
                    </div>

                    <!-- Support Info -->
                    <div class="mt-6 p-4 bg-[#E7F3FF] rounded-lg">
                        <div class="text-center">
                            <div class="text-sm font-medium text-[#0D6EFD] mb-2">C?n h? tr??</div>
                            <div class="text-xs text-[#6C757D] space-y-1">
                                <div>? Hotline: 1900-1234</div>
                                <div>? Chat tr?c tuy?n 24/7</div>
                                <div>? support@ecommerce.vn</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-[#212529] text-white py-8 mt-12">
        <div class="container mx-auto max-w-[1200px] px-4">
            <div class="text-center">
                <h3 class="text-lg font-bold text-[#0D6EFD] mb-2">E-commerce</h3>
                <p class="text-sm text-gray-300 mb-4">Thanh to?n an to?n v? b?o m?t</p>
                <div class="flex justify-center space-x-4 text-xs">
                    <a href="#" class="text-gray-300 hover:text-white">Ch?nh s?ch b?o m?t</a>
                    <a href="#" class="text-gray-300 hover:text-white">?i?u kho?n s? d?ng</a>
                    <a href="#" class="text-gray-300 hover:text-white">H? tr?</a>
                </div>
            </div>
        </div>
    </footer>

    <script>
        let checkoutData = {
            shipping: 'standard',
            payment: 'cod',
            shippingFee: 0,
            couponDiscount: 0,
            items: [
                { id: 1, name: 'iPhone 15 Pro Max 256GB', price: 27990000, quantity: 1 },
                { id: 2, name: 'MacBook Air M3 13 inch 256GB', price: 25490000, quantity: 1 },
                { id: 3, name: 'AirPods Pro 2nd Generation', price: 6390000, quantity: 1 }
            ]
        };

        // Address functions
        function toggleAddressForm() {
            const currentAddress = document.getElementById('currentAddress');
            const addressForm = document.getElementById('addressForm');
            
            currentAddress.classList.toggle('hidden');
            addressForm.classList.toggle('hidden');
        }

        function saveAddress() {
            // Simulate saving address
            alert('?? l?u ??a ch? th?nh c?ng!');
            toggleAddressForm();
        }

        function cancelAddressEdit() {
            toggleAddressForm();
        }

        // Shipping selection
        function selectShipping(method) {
            checkoutData.shipping = method;
            
            // Update UI
            document.querySelectorAll('.shipping-option').forEach(option => {
                option.classList.remove('selected');
            });
            event.currentTarget.classList.add('selected');
            
            // Update radio button
            document.querySelector(`input[value="${method}"]`).checked = true;
            
            // Update shipping fee
            const fees = {
                'standard': 0,
                'fast': 30000,
                'express': 80000
            };
            
            checkoutData.shippingFee = fees[method];
            updateTotalAmount();
        }

        // Payment selection
        function selectPayment(method) {
            checkoutData.payment = method;
            
            // Update UI
            document.querySelectorAll('.payment-option').forEach(option => {
                option.classList.remove('selected');
            });
            event.currentTarget.classList.add('selected');
            
            // Update radio button
            document.querySelector(`input[name="payment"][value="${method}"]`).checked = true;
            
            // Show/hide card details
            const cardDetails = document.getElementById('cardDetails');
            if (method === 'card') {
                cardDetails.classList.remove('hidden');
            } else {
                cardDetails.classList.add('hidden');
            }
        }

        // Update total amount
        function updateTotalAmount() {
            const subtotal = checkoutData.items.reduce((sum, item) => sum + (item.price * item.quantity), 0);
            const total = subtotal + checkoutData.shippingFee - checkoutData.couponDiscount;
            
            // Update shipping fee display
            const shippingFeeElement = document.getElementById('shippingFee');
            if (checkoutData.shippingFee === 0) {
                shippingFeeElement.textContent = 'Mi?n ph?';
                shippingFeeElement.className = 'font-medium text-[#198754]';
            } else {
                shippingFeeElement.textContent = '?' + checkoutData.shippingFee.toLocaleString('vi-VN');
                shippingFeeElement.className = 'font-medium text-[#212529]';
            }
            
            // Update total
            document.getElementById('totalAmount').textContent = '?' + total.toLocaleString('vi-VN');
        }

        // Coupon functions
        function applyCheckoutCoupon() {
            const couponCode = document.getElementById('checkoutCoupon').value.trim().toUpperCase();
            const messageElement = document.getElementById('checkoutCouponMessage');
            
            if (!couponCode) {
                showCheckoutCouponMessage('Vui l?ng nh?p m? gi?m gi?', 'error');
                return;
            }
            
            // Simulate coupon validation
            const validCoupons = {
                'SAVE10': { type: 'percentage', value: 10, maxDiscount: 1000000 },
                'FREESHIP': { type: 'shipping', value: 0 },
                'CHECKOUT50': { type: 'fixed', value: 500000 }
            };
            
            if (validCoupons[couponCode]) {
                const coupon = validCoupons[couponCode];
                let discountAmount = 0;
                
                if (coupon.type === 'percentage') {
                    const subtotal = checkoutData.items.reduce((sum, item) => sum + (item.price * item.quantity), 0);
                    discountAmount = Math.min(subtotal * coupon.value / 100, coupon.maxDiscount);
                } else if (coupon.type === 'fixed') {
                    discountAmount = coupon.value;
                } else if (coupon.type === 'shipping') {
                    discountAmount = checkoutData.shippingFee;
                }
                
                checkoutData.couponDiscount = discountAmount;
                showCheckoutCouponMessage(`?p d?ng th?nh c?ng! Gi?m ?${discountAmount.toLocaleString('vi-VN')}`, 'success');
                updateTotalAmount();
                
            } else {
                showCheckoutCouponMessage('M? gi?m gi? kh?ng h?p l?', 'error');
            }
        }

        function showCheckoutCouponMessage(message, type) {
            const messageElement = document.getElementById('checkoutCouponMessage');
            messageElement.textContent = message;
            messageElement.classList.remove('hidden', 'text-[#198754]', 'text-[#DC3545]');
            messageElement.classList.add(type === 'success' ? 'text-[#198754]' : 'text-[#DC3545]');
        }

        // Place order
        function placeOrder() {
            // Validate terms agreement
            const agreeTerms = document.getElementById('agreeTerms').checked;
            if (!agreeTerms) {
                alert('Vui l?ng ??ng ? v?i ?i?u kho?n s? d?ng');
                return;
            }
            
            // Validate payment method specific fields
            if (checkoutData.payment === 'card') {
                const cardNumber = document.querySelector('#cardDetails input[placeholder="1234 5678 9012 3456"]').value;
                const expiryDate = document.querySelector('#cardDetails input[placeholder="MM/YY"]').value;
                const cvv = document.querySelector('#cardDetails input[placeholder="123"]').value;
                const cardName = document.querySelector('#cardDetails input[placeholder="HOANG DINH"]').value;
                
                if (!cardNumber || !expiryDate || !cvv || !cardName) {
                    alert('Vui l?ng ?i?n ??y ?? th?ng tin th?');
                    return;
                }
            }
            
            // Show loading state
            const orderBtn = document.getElementById('placeOrderBtn');
            const orderBtnText = document.getElementById('orderBtnText');
            const orderBtnLoading = document.getElementById('orderBtnLoading');
            
            orderBtn.disabled = true;
            orderBtnText.classList.add('hidden');
            orderBtnLoading.classList.remove('hidden');
            
            // Simulate order processing
            setTimeout(() => {
                const orderData = {
                    orderId: 'ORD' + Date.now(),
                    user: 'hoangdvdinos',
                    items: checkoutData.items,
                    shipping: checkoutData.shipping,
                    payment: checkoutData.payment,
                    total: checkoutData.items.reduce((sum, item) => sum + (item.price * item.quantity), 0) + checkoutData.shippingFee - checkoutData.couponDiscount,
                    timestamp: '2025-08-14 18:05:23',
                    status: 'pending'
                };
                
                // Store order data
                localStorage.setItem('orderData', JSON.stringify(orderData));
                
                // Clear cart
                localStorage.removeItem('cartData');
                
                // Redirect to success page
                window.location.href = '/order-success?id=' + orderData.orderId;
                
            }, 3000);
        }

        // Form validation
        function validateForm() {
            const agreeTerms = document.getElementById('agreeTerms').checked;
            const orderBtn = document.getElementById('placeOrderBtn');
            
            if (agreeTerms) {
                orderBtn.disabled = false;
                orderBtn.classList.remove('opacity-50', 'cursor-not-allowed');
            } else {
                orderBtn.disabled = true;
                orderBtn.classList.add('opacity-50', 'cursor-not-allowed');
            }
        }

        // Initialize page
        document.addEventListener('DOMContentLoaded', function() {
            // Load checkout data from cart
            const cartData = localStorage.getItem('checkoutData');
            if (cartData) {
                try {
                    const data = JSON.parse(cartData);
                    checkoutData.items = data.items || checkoutData.items;
                } catch (e) {
                    console.error('Error loading checkout data:', e);
                }
            }
            
            // Initialize total amount
            updateTotalAmount();
            
            // Add event listeners
            document.getElementById('agreeTerms').addEventListener('change', validateForm);
            
            // Validate initial state
            validateForm();
            
            // Auto-save form data
            setInterval(() => {
                const formData = {
                    shipping: checkoutData.shipping,
                    payment: checkoutData.payment,
                    timestamp: new Date().toISOString()
                };
                localStorage.setItem('checkoutFormData', JSON.stringify(formData));
            }, 10000);
            
            // Card number formatting
            const cardNumberInput = document.querySelector('#cardDetails input[placeholder="1234 5678 9012 3456"]');
            if (cardNumberInput) {
                cardNumberInput.addEventListener('input', function() {
                    let value = this.value.replace(/\s/g, '').replace(/[^0-9]/gi, '');
                    let formattedValue = value.match(/.{1,4}/g)?.join(' ') || value;
                    this.value = formattedValue;
                });
            }
            
            // Expiry date formatting
            const expiryInput = document.querySelector('#cardDetails input[placeholder="MM/YY"]');
            if (expiryInput) {
                expiryInput.addEventListener('input', function() {
                    let value = this.value.replace(/\D/g, '');
                    if (value.length >= 2) {
                        value = value.substring(0,2) + '/' + value.substring(2,4);
                    }
                    this.value = value;
                });
            }
            
            // Track checkout page view
            console.log('Checkout page viewed:', {
                user: 'hoangdvdinos',
                items: checkoutData.items.length,
                total: checkoutData.items.reduce((sum, item) => sum + (item.price * item.quantity), 0),
                timestamp: '2025-08-14 18:03:41'
            });
        });

        // Security: Prevent form data exposure
        window.addEventListener('beforeunload', function() {
            // Clear sensitive data from memory
            if (checkoutData.payment === 'card') {
                document.querySelector('#cardDetails input[placeholder="1234 5678 9012 3456"]').value = '';
                document.querySelector('#cardDetails input[placeholder="123"]').value = '';
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
            
            const timeElements = document.querySelectorAll('.text-sm.text-\\[\\#6C757D\\]');
            timeElements.forEach(el => {
                if (el.textContent.includes('/')) {
                    el.textContent = timeString;
                }
            });
        }, 60000);
    </script>
</body>
</html>