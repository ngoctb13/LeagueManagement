/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author asus
 */
public class TourJoinRequest {
    private int request_id, team_id, tour_id, status;
    Team team;
    public TourJoinRequest() {
    }

    public TourJoinRequest(int request_id, int team_id, int tour_id, int status) {
        this.request_id = request_id;
        this.team_id = team_id;
        this.tour_id = tour_id;
        this.status = status;
    }
    
    public TourJoinRequest(int team_id, int tour_id, int status) {
        this.team_id = team_id;
        this.tour_id = tour_id;
        this.status = status;
    }

    public int getRequest_id() {
        return request_id;
    }

    public int getTeam_id() {
        return team_id;
    }

    public int getTour_id() {
        return tour_id;
    }

    public int getStatus() {
        return status;
    }

    public void setRequest_id(int request_id) {
        this.request_id = request_id;
    }

    public void setTeam_id(int team_id) {
        this.team_id = team_id;
    }

    public void setTour_id(int tour_id) {
        this.tour_id = tour_id;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    @Override
    public String toString() {
        return "TourJoinRequest{" + "request_id=" + request_id + ", team_id=" + team_id + ", tour_id=" + tour_id + ", status=" + status + ", team=" + team + '}';
    }
    
    
}
