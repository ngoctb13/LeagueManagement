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
    int requestID;
    int userID;
    int teamID;
    String status;
    String shirt_number;
    String position;
    String level;
    String age;

    public Join_Team_Request() {
    }

    public Join_Team_Request(int requestID, int userID, int teamID, String status, String shirt_number, String position, String level, String age) {
        this.requestID = requestID;
        this.userID = userID;
        this.teamID = teamID;
        this.status = status;
        this.shirt_number = shirt_number;
        this.position = position;
        this.level = level;
        this.age = age;
    }
    public Join_Team_Request( int userID, int teamID, String status, String shirt_number, String position, String level, String age) {
        
        this.userID = userID;
        this.teamID = teamID;
        this.status = status;
        this.shirt_number = shirt_number;
        this.position = position;
        this.level = level;
        this.age = age;
    }

    public int getRequestID() {
        return requestID;
    }

    public void setRequestID(int requestID) {
        this.requestID = requestID;
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

    public String getShirt_number() {
        return shirt_number;
    }

    public void setShirt_number(String shirt_number) {
        this.shirt_number = shirt_number;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

   
    

    
@Override
    public String toString() {
        return "Invite_member{" + "requestID=" + requestID + "userID=" + userID + ", teamID=" + teamID + ", status=" + status +  '}';
    }
}
