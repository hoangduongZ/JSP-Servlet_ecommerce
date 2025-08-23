<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%-- Needed--%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập - E-commerce</title>
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
                <a href="#" class="text-[#6C757D] hover:text-[#0D6EFD] font-medium transition-colors duration-200">Đăng kí</a>
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
            <!-- Login Card -->
            <div class="bg-white rounded-lg shadow-sm p-8">
                <div class="text-center mb-8">
                    <h2 class="text-3xl font-bold text-[#212529]">Chào mừng trở lại</h2>
                    <p class="text-sm text-[#6C757D] mt-2">Đăng nhập để tiếp tục mua sắm</p>
                </div>

                <!-- Login Form -->
                <form id="loginForm" class="space-y-6">
                    <!-- Email/Username -->
                    <div>
                        <label for="loginId" class="text-sm mb-1 block text-[#212529] font-medium">Email hoặc số diện thoại</label>
                        <input type="text" id="loginId" name="loginId" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200" placeholder="Nhập Email hoặc số diện thoại">
                        <span id="loginIdError" class="text-xs text-[#DC3545] mt-1 hidden">Vui l?ng Nhập Email hoặc số diện thoại</span>
                    </div>

                    <!-- Password -->
                    <div>
                        <label for="password" class="text-sm mb-1 block text-[#212529] font-medium">Mật khẩu</label>
                        <div class="relative">
                            <input type="password" id="password" name="password" class="w-full h-10 px-3 py-2 pr-10 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD] transition-colors duration-200" placeholder="Nhập Mật khẩu">
                            <button type="button" onclick="togglePassword()" class="absolute inset-y-0 right-0 pr-3 flex items-center">
                                <svg id="passwordEyeIcon" class="w-5 h-5 text-[#6C757D] hover:text-[#212529] transition-colors duration-200" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                                </svg>
                            </button>
                        </div>
                        <span id="passwordError" class="text-xs text-[#DC3545] mt-1 hidden">Vui l?ng Nhập Mật khẩu</span>
                    </div>

                    <!-- Remember Me & Forgot Password -->
                    <div class="flex items-center justify-between">
                        <div class="flex items-center space-x-2">
                            <input type="checkbox" id="rememberMe" name="rememberMe" class="h-4 w-4 text-[#0D6EFD] border-[#CED4DA] rounded focus:ring-[#0D6EFD] focus:ring-2">
                            <label for="rememberMe" class="text-sm text-[#6C757D]">Ghi nhớ Đăng Nhập</label>
                        </div>
                        <a href="#" onclick="showForgotPassword()" class="text-sm text-[#0D6EFD] hover:underline font-medium">Quên Mật khẩu</a>
                    </div>

                    <!-- Login Error Message -->
                    <div id="loginError" class="bg-[#F8D7DA] border border-[#F1AEB5] text-[#721C24] px-3 py-2 rounded-md text-sm hidden">
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z"/>
                            </svg>
                            <span id="loginErrorMessage">Email ho?c Mật khẩu kh?ng ch?nh x?c</span>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" class="w-full bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 disabled:opacity-50 disabled:cursor-not-allowed">
                        <span id="submitText">Đăng nhập</span>
                        <span id="submitLoading" class="hidden">
                            <svg class="animate-spin -ml-1 mr-3 h-5 w-5 text-white inline" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                                <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                            </svg>
                            ?ang Đăng nhập...
                        </span>
                    </button>

                    <!-- Social Login -->
                    <div class="mt-6">
                        <div class="relative">
                            <div class="absolute inset-0 flex items-center">
                                <div class="w-full border-t border-gray-300"></div>
                            </div>
                            <div class="relative flex justify-center text-sm">
                                <span class="px-2 bg-white text-[#6C757D]">Hoặc Đăng Nhập bằng</span>
                            </div>
                        </div>

                        <div class="mt-6 grid grid-cols-2 gap-3">
                            <button type="button" onclick="loginWithGoogle()" class="w-full bg-white border border-[#CED4DA] text-[#6C757D] rounded-md px-4 py-2 font-medium hover:bg-[#F8F9FA] cursor-pointer transition-colors duration-200 flex items-center justify-center space-x-2">
                                <svg class="w-5 h-5" viewBox="0 0 24 24">
                                    <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
                                    <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
                                    <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
                                    <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
                                </svg>
                                <span>Google</span>
                            </button>

                            <button type="button" onclick="loginWithFacebook()" class="w-full bg-[#1877F2] text-white rounded-md px-4 py-2 font-medium hover:bg-[#166FE5] cursor-pointer transition-colors duration-200 flex items-center justify-center space-x-2">
                                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
                                </svg>
                                <span>Facebook</span>
                            </button>
                        </div>
                    </div>

                    <!-- Register Link -->
                    <div class="text-center mt-6">
                        <p class="text-sm text-[#6C757D]">
                            Chưa có tài khoản 
                            <a href="/register" class="text-[#0D6EFD] hover:underline font-medium">Đăng kí ngay</a>
                        </p>
                    </div>
                </form>
            </div>

            <!-- Quick Demo Login -->
            <div class="mt-6 bg-[#E7F3FF] border border-[#B6D7FF] rounded-lg p-4">
                <h3 class="text-sm font-bold text-[#0D6EFD] mb-2">? Demo nhanh</h3>
                <p class="text-xs text-[#0A58CA] mb-3">S? d?ng t?i kho?n demo ?? tr?i nghi?m:</p>
                <div class="grid grid-cols-1 gap-2">
                    <button onclick="quickLogin('customer')" class="text-left bg-white border border-[#0D6EFD] text-[#0D6EFD] rounded px-3 py-2 text-xs hover:bg-[#0D6EFD] hover:text-white transition-colors duration-200">
                        <strong>Kh?ch h?ng:</strong> customer@demo.com / 123456
                    </button>
                    <button onclick="quickLogin('admin')" class="text-left bg-white border border-[#198754] text-[#198754] rounded px-3 py-2 text-xs hover:bg-[#198754] hover:text-white transition-colors duration-200">
                        <strong>Admin:</strong> admin@demo.com / admin123
                    </button>
                </div>
            </div>
        </div>
    </main>

    <!-- Forgot Password Modal -->
    <div id="forgotPasswordModal" class="fixed inset-0 bg-black bg-opacity-50 hidden z-50">
        <div class="flex items-center justify-center min-h-screen p-4">
            <div class="bg-white rounded-lg shadow-lg max-w-md w-full">
                <div class="p-4 border-b border-gray-200">
                    <div class="flex items-center justify-between">
                        <h3 class="text-lg font-bold text-[#212529]">Qu?n Mật khẩu</h3>
                        <button onclick="closeForgotPassword()" class="text-[#6C757D] hover:text-[#212529]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <form id="forgotPasswordForm" class="p-6 space-y-4">
                    <p class="text-sm text-[#6C757D]">Nhập email c?a b?n ?? nh?n li?n k?t ??t l?i Mật khẩu</p>
                    
                    <div>
                        <label for="resetEmail" class="text-sm mb-1 block text-[#212529] font-medium">Email</label>
                        <input type="email" id="resetEmail" name="resetEmail" class="w-full h-10 px-3 py-2 border border-[#CED4DA] rounded-md focus:outline-none focus:ring-2 focus:ring-[#0D6EFD]" placeholder="Nhập ??a ch? email">
                        <span id="resetEmailError" class="text-xs text-[#DC3545] mt-1 hidden">Email kh?ng h?p l?</span>
                    </div>

                    <div id="resetSuccess" class="bg-[#D1E7DD] border border-[#A3CFBB] text-[#0A3622] px-3 py-2 rounded-md text-sm hidden">
                        <div class="flex items-center space-x-2">
                            <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"/>
                            </svg>
                            <span>?? g?i email reset password. Vui l?ng ki?m tra h?p th?!</span>
                        </div>
                    </div>
                    
                    <div class="flex space-x-3 pt-2">
                        <button type="submit" class="bg-[#0D6EFD] text-white rounded-md px-5 py-2 font-medium hover:bg-[#084298] cursor-pointer transition-colors duration-200 flex-1">
                            <span id="resetSubmitText">G?i email</span>
                            <span id="resetSubmitLoading" class="hidden">
                                <svg class="animate-spin -ml-1 mr-3 h-5 w-5 text-white inline" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                    <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                                    <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                                </svg>
                                ?ang g?i...
                            </span>
                        </button>
                        <button type="button" onclick="closeForgotPassword()" class="bg-white border border-[#6C757D] text-[#6C757D] rounded-md px-5 py-2 font-medium hover:bg-[#E9ECEF] cursor-pointer transition-colors duration-200 flex-1">
                            H?y
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-[#F8F9FA] border-t border-gray-200">
        <div class="container mx-auto max-w-[1200px] p-6">
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div>
                    <h3 class="font-bold text-[#212529] mb-3">Về chúng tôi</h3>
                    <p class="text-sm text-[#6C757D]">E-commerce h?ng ??u Vi?t Nam v?i h?ng tri?u s?n ph?m ch?t l??ng.</p>
                </div>
                <div>
                    <h3 class="font-bold text-[#212529] mb-3">Hỗ trợ khách hàng</h3>
                    <div class="space-y-2 text-sm">
                        <a href="#" class="block text-[#6C757D] hover:text-[#0D6EFD]">Hotline: 1900-1234</a>
                        <a href="#" class="block text-[#6C757D] hover:text-[#0D6EFD]">Email: support@ecommerce.vn</a>
                        <a href="#" class="block text-[#6C757D] hover:text-[#0D6EFD]">H??ng d?n mua h?ng</a>
                    </div>
                </div>
                <div>
                    <h3 class="font-bold text-[#212529] mb-3">Kết nối với chúng tôi</h3>
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
            <div class="text-center text-sm text-[#6C757D] mt-6 pt-6 border-t border-gray-300">
                ? 2025 E-commerce Vietnam. T?t c? quy?n ???c b?o l?u.
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

        function isValidLoginId(loginId) {
            return validateEmail(loginId) || validatePhone(loginId);
        }

        function togglePassword() {
            const field = document.getElementById('password');
            const icon = document.getElementById('passwordEyeIcon');
            
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
            document.getElementById('loginIdError').classList.add('hidden');
            document.getElementById('passwordError').classList.add('hidden');
            document.getElementById('loginError').classList.add('hidden');
        }

        function showError(fieldId, show = true) {
            const errorElement = document.getElementById(fieldId + 'Error');
            if (show) {
                errorElement.classList.remove('hidden');
            } else {
                errorElement.classList.add('hidden');
            }
        }

        function showLoginError(message) {
            document.getElementById('loginErrorMessage').textContent = message;
            document.getElementById('loginError').classList.remove('hidden');
        }

        // Quick login functions
        function quickLogin(type) {
            if (type === 'customer') {
                document.getElementById('loginId').value = 'customer@demo.com';
                document.getElementById('password').value = '123456';
            } else if (type === 'admin') {
                document.getElementById('loginId').value = 'admin@demo.com';
                document.getElementById('password').value = 'admin123';
            }
            
            // Auto submit after a brief delay
            setTimeout(() => {
                document.getElementById('loginForm').dispatchEvent(new Event('submit'));
            }, 300);
        }

        // Social login functions
        function loginWithGoogle() {
            alert('The feature is developing...');
            // Here you would redirect to Google OAuth
        }

        function loginWithFacebook() {
            alert('?ang chuy?n h??ng ??n Facebook...');
            // Here you would redirect to Facebook OAuth
        }

        // Forgot password functions
        function showForgotPassword() {
            document.getElementById('forgotPasswordModal').classList.remove('hidden');
            document.getElementById('resetEmail').focus();
        }

        function closeForgotPassword() {
            document.getElementById('forgotPasswordModal').classList.add('hidden');
            document.getElementById('forgotPasswordForm').reset();
            document.getElementById('resetEmailError').classList.add('hidden');
            document.getElementById('resetSuccess').classList.add('hidden');
        }

        // Real-time validation
        document.getElementById('loginId').addEventListener('input', function() {
            const value = this.value.trim();
            showError('loginId', !value);
        });

        document.getElementById('password').addEventListener('input', function() {
            const value = this.value;
            showError('password', !value);
        });

        // Login form submission
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            clearErrors();
            
            const loginId = document.getElementById('loginId').value.trim();
            const password = document.getElementById('password').value;
            const rememberMe = document.getElementById('rememberMe').checked;
            
            let hasError = false;
            
            // Validate fields
            if (!loginId) {
                showError('loginId');
                hasError = true;
            }
            
            if (!password) {
                showError('password');
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
                // Demo authentication
                const validCredentials = [
                    { loginId: 'customer@demo.com', password: '123456', role: 'customer', name: 'Kh?ch h?ng Demo' },
                    { loginId: 'admin@demo.com', password: 'admin123', role: 'admin', name: 'Admin Demo' },
                    { loginId: 'hoangdvdinos@gmail.com', password: 'password123', role: 'customer', name: 'Ho?ng ?inh' },
                    { loginId: '0987654321', password: '123456', role: 'customer', name: 'Ng??i d?ng S?T' }
                ];
                
                const user = validCredentials.find(cred => 
                    cred.loginId === loginId && cred.password === password
                );
                
                if (user) {
                    // Store user info (in real app, use proper session management)
                    localStorage.setItem('currentUser', JSON.stringify({
                        name: user.name,
                        email: user.loginId,
                        role: user.role,
                        rememberMe: rememberMe,
                        loginTime: new Date().toISOString()
                    }));
                    
                    alert(`Đăng nhập th?nh c?ng! Ch?o m?ng ${user.name}`);
                    
                    // Redirect based on role
                    if (user.role === 'admin') {
                        window.location.href = '/admin/dashboard';
                    } else {
                        window.location.href = '/';
                    }
                } else {
                    showLoginError('Email/S?T ho?c Mật khẩu kh?ng ch?nh x?c');
                }
                
                // Reset loading state
                submitBtn.disabled = false;
                submitText.classList.remove('hidden');
                submitLoading.classList.add('hidden');
            }, 1500);
        });

        // Forgot password form submission
        document.getElementById('forgotPasswordForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const email = document.getElementById('resetEmail').value.trim();
            
            if (!email || !validateEmail(email)) {
                document.getElementById('resetEmailError').classList.remove('hidden');
                return;
            }
            
            document.getElementById('resetEmailError').classList.add('hidden');
            
            // Show loading state
            const submitBtn = this.querySelector('button[type="submit"]');
            const submitText = document.getElementById('resetSubmitText');
            const submitLoading = document.getElementById('resetSubmitLoading');
            
            submitBtn.disabled = true;
            submitText.classList.add('hidden');
            submitLoading.classList.remove('hidden');
            
            // Simulate API call
            setTimeout(() => {
                document.getElementById('resetSuccess').classList.remove('hidden');
                
                // Reset loading state
                submitBtn.disabled = false;
                submitText.classList.remove('hidden');
                submitLoading.classList.add('hidden');
                
                // Auto close after 3 seconds
                setTimeout(() => {
                    closeForgotPassword();
                }, 3000);
            }, 1500);
        });

        // Close modal when clicking outside
        document.getElementById('forgotPasswordModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closeForgotPassword();
            }
        });

        // Initialize
        document.addEventListener('DOMContentLoaded', function() {
            // Focus first field
            document.getElementById('loginId').focus();
            
            // Check if user is already logged in
            const currentUser = localStorage.getItem('currentUser');
            if (currentUser) {
                const user = JSON.parse(currentUser);
                const loginTime = new Date(user.loginTime);
                const now = new Date();
                const hoursDiff = (now - loginTime) / (1000 * 60 * 60);
                
                // Auto-logout after 24 hours (or immediately if not remember me)
                if (user.rememberMe && hoursDiff < 24) {
                    alert(`B?n ?? Đăng nhập r?i! Chuy?n h??ng...`);
                    if (user.role === 'admin') {
                        window.location.href = '/admin/dashboard';
                    } else {
                        window.location.href = '/';
                    }
                } else {
                    localStorage.removeItem('currentUser');
                }
            }
        });
    </script>
</body>
</html>