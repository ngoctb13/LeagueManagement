/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.TeamDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import model.Invite_member;
import model.Team;

import model.User;

/**
 *
 * @author HP
 */
public class InviteMemberServlet extends HttpServlet {

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
        try {
            HttpSession session = request.getSession();
            TeamDAO dao = new TeamDAO();
            int team_id = (int) session.getAttribute("team_id");
            String email = request.getParameter("email");
            String mess = request.getParameter("message");
            UserDAO userDAO = new UserDAO();
            User user = userDAO.getUserByEmail(email);
            int invite_user = user.getUser_id();
            String status = "PENDING";
            Invite_member invite = new Invite_member(invite_user, team_id, mess, status);
            
            Team team = dao.getTeamByID(team_id);
            int sign = userDAO.addInvitation(invite);
            if (sign > 0) {
                request.setAttribute("ms", "SUCCESS");
                request.setAttribute("gotTeam", team);                
                request.getRequestDispatcher("manage/teamDetail.jsp").forward(request, response);
            } else {
                request.setAttribute("ms", "FAILED");
                request.getRequestDispatcher("manage/teamDetail.jsp").forward(request, response);
            }           
        } catch (Exception e) {
            e.printStackTrace();          
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
