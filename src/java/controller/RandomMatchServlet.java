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
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Match;
import model.Team;

/**
 *
 * @author Admin
 */
public class RandomMatchServlet extends HttpServlet {

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
        int tour_id = Integer.parseInt(request.getParameter("tour_id"));

        TourDAO dao = new TourDAO();
        MatchDAO matchDAO = new MatchDAO();

        List<Match> matches;

        ArrayList<Team> teamList = dao.getListTeamByTour(tour_id);

        Collections.shuffle(teamList);
        int matchCount = teamList.size() / 2;

        matches = new ArrayList<>();

        for (int i = 0; i < matchCount; i++) {
            Team homeTeam;
            Team awayTeam;

            do {
                homeTeam = teamList.get(i * 2);
                awayTeam = teamList.get(i * 2 + 1);
            } while (isDuplicateMatch(matches, homeTeam, awayTeam));

            matches.add(new Match(homeTeam, awayTeam));
        }
        
        request.setAttribute("matches", matches);
        request.setAttribute("teamList", teamList);
        request.getRequestDispatcher("arrangeMatches.jsp").forward(request, response);
    }

    private boolean isDuplicateMatch(List<Match> matches, Team homeTeam, Team awayTeam) {
        for (Match match : matches) {
            if (match.getHometeam().equals(homeTeam) && match.getAwayteam().equals(awayTeam)) {
                return true;
            }
        }
        return false;
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
            Logger.getLogger(RandomMatchServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(RandomMatchServlet.class.getName()).log(Level.SEVERE, null, ex);
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
