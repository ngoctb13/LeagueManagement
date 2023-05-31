/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import dao.*;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Feedback;

/**
 *
 * @author Admin
 */
public class FeedbackDAO extends DBContext{
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    
    public int addFeedback(Feedback f) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into feedback (full_name, email, subject, detail, user_id) values (?, ?, ?, ?, ?)");
            ps.setString(1, f.getFull_name());
            ps.setString(2, f.getEmail());
            ps.setString(3, f.getSubject());
            ps.setString(4, f.getDetail());
            ps.setInt(5, f.getUser_id());
            status = ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return status;
    }
    
    public List<Feedback> getListFeedback() throws Exception {
        try {
            String sql = "SELECT * FROM feedback";
            con = getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            List<Feedback> list = new ArrayList<>();
            while (rs.next()) {
                int id = rs.getInt("feedback_id");
                String full_name = rs.getString("full_name");              
                String email = rs.getString("email");
                String subject = rs.getString("subject");
                String detail = rs.getString("detail");
                int user_id = rs.getInt("user_id");
                
                Feedback f = new Feedback(id, full_name, email, subject, detail, user_id);
                list.add(f);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }
    
    public int deleteFeedback(int feedback_id) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("delete from feedback where feedback_id = ?");
            ps.setInt(1, feedback_id);
            status = ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return status;
    }
}
