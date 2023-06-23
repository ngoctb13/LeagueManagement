/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author HP
 */
public class Invitation {
    String manager;
    String team_email;
    String team_name;
    String mess;
    

    public Invitation() {
    }

   
     public Invitation(String manager, String team_email, String team_name, String mess) {
        this.manager = manager;
        this.team_email = team_email;
        this.team_name = team_name;
        this.mess = mess;
       
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getTeam_email() {
        return team_email;
    }

    public void setTeam_email(String team_email) {
        this.team_email = team_email;
    }

    public String getTeam_name() {
        return team_name;
    }

    public void setTeam_name(String team_name) {
        this.team_name = team_name;
    }

    public String getMess() {
        return mess;
    }

    public void setMess(String mess) {
        this.mess = mess;
    }

    

   
}
