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
import java.util.Enumeration;
import java.util.List;
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
public class UpdateMatchesScheduleServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        Tour recentTour = (Tour) session.getAttribute("recentTour");
        int tour_id = recentTour.getTour_id();
        TourDAO tourDAO = new TourDAO();
        MatchDAO matchDAO = new MatchDAO();

        try {
            Enumeration<String> parameterNames = request.getParameterNames();
            List<Match> updatedMatches = new ArrayList<>();
            ArrayList<Team> teamList = tourDAO.getListTeamByTour(tour_id);
            List<Match> matches = matchDAO.getMatchSchedule(tour_id);

            while (parameterNames.hasMoreElements()) {
                String paramName = parameterNames.nextElement();

                if (paramName.startsWith("homeTeam_")) {
                    int match_id = Integer.parseInt(paramName.substring("homeTeam_".length()));
                    int homeTeamId = Integer.parseInt(request.getParameter(paramName));
                    int awayTeamId = Integer.parseInt(request.getParameter("awayTeam_" + match_id));
                    int homeScore = Integer.parseInt(request.getParameter("home_score_" + match_id));
                    int awayScore = Integer.parseInt(request.getParameter("away_score_" + match_id));
                    String matchDate = request.getParameter("match_date_" + match_id);
                    String matchTime = request.getParameter("match_time_" + match_id);

                    for (Match match : matches) {
                        if (match.getMatch_id() == match_id) {
                            Team homeTeam = getTeamById(teamList, homeTeamId);
                            Team awayTeam = getTeamById(teamList, awayTeamId);

                            match.setHometeam(homeTeam);
                            match.setAwayteam(awayTeam);
                            match.setHome_score(homeScore);
                            match.setAway_score(awayScore);
                            match.setMatch_date(matchDate);
                            match.setMatch_time(matchTime);

                            updatedMatches.add(match);
                            break;
                        }
                    }
                }
            }

            matchDAO.updateMatchSchedule(updatedMatches);

            request.setAttribute("matches", updatedMatches);
            request.setAttribute("teamList", teamList);
            request.getRequestDispatcher("matches.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("loi vai ca lon");
        }
    }

    private Team getTeamById(List<Team> teamList, int teamId) {
        for (Team team : teamList) {
            if (team.getTeam_id() == teamId) {
                return team;
            }
        }
        return null;
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
