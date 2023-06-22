/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Team;
import model.Tour;

/**
 *
 * @author Admin
 */
public class TourDAO extends DBContext{
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    
    public int addTour(Tour t) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into tournament "
                    + "(tour_name, address, phone_number, start_date, end_date, description, host, type, quantity_of_team) "
                    + "values (?,?,?,?,?,?,?,?,?)");
            ps.setString(1, t.getTour_name());
            ps.setString(2,t.getAddress());
            ps.setString(3, t.getPhone_number());
            ps.setString(4, t.getStart_date());
            ps.setString(5, t.getEnd_date());
            ps.setString(6, t.getDescription());
            ps.setInt(7, t.getHost());
            ps.setInt(8, t.getType());
            ps.setInt(9, t.getTeam_quantity());
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
