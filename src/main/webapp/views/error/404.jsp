<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 8/16/2025
  Time: 8:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>404 - Không tìm thấy trang | E-commerce</title>
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
                <svg class="w-24 h-24 mx-auto text-yellow-300" fill="none" viewBox="0 0 64 64">
                    <circle cx="32" cy="32" r="32" fill="#FFF3CD"/>
                    <path d="M32 44v-8" stroke="#FFC107" stroke-width="4" stroke-linecap="round"/>
                    <circle cx="32" cy="28" r="2" fill="#FFC107"/>
                </svg>
            </div>
            <h1 class="text-5xl font-bold mb-4">404</h1>
            <h2 class="text-2xl font-bold mb-4">Không tìm thấy trang</h2>
            <p class="text-lg mb-8 opacity-90">Trang bạn yêu cầu không tồn tại hoặc đã bị di chuyển.<br>Vui lòng kiểm tra lại đường dẫn hoặc trở về trang chủ.</p>
            <a href="/" class="bg-white text-[#0D6EFD] font-bold py-3 px-8 rounded-lg hover:bg-gray-100 transition-colors duration-200">
                Về trang chủ
            </a>
        </div>
    </section>
</main>
<jsp:include page="footer.jsp"/>
</body>
</html>
