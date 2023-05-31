/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Feedback {
    private int feedback_id;
    private String full_name;
    private String email;
    private String subject;
    private String detail;
    private int user_id;

    public Feedback() {
    }

    public Feedback(int feedback_id, String full_name, String email, String subject, String detail, int user_id) {
        this.feedback_id = feedback_id;
        this.full_name = full_name;
        this.email = email;
        this.subject = subject;
        this.detail = detail;
        this.user_id = user_id;
    }

    public Feedback(String full_name, String email, String subject, String detail, int user_id) {
        this.full_name = full_name;
        this.email = email;
        this.subject = subject;
        this.detail = detail;
        this.user_id = user_id;
    }

    public Feedback(String full_name, String email, String subject, String detail) {
        this.full_name = full_name;
        this.email = email;
        this.subject = subject;
        this.detail = detail;
    }
    
    

    public int getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(int feedback_id) {
        this.feedback_id = feedback_id;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Feedback{" + "feedback_id=" + feedback_id + ", full_name=" + full_name + ", email=" + email + ", subject=" + subject + ", detail=" + detail + ", user_id=" + user_id + '}';
    }
    
    
    
}
