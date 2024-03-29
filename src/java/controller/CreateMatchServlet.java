/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.MatchDAO;
import dao.TourDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Match;
import model.Team;
import model.Tour;

/**
 *
 * @author Admin
 */
public class CreateMatchServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        Tour tour = (Tour) session.getAttribute("recentTour");
        TourDAO tourDAO = new TourDAO();
        ArrayList<Team> teamList = tourDAO.getListTeamByTour(tour.getTour_id());
        // Retrieve the form data
        int homeTeamId = Integer.parseInt(request.getParameter("homeTeam"));
        int awayTeamId = Integer.parseInt(request.getParameter("awayTeam"));
        String matchDate = request.getParameter("match_date");
        String matchTime = request.getParameter("match_time");

        // Create a new Match object
        Team hometeam = getTeamById(teamList, homeTeamId);
        Team awayteam = getTeamById(teamList, awayTeamId);
        Match match = new Match(hometeam, awayteam, matchDate, matchTime, tour.getTour_id());

        // Insert the new match into the database
        MatchDAO matchDAO = new MatchDAO();
        matchDAO.addMatchSchedule(match);
        List<Match> matches = matchDAO.getMatchSchedules(tour.getTour_id());
        
        
        request.setAttribute("teamList", teamList);
        request.setAttribute("matches", matches);
        request.getRequestDispatcher("matchesSchedule.jsp").forward(request, response);
    }
    
    public Team getTeamById(ArrayList<Team> teamList, int id) {
        for (Team team : teamList) {
            if (team.getTeam_id() == id) {
                return team;
            }
        }
        return null; // Return null if team with the given ID is not found
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
            Logger.getLogger(CreateMatchServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(CreateMatchServlet.class.getName()).log(Level.SEVERE, null, ex);
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
