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
import model.Player;
import model.DTO.PlayerProfile;
import model.Team;

/**
 *
 * @author HP
 */
public class PlayerDAO extends DBContext {

    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public int addPlayer(Player a) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into player (user_id, team_id, position, shirt_number,isManager) values (?,?,?,?,?)");
            ps.setInt(1, a.getUser_id());
            ps.setInt(2, a.getTeam_id());
            ps.setString(3, a.getPosition());
            ps.setString(4, a.getShirt_number());
            ps.setBoolean(5, false);
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

    public ArrayList<Player> getListPlayerByTeam(int team_id) throws Exception {
        try {
            String query = "SELECT * FROM player where team_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, team_id);
            rs = ps.executeQuery();
            ArrayList<Player> list = new ArrayList<>();
            while (rs.next()) {
                Player player = new Player();
                player.setPlayer_id(rs.getInt("player_id"));
                player.setUser_id(rs.getInt("user_id"));
                player.setTeam_id(rs.getInt("team_id"));
                player.setPosition(rs.getString("position"));
                player.setShirt_number(rs.getString("shirt_number"));
                player.setIsManager(rs.getBoolean("isManager"));
                list.add(player);
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

    public ArrayList<PlayerProfile> getListPlayerProfileByTeam(int team_id) throws Exception {
        try {
            String query = "SELECT u.full_name,u.email,u.user_id, p.player_id, p.team_id, p.shirt_number, p.position, p.isManager \n"
                    + "FROM test.user as u \n"
                    + "Join test.player as p \n"
                    + "On u.user_id = p.user_id\n"
                    + "Where p.team_id = ?;";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, team_id);
            rs = ps.executeQuery();
            ArrayList<PlayerProfile> list = new ArrayList<>();
            while (rs.next()) {
                PlayerProfile playerProfile = new PlayerProfile();
                playerProfile.setPlayer_id(rs.getInt("player_id"));
                playerProfile.setUser_id(rs.getInt("user_id"));
                playerProfile.setTeam_id(rs.getInt("team_id"));
                playerProfile.setFull_name(rs.getString("full_name"));
                playerProfile.setEmail(rs.getString("email"));
                playerProfile.setPosition(rs.getString("position"));
                playerProfile.setShirt_number(rs.getString("shirt_number"));
                playerProfile.setIsManager(rs.getBoolean("isManager"));
                list.add(playerProfile);
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

    public Boolean IsTeamManager(int user_id, int team_id) throws Exception {
        try {
            String query = "SELECT * FROM player where user_id = ? AND team_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, user_id);
            ps.setInt(2, team_id);
            rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getBoolean("isManager");
            }
            return false;

        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }

    public int Find(int user_id, int team_id) throws Exception {
        try {
            String query = "SELECT * FROM player where user_id = ? AND team_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, user_id);
            ps.setInt(2, team_id);
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

    public List<Player> FindMyTeam(int user_id) throws Exception {

        List<Player> list = new ArrayList<>();
        try {
            String query = "SELECT * FROM player where user_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, user_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Player player = new Player();
                player.setPlayer_id(rs.getInt("player_id"));
                player.setUser_id(rs.getInt("user_id"));
                player.setTeam_id(rs.getInt("team_id"));
                player.setPosition(rs.getString("positon"));
                player.setShirt_number(rs.getString("shirt_number"));
                player.setIsManager(rs.getBoolean("isManager"));
                list.add(player);
            }

        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return list;
    }

    public Boolean isPlayerCanBeDelete(int player_id) throws Exception {
        try {
            String query = "SELECT * FROM player where player_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, player_id);
            rs = ps.executeQuery();
            Player player = new Player();
            while (rs.next()) {
                player.setPlayer_id(rs.getInt("player_id"));
                player.setUser_id(rs.getInt("user_id"));
                player.setTeam_id(rs.getInt("team_id"));
                player.setPosition(rs.getString("positon"));
                player.setShirt_number(rs.getString("shirt_number"));
                player.setIsManager(rs.getBoolean("isManager"));
            }
            return !player.isIsManager();
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }

    public void deletePlayer(int player_id) throws Exception {
        try {
            String query = "DELETE FROM player where player_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, player_id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }

    public static void main(String[] args) throws Exception {
        PlayerDAO dao = new PlayerDAO();
        List<PlayerProfile> list = dao.getListPlayerProfileByTeam(24);
        for (PlayerProfile player : list) {
            System.out.println(player.toString());
        }
    }
}
