<%-- 
    Document   : Accept
    Created on : Mar 8, 2025, 12:40:37 AM
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
        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            border: 1px solid #ddd;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        .reason-box {
            background-color: #f5f5f5;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            text-align: center;
            font-weight: bold;
        }
        .btn-reject {
            background-color: #dc3545; /* Màu đỏ */
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }
        .btn-approve {
            background-color: #28a745; /* Màu xanh */
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }
        .btn-reject:hover {
            background-color: #c82333;
        }
        .btn-approve:hover {
            background-color: #218838;
        }
    </style>
    <body>
        <div class="form-container">
        <h2 class="text-center">Duyệt đơn xin nghỉ phép</h2>

        <p><strong>Duyệt bởi User:</strong> <%= request.getAttribute("nguoiDuyet") %>, <strong>Role:</strong> <%= request.getAttribute("role") %></p>
        <p><strong>Tạo bởi:</strong> <%= request.getAttribute("nguoiTao") %></p>
        <p><strong>Từ ngày:</strong> <%= request.getAttribute("tuNgay") %></p>
        <p><strong>Tới ngày:</strong> <%= request.getAttribute("toiNgay") %></p>
        
        <p><strong>Lý do:</strong></p>
        <div class="reason-box"><%= request.getAttribute("lyDo") %></div>

        <div class="d-flex justify-content-between mt-3">
            <form action="XuLyDuyetDonServlet" method="post">
                <input type="hidden" name="idDon" value="<%= request.getAttribute("idDon") %>">
                <button type="submit" name="action" value="reject" class="btn-reject">Reject</button>
                <button type="submit" name="action" value="approve" class="btn-approve">Approve</button>
            </form>
        </div>
    </div>
    </body>
</html>
