/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.TeamDAO;
import dao.TourDAO;
import dao.TourInviteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Team;
import model.Tour;
import model.TourInvite;
import model.User;

/**
 *
 * @author Admin
 */
public class LeaugeProfileServlet extends HttpServlet {

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
        int tour_id = Integer.parseInt(request.getParameter("tour_id"));
        TourDAO dao = new TourDAO();
        Tour gotTour = dao.getTourByID(tour_id);
        session.setAttribute("recentTour", gotTour);
        
        User user = (User) session.getAttribute("user");            
        int userId = user.getUser_id();

        //this code is transient
        TeamDAO tDao = new TeamDAO();
        TourInviteDAO tourDAO = new TourInviteDAO();
        
        List<Team> teamList1 = tDao.getListTeamByCoach(userId);
        List<Team> teamList = new ArrayList<>();
        teamList.addAll(teamList1);
        for (Team team : teamList1) {
            if (tourDAO.FindTourTeam(team.getTeam_id(), tour_id) != null) {
                teamList.remove(team);
            }
        }
        
        
        request.setAttribute("teamList", teamList);
        request.setAttribute("gotTour", gotTour);
        request.getRequestDispatcher("leaugeProfile.jsp").forward(request, response);
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
            Logger.getLogger(LeaugeProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(LeaugeProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
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
