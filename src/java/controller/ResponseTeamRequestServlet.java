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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Join_Team_Request;
import model.Player;
import model.Team;

/**
 *
 * @author HP
 */
public class ResponseTeamRequestServlet extends HttpServlet {

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
         int request_id = Integer.parseInt(request.getParameter("requestID"));
         UserDAO userDao = new UserDAO();
         Join_Team_Request teamRequest = userDao.getRequestByRequestID(request_id);
         int user_id= teamRequest.getUserID();
         int team_id=teamRequest.getTeamID();
         String status=teamRequest.getStatus();
         String shirt_number=teamRequest.getShirt_number();
         String position=teamRequest.getPosition();
         boolean isManager=false;
         TeamDAO teamdao = new TeamDAO();
        Team team = teamdao.getTeamByID(team_id);
         PlayerDAO dao = new PlayerDAO();
            Player player= new Player(user_id,team_id,position,shirt_number,isManager);
            int p= dao.addPlayer(player);
            if (p > 0) {
                int accept=userDao.updateStatusAcceptTeamRequest(user_id);
                request.setAttribute("gotTeam", team);
                request.setAttribute("message", "SUCCESS");
                request.getRequestDispatcher("manage/teamDetail.jsp").forward(request, response);
            } else {
                request.setAttribute("gotTeam", team);
                request.setAttribute("message", "FAILED");
                request.getRequestDispatcher("manage/teamDetail.jsp").forward(request, response);
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
            Logger.getLogger(ResponseTeamRequestServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ResponseTeamRequestServlet.class.getName()).log(Level.SEVERE, null, ex);
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
