<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký tài khoản - E-commerce</title>
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
                <h1 class="text-xl font-bold text-[#0D6EFD]">E-commerce</h1>
            </div>
            
            <!-- Navigation -->
            <nav class="hidden md:flex space-x-6">
                <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD] font-medium transition-colors duration-200">Trang chủ</a>
                <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD] font-medium transition-colors duration-200">Sản phẩm</a>
                <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD] font-medium transition-colors duration-200">Liên hệ</a>
            </nav>

            <!-- Auth Links -->
            <div class="flex items-center space-x-4">
                <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD] font-medium transition-colors duration-200">Đăng nhập</a>
                <div class="relative cursor-pointer">
                    <svg class="w-6 h-6 text-[#6C757D] hover:text-[#0D6EFD] transition-colors duration-200" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4m-.4 0L5 5H3m4 8h10m-10 0v6a1 1 0 001 1h8a1 1 0 001-1v-6m-10 0H3"></path>
                    </svg>
                    <span class="absolute top-0 right-0 bg-[#DC3545] text-white rounded-full text-xs w-5 h-5 flex items-center justify-center transform translate-x-2 -translate-y-2">0</span>
                </div>
                
                <!-- Mobile Menu Button -->
                <button class="md:hidden text-[#6C757D] hover:text-[#0D6EFD]">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                    </svg>
                </button>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <main class="min-h-screen flex items-center justify-center px-4 py-12">
        <div class="max-w-md w-full">
            <!-- Register Card -->
            <div class="bg-white rounded-lg shadow-sm p-8">
                <div class="text-center mb-8">
                    <h2 class="text-3xl font-bold text-[#212529]">Đăng ký tài khoản</h2>
                    <p class="text-sm text-[#6C757D] mt-2">Tạo tài khoản mới để mua sắm</p>
                </div>

                <form id="registerForm" class="space-y-6">
                    <!-- Full Name -->
                    <div>
                        <label for="fullName" class="text-sm mb-1 block text-[#212529] font-medium">Họ và tên</label>
                        <input type="text" id="fullName" name="fullName" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200" placeholder="Nhập họ và tên của bạn">
                        <span id="fullNameError" class="text-xs text-[#DC3545] mt-1 hidden">Vui lòng nhập họ và tên</span>
                    </div>

                    <!-- Email -->
                    <div>
                        <label for="email" class="text-sm mb-1 block text-[#212529] font-medium">Email</label>
                        <input type="email" id="email" name="email" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200" placeholder="Nhập địa chỉ email">
                        <span id="emailError" class="text-xs text-[#DC3545] mt-1 hidden">Email không hợp lệ</span>
                    </div>

                    <!-- Phone Number -->
                    <div>
                        <label for="phoneNumber" class="text-sm mb-1 block text-[#212529] font-medium">Số điện thoại</label>
                        <input type="tel" id="phoneNumber" name="phoneNumber" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200" placeholder="Nhập số điện thoại">
                        <span id="phoneError" class="text-xs text-[#DC3545] mt-1 hidden">Số điện thoại không hợp lệ</span>
                    </div>

                    <!-- Password -->
                    <div>
                        <label for="password" class="text-sm mb-1 block text-[#212529] font-medium">Mật khẩu</label>
                        <div class="relative">
                            <input type="password" id="password" name="password" class="w-full h-10 px-3 py-2 pr-10 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200" placeholder="Nhập mật khẩu">
                            <button type="button" onclick="togglePassword('password')" class="absolute inset-y-0 right-0 pr-3 flex items-center">
                                <svg id="passwordEyeIcon" class="w-5 h-5 text-[#6C757D] hover:text-[#212529] transition-colors duration-200" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                                </svg>
                            </button>
                        </div>
                        <span id="passwordError" class="text-xs text-[#DC3545] mt-1 hidden">Mật khẩu phải có ít nhất 6 ký tự</span>

                        <!-- Password Strength Indicator -->
                        <div class="mt-2">
                            <div class="flex space-x-1 mb-1">
                                <div id="strength1" class="h-1 w-full bg-gray-200 rounded"></div>
                                <div id="strength2" class="h-1 w-full bg-gray-200 rounded"></div>
                                <div id="strength3" class="h-1 w-full bg-gray-200 rounded"></div>
                                <div id="strength4" class="h-1 w-full bg-gray-200 rounded"></div>
                            </div>
                            <span id="strengthText" class="text-xs text-[#6C757D]">Độ mạnh mật khẩu</span>
                        </div>
                    </div>

                    <!-- Confirm Password -->
                    <div>
                        <label for="confirmPassword" class="text-sm mb-1 block text-[#212529] font-medium">Xác nhận mật khẩu</label>
                        <div class="relative">
                            <input type="password" id="confirmPassword" name="confirmPassword" class="w-full h-10 px-3 py-2 pr-10 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200" placeholder="Nhập lại mật khẩu">
                            <button type="button" onclick="togglePassword('confirmPassword')" class="absolute inset-y-0 right-0 pr-3 flex items-center">
                                <svg id="confirmPasswordEyeIcon" class="w-5 h-5 text-[#6C757D] hover:text-[#212529] transition-colors duration-200" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                                </svg>
                            </button>
                        </div>
                        <span id="confirmPasswordError" class="text-xs text-[#DC3545] mt-1 hidden">Mật khẩu xác nhận không khớp</span>
                    </div>

                    <!-- Terms and Conditions -->
                    <div class="flex items-start space-x-2">
                        <input type="checkbox" id="agreeTerms" name="agreeTerms" class="mt-1 h-4 w-4 text-[#0D6EFD] border-[#CED4DA] rounded focus:ring-[#0D6EFD] focus:ring-2">
                        <label for="agreeTerms" class="text-sm text-[#6C757D] leading-5">
                            Tôi đồng ý với
                            <a href="#" class="text-[#0D6EFD] hover:underline">Điều khoản sử dụng</a>
                            và
                            <a href="#" class="text-[#0D6EFD] hover:underline">Chính sách bảo mật</a>
                            của website
                        </label>
                    </div>
                    <span id="termsError" class="text-xs text-[#DC3545] mt-1 hidden">Vui lòng đồng ý với điều khoản sử dụng</span>

                    <!-- Newsletter Subscription -->
                    <div class="flex items-start space-x-2">
                        <input type="checkbox" id="newsletter" name="newsletter" class="mt-1 h-4 w-4 text-[#0D6EFD] border-[#CED4DA] rounded focus:ring-[#0D6EFD] focus:ring-2" checked>
                        <label for="newsletter" class="text-sm text-[#6C757D] leading-5">
                            Nhận thông báo về khuyến mãi và sản phẩm mới qua email
                        </label>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" class="w-full bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 disabled:opacity-50 disabled:cursor-not-allowed">
                        <span id="submitText">Đăng ký</span>
                        <span id="submitLoading" class="hidden">
                            <svg class="animate-spin -ml-1 mr-3 h-5 w-5 text-white inline" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                                <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                            </svg>
                            Đang xử lý...
                        </span>
                    </button>

                    <!-- Social Register -->
                    <div class="mt-6">
                        <div class="relative">
                            <div class="absolute inset-0 flex items-center">
                                <div class="w-full border-t border-gray-300"></div>
                            </div>
                            <div class="relative flex justify-center text-sm">
                                <span class="px-2 bg-white text-[#6C757D]">Hoặc đăng ký bằng</span>
                            </div>
                        </div>

                        <div class="mt-6 grid grid-cols-2 gap-3">
                            <button type="button" class="w-full bg-white border border-[#CED4DA] text-[#6C757D] rounded-md px-4 py-2 font-medium hover:bg-[#F8F9FA] cursor-pointer transition-colors duration-200 flex items-center justify-center space-x-2">
                                <svg class="w-5 h-5" viewBox="0 0 24 24">
                                    <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
                                    <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
                                    <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
                                    <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
                                </svg>
                                <span>Google</span>
                            </button>

                            <button type="button" class="w-full bg-[#1877F2] text-white rounded-md px-4 py-2 font-medium hover:bg-[#166FE5] cursor-pointer transition-colors duration-200 flex items-center justify-center space-x-2">
                                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
                                </svg>
                                <span>Facebook</span>
                            </button>
                        </div>
                    </div>

                    <!-- Login Link -->
                    <div class="text-center mt-6">
                        <p class="text-sm text-[#6C757D]">
                            Đã có tài khoản?
                            <a href="/login" class="text-[#0D6EFD] hover:underline font-medium">Đăng nhập ngay</a>
                        </p>
                    </div>
                </form>
            </div>

            <!-- Additional Info -->
            <div class="mt-8 text-center">
                <div class="bg-white rounded-lg shadow-sm p-6">
                    <h3 class="text-lg font-bold text-[#212529] mb-4">Tại sao nên đăng ký?</h3>
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4 text-sm">
                        <div class="text-center">
                            <div class="bg-[#E7F3FF] p-3 rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-2">
                                <svg class="w-6 h-6 text-[#0D6EFD]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z"></path>
                                </svg>
                            </div>
                            <h4 class="font-medium text-[#212529] mb-1">Mua sắm nhanh chóng</h4>
                            <p class="text-[#6C757D]">Lưu thông tin để thanh toán nhanh hơn</p>
                        </div>
                        <div class="text-center">
                            <div class="bg-[#E8F5E8] p-3 rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-2">
                                <svg class="w-6 h-6 text-[#198754]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                            </div>
                            <h4 class="font-medium text-[#212529] mb-1">Theo dõi đơn hàng</h4>
                            <p class="text-[#6C757D]">Xem trạng thái và lịch sử đơn hàng</p>
                        </div>
                        <div class="text-center">
                            <div class="bg-[#FFF3CD] p-3 rounded-full w-12 h-12 flex items-center justify-center mx-auto mb-2">
                                <svg class="w-6 h-6 text-[#FFC107]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v13m0-13V6a2 2 0 112 2h-2zm0 0V5.5A2.5 2.5 0 109.5 8H12zm-7 4h14M5 12a2 2 0 110-4h14a2 2 0 110 4M5 12v7a2 2 0 002 2h10a2 2 0 002-2v-7"></path>
                                </svg>
                            </div>
                            <h4 class="font-medium text-[#212529] mb-1">Nhận ưu đãi đặc biệt</h4>
                            <p class="text-[#6C757D]">Nhận thông báo khuyến mãi đặc quyền</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-[#F8F9FA] border-t border-gray-200">
        <div class="container mx-auto max-w-[1200px] p-6">
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div>
                    <h3 class="font-bold text-[#212529] mb-3">Về chúng tôi</h3>
                    <p class="text-sm text-[#6C757D]">E-commerce hàng đầu Việt Nam với hàng triệu sản phẩm chất lượng.</p>
                </div>
                <div>
                    <h3 class="font-bold text-[#212529] mb-3">Liên kết nhanh</h3>
                    <div class="space-y-2 text-sm">
                        <a href="#" class="block text-[#6C757D] hover:text-[#0D6EFD]">Chính sách bảo mật</a>
                        <a href="#" class="block text-[#6C757D] hover:text-[#0D6EFD]">Điều khoản sử dụng</a>
                        <a href="#" class="block text-[#6C757D] hover:text-[#0D6EFD]">Hỗ trợ khách hàng</a>
                    </div>
                </div>
                <div>
                    <h3 class="font-bold text-[#212529] mb-3">Kết nối với chúng tôi</h3>
                    <div class="flex space-x-4">
                        <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD]">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"/>
                            </svg>
                        </a>
                        <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD]">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
                            </svg>
                        </a>
                        <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD]">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M12.017 0C5.396 0 .029 5.367.029 11.987c0 5.079 3.158 9.417 7.618 11.174-.105-.949-.199-2.403.041-3.439.219-.937 1.406-5.957 1.406-5.957s-.359-.72-.359-1.781c0-1.663.967-2.911 2.168-2.911 1.024 0 1.518.769 1.518 1.688 0 1.029-.653 2.567-.992 3.992-.285 1.193.6 2.165 1.775 2.165 2.128 0 3.768-2.245 3.768-5.487 0-2.861-2.063-4.869-5.008-4.869-3.41 0-5.409 2.562-5.409 5.199 0 1.033.394 2.143.889 2.741.097.118.112.221.085.341-.09.394-.293 1.199-.334 1.363-.053.225-.172.271-.402.165-1.495-.69-2.433-2.878-2.433-4.646 0-3.776 2.748-7.252 7.92-7.252 4.158 0 7.392 2.967 7.392 6.923 0 4.135-2.607 7.462-6.233 7.462-1.214 0-2.357-.629-2.746-1.378l-.748 2.853c-.271 1.043-1.002 2.35-1.492 3.146C9.57 23.812 10.763 24.009 12.017 24.009c6.624 0 11.99-5.367 11.99-11.988C24.007 5.367 18.641.001.012.001z"/>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script>
        // Form validation
        function validateEmail(email) {
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }

        function validatePhone(phone) {
            const phoneRegex = /^(\+84|0)[0-9]{9,10}$/;
            return phoneRegex.test(phone);
        }

        function checkPasswordStrength(password) {
            let score = 0;
            let feedback = '';
            
            if (password.length >= 8) score++;
            if (/[a-z]/.test(password)) score++;
            if (/[A-Z]/.test(password)) score++;
            if (/[0-9]/.test(password)) score++;
            if (/[^A-Za-z0-9]/.test(password)) score++;

            const strengths = ['strength1', 'strength2', 'strength3', 'strength4'];
            const colors = ['#DC3545', '#FFC107', '#0D6EFD', '#198754'];
            const texts = ['R?t y?u', 'Y?u', 'Trung b?nh', 'M?nh', 'R?t m?nh'];

            // Reset all
            strengths.forEach(id => {
                document.getElementById(id).className = 'h-1 w-full bg-gray-200 rounded';
            });

            // Apply strength colors
            for (let i = 0; i < Math.min(score, 4); i++) {
                document.getElementById(strengths[i]).style.backgroundColor = colors[Math.min(score - 1, 3)];
            }

            document.getElementById('strengthText').textContent = texts[score] || '?? m?nh m?t kh?u';
            document.getElementById('strengthText').style.color = colors[Math.min(score - 1, 3)] || '#6C757D';

            return score;
        }

        function togglePassword(fieldId) {
            const field = document.getElementById(fieldId);
            const icon = document.getElementById(fieldId + 'EyeIcon');
            
            if (field.type === 'password') {
                field.type = 'text';
                icon.innerHTML = `
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.878 9.878L8.464 8.464M9.878 9.878l4.242 4.242m0 0L16.536 16.536M21.542 12c-1.274 4.057-5.064 7-9.542 7M3 3l18 18"></path>
                `;
            } else {
                field.type = 'password';
                icon.innerHTML = `
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                `;
            }
        }

        function clearErrors() {
            const errorElements = ['fullNameError', 'emailError', 'phoneError', 'passwordError', 'confirmPasswordError', 'termsError'];
            errorElements.forEach(id => {
                document.getElementById(id).classList.add('hidden');
            });
        }

        function showError(fieldId, show = true) {
            const errorElement = document.getElementById(fieldId + 'Error');
            if (show) {
                errorElement.classList.remove('hidden');
            } else {
                errorElement.classList.add('hidden');
            }
        }

        // Real-time validation
        document.getElementById('fullName').addEventListener('input', function() {
            const value = this.value.trim();
            showError('fullName', !value);
        });

        document.getElementById('email').addEventListener('input', function() {
            const value = this.value.trim();
            showError('email', value && !validateEmail(value));
        });

        document.getElementById('phoneNumber').addEventListener('input', function() {
            const value = this.value.trim();
            showError('phone', value && !validatePhone(value));
        });

        document.getElementById('password').addEventListener('input', function() {
            const value = this.value;
            checkPasswordStrength(value);
            showError('password', value && value.length < 6);
            
            // Check confirm password if it has value
            const confirmPassword = document.getElementById('confirmPassword').value;
            if (confirmPassword) {
                showError('confirmPassword', confirmPassword !== value);
            }
        });

        document.getElementById('confirmPassword').addEventListener('input', function() {
            const value = this.value;
            const password = document.getElementById('password').value;
            showError('confirmPassword', value && value !== password);
        });

        // Form submission
        document.getElementById('registerForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            clearErrors();
            
            const fullName = document.getElementById('fullName').value.trim();
            const email = document.getElementById('email').value.trim();
            const phoneNumber = document.getElementById('phoneNumber').value.trim();
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            const agreeTerms = document.getElementById('agreeTerms').checked;
            
            let hasError = false;
            
            // Validate all fields
            if (!fullName) {
                showError('fullName');
                hasError = true;
            }
            
            if (!email || !validateEmail(email)) {
                showError('email');
                hasError = true;
            }
            
            if (!phoneNumber || !validatePhone(phoneNumber)) {
                showError('phone');
                hasError = true;
            }
            
            if (!password || password.length < 6) {
                showError('password');
                hasError = true;
            }
            
            if (!confirmPassword || confirmPassword !== password) {
                showError('confirmPassword');
                hasError = true;
            }
            
            if (!agreeTerms) {
                showError('terms');
                hasError = true;
            }
            
            if (hasError) return;
            
            // Show loading state
            const submitBtn = document.querySelector('button[type="submit"]');
            const submitText = document.getElementById('submitText');
            const submitLoading = document.getElementById('submitLoading');
            
            submitBtn.disabled = true;
            submitText.classList.add('hidden');
            submitLoading.classList.remove('hidden');
            
            // Simulate API call
            setTimeout(() => {
                alert('Đăng ký thành công! Vui lòng kiểm tra email để xác thực tài khoản.');

                // Reset form
                this.reset();
                checkPasswordStrength('');
                
                // Reset loading state
                submitBtn.disabled = false;
                submitText.classList.remove('hidden');
                submitLoading.classList.add('hidden');
            }, 2000);
        });

        // Initialize
        document.addEventListener('DOMContentLoaded', function() {
            // Focus first field
            document.getElementById('fullName').focus();
        });
    </script>
</body>
</html>