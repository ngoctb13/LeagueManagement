/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;


/**
 *
 * @author Admin
 */
public class TeamSchedule {
    public int team_schedule_id;
    public int team_id;
    public String title;
    public String location;
    public Date time;

    public TeamSchedule() {
    }

    public TeamSchedule(int team_schedule_id, int team_id, String title, String location, Date time) {
        this.team_schedule_id = team_schedule_id;
        this.team_id = team_id;
        this.title = title;
        this.location = location;
        this.time = time;
    }

    public int getTeam_schedule_id() {
        return team_schedule_id;
    }

    public void setTeam_schedule_id(int team_schedule_id) {
        this.team_schedule_id = team_schedule_id;
    }

    public int getTeam_id() {
        return team_id;
    }

    public void setTeam_id(int team_id) {
        this.team_id = team_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    
}
