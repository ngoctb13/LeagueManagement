/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.PlayerDAO;
import dao.TeamDAO;
import dao.TourDAO;
import dao.TourJoinRequestDAO;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Player;
import model.Team;
import model.Tour;
import model.TourJoinRequest;
import model.User;

/**
 *
 * @author asus
 */
@WebServlet(name="LeaugeMeJoinServlet", urlPatterns={"/leaugeMeJoin"})
public class LeaugeMeJoinServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LeaugeMeJoinServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LeaugeMeJoinServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        TourDAO dao = new TourDAO();
        User user = (User) session.getAttribute("user");            
        int userid = user.getUser_id();
        
        
        try {
            TourDAO tuaDAO = new TourDAO();
            TeamDAO pDAO = new TeamDAO();
            List<Team> teamList = pDAO.getListTeamByCoach(userid);
            TourJoinRequestDAO tDAO = new TourJoinRequestDAO();
            List<TourJoinRequest> listJoin = new ArrayList<>();
            List<Tour> listTour = new ArrayList<>();
            for (Team team : teamList) {
                List<TourJoinRequest> t = tDAO.GetTourJoinByTeamID(team.getTeam_id());
                listJoin.addAll(t);
            }
            for (TourJoinRequest tourJoinRequest : listJoin) {
                Tour x = tuaDAO.getTourByID(tourJoinRequest.getTour_id());
                x.setTeam_id(tourJoinRequest.getTeam_id());
                x.setStatus(tourJoinRequest.getStatus());
                listTour.add(x);
            }
            request.setAttribute("list", listTour);
            request.getRequestDispatcher("manage/leaugeMeJoin.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(LeaugeMeJoinServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
    

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        TourDAO dao = new TourDAO();
        User user = (User) session.getAttribute("user");            
        int host = user.getUser_id();
        //nhan team_id, tour_id
        String tour_id = request.getParameter("tour_id");
        String team_id = request.getParameter("team_id");
        try {
            int tourId = Integer.parseInt(tour_id);
            int teamId = Integer.parseInt(team_id);
        } catch (Exception e) {
        }
//        request.setAttribute("tourList", );
        request.getRequestDispatcher("manage/myleauge.jsp").forward(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
