/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.TourJoinRequest;

/**
 *
 * @author asus
 */
public class TourJoinRequestDAO extends DBContext{
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    
    public int addTour(TourJoinRequest t) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into tour_join_request "
                    + "(team_id, tour_id, status) "
                    + "values (?,?,?)");
            ps.setInt(1, t.getTeam_id());
            ps.setInt(2, t.getTour_id());
            ps.setInt(3, t.getStatus());
            
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

    public int updateTour(TourJoinRequest tour) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("UPDATE tour_join_request SET team_id = ?, tour_id = ?, status = ? WHERE tour_request_id = ?;");
            ps.setInt(1, tour.getTeam_id());
            ps.setInt(2, tour.getTour_id());
            ps.setInt(3, tour.getStatus());
            ps.setInt(4, tour.getRequest_id());
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
//
//    public Tour getTourByID(int input_id) throws Exception {
//        Tour tour = null;
//        String query = "SELECT * FROM tournament WHERE tour_id = ?";
//        try {
//            con = getConnection();
//            ps = con.prepareStatement(query);
//            ps.setInt(1, input_id);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                int tour_id = rs.getInt("tour_id");
//                String tour_name = rs.getString("tour_name");
//                String address = rs.getString("address");
//                String avatar = rs.getString("avatar");
//                String phone_number = rs.getString("phone_number");
//                String start_date = rs.getString("start_date");
//                String end_date = rs.getString("end_date");
//                String description = rs.getString("description");
//                int host = rs.getInt("host");
//                int type = rs.getInt("type");
//                int quantity = rs.getInt("quantity_of_team");
//                tour = new Tour(tour_id, tour_name, address, avatar, phone_number, start_date, end_date, description, host, type, quantity);
//            }
//        } catch (Exception e) {
//            throw e;
//        } finally {
//            closeResultSet(rs);
//            closePreparedStatement(ps);
//            closeConnection(con);
//        }
//        return tour;
//    }
//
//    public ArrayList<Tour> getListTourByHost(int host_id) throws Exception {
//        try {
//            String query = "SELECT * FROM tournament where host = ?";
//            con = getConnection();
//            ps = con.prepareStatement(query);
//            ps.setInt(1, host_id);
//            rs = ps.executeQuery();
//            ArrayList<Tour> list = new ArrayList<>();
//            while (rs.next()) {
//                Tour tour = null;
//                int tour_id = rs.getInt("tour_id");
//                String tour_name = rs.getString("tour_name");
//                String address = rs.getString("address");
//                String avatar = rs.getString("avatar");
//                String phone_number = rs.getString("phone_number");
//                String start_date = rs.getString("start_date");
//                String end_date = rs.getString("end_date");
//                String description = rs.getString("description");
//                int host = rs.getInt("host");
//                int type = rs.getInt("type");
//                int quantity = rs.getInt("quantity_of_team");
//                tour = new Tour(tour_id, tour_name, address, avatar, phone_number, start_date, end_date, description, host, type, quantity);
//                list.add(tour);
//            }
//            return list;
//        } catch (Exception e) {
//            throw e;
//        } finally {
//            closeResultSet(rs);
//            closePreparedStatement(ps);
//            closeConnection(con);
//        }
//    }
//
//    public List<Tour> getListTour() throws Exception {
//        List<Tour> list_tours = new ArrayList<>();
//        String query = "SELECT * FROM tournament;";
//        try {
//            con = getConnection();
//            ps = con.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                int tour_id = rs.getInt("tour_id");
//                String tour_name = rs.getString("tour_name");
//                String address = rs.getString("address");
//                String avatar = rs.getString("avatar");
//                String phone_number = rs.getString("phone_number");
//                String start_date = rs.getString("start_date");
//                String end_date = rs.getString("end_date");
//                String description = rs.getString("description");
//                int team_quantity = rs.getInt("quantity_of_team");
//                int host = rs.getInt("host");
//                list_tours.add(new Tour(tour_id, tour_name, address, avatar, phone_number, start_date, end_date, description, host, host, team_quantity));
//            }
//            con.close();
//        } catch (Exception e) {
//            throw e;
//        } finally {
//            closeResultSet(rs);
//            closePreparedStatement(ps);
//            closeConnection(con);
//        }
//        return list_tours;
//    }
//
//    public Tour getTourDetail(int id) throws Exception {
//        Tour tour = new Tour();
//        String query = "SELECT * FROM tournament WHERE tour_id='" + id + "';";
//        try {
//            con = getConnection();
//            ps = con.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                int tour_id = rs.getInt("tour_id");
//                String tour_name = rs.getString("tour_name");
//                String address = rs.getString("address");
//                String avatar = rs.getString("avatar");
//                String phone_number = rs.getString("phone_number");
//                String start_date = rs.getDate("start_date").toString();
//                String end_date = rs.getDate("end_date").toString();
//                String description = rs.getString("description");
//                int team_quantity = rs.getInt("quantity_of_team");
//                int host = rs.getInt("host");
//                tour = new Tour(tour_id, tour_name, address, avatar, phone_number, start_date, end_date, description, host, host, team_quantity);
//            }
//            con.close();
//        } catch (Exception e) {
//            throw e;
//        } finally {
//            closeResultSet(rs);
//            closePreparedStatement(ps);
//            closeConnection(con);
//        }
//        return tour;
//    }
    
    public static void main(String[] args) throws Exception {
        TourJoinRequestDAO t = new TourJoinRequestDAO();
        TourJoinRequest t1 = new TourJoinRequest(2,19,1);
//        
        int x = t.addTour(t1);
        if(x == 0){
            System.out.println("Fail");
        } else {
        System.out.println("Ok");
        }
//        List<Tour> list = t.getListTour();
//        for (Tour tour : list) {
//            System.out.println(tour.toString());
//        }
    }
}
