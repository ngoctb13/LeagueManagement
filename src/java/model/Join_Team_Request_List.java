/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author HP
 */
public class Join_Team_Request_List {
    String userName;
    String email;
    String shirt_number;
    String position;

    public Join_Team_Request_List() {
    }

    public Join_Team_Request_List(String userName, String email, String shirt_number, String position) {
        this.userName = userName;
        this.email = email;
        this.shirt_number = shirt_number;
        this.position = position;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
    
}
