/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;
import model.Team;
import model.TeamSchedule;
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
            ps.setString(2, t.getPhone_number());
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

    public ArrayList<Team> getListAllTeam() throws Exception {
        try {
            String query = "SELECT * FROM team";
            con = getConnection();
            ps = con.prepareStatement(query);
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

    public ArrayList<TeamSchedule> getTeamScheduleList(int team_id) throws Exception {
        try {
            String query = "SELECT * FROM test.team_schedule\n"
                    + "where team_id = ?\n"
                    + "order by time DESC;";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, team_id);
            rs = ps.executeQuery();
            ArrayList<TeamSchedule> list = new ArrayList<>();
            while (rs.next()) {
                TeamSchedule teamSchedule = new TeamSchedule();
                teamSchedule.setTeam_schedule_id(rs.getInt("team_schedule_id"));
                teamSchedule.setTeam_id(rs.getInt("team_id"));
                teamSchedule.setTitle(rs.getString("title"));
                teamSchedule.setLocation(rs.getString("location"));
                teamSchedule.setTime(rs.getDate("time"));
                list.add(teamSchedule);
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

    public int addTeamSchedule(TeamSchedule teamSchedule) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("INSERT INTO `test`.`team_schedule`\n"
                    + "(team_id, title, location, time)\n"
                    + "VALUES (?,?,?,?);");

            ps.setInt(1, teamSchedule.getTeam_id());
            ps.setString(2, teamSchedule.getTitle());
            ps.setString(3, teamSchedule.getLocation());
            ps.setDate(4, teamSchedule.getTime());
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

    public int updateTeamSchedule(TeamSchedule teamSchedule) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("UPDATE team_schedule SET title = ?, location= ?, time= ? WHERE team_schedule_id = ?;");
            ps.setString(1, teamSchedule.getTitle());
            ps.setString(2, teamSchedule.getLocation());
            ps.setDate(3, teamSchedule.getTime());
            ps.setInt(4, teamSchedule.getTeam_schedule_id());
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

    public void deleteTeamSchedule(int team_schedule_id) throws Exception {
        try {
            String query = "DELETE FROM `test`.`team_schedule`\n"
                    + "WHERE team_schedule_id = ?;";
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, team_schedule_id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            closePreparedStatement(ps);
            closeConnection(con);
        }
    }

    public static void main(String[] args) throws Exception {
        //this code is transient
        TeamDAO tDao = new TeamDAO();
        TourInviteDAO tourDAO = new TourInviteDAO();

        List<Team> teamList1 = tDao.getListTeamByCoach(7);
        for (Team team : teamList1) {
            System.out.println(team.toString());
        }
        System.out.println("==================");
        List<Team> teamList = new ArrayList<>();
        teamList.addAll(teamList1);

        for (Team team : teamList) {
            System.out.println(team.toString());
        }
        System.out.println("==================");
        for (Team team : teamList1) {
            if (tourDAO.FindTourTeam(team.getTeam_id(), 21) != null) {
                teamList.remove(team);
            }
        }
        for (Team team : teamList) {
            System.out.println(team.toString());
        }
        System.out.println("==================");
        List<TeamSchedule> teamSchedules = tDao.getTeamScheduleList(2);
        for (TeamSchedule teamSchedule : teamSchedules) {
            System.out.println(teamSchedule.toString());
        }
        System.out.println("==================");
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        //Date date = new Date(System.currentTimeMillis());
//        Date time =  new java.sql.Date(sdf.parse("2023-07-19").getTime());
//        int status = tDao.addTeamSchedule(new TeamSchedule(2, "title", "phong 401L",time ));
//        System.out.println(status);
        tDao.deleteTeamSchedule(14);

    }
}
