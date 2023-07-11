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
import model.Team;
import model.TourInvite;
import model.TourJoinRequest;

/**
 *
 * @author asus
 */
public class TourInviteDAO extends DBContext {
    
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    
    public int addTourInvite(TourInvite t) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into tour_invite "
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
    
    public int updateTourInvite(TourInvite tour) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("UPDATE tour_invite SET team_id = ?, tour_id = ?, status = ? WHERE invite_id = ?;");
            ps.setInt(1, tour.getTeam_id());
            ps.setInt(2, tour.getTour_id());
            ps.setInt(3, tour.getStatus());
            ps.setInt(4, tour.getInvite_id());
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
    
    public int FindTourInvite(int team_id, int tour_id) throws Exception {
        try {
            String query = "SELECT * FROM tour_invite where team_id = ? AND tour_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, team_id);
            ps.setInt(2, tour_id);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                return 1;
            }
            return 0;
            
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }
    public TourInvite FindTourTeam(int team_id, int tour_id) throws Exception {
        try {
            String query = "SELECT * FROM tour_invite where team_id = ? AND tour_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, team_id);
            ps.setInt(2, tour_id);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                TeamDAO t = new TeamDAO();
                Team team = t.getTeamByID(rs.getInt("team_id"));
                TourInvite tour = new TourInvite(rs.getInt("invite_id"), rs.getInt("team_id"), rs.getInt("tour_id"), rs.getInt("status"));
                tour.setTeam(team);
                return tour;
            }
            return null;
            
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }
    
    public List<TourInvite> FindStatus(int tour_id, int status) throws Exception {
        try {
            String query = "SELECT * FROM tour_invite where tour_id = ? AND status = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, tour_id);
            ps.setInt(2, status);
            rs = ps.executeQuery();
            List<TourInvite> list = new ArrayList<>();
            while (rs.next()) {
                TeamDAO t = new TeamDAO();
                Team team = t.getTeamByID(rs.getInt("team_id"));
                TourInvite tour = new TourInvite(rs.getInt("invite_id"), rs.getInt("team_id"), rs.getInt("tour_id"), rs.getInt("status"));
                tour.setTeam(team);
                
                list.add(tour);
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
    
    public TourInvite GetTourInviteByID(int id) throws Exception {
        try {
            String query = "SELECT * FROM tour_invite where invite_id = ? ";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                TeamDAO t = new TeamDAO();
                Team team = t.getTeamByID(rs.getInt("team_id"));
                TourInvite tour = new TourInvite(rs.getInt("invite_id"), rs.getInt("team_id"), rs.getInt("tour_id"), rs.getInt("status"));
                tour.setTeam(team);
                return tour;
            }
            
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return null;
    }
    
    public List<TourInvite> GetTourInviteByTeamID(int team_id) throws Exception {
        try {
            String query = "SELECT * FROM tour_invite where team_id = ? AND status = 1";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, team_id);
            rs = ps.executeQuery();
            List<TourInvite> list = new ArrayList<>();
            while (rs.next()) {
                TeamDAO t = new TeamDAO();
                Team team = t.getTeamByID(rs.getInt("team_id"));
                TourInvite tour = new TourInvite(rs.getInt("invite_id"), rs.getInt("team_id"), rs.getInt("tour_id"), rs.getInt("status"));
                tour.setTeam(team);
                list.add(tour);
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
    
    public static void main(String[] args) throws Exception {
//        TourInviteDAO t = new TourInviteDAO();
//        List<TourInvite> to = t.FindStatus(19, 1);
//        for (TourInvite tourInvite : to) {
//            System.out.println(tourInvite.toString());
//        }
//Filter team select

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
        List<TourInvite> listInvite = tin.FindStatus(19, 1);        
        for (TourInvite t : listInvite) {
            if (l1.contains(Integer.toString(t.getTeam_id()))) {
                l1.remove(Integer.toString(t.getTeam_id()));
            }
        }
//        for (String string : l1) {
//            System.out.println(string);
//        }
        List<TourInvite> listInvite2 = tin.FindStatus(19, 0);
        for (TourInvite t : listInvite2) {
            if (l1.contains(Integer.toString(t.getTeam_id()))) {
                l1.remove(t.getTeam_id());
            }
        }
        for (String string : l1) {
            System.out.println(string);
        }
        TourJoinRequestDAO tDAO = new TourJoinRequestDAO();
        System.out.println("===============)");
         List<TourJoinRequest> listJoin = tDAO.FindStatus(19, 0);
            for (TourJoinRequest t : listJoin) {
                if (l1.contains(Integer.toString(t.getTeam_id()))) {
                    l1.remove(t.getTeam_id());
                }
            }
            
            List<TourJoinRequest> listJoin2 = tDAO.FindStatus(19, 1);
            for (TourJoinRequest t : listJoin2) {
                if (l1.contains(Integer.toString(t.getTeam_id()))) {
                    l1.remove(t.getTeam_id());
                }
            }
        List<Team> listTeamResult = new ArrayList<>();
        for (String r : l1) {
            System.out.println(r);
            Team t = team.getTeamByID(Integer.parseInt(r));
            
            listTeamResult.add(t);
        }
        System.out.println("===============)");
        for (Team team1 : listTeamResult) {
            System.out.println(team1.toString());
        }
    }
}
