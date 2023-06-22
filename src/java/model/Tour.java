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
public class Tour {
    private int tour_id;
    private String tour_name;
    private String address;
    private String avatar;
    private String phone_number;
    private String start_date;
    private String end_date;
    private String description;
    private int host;
    private int type;
    private int team_quantity;

    public Tour() {
    }

    public Tour(int tour_id, String tour_name, String address, String avatar, String phone_number, String start_date, String end_date, String description, int host, int type, int team_quantity) {
        this.tour_id = tour_id;
        this.tour_name = tour_name;
        this.address = address;
        this.avatar = avatar;
        this.phone_number = phone_number;
        this.start_date = start_date;
        this.end_date = end_date;
        this.description = description;
        this.host = host;
        this.type = type;
        this.team_quantity = team_quantity;
    }

    public Tour(String tour_name, String address, String phone_number, String start_date, String end_date, String description, int host, int type, int team_quantity) {
        this.tour_name = tour_name;
        this.address = address;
        this.phone_number = phone_number;
        this.start_date = start_date;
        this.end_date = end_date;
        this.description = description;
        this.host = host;
        this.type = type;
        this.team_quantity = team_quantity;
    }

    public Tour(String tour_name, String address, String avatar, String phone_number, String start_date, String end_date, String description, int host, int type, int team_quantity) {
        this.tour_name = tour_name;
        this.address = address;
        this.avatar = avatar;
        this.phone_number = phone_number;
        this.start_date = start_date;
        this.end_date = end_date;
        this.description = description;
        this.host = host;
        this.type = type;
        this.team_quantity = team_quantity;
    }
    
    

    public int getTour_id() {
        return tour_id;
    }

    public void setTour_id(int tour_id) {
        this.tour_id = tour_id;
    }

    public String getTour_name() {
        return tour_name;
    }

    public void setTour_name(String tour_name) {
        this.tour_name = tour_name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public void setEnd_date(String end_date) {
        this.end_date = end_date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getHost() {
        return host;
    }

    public void setHost(int host) {
        this.host = host;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getTeam_quantity() {
        return team_quantity;
    }

    public void setTeam_quantity(int team_quantity) {
        this.team_quantity = team_quantity;
    }

    
    
    
}
