/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.TourDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Tour;

/**
 *
 * @author admin2
 */
public class TournamentServlet extends HttpServlet {

      @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        TourDAO tourDAO = new TourDAO();
        try {
            String url = req.getRequestURI();
            if (url.contains("/tournament")) {
                List<Tour> list_tour = tourDAO.getListTour();
                req.setAttribute("list_tour", list_tour);
                req.getRequestDispatcher("/tournament.jsp").forward(req, resp);
            }
            if (url.contains("/leaugeProfile")) {
                String id = req.getParameter("id");
                System.out.println(id);
                Tour tour = tourDAO.getTourDetail(Integer.parseInt(id));
                req.setAttribute("tour", tour);
                req.getRequestDispatcher("/leaugeProfile.jsp").forward(req, resp);
            }
            if(url.contains("/leaugeList")){
                List<Tour> list_tour = tourDAO.getListTour();
                req.setAttribute("list_tour", list_tour);
                req.getRequestDispatcher("/admin/leaugeList.jsp").forward(req, resp);
            }
            if (url.contains("/leaugeDetail")) {
                String id = req.getParameter("id");
                System.out.println(id);
                Tour tour = tourDAO.getTourDetail(Integer.parseInt(id));
                req.setAttribute("tour", tour);
                req.getRequestDispatcher("/admin/leaugeDetail.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
