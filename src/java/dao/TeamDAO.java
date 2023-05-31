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
import model.User;

/**
 *
 * @author Admin
 */
public class TeamDAO extends DBContext {
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    
    public int addTeam(Team t) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into team (team_name, phone_number, email, address, description, coach) values (?,?,?,?,?,?)");
            ps.setString(1, t.getTeam_name());
            ps.setString(2,t.getPhone_number());
            ps.setString(3, t.getEmail());
            ps.setString(4, t.getAddress());
            ps.setString(5, t.getDescription());
            ps.setInt(6, t.getCoach());
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
    
    public ArrayList<Team> getListTeamByCoach(int coach) throws Exception {
        try {
            String query = "SELECT * FROM team where coach = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, coach);
            rs = ps.executeQuery();
            ArrayList<Team> list = new ArrayList<>();
            while (rs.next()) {
                Team team = new Team();
                team.setTeam_id(rs.getInt("team_id"));
                team.setTeam_name(rs.getString("team_name"));
                team.setPhone_number(rs.getString("phone_number"));
                team.setEmail(rs.getString("email"));
                team.setAddress(rs.getString("address"));
                team.setDescription(rs.getString("description"));
                team.setCoach(rs.getInt("coach"));
                team.setTour(rs.getInt("tour"));               
                list.add(team);
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
    
    public Team getTeamByID(int input_id) throws Exception {
        Team team = null;
        String query = "SELECT * FROM team WHERE team_id = ?";
        try {
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, input_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                int team_id = rs.getInt("team_id");
                String team_name = rs.getString("team_name");
                String phone_number = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String description = rs.getString("description");
                int coach = rs.getInt("coach");
                int tour = rs.getInt("tour");
                team = new Team(team_id, team_name, phone_number, email, address, description, coach, tour);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return team;
    }
    
    public int updateTeam(Team team) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("UPDATE team SET team_name = ?, phone_number= ?, email= ?, address= ?, description= ? WHERE team_id = ?;");
            ps.setString(1, team.getTeam_name());
            ps.setString(2, team.getPhone_number());
            ps.setString(3, team.getEmail());
            ps.setString(4, team.getAddress());
            ps.setString(5, team.getDescription());
            ps.setInt(6, team.getTeam_id());
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
    
    public static void main(String[] args) throws Exception {
        TeamDAO dao = new TeamDAO();
        ArrayList<Team> list = dao.getListTeamByCoach(2);
        System.out.println(list);
    }
}
