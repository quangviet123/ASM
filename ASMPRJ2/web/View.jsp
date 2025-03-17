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
                font-family: 'Poppins', sans-serif;
                background-color: #eef8f6;
                text-align: center;
                margin: 0;
                padding: 0;
            }
            .container {
                width: 90%;
                margin: auto;
                padding-top: 20px;
            }
            .btn-back {
                position: absolute;
                top: 20px;
                left: 20px;
                background-color: #007bff;
                color: white;
                border: none;
                padding: 10px 20px;
                font-size: 16px;
                font-weight: bold;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            .btn-back:hover {
                background-color: #0056b3;
            }
            table {
                width: 100%;
                max-width: 1000px;
                margin: 20px auto;
                border-collapse: collapse;
                border-radius: 10px;
                overflow: hidden;
                background: white;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            }
            th, td {
                border: 1px solid #ddd;
                padding: 12px;
                text-align: center;
            }
            th {
                background-color: #007bff;
                color: white;
                font-weight: bold;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            tr:hover {
                background-color: #e9ecef;
            }
            .status-pending {
                color: #e67e22;
                font-weight: bold;
            }
            .status-rejected {
                color: #e74c3c;
                font-weight: bold;
            }
            .status-approved {
                color: #2ecc71;
                font-weight: bold;
            }
            a {
                text-decoration: none;
                color: #007bff;
                font-weight: bold;
                transition: color 0.3s;
            }
            a:hover {
                text-decoration: underline;
                color: #0056b3;
            }
        </style>
    </head>
    <body>
        <button class="btn-back" onclick="window.location.href='http://localhost:8080/ASMPRJ2/home'">
            Quay lại
        </button>
        <div class="container">
            <h2>Danh sách đơn nghỉ phép</h2>
            <table>
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Created By</th>
                        <th>Status</th>
                        <th>Update</th>
                    </tr>
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
                            <td>${request.getDateFrom()}</td>
                            <td>${request.getDateTo()}</td>
                            <td>${request.getDateCreate()}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${request.getStatus() eq 'Pending'}">
                                        <span class="status-pending">Pending</span>
                                    </c:when>
                                    <c:when test="${request.getStatus() eq 'Rejected'}">
                                        <span class="status-rejected">Rejected</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="status-approved">${request.getStatus()}</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <c:if test="${request.getStatus() eq 'Pending'}">
                                    <a href="${pageContext.request.contextPath}/Edit?id=${request.getId()}">Edit</a> |
                                    <a href="${pageContext.request.contextPath}/Delete?id=${request.getId()}" 
                                       onclick="return confirm('Bạn có chắc chắn muốn xóa đơn này?');">
                                        Delete
                                    </a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>


