<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>500 - Lỗi máy chủ nội bộ | E-commerce</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', Arial, Helvetica, sans-serif; }
        .hero-gradient { background: linear-gradient(135deg, #86a9df 0%, #4d7cc8 100%); }
        .animate-float {
            animation: float 3s ease-in-out infinite;
        }
        @keyframes float {
            0%,100% { transform: translateY(0px);}
            50% { transform: translateY(-10px);}
        }
    </style>
</head>
<body class="bg-[#F8F9FA] leading-relaxed tracking-wide">
<%-- Header giống trang chủ --%>
<jsp:include page="header.jsp"/>
<main>
    <section class="hero-gradient text-white py-24">
        <div class="container mx-auto max-w-[700px] px-4 text-center">
            <div class="animate-float inline-block mb-6">
                <svg class="w-24 h-24 mx-auto text-[#DC3545]" fill="none" viewBox="0 0 64 64">
                    <circle cx="32" cy="32" r="32" fill="#F8D7DA"/>
                    <path d="M32 20v16M32 40v4" stroke="#DC3545" stroke-width="4" stroke-linecap="round"/>
                </svg>
            </div>
            <h1 class="text-5xl font-bold mb-4">500</h1>
            <h2 class="text-2xl font-bold mb-4">Lỗi máy chủ nội bộ</h2>
            <p class="text-lg mb-8 opacity-90">
                Đã xảy ra lỗi máy chủ. Bạn vui lòng thử lại sau hoặc liên hệ bộ phận hỗ trợ.<br>
                Xin lỗi vì sự bất tiện này!
            </p>
            <a href="/" class="bg-white text-[#0D6EFD] font-bold py-3 px-8 rounded-lg hover:bg-gray-100 transition-colors duration-200">
                Về trang chủ
            </a>
        </div>
    </section>
</main>
<jsp:include page="footer.jsp"/>
</body>
</html>