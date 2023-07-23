/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Match;
import model.Team;

/**
 *
 * @author Admin
 */
public class MatchDAO extends DBContext {

    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public int addMatch(Match m) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into match (hometeam_id, awayteam_id) values (?,?)");
            ps.setInt(1, m.getHometeam().getTeam_id());
            ps.setInt(2, m.getAwayteam().getTeam_id());
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

    public boolean checkMatchScheduleExists(int tour_id) throws Exception {
        try {
            con = getConnection();
            String query = "SELECT COUNT(*) FROM matches WHERE tour = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1, tour_id);
            rs = ps.executeQuery();

            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0;
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return false;
    }

    TeamDAO teamDAO = new TeamDAO();

    public List<Match> getMatchSchedule(int tour_id) throws Exception {
        List<Match> matchList = new ArrayList<>();

        try {
            con = getConnection();
            String query = "SELECT * FROM matches WHERE tour = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1, tour_id);
            rs = ps.executeQuery();

            while (rs.next()) {
                int match_id = rs.getInt("match_id");
                int hometeam_id = rs.getInt("hometeam_id");
                Team homeTeam = teamDAO.getTeamByID(hometeam_id);
                int awayteam_id = rs.getInt("awayteam_id");
                Team awayTeam = teamDAO.getTeamByID(awayteam_id);
                String match_date = rs.getString("match_date");
                String match_time = rs.getString("match_time");
                int home_score = rs.getInt("home_score");
                int away_score = rs.getInt("away_score");
                int tour = rs.getInt("tour");
                matchList.add(new Match(match_id, homeTeam, awayTeam));
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return matchList;
    }

    public List<Match> getMatchSchedules(int tour_id) throws Exception {
        List<Match> matchList = new ArrayList<>();

        try {
            con = getConnection();
            String query = "SELECT * FROM matches WHERE tour = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1, tour_id);
            rs = ps.executeQuery();

            while (rs.next()) {
                int match_id = rs.getInt("match_id");
                int hometeam_id = rs.getInt("hometeam_id");
                Team homeTeam = teamDAO.getTeamByID(hometeam_id);
                int awayteam_id = rs.getInt("awayteam_id");
                Team awayTeam = teamDAO.getTeamByID(awayteam_id);
                String match_date = rs.getString("match_date");
                String match_time = rs.getString("match_time");
                int home_score = rs.getInt("home_score");
                int away_score = rs.getInt("away_score");
                int tour = rs.getInt("tour");
                matchList.add(new Match(match_id, homeTeam, awayTeam, match_date, match_time, home_score, away_score, tour));
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return matchList;
    }

    public void storeMatchSchedule(int tour_id, List<Match> matchSchedule) throws Exception {
        try {
            con = getConnection();
            deleteMatchSchedule(tour_id, con);

            String query = "INSERT INTO matches (hometeam_id, awayteam_id, tour) VALUES (?, ?, ?)";
            ps = con.prepareStatement(query);

            for (Match match : matchSchedule) {
                ps.setInt(1, match.getHometeam().getTeam_id());
                ps.setInt(2, match.getAwayteam().getTeam_id());
                ps.setInt(3, tour_id);
                ps.executeUpdate();
            }
        } catch (SQLException e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
            closeConnection(con);
        }

    }

    public void addMatchSchedule(Match match) throws Exception {
        try {
            con = getConnection();

            String query = "INSERT INTO matches (hometeam_id, awayteam_id, match_date, match_time, tour) VALUES (?, ?, ?, ?, ?)";
            ps = con.prepareStatement(query);

            ps.setInt(1, match.getHometeam().getTeam_id());
            ps.setInt(2, match.getAwayteam().getTeam_id());
            ps.setString(3, match.getMatch_date());
            ps.setString(4, match.getMatch_time());
            ps.setInt(5, match.getTour());
            ps.executeUpdate();
        } catch (SQLException e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
            closeConnection(con);
        }

    }

    public void deleteMatchSchedule(int tour_id, Connection con) throws Exception {
        try {
            String query = "DELETE FROM matches WHERE tour = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1, tour_id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
        }
    }

    public void deleteMatch(int match_id) throws Exception {
        try {
            con = getConnection();
            String query = "DELETE FROM matches WHERE match_id = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1, match_id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }

    public void updateMatch(List<Match> updatedMatches) throws Exception {
        try {
            con = getConnection();
            String query = "UPDATE matches SET hometeam_id = ?, awayteam_id = ? WHERE match_id = ?";
            ps = con.prepareStatement(query);

            for (Match match : updatedMatches) {
                ps.setInt(1, match.getHometeam().getTeam_id());
                ps.setInt(2, match.getAwayteam().getTeam_id());
                ps.setInt(3, match.getMatch_id());
                ps.addBatch();
            }
            ps.executeBatch();
        } catch (SQLException e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }

    public void updateMatchScore(int match_id, int home_score, int away_score) throws Exception {
        try {
            con = getConnection();
            String query = "UPDATE matches SET home_score = ?, away_score = ? WHERE match_id = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1, home_score);
            ps.setInt(2, away_score);
            ps.setInt(3, match_id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }

    public void updateMatchSchedule(List<Match> updatedMatches) throws Exception {
        try {
            con = getConnection();
            String query = "UPDATE matches SET hometeam_id = ?, awayteam_id = ?, match_date = ?, match_time = ? WHERE match_id = ?";
            ps = con.prepareStatement(query);

            for (Match match : updatedMatches) {
                ps.setInt(1, match.getHometeam().getTeam_id());
                ps.setInt(2, match.getAwayteam().getTeam_id());
                ps.setString(3, match.getMatch_date());
                ps.setString(4, match.getMatch_time());
                ps.setInt(5, match.getMatch_id());
                ps.addBatch();
            }
            ps.executeBatch();
        } catch (SQLException e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }

}
