/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author asus
 */
public class TourInvite {
    int invite_id, team_id, tour_id, status;
    Team team;

    public TourInvite(int invite_id, int team_id, int tour_id, int status) {
        this.invite_id = invite_id;
        this.team_id = team_id;
        this.tour_id = tour_id;
        this.status = status;
    }

    public int getInvite_id() {
        return invite_id;
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

    public Team getTeam() {
        return team;
    }

    public void setInvite_id(int invite_id) {
        this.invite_id = invite_id;
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

    public void setTeam(Team team) {
        this.team = team;
    }

    @Override
    public String toString() {
        return "TourInvite{" + "invite_id=" + invite_id + ", team_id=" + team_id + ", tour_id=" + tour_id + ", status=" + status + ", team=" + team + '}';
    }
    
    
}
