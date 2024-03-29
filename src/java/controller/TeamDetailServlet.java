/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.PlayerDAO;
import dao.TeamDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Invite_member;
import model.Join_Team_Request;
import model.DTO.PlayerProfile;
import model.Team;
import model.TeamSchedule;
import model.User;

/**
 *
 * @author Admin
 */
public class TeamDetailServlet extends HttpServlet {

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
        int team_id = Integer.parseInt(request.getParameter("team_id"));
        session.setAttribute("team_id", team_id);
        session.setAttribute("recent_team_id", team_id);
        int coach = Integer.parseInt(request.getParameter("coach"));

        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserByID(coach);

        TeamDAO dao = new TeamDAO();
        Team team = dao.getTeamByID(team_id);
        //==============================
        List<Join_Team_Request> re = userDAO.getListJoinRequestByTeamID(team_id);
        List<String> userName = new ArrayList<>();
        for (Join_Team_Request var : re) {
            int user_id = var.getUserID();
            String user_name = getUserName(user_id);
            userName.add(user_name);
        }
        //===============================
        List<Invite_member> invitationSent = userDAO.getListInvitationByTeamID(team_id);
        List<String> user_name = new ArrayList<>();
        for (Invite_member var : invitationSent) {
            int user_id = var.getUserID();
            String name = getUserName(user_id);
            user_name.add(name);
        }
        //==============================
        PlayerDAO playerDAO = new PlayerDAO();
        ArrayList<PlayerProfile> playerList = playerDAO.getListPlayerProfileByTeam(team_id);
        //==============================
        ArrayList<TeamSchedule> teamSchedules = dao.getTeamScheduleList(team_id);
        //==============================
        request.setAttribute("user_name", user_name);
        request.setAttribute("playerList", playerList);
        request.setAttribute("invitationSent", invitationSent);
        request.setAttribute("TeamRequest", re);
        request.setAttribute("gotTeam", team);
        request.setAttribute("team_id", team_id);
        request.setAttribute("userName", userName);
        request.setAttribute("gotCoach", user);
        request.setAttribute("teamSchedules", teamSchedules);

        request.getRequestDispatcher("manage/teamDetail.jsp").forward(request, response);
    }

    public String getUserName(int user_id) throws Exception {
        UserDAO dao = new UserDAO();
        User user = dao.getUserByID(user_id);
        String user_name = user.getFull_name();
        return user_name;
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
            Logger.getLogger(TeamDetailServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(TeamDetailServlet.class.getName()).log(Level.SEVERE, null, ex);
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
