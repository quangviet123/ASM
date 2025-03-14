<%-- 
    Document   : Detail
    Created on : Mar 15, 2025, 12:30:10 AM
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
            background-color: #f0f0f0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
        }
        .field {
            margin-bottom: 10px;
        }
        .field label {
            font-weight: bold;
        }
        .field span {
            margin-left: 10px;
        }
        .back-link {
            text-align: center;
            margin-top: 20px;
        }
    </style>
    <body>
        <c:if test="${not empty detail}">
    <div class="field">
        <label>Từ ngày:</label>
        <span>${detail.getDateFrom()}</span>
    </div>
    <div class="field">
        <label>Tới ngày:</label>
        <span>${detail.getDateTo()}</span>
    </div>
    <div class="field">
        <label>Ngày tạo:</label>
        <span>${detail.getDateCreate()}</span>
    </div>
    <div class="field">
        <label>Lý do:</label>
        <span>${detail.getReaason()}</span>
    </div>
    <div class="field">
        <label>Trạng thái:</label>
        <span>${detail.getStatus()}</span>
    </div>
</c:if>

<c:if test="${empty detail}">
    <p style="color: red;">Không tìm thấy đơn nghỉ phép.</p>
</c:if>
    </body>
</html>
