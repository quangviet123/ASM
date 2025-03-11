<%-- 
    Document   : Management
    Created on : Mar 7, 2025, 10:22:56 PM
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
        body {
            font-family: Arial, sans-serif;
            background-color: #eaf8f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .logout-button {
                position: absolute;
                top: 20px;
                left: 20px;
                background-color: #ff7043;
                color: white;
                border: none;
                padding: 10px 20px;
                font-size: 16px;
                font-weight: bold;
                border-radius: 20px;
                cursor: pointer;
                box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease-in-out;
            }
            
            .logout-button:hover {
                background-color: #e64a19;
                transform: scale(1.05);
            }

        .container {
            text-align: center;
        }

        .custom-button {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: #e0f2f1;
            border: 2px solid #004d40;
            padding: 15px 25px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 30px;
            cursor: pointer;
            margin: 15px;
            width: 320px; /* Đảm bảo nút đủ rộng để chứa nội dung */
            color: #004d40;
            text-align: center;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease-in-out;
            white-space: nowrap; /* Ngăn chữ xuống dòng */
        }

        .custom-button:hover {
            background-color: #b2dfdb;
            transform: scale(1.05);
        }

        .custom-button span {
            display: flex;
            align-items: center;
            gap: 10px;
            width: 100%;
            justify-content: space-between;
        }

        .icon {
            font-size: 18px;
            color: #ff7043;
        }
    </style>
    <body>
        <button class="logout-button" onclick="window.location.href='Login.jsp'">Logout</button>
        <div class="container">
        <button class="custom-button" onclick="window.location.href='Form.jsp'">
            <span>
                <span class="icon">✨</span> Tạo Đơn Xin Nghỉ Phép <span>➝</span>
            </span>
        </button>
        <button class="custom-button" onclick="window.location.href='View.jsp'">
            <span>
                <span class="icon">✨</span> Xem Đơn <span>➝</span>
            </span>
        </button>
            <button class="custom-button" onclick="window.location.href='Accept.jsp'">
            <span>
                <span class="icon">✨</span> Xét Duyệt Đơn <span>➝</span>
            </span>
        </button>
    </div>
    </body>
</html>
