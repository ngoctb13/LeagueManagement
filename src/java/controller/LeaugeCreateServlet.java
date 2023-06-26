/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.TourDAO;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Tour;
import model.User;

/**
 *
 * @author Admin
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)
public class LeaugeCreateServlet extends HttpServlet {

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
            throws ServletException, IOException, ParseException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        //------------------------------------------------------------
        Part part = request.getPart("avatar_leauge");
        String fileName = extractFileName(part);
        String savePath = "C:\\Users\\admin2\\OneDrive\\Desktop\\SWP\\25.6\\LeagueManagement\\web\\images" + File.separator + fileName;
        File fileSaveDir = new File(savePath);
        part.write(savePath + File.separator);
//        Part file = request.getPart("avatar_leauge");
//        String imageFileName = file.getSubmittedFileName();       
//        String uploadPath = "D:/1_SWP391/All for Java/LeagueManagement/web/images" + imageFileName;
//        
//        FileOutputStream fos = new FileOutputStream(uploadPath);
//        InputStream is = file.getInputStream();
//        
//        byte[] data = new byte[is.available()];
//        is.read(data);
//        fos.write(data);
//        fos.close();
        //---------------------------------------------------------
        String tour_name = request.getParameter("tour_name");
        String tour_phone = request.getParameter("tour_phone");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String address = request.getParameter("tour_address");
        String description = request.getParameter("description");
        int host = user.getUser_id();
        int type = 1;

        String start_date = request.getParameter("start_date");
        String end_date = request.getParameter("end_date");
//        Date sDate = (Date) dateFormat.parse(start_date);
//        Date eDate = (Date) dateFormat.parse(end_date);
        Tour t = new Tour(tour_name, address, fileName, tour_phone, start_date, end_date, description, host, type, quantity);
        TourDAO dao = new TourDAO();        
        
        int add = dao.addTour(t);
        if (add > 0) {           
           request.getRequestDispatcher("myLeauge").forward(request, response);
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
            Logger.getLogger(LeaugeCreateServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(LeaugeCreateServlet.class.getName()).log(Level.SEVERE, null, ex);
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

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

}
