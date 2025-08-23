<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.ecm.model.Product" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
<div class="max-w-6xl mx-auto px-4 py-8 bg-white">
    <h1 class="text-2xl font-semibold text-gray-800 border-b border-gray-300 pb-3 mb-6 tracking-wide">
        Danh sách sản phẩm
    </h1>

    <!-- Search -->
    <form action="/products" method="get" class="mb-6">
        <input
                type="text"
                name="keyword"
                placeholder="Tìm kiếm sản phẩm..."
                value="<%= request.getParameter("keyword") != null ? request.getParameter("keyword") : "" %>"
                class="w-full sm:w-80 px-3 py-2 border border-gray-300 focus:outline-none focus:ring-2 focus:ring-gray-700 focus:border-gray-700 text-sm"
        />
    </form>

    <!-- Product grid -->
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">

        <%
            List<Product> products = (List<Product>) request.getAttribute("products");
            if (products != null) {
                for (Product product : products) {
        %>
        <div class="border border-gray-300 p-4 hover:shadow-md transition-shadow">
            <img src="<%= product.getImageUrl() %>" alt="<%= product.getName() %>"
                 class="w-full h-48 object-cover mb-4 border border-gray-200">
            <h2 class="text-lg font-medium text-gray-900 mb-1"><%= product.getName() %></h2>
            <p class="text-sm text-gray-600 mb-2">Mã: <%= product.getCode() %></p>
            <p class="text-base text-gray-800 font-semibold">₫<%= product.getPrice() %></p>
        </div>
        <%
            }
        } else {
        %>
        <p class="text-gray-500">Không có sản phẩm nào.</p>
        <%
            }
        %>
    </div>

    <!-- Pagination -->
    <div class="flex justify-center mt-10 space-x-1 text-sm">
        <%
            int totalPages = (int) request.getAttribute("totalPages");
            int currentPage = (int) request.getAttribute("currentPage");
            String keyword = request.getParameter("keyword") != null ? request.getParameter("keyword") : "";
            for (int i = 1; i <= totalPages; i++) {
                boolean isCurrent = i == currentPage;
        %>
        <a href="/products?page=<%= i %>&keyword=<%= keyword %>"
           class="px-3 py-1 border border-gray-400 <%= isCurrent ? "bg-gray-800 text-white" : "bg-white text-gray-800" %>">
            <%= i %>
        </a>
        <%
            }
        %>
    </div>
</div>
</body>
</html>
