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
        <h2>Danh sách đơn nghỉ phép</h2>

    <table>
        <tr>
            <th>Title</th>
            <th>From</th>
            <th>To</th>
            <th>Created By</th>
            <th>Status</th>
            <th>Processed By</th>
            <th>Update</th>
        </tr>
        
        <tr>
            <td><a href="#">Xin nghỉ cưới...</a></td>
            <td>1/1/2025</td>
            <td>3/1/2025</td>
            <td>Mr F</td>
            <td class="status-inprogress">Inprogress</td>
            <td></td>
        </tr>
        
        <tr>
            <td><a href="#">Xin nghỉ đi chơi</a></td>
            <td>1/1/2025</td>
            <td>5/1/2025</td>
            <td>Mr E</td>
            <td class="status-rejected">Rejected</td>
            <td>Mr B</td>
        </tr>

        <tr>
            <td>...</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>

    </table>

    </body>
</html>
