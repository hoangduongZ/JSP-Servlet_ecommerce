<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 8/27/2025
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Đổi mật khẩu</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.4/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
<div class="bg-white shadow-md rounded px-8 pt-6 pb-8 w-full max-w-sm">
    <h2 class="text-2xl font-bold mb-6 text-gray-800 text-center">Đổi mật khẩu</h2>
    <form>
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-semibold mb-2" for="currentPassword">
                Mật khẩu hiện tại
            </label>
            <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                   id="oldPassword" type="password" placeholder="Nhập mật khẩu hiện tại">
        </div>
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-semibold mb-2" for="newPassword">
                Mật khẩu mới
            </label>
            <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                   id="newPassword" type="password" placeholder="Nhập mật khẩu mới">
        </div>
        <div class="mb-6">
            <label class="block text-gray-700 text-sm font-semibold mb-2" for="confirmPassword">
                Xác nhận mật khẩu mới
            </label>
            <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                   id="confirmPassword" type="password" placeholder="Nhập lại mật khẩu mới">
        </div>
        <div class="flex items-center justify-between">
            <button class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                    type="submit">
                Đổi mật khẩu
            </button>
        </div>
    </form>
</div>
</body>
</html>