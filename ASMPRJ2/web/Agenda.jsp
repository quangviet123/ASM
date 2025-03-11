<%-- 
    Document   : Agenda
    Created on : Mar 8, 2025, 4:37:18 PM
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
            background-color: #C0E5E3; /* Màu xanh ngọc */
            font-family: Arial, sans-serif;
            text-align: center;
        }
        table {
            border-collapse: collapse;
            width: 60%;
            margin: 20px auto;
            background: white;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .available {
            background-color: green;
            color: white;
        }
        .unavailable {
            background-color: red;
            color: white;
        }
        .date-filter {
            margin: 20px;
        }
        .date-filter input, .date-filter button {
            padding: 8px;
            margin: 5px;
        }
    </style>
    <body>
         <h2>Lịch làm việc</h2>

    <!-- Bộ lọc ngày -->
    <div class="date-filter">
        <label for="fromDate">Từ ngày:</label>
        <input type="date" id="fromDate">
        <label for="toDate">Đến ngày:</label>
        <input type="date" id="toDate">
        <button onclick="filterTable()">Lọc</button>
    </div>

    <!-- Bảng lịch làm việc -->
    <table id="scheduleTable">
        <tr>
            <th>Nhân sự</th>
            <th data-date=""></th>
            <th data-date=""></th>
            <th data-date=""></th>
            <th data-date=""></th>
            <th data-date=""></th>
            <th data-date=""></th>
            <th data-date=""></th>
            <th data-date=""></th>
            <th data-date=""></th>
        </tr>
        <tr>
            <td>Mr A</td>
            <td class="available"></td><td class="available"></td><td class="unavailable"></td><td class="unavailable"></td>
            <td class="available"></td><td class="available"></td><td class="available"></td><td class="available"></td><td class="available"></td>
        </tr>
        <tr>
            <td>Mr B</td>
            <td class="available"></td><td class="available"></td><td class="unavailable"></td><td class="unavailable"></td>
            <td class="available"></td><td class="unavailable"></td><td class="unavailable"></td><td class="available"></td><td class="available"></td>
        </tr>
        <tr>
            <td>Mr C</td>
            <td class="available"></td><td class="available"></td><td class="available"></td><td class="available"></td>
            <td class="available"></td><td class="available"></td><td class="available"></td><td class="available"></td><td class="available"></td>
        </tr>
        <tr>
            <td>Mr D</td>
            <td class="available"></td><td class="unavailable"></td><td class="available"></td><td class="available"></td>
            <td class="available"></td><td class="available"></td><td class="available"></td><td class="available"></td><td class="available"></td>
        </tr>
    </table>

    <script>
        function filterTable() {
            // Lấy giá trị ngày từ bộ lọc
            let fromDate = document.getElementById("fromDate").value;
            let toDate = document.getElementById("toDate").value;

            // Nếu người dùng chưa chọn đầy đủ ngày, không làm gì cả
            if (!fromDate || !toDate) {
                alert("Vui lòng chọn khoảng thời gian hợp lệ!");
                return;
            }

            // Chuyển đổi sang dạng Date để so sánh
            let from = new Date(fromDate);
            let to = new Date(toDate);

            // Lấy danh sách tiêu đề cột
            let headers = document.querySelectorAll("#scheduleTable th[data-date]");

            headers.forEach(header => {
                let date = new Date(header.getAttribute("data-date"));
                
                // Kiểm tra ngày có nằm trong khoảng không
                if (date >= from && date <= to) {
                    header.style.display = ""; // Hiển thị cột
                } else {
                    header.style.display = "none"; // Ẩn cột
                }
            });

            // Lấy tất cả các dòng dữ liệu
            let rows = document.querySelectorAll("#scheduleTable tr");

            rows.forEach(row => {
                let cells = row.getElementsByTagName("td");

                for (let i = 1; i < cells.length; i++) { // Bỏ qua cột "Nhân sự"
                    let columnHeader = headers[i - 1]; // Trừ đi 1 để khớp với chỉ mục
                    if (columnHeader.style.display === "none") {
                        cells[i].style.display = "none"; // Ẩn ô tương ứng
                    } else {
                        cells[i].style.display = ""; // Hiển thị ô nếu nằm trong khoảng thời gian
                    }
                }
            });
        }
    </script>
    </body>
</html>
