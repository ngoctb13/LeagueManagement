/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Sponsor;

/**
 *
 * @author HP
 */
public class SponsorDAO extends DBContext {

    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    public int addSponsor(Sponsor a) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into sponsor (tour_id, image, link) values (?,?,?)");
            ps.setInt(1, a.getTour_id());
            ps.setString(2, a.getImage());
            ps.setString(3, a.getLink());
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
    public void deleteSponsor(int sponsor_id) throws Exception {
        try {
            String query = "DELETE FROM sponsor where sponsor_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, sponsor_id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }
    public Sponsor getSponsorBySponsorID(int input_id) throws Exception {
        Sponsor sponsor = new Sponsor();
        String query = "SELECT * FROM sponsor WHERE sponsor_id = ?";
        try {
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, input_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                int sponsor_id = rs.getInt("sponsor_id");
                String image = rs.getString("image");
                String link = rs.getString("link");
                int tour_id = rs.getInt("tour_id");
                sponsor = new Sponsor(sponsor_id, tour_id, image, link);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return sponsor;
    }
    public int updateSponsor(Sponsor s) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("UPDATE sponsor SET image = ?, link = ? where sponsor_id= ?");
            ps.setString(1, s.getImage());            
            ps.setString(2, s.getLink());
            ps.setInt(3, s.getSponsor_id());
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
    public List<Sponsor> getListSponsorByTourID(int input_id) throws Exception {
        try {
            String sql = "SELECT * FROM sponsor WHERE tour_id = ? ";
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, input_id);
            rs = ps.executeQuery();
            List<Sponsor> list = new ArrayList<>();
            while (rs.next()) {
                int sponsor_id = rs.getInt("sponsor_id");
                int tour_id = rs.getInt("tour_id");
                String image = rs.getString("image");
                String link = rs.getString("link");
                Sponsor sponsor = new Sponsor(sponsor_id, tour_id, image, link);
                list.add(sponsor);
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
     
}
