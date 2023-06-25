/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author HP
 */
public class Player {
    int player_id;
    int user_id;
    int team_id;
    String position;
    String shirt_number;

    public Player() {
    }

    public Player(int player_id, int user_id, int team_id, String position, String shirt_number) {
        this.player_id = player_id;
        this.user_id = user_id;
        this.team_id = team_id;
        this.position = position;
        this.shirt_number = shirt_number;
    }
     public Player( int user_id, int team_id, String position, String shirt_number) {
   
        this.user_id = user_id;
        this.team_id = team_id;
        this.position = position;
        this.shirt_number = shirt_number;
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
    
}