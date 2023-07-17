/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.TeamScheduleController;

import controller.ParticipantListServlet;
import dao.TeamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Team;
import model.TeamSchedule;

/**
 *
 * @author Admin
 */
public class UpdateTeamScheduleServlet extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");

        int team_id = Integer.parseInt(request.getParameter("team_id"));
        int team_schedule_id = Integer.parseInt(request.getParameter("team_schedule_id"));
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        String title = request.getParameter("update-title");
        String location = request.getParameter("update-location");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date time = new java.sql.Date(sdf.parse(request.getParameter("update-time")).getTime());;

        TeamDAO teamDAO = new TeamDAO();
        TeamSchedule teamSchedule = new TeamSchedule(team_schedule_id, team_id, title, location, time);
        Team team = teamDAO.getTeamByID(team_id);
        try {
            teamDAO.updateTeamSchedule(teamSchedule);

            request.setAttribute("team_id", team_id);
            request.setAttribute("coach", team.getCoach());
            response.sendRedirect("teamDetail?team_id=" + team_id + "&coach=" + team.getCoach());
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(UpdateTeamScheduleServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(UpdateTeamScheduleServlet.class.getName()).log(Level.SEVERE, null, ex);
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
