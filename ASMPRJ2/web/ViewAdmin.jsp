<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Xét Duyệt Đơn</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: auto;
        }
        table, th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #e0f2f1;
        }
        .action-button {
            padding: 5px 10px;
            margin: 0 5px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
        }
        .approve {
            background-color: #4caf50;
            color: white;
        }
        .reject {
            background-color: #f44336;
            color: white;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">Danh sách đơn cần xét duyệt</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Ngày tạo</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
            <th>Lý do</th>
            <th>Trạng thái</th>
            <th>Id nhân viên</th>
            <th>Nhân viên</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="req" items="${requestList}">
            <tr>
                <td>${req.getId()}</td>
                <td>${req.getDateCreate()}</td>
                <td>${req.getDateFrom()}</td>
                <td>${req.getDateTo()}</td>
                <td>${req.getReason()}</td>
                <td>${req.getStatus()}</td>
                <td>${req.geteId()}</td>
                <td>${req.geteName()}</td>
                <td>
                    <form action="Management" style="display: inline;">
                        <input type="hidden" name="requestId" value="${req.getId()}" />
                        <input type="submit" name="action" value="Approve" class="action-button approve"/>
                    </form>
                    <form action="Management"  style="display: inline;">
                        <input type="hidden" name="requestId" value="${req.getId()}" />
                        <input type="submit" name="action" value="Reject" class="action-button reject"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
