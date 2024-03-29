/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.TourInviteDAO;
import dao.TourJoinRequestDAO;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.TourInvite;
import model.TourJoinRequest;

/**
 *
 * @author asus
 */
public class DeclineInviteToTour extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DeclineInviteToTour</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeclineInviteToTour at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String param1 = request.getParameter("tourId");
        String param2 = request.getParameter("teamId");
        try {
            int teamid = Integer.parseInt(param2);
            int tourid = Integer.parseInt(param1);
            TourInviteDAO tourInviteDAO = new TourInviteDAO();
            TourInvite tourIn = tourInviteDAO.FindTourTeam(teamid, tourid);
            tourIn.setStatus(0);
            tourInviteDAO.updateTourInvite(tourIn);

            TourInviteDAO tDAO = new TourInviteDAO();
            tDAO.removeInviteTour(teamid, tourid);

            response.sendRedirect("InviteOfMyTeam");
        } catch (Exception ex) {
            Logger.getLogger(InviteOfMyTeam.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
