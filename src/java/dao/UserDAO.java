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
import model.Delete_Request;
import model.Feedback;
import model.Invitation;
import model.Invite_member;
import model.Join_Team_Request;
import model.User;

/**
 *
 * @author Admin
 */
public class UserDAO extends DBContext {

    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public User getUser(String input_email, String input_password) throws Exception {
        User user = null;
        String query = "SELECT * FROM user WHERE email = ? AND password = ?;";
        try {
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, input_email);
            ps.setString(2, input_password);
            rs = ps.executeQuery();
            while (rs.next()) {
                int user_id = rs.getInt("user_id");
                String full_name = rs.getString("full_name");
                String phone_number = rs.getString("phone_number");
                String avatar_link = rs.getString("avatar_link");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String address = rs.getString("address");
                int role = rs.getInt("role_id");
                user = new User(user_id, full_name, phone_number, avatar_link, email, password, address, role);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return user;
    }

    public User getUserByEmail(String input_email) throws Exception {
        User user = null;
        String query = "SELECT * FROM user WHERE email = ?";
        try {
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, input_email);
            rs = ps.executeQuery();
            while (rs.next()) {
                int user_id = rs.getInt("user_id");
                String full_name = rs.getString("full_name");
                String phone_number = rs.getString("phone_number");
                String avatar_link = rs.getString("avatar_link");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String address = rs.getString("address");
                int role = rs.getInt("role_id");
                user = new User(user_id, full_name, phone_number, avatar_link, email, password, address, role);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return user;
    }
    
    public User getUserByID(int input_id) throws Exception {
        User user = null;
        String query = "SELECT * FROM user WHERE user_id = ?";
        try {
            con = getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, input_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                int user_id = rs.getInt("user_id");
                String full_name = rs.getString("full_name");
                String phone_number = rs.getString("phone_number");
                String avatar_link = rs.getString("avatar_link");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String address = rs.getString("address");
                int role = rs.getInt("role_id");
                user = new User(user_id, full_name, phone_number, avatar_link, email, password, address, role);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConnection(con);
        }
        return user;
    }

    public int addUser(User a) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into user (full_name, email, password, role_id) values (?,?,?,?)");
            ps.setString(1, a.getFull_name());
            ps.setString(2, a.getEmail());
            ps.setString(3, a.getPassword());
            ps.setInt(4, 2);
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

    public int resetPassword(String new_password, String email) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("update user set password = ? where email = ?");
            ps.setString(1, new_password);
            ps.setString(2, email);
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

    public int addDeleteRequest(Delete_Request a) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into delete_request (reason, email, user_id) values (?,?,?)");
            ps.setString(1, a.getReason());
            ps.setString(2, a.getEmail());
            ps.setInt(3, a.getUser_id());
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
     public int addInvitation(Invite_member a) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into team_invite ( team_id, user_id, message, status) values (?,?,?,?)");
            ps.setInt(1, a.getTeamID());
            ps.setInt(2, a.getUserID());
            ps.setString(3, a.getMess());
            ps.setString(4, a.getStatus());
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

   public int addJoinTeamRequest(Join_Team_Request a) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("insert into team_join_request ( user_id, team_id, status, shirt_number, position) values (?,?,?,?,?)");
            ps.setInt(1, a.getUserID());
            ps.setInt(2, a.getTeamID());
            ps.setString(3, a.getStatus());
            ps.setString(4, a.getShirt_number());
            ps.setString(5, a.getPosition());
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

    public List<Invitation> getListInvitationByUserID(int input_id) throws Exception {
        try {
            String sql = "SELECT full_name, team.email, team_name, message  FROM user\n"
                    + "JOIN team ON user.user_id = team.coach\n"
                    + "JOIN team_invite ON team.team_id =team_invite.team_id\n"
                    + " WHERE team_invite.user_id = ? ";
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, input_id);
            rs = ps.executeQuery();
            List<Invitation> list = new ArrayList<>();
            while (rs.next()) {
                Invitation invite = new Invitation();
                invite.setManager(rs.getString("full_name"));
                invite.setTeam_email(rs.getString("team.email"));
                invite.setTeam_name(rs.getString("team_name"));
                invite.setMess(rs.getString("message"));
                list.add(invite);
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

    public List<User> getListUser() throws Exception {
        try {
            String sql = "SELECT * FROM user";
            con = getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            List<User> list = new ArrayList<>();
            while (rs.next()) {
                int id = rs.getInt("user_id");
                String full_name = rs.getString("full_name");
                String phone_number = rs.getString("phone_number");
                String avatar_link = rs.getString("avatar_link");
                String email = rs.getString("email");
                String password = rs.getString("password");
                int role = rs.getInt("role_id");
                String address = rs.getString("address");
                User user = new User(id, full_name, phone_number, avatar_link, email, password, address, role);
                list.add(user);
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
    
    public List<Delete_Request> getListDeleteRequest() throws Exception {
        try {
            String sql = "SELECT * FROM delete_request";
            con = getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            List<Delete_Request> list = new ArrayList<>();
            while (rs.next()) {
                int id = rs.getInt("request_id");
                String reason = rs.getString("reason");
                String email = rs.getString("email");
                int user_id = rs.getInt("user_id");
                Delete_Request rq = new Delete_Request(user_id, reason, email, user_id);
                list.add(rq);
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
    
    public int updateUser(User user) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("UPDATE user SET full_name = ?, phone_number = ?, avatar_link = ?, email = ?, password = ?, role_id = ?, address = ? WHERE user_id = ?;");
            ps.setString(1, user.getFull_name());            
            ps.setString(2, user.getPhone_number());            
            ps.setString(3, user.getAvatar_link());            
            ps.setString(4, user.getEmail());            
            ps.setString(5, user.getPassword());            
            ps.setInt(6, user.getRole());            
            ps.setString(7, user.getAddress());            
            ps.setInt(8, user.getUser_id());            
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
    public int updateUserProfile(User user) throws Exception {
        int status = 0;
        try {
            con = getConnection();
            ps = con.prepareStatement("UPDATE `user`SET `full_name` = ?, `phone_number` = ?, `avatar_link` = ?,`address` = ? WHERE `email` = ?;");
            ps.setString(1, user.getFull_name());            
            ps.setString(2, user.getPhone_number());            
            ps.setString(3, user.getAvatar_link());                                               
            ps.setString(4, user.getAddress());            
            ps.setString(5, user.getEmail());            
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
