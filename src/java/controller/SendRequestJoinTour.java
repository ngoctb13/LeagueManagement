/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.PlayerDAO;
import dao.TourDAO;
import dao.TourJoinRequestDAO;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Player;
import model.TourJoinRequest;
import model.User;

/**
 *
 * @author asus
 */
public class SendRequestJoinTour extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SendRequestJoinTour</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SendRequestJoinTour at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String tour_id = request.getParameter("tourId");

        try {
            int tourid = Integer.parseInt(tour_id);

            TourJoinRequestDAO tDAO = new TourJoinRequestDAO();
            List<TourJoinRequest> list0 = tDAO.FindStatus(tourid, 0);
            List<TourJoinRequest> list1 = tDAO.FindStatus(tourid, 1);
            String notice = "";
            request.setAttribute("notice", notice);
            request.setAttribute("list0", list0);
            request.setAttribute("list1", list1);
            
            request.getRequestDispatcher("manage/tourRequest.jsp").forward(request, response);

        } catch (Exception e) {
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
        String selectedValue = request.getParameter("mySelect");
        String tour_id = request.getParameter("tour_id");

//        HttpSession session = request.getSession();
//        TourDAO dao = new TourDAO();
//        User user = (User) session.getAttribute("user");            
//        int userId = user.getUser_id();
        try {
            int teamid = Integer.parseInt(selectedValue);
            int tourid = Integer.parseInt(tour_id);

            TourJoinRequestDAO tDAO = new TourJoinRequestDAO();
            if (tDAO.Find(teamid, tourid) == 0) {
                TourJoinRequest t = new TourJoinRequest(teamid, tourid, 1);
                tDAO.addTour(t);
                String notice = "Request Join Tour Success.";
                request.setAttribute("notice", notice);
                request.getRequestDispatcher("notice.jsp").forward(request, response);
            } else {
                String notice = "Joined or request is pending.";
                request.setAttribute("notice", notice);
                request.getRequestDispatcher("notice.jsp").forward(request, response);
            }

        } catch (Exception e) {
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
    }

}
