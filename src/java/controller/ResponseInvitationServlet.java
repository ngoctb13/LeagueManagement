/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.PlayerDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Player;
import model.User;

/**
 *
 * @author HP
 */
public class ResponseInvitationServlet extends HttpServlet {

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
        try {
            response.setContentType("text/html;charset=UTF-8");
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            int userID=user.getUser_id();
            String shirt_number=request.getParameter("shirt_number");
            String position=request.getParameter("position");
            int team_id = Integer.parseInt(request.getParameter("team_id"));
            boolean isManager=false;
            UserDAO userDao = new UserDAO();
            
            PlayerDAO dao = new PlayerDAO();
            
            Player player= new Player(userID,team_id,position,shirt_number,isManager);
            int accept=userDao.updateStatus1(userID);
            int p= dao.addPlayer(player);
            if (p > 0) {
                request.setAttribute("message", "SUCCESS");
                request.getRequestDispatcher("invitation.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "FAILED");
                request.getRequestDispatcher("invitation.jsp").forward(request, response);
            } 
            
        } catch (Exception ex) {
            Logger.getLogger(ResponseInvitationServlet.class.getName()).log(Level.SEVERE, null, ex);
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
