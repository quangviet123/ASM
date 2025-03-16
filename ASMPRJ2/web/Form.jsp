<%-- 
    Document   : Form
    Created on : Mar 7, 2025, 10:37:09 PM
    Author     : ADMIN
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        /* Căn giữa màn hình */
        body {
            font-family: Arial, sans-serif;
            background-color: #eaf8f6; /* Xanh nhạt */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
         .btn-back {
                position: absolute;
                top: 20px;
                right: 20px;
                background-color: #3b6cc2; /* Màu xanh dương cho đồng bộ với submit-btn */
                color: white;
                border: none;
                padding: 10px 20px;
                font-size: 16px;
                font-weight: bold;
                border-radius: 5px;
                cursor: pointer;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
                transition: background-color 0.3s ease;
            }
            .btn-back:hover {
                background-color: #2a5298;
            }

        /* Form container */
        .form-container {
            background-color: white; /* Xóa màu cam, dùng trắng */
            padding: 20px;
            border-radius: 8px;
            border: 1px solid #ddd;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: left;
        }

        .form-container h2 {
            text-align: center;
            color: #333;
            margin-top: 0;
        }

        .form-container p {
            font-size: 14px;
            margin-bottom: 10px;
        }

        .form-container label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        .form-container input, 
        .form-container textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .form-container textarea {
            height: 80px;
            resize: none;
        }

        .submit-btn {
            background-color: #3b6cc2; /* Xanh dương */
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
            width: 100%;
            text-align: center;
        }

        .submit-btn:hover {
            background-color: #2a5298;
        }
    </style>
    <body>
        <button class="btn-back" onclick="window.history.back();">
            Quay lại
        </button>
        <div class="form-container">
        <h2>Đơn xin nghỉ phép</h2>
        <form action="Request" method="post">
            <label for="from-date">Từ ngày:</label>
            <input type="date" id="from-date" name="fromDate" required>

            <label for="to-date">Tới ngày:</label>
            <input type="date" id="to-date" name="toDate" required>

            <label for="reason">Lý do:</label>
            <textarea id="reason" name="reason" required></textarea>

            <button type="submit" class="submit-btn">Gửi</button>
        </form>
        <c:if test="${not empty error}">
    <div style="color: red; margin-bottom: 10px;">
        <ul>
            <c:forEach var="error" items="${error}">
                <li>${error}</li>   
            </c:forEach>
        </ul>
    </div>
</c:if>
    </div>
    </body>
</html>
