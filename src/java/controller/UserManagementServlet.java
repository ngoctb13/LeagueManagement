/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.FeedbackDAO;
import dao.RoleDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Delete_Request;
import model.Feedback;
import model.Role;
import model.User;

/**
 *
 * @author Admin
 */
public class UserManagementServlet extends HttpServlet {

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
        UserDAO userDAO = new UserDAO();
        RoleDAO roleDAO = new RoleDAO();
        FeedbackDAO fbDAO = new FeedbackDAO();
        List<User> userList = null;
        String url = null;
        String action = request.getParameter("action");
        try {
            List<Role> rolelist = roleDAO.getRole();
            if (action.equals("all")) {
                url = "user?action=all";
                userList = userDAO.getListUser();
                request.setAttribute("url", url);
                request.setAttribute("userList", userList);
                request.getRequestDispatcher("admin/user.jsp").forward(request, response);
            }

            if (action.equals("detail")) {
                String email = request.getParameter("email");
                User user = new User();
                user = userDAO.getUserByEmail(email);
                request.setAttribute("role", rolelist);
                request.setAttribute("user", user);
                request.getRequestDispatcher("admin/userdetail.jsp").forward(request, response);
            }

            

            if (action.equals("feedback")) {
                List<Feedback> fbList = fbDAO.getListFeedback();
                request.setAttribute("fbList", fbList);
                request.getRequestDispatcher("admin/feedback.jsp").forward(request, response);
            }

            if (action.equals("delete_feedback")) {
                int feedback_id = Integer.parseInt(request.getParameter("id"));
                int n = fbDAO.deleteFeedback(feedback_id);
                List<Feedback> fbList = fbDAO.getListFeedback();

                request.setAttribute("fbList", fbList);
                request.getRequestDispatcher("admin/feedback.jsp").forward(request, response);
            }
            if (action.equals("deleterequest")) {
                List<Delete_Request> rqList = userDAO.getListDeleteRequest();
                request.setAttribute("rqList", rqList);
                request.getRequestDispatcher("admin/deleterequest.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e);
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
