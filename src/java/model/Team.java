/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Team {
    private int team_id;
    private String team_name;
    private String phone_number;
    private String email;
    private String address;
    private String description;
    private int coach;
    private int tour;

    public Team() {
    }

    public Team(int team_id, String team_name, String phone_number, String email, String address, String description, int coach, int tour) {
        this.team_id = team_id;
        this.team_name = team_name;
        this.phone_number = phone_number;
        this.email = email;
        this.address = address;
        this.description = description;
        this.coach = coach;
        this.tour = tour;
    }

    public Team(String team_name, String phone_number, String email, String address, String description, int coach) {
        this.team_name = team_name;
        this.phone_number = phone_number;
        this.email = email;
        this.address = address;
        this.description = description;
        this.coach = coach;
    }

    public Team(String team_name, String phone_number, String email, String address, String description) {
        this.team_name = team_name;
        this.phone_number = phone_number;
        this.email = email;
        this.address = address;
        this.description = description;
    }

    public Team(int team_id, String team_name, String phone_number, String email, String address, String description) {
        this.team_id = team_id;
        this.team_name = team_name;
        this.phone_number = phone_number;
        this.email = email;
        this.address = address;
        this.description = description;
    }
    
    

    public int getTeam_id() {
        return team_id;
    }

    public void setTeam_id(int team_id) {
        this.team_id = team_id;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCoach() {
        return coach;
    }

    public void setCoach(int coach) {
        this.coach = coach;
    }

    public int getTour() {
        return tour;
    }

    public void setTour(int tour) {
        this.tour = tour;
    }

    @Override
    public String toString() {
        return "Team{" + "team_id=" + team_id + ", team_name=" + team_name + ", phone_number=" + phone_number + ", email=" + email + ", address=" + address + ", description=" + description + ", coach=" + coach + ", tour=" + tour + '}';
    }
    
}
