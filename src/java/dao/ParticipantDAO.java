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
import model.DTO.ParticipantProfile;

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

    public ArrayList<ParticipantProfile> getListParticipantProfileByTour(int tour_id) throws Exception {
        try {
            String query = "select t.team_id, t.team_name, t.phone_number, t.email, t.description, p.participant_id, p.tour_id \n"
                    + "from test.team as t\n"
                    + "join test.participant as p\n"
                    + "on t.team_id = p.team_id\n"
                    + "where p.tour_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, tour_id);
            rs = ps.executeQuery();
            ArrayList<ParticipantProfile> list = new ArrayList<>();
            while (rs.next()) {
                ParticipantProfile participantProfile = new ParticipantProfile();
                participantProfile.setParticipant_id(rs.getInt("participant_id"));
                participantProfile.setTour_id(rs.getInt("tour_id"));
                participantProfile.setTeam_id(rs.getInt("team_id"));
                participantProfile.setTeam_name(rs.getString("team_name"));
                participantProfile.setEmail(rs.getString("email"));
                participantProfile.setPhone_number(rs.getString("phone_number"));
                participantProfile.setDescription(rs.getString("description"));
                list.add(participantProfile);
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

    public Boolean IsTourManager(int user_id, int tour_id) throws Exception {
        try {
            String query = "SELECT * FROM test.manager where user_id = ? AND tour_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, user_id);
            ps.setInt(2, tour_id);
            rs = ps.executeQuery();

            return rs.next();

        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }

    public void deleteParticipant(int participant_id) throws Exception {
        try {
            String query = "DELETE FROM participant where participant_id = ?";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, participant_id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }
    
    public static void main(String[] args) throws Exception {
        ParticipantDAO dao = new ParticipantDAO();
        ArrayList<ParticipantProfile> list = dao.getListParticipantProfileByTour(1);
        System.out.println(list);
//        System.out.println(dao.IsTourManager(4, 1));
    }
}
