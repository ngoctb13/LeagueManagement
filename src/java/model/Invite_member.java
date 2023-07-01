/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author HP
 */
public class Invite_member {
    int inviteID;
    int userID;
    int teamID;
    String mess;
    String status;

    public Invite_member() {
    }

    public Invite_member(int inviteID, int userID, int teamID, String mess, String status) {
        this.inviteID = inviteID;
        this.userID = userID;
        this.teamID = teamID;
        this.mess = mess;
        this.status = status;
    }

    public Invite_member(int userID, int teamID, String mess, String status) {
        this.userID = userID;
        this.teamID = teamID;
        this.mess = mess;
        this.status = status;
    }
    
    

    public int getInviteID() {
        return inviteID;
    }

    public void setInviteID(int inviteID) {
        this.inviteID = inviteID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getTeamID() {
        return teamID;
    }

    public void setTeamID(int teamID) {
        this.teamID = teamID;
    }

    public String getMess() {
        return mess;
    }

    public void setMess(String mess) {
        this.mess = mess;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    @Override
    public String toString() {
        return "Invite_member{" + "inviteID=" + inviteID + "userID=" + userID + ", teamID=" + teamID + ", mess=" + mess+ ", status=" + status +  '}';
    }
    
}
