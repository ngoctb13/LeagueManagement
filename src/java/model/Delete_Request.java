/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Delete_Request {
    private int request_id;
    private String reason;
    private String email;
    private int user_id;

    public Delete_Request() {
    }

    public Delete_Request(int request_id, String reason, String email, int user_id) {
        this.request_id = request_id;
        this.reason = reason;
        this.email = email;
        this.user_id = user_id;
    }

    public Delete_Request(String reason, String email, int user_id) {
        this.reason = reason;
        this.email = email;
        this.user_id = user_id;
    }
    
    public int getRequest_id() {
        return request_id;
    }

    public void setRequest_id(int request_id) {
        this.request_id = request_id;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Delete_Request{" + "request_id=" + request_id + ", reason=" + reason + ", email=" + email + ", user_id=" + user_id + '}';
    }
    
    
}
