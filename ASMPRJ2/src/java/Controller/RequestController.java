/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dal.RequestDAO;
import Model.Account;
import Model.Request;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class RequestController extends HttpServlet {

   

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RequestController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RequestController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        if (account == null) {
            response.sendRedirect("login");
        }
        String DateFrom = request.getParameter("fromDate");
        String DateTo = request.getParameter("toDate");
        String Reaason = request.getParameter("reason");
        List<String> error = new ArrayList<>();
        if (Reaason == null || DateTo == null || DateFrom == null) {
            error.add("Dữ liệu không hợp lệ, nhập lại.");
            request.getRequestDispatcher("Form.jsp").forward(request, response);
        }

        Date datefrom = Date.valueOf(DateFrom);
        Date dateto = Date.valueOf(DateTo);
        Date now = Date.valueOf(LocalDate.now());

        if (datefrom.after(dateto)) {
            error.add("Ngày bắt đầu nghỉ không thể sau ngày kết thúc nghỉ.");
            
        }
        if (dateto.before(now)) {
            error.add("Ngày kết thúc nghỉ không thể là quá khứ.");
            
        }
        if (datefrom.before(now)) {
            error.add("Ngày bắt đầu nghỉ không thể là quá khứ.");
            
        }
        if (dateto.before(datefrom)) {
            error.add("Ngày kết thúc nghỉ không thể trước ngày bắt đầu nghỉ.");
            
        }
        if (!error.isEmpty()) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("Form.jsp").forward(request, response);
            
        }else{
            RequestDAO requestdao = new RequestDAO();
        Request re = new Request(0, account.getEmployeeId(), dateto, datefrom, now, Reaason, "Pending");
        requestdao.insert(re);
        response.sendRedirect("home");
        }
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
