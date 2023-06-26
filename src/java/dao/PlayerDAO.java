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
import model.Player;
import model.Team;

/**
 *
 * @author HP
 */
public class PlayerDAO extends DBContext {

    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

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
    
    public Boolean IsTeamManager (int user_id, int team_id ) throws Exception{
         try {
            String query = "SELECT * FROM player where user_id = ? AND team_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, user_id);
            ps.setInt(2, team_id);
            rs = ps.executeQuery();
            
            if(rs.next()){
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

    public void deletePlayer(int player_id) throws Exception {
        try {
            String query = "DELETE FROM player where player_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, player_id);
            rs = ps.executeQuery();
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }
}
