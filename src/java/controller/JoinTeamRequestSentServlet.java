/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.TeamDAO;
import dao.UserDAO;
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
import model.Invite_member;
import model.Join_Team_Request;
import model.Team;
import model.User;

/**
 *
 * @author HP
 */
public class JoinTeamRequestSentServlet extends HttpServlet {

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
        User user = (User) session.getAttribute("user");
        UserDAO userdao=new UserDAO();
        int user_id=user.getUser_id();
        List<Join_Team_Request> rq= userdao.getListJoinRequestByUserID(user_id);
        List<String> teamNames = new ArrayList<>();
        List<String> teamEmails = new ArrayList<>();
        for (Join_Team_Request var : rq) {
            int teamId = var.getTeamID();
            String teamName = getTeamName(teamId); 
            String teamEmail = getTeamEmail(teamId);
            teamEmails.add(teamEmail);
            teamNames.add(teamName);
             session.setAttribute("team_id", teamId);
        }
        request.setAttribute("teamEmails", teamEmails);
        request.setAttribute("teamNames", teamNames);
        request.setAttribute("requestSent",rq );
        request.getRequestDispatcher("requestSentList.jsp").forward(request, response);
    }
     public String getTeamName(int teamId) throws Exception {
        TeamDAO dao = new TeamDAO();
        Team team = dao.getTeamByID(teamId);
        String teamName = team.getTeam_name();

        return teamName;
    }
     public String getTeamEmail(int teamId) throws Exception {
        TeamDAO dao = new TeamDAO();
        Team team = dao.getTeamByID(teamId);
        String teamEmail = team.getEmail();

        return teamEmail;
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
            Logger.getLogger(JoinTeamRequestSentServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(JoinTeamRequestSentServlet.class.getName()).log(Level.SEVERE, null, ex);
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
