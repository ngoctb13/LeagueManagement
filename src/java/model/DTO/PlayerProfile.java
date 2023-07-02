/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.DTO;

/**
 *
 * @author Admin
 */
public class PlayerProfile {
    private int player_id;
    private int user_id;
    private int team_id;
    private String full_name;
    private String email;
    private String position;
    private String shirt_number;
    private boolean isManager;

    public PlayerProfile() {
    }

    public PlayerProfile(int player_id, int user_id, int team_id, String full_name, String email, String position, String shirt_number, boolean isManager) {
        this.player_id = player_id;
        this.user_id = user_id;
        this.team_id = team_id;
        this.full_name = full_name;
        this.email = email;
        this.position = position;
        this.shirt_number = shirt_number;
        this.isManager = isManager;
    }

    public int getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(int player_id) {
        this.player_id = player_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getTeam_id() {
        return team_id;
    }

    public void setTeam_id(int team_id) {
        this.team_id = team_id;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getShirt_number() {
        return shirt_number;
    }

    public void setShirt_number(String shirt_number) {
        this.shirt_number = shirt_number;
    }

    public boolean isIsManager() {
        return isManager;
    }

    public void setIsManager(boolean isManager) {
        this.isManager = isManager;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
}
