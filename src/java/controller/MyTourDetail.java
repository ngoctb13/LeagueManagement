/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.TeamDAO;
import dao.TourDAO;
import dao.TourInviteDAO;
import dao.TourJoinRequestDAO;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Team;
import model.Tour;
import model.TourInvite;
import model.TourJoinRequest;

/**
 *
 * @author asus
 */
public class MyTourDetail extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MyTourDetail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MyTourDetail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String tour_id = request.getParameter("tourId");

        try {
            int tourid = Integer.parseInt(tour_id);

            TourJoinRequestDAO tDAO = new TourJoinRequestDAO();
            List<TourJoinRequest> list0 = tDAO.FindStatus(tourid, 0);
            List<TourJoinRequest> list1 = tDAO.FindStatus(tourid, 1);

            TourDAO x = new TourDAO();
            Tour tour0 = x.getTourByID(tourid);
            String notice = "";
            request.setAttribute("notice", notice);
            request.setAttribute("list0", list0);
            request.setAttribute("list1", list1);
            request.setAttribute("tour0", tour0);

            TourInviteDAO tin = new TourInviteDAO();
            TeamDAO team = new TeamDAO();

            List<Team> listTeam = team.getListAllTeam();
            List<String> l1 = new ArrayList<>();
            List<Integer> l2 = new ArrayList<>();
            List<Integer> l3 = new ArrayList<>();

            for (Team team1 : listTeam) {
                l1.add(Integer.toString(team1.getTeam_id()));
            }
            System.out.println("==================");
            List<TourInvite> listInvite = tin.FindStatus(tourid, 1);
            
            for (TourInvite t : listInvite) {
                if (l1.contains(Integer.toString(t.getTeam_id()))) {
                    l1.remove(Integer.toString(t.getTeam_id()));
                }
            }
            List<TourInvite> listInvite2 = tin.FindStatus(tourid, 0);
            for (TourInvite t : listInvite2) {
                if (l1.contains(Integer.toString(t.getTeam_id()))) {
                    l1.remove(Integer.toString(t.getTeam_id()));
                }
            }
            
            List<TourJoinRequest> listJoin = tDAO.FindStatus(tourid, 0);
            for (TourJoinRequest t : listJoin) {
                if (l1.contains(Integer.toString(t.getTeam_id()))) {
                    l1.remove(Integer.toString(t.getTeam_id()));
                }
            }
            
            List<TourJoinRequest> listJoin2 = tDAO.FindStatus(tourid, 1);
            for (TourJoinRequest t : listJoin2) {
                if (l1.contains(Integer.toString(t.getTeam_id()))) {
                    l1.remove(Integer.toString(t.getTeam_id()));
                }
            }
            List<Team> listTeamResult = new ArrayList<>();
            for (String r : l1) {
                Team t = team.getTeamByID(Integer.parseInt(r));
                listTeamResult.add(t);
            }

            request.setAttribute("listTeam", listTeamResult);
            request.setAttribute("listInvite", listInvite);

            request.getRequestDispatcher("manage/LeaugeDetail.jsp").forward(request, response);

        } catch (Exception e) {
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
