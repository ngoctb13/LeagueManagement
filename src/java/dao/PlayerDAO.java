/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Player;

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
            ps = con.prepareStatement("insert into player (user_id, team_id, position, shirt_number) values (?,?,?,?)");
            ps.setInt(1, a.getUser_id());
            ps.setInt(2, a.getTeam_id());
            ps.setString(3, a.getPosition());
            ps.setString(4, a.getShirt_number());
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
