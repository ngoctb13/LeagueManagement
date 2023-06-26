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
import model.Participant;

/**
 *
 * @author Admin
 */
public class ParticipantDAO extends DBContext {

    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public ArrayList<Participant> getListParticipantByTour(int tour_id) throws Exception {
        try {
            String query = "SELECT * FROM participant where tour_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, tour_id);
            rs = ps.executeQuery();
            ArrayList<Participant> list = new ArrayList<>();
            while (rs.next()) {       
                Participant participant = new Participant();
                participant.setParticipant_id(rs.getInt("participant_id"));
                participant.setTour_id(rs.getInt("tour_id"));
                participant.setTeam_id(rs.getInt("team_id"));
                participant.setPrize(rs.getString("prize"));
                list.add(participant);
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
