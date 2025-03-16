<%-- 
    Document   : View
    Created on : Mar 8, 2025, 1:09:46 AM
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
            background-color: #e6f7f7;
            text-align: center;
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
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 2px solid #6a0dad;
            border-radius: 8px;
            overflow: hidden;
            background: white;
        }
        th, td {
            border: 1px solid #6a0dad;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #d1c4e9;
            font-weight: bold;
        }
        .status-inprogress {
            color: blue;
            font-weight: bold;
        }
        .status-rejected {
            color: red;
            font-weight: bold;
        }
        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
    <body>
        <button class="btn-back" 
                onclick="window.location.href='http://localhost:8080/ASMPRJ2/home'">
            Quay lại
        </button>
        <h2>Danh sách đơn nghỉ phép</h2>

        <table>
            <thead>
            <th>Title</th>
            <th>From</th>
            <th>To</th>
            <th>Created By</th>
            <th>Status</th>
            <th>Processed By</th>
            <th>Update</th>
        </thead>
        <tbody>
            <c:forEach var="request" items="${requests}">
                <tr>
                    <td>
                <c:choose>
                    <c:when test="${request.getStatus() eq 'Pending'}">
                        <a href="detail?id=${request.getId()}">
                            ${request.getReaason()} 
                        </a> 
                    </c:when>
                    <c:otherwise>
                        ${request.getReaason()}
                    </c:otherwise>
                </c:choose>
            </td>
                    <!-- Title hiển thị theo reason -->
                    <td>${request.getDateFrom()}</td>
                    <td>${request.getDateTo()}</td>
                    <td>${request.getDateCreate()}</td>
                    <td>
                        <c:choose>
                            <c:when test="${request.getStatus() eq 'Pending'}">
                                <span class="status-inprogress">Pending</span>
                            </c:when>
                            <c:when test="${request.getStatus() eq 'Rejected'}">
                                <span class="status-rejected">Rejected</span>
                            </c:when>
                            <c:otherwise>
                                ${request.getStatus()}
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td></td>

                </tr>
            </c:forEach>
        </tbody>


    </table>
</body>
</html>
