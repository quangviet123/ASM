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
        <title>Chi tiết đơn nghỉ</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #E6F5F5; 
                padding: 20px;
            }
            .container {
                max-width: 400px;
                margin: 0 auto;
                background: #fff;
                padding: 15px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            h2 {
                text-align: center;
                font-size: 18px;
                margin-bottom: 15px;
            }
            .field {
                margin-bottom: 8px;
                font-size: 14px;
            }
            .field label {
                font-weight: bold;
            }
            .field span {
                margin-left: 8px;
            }
            .back-link {
                text-align: center;
                margin-top: 20px;
            }
            .back-link a {
                text-decoration: none;
                color: white;
                background: #007bff;
                padding: 8px 15px;
                border-radius: 5px;
                display: inline-block;
            }
            .back-link a:hover {
                background: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Chi tiết đơn nghỉ</h2>
            <c:if test="${detail != null}">
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
                <p style="color: red; text-align: center; font-size: 14px;">Không tìm thấy đơn nghỉ phép.</p>
            </c:if>
            <div class="back-link">
                <a href="View">Quay lại</a>
            </div>
        </div>
    </body>
</html>
