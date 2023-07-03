/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.DTO;

/**
 *
 * @author Admin
 */
public class ParticipantProfile {
    private int participant_id;
    private int team_id;
    private int tour_id;
    private String team_name;
    private String phone_number;
    private String email;
    private String description;

    public ParticipantProfile() {
    }

    public ParticipantProfile(int participant_id, int team_id, int tour_id, String team_name, String phone_number, String email, String description) {
        this.participant_id = participant_id;
        this.team_id = team_id;
        this.tour_id = tour_id;
        this.team_name = team_name;
        this.phone_number = phone_number;
        this.email = email;
        this.description = description;
    }

    public int getParticipant_id() {
        return participant_id;
    }

    public void setParticipant_id(int participant_id) {
        this.participant_id = participant_id;
    }

    public int getTeam_id() {
        return team_id;
    }

    public void setTeam_id(int team_id) {
        this.team_id = team_id;
    }

    public int getTour_id() {
        return tour_id;
    }

    public void setTour_id(int tour_id) {
        this.tour_id = tour_id;
    }

    public String getTeam_name() {
        return team_name;
    }

    public void setTeam_name(String team_name) {
        this.team_name = team_name;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
