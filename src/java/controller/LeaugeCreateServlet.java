/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.TourDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Tour;
import model.User;

/**
 *
 * @author Admin
 */
public class LeaugeCreateServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        String tour_name = request.getParameter("tour_name");
        String tour_phone = request.getParameter("tour_phone");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String address = request.getParameter("tour_address");
        String description = request.getParameter("description");
        int host = user.getUser_id();
        int type = 1;

        String start_date = request.getParameter("start_date");
        String end_date = request.getParameter("end_date");
//        Date sDate = (Date) dateFormat.parse(start_date);
//        Date eDate = (Date) dateFormat.parse(end_date);
        Tour tour = new Tour(tour_name, address, tour_phone, start_date, end_date, description, host, type, quantity);
        TourDAO dao = new TourDAO();

        int add = dao.addTour(tour);

        if (add > 0) {
            request.setAttribute("gotTour", tour);
            request.getRequestDispatcher("leaugeProfile.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(LeaugeCreateServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(LeaugeCreateServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
