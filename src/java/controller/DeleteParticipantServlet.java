/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ParticipantDAO;
import dao.PlayerDAO;
import dao.TeamDAO;
import dao.TourDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tour;

/**
 *
 * @author Admin
 */
public class DeleteParticipantServlet extends HttpServlet {

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
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        int tour_id = Integer.parseInt(request.getParameter("tour_id"));
        int team_id = Integer.parseInt(request.getParameter("team_id"));

        try {
            ParticipantDAO participantDAO = new ParticipantDAO();
            TeamDAO teamDAO = new TeamDAO();
            TourDAO tourDAO = new TourDAO();
            Tour tour = tourDAO.getTourByID(tour_id);
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            Date startDate = df.parse(tour.getStart_date());
            java.util.Date date = new java.util.Date();

            if (startDate.after(date)) {
                if (participantDAO.IsTourManager(user_id, tour_id)) {
                    teamDAO.removeTeamOutOfLeague(team_id);
                }
            }
            response.sendRedirect("participantList?tour_id="+tour_id);
        } catch (Exception ex) {
            Logger.getLogger(ParticipantListServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
