/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author HP
 */
public class Join_Team_Request {
    int RequestID;
    int userID;
    int teamID;
    String status;

    public Join_Team_Request() {
    }

    public Join_Team_Request(int RequestID, int userID, int teamID, String status) {
        this.RequestID = RequestID;
        this.userID = userID;
        this.teamID = teamID;
        this.status = status;
    }
    public Join_Team_Request(int userID, int teamID, String status) {
       
        this.userID = userID;
        this.teamID = teamID;
        this.status = status;
    }

    public int getRequestID() {
        return RequestID;
    }

    public void setRequestID(int RequestID) {
        this.RequestID = RequestID;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
@Override
    public String toString() {
        return "Invite_member{" + "inviteID=" + RequestID + "userID=" + userID + ", teamID=" + teamID + ", status=" + status +  '}';
    }
}
