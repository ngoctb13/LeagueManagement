/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Match {
    private int match_id;
    private Team hometeam;
    private Team awayteam;
    private String match_date;
    private String match_time;
    private int home_score;
    private int away_score;
    private int tour;

    public Match() {
    }

    public Match(int match_id, Team hometeam, Team awayteam, String match_date, String match_time, int home_score, int away_score, int tour) {
        this.match_id = match_id;
        this.hometeam = hometeam;
        this.awayteam = awayteam;
        this.match_date = match_date;
        this.match_time = match_time;
        this.home_score = home_score;
        this.away_score = away_score;
        this.tour = tour;
    }

    public Match(int match_id, Team hometeam, Team awayteam) {
        this.match_id = match_id;
        this.hometeam = hometeam;
        this.awayteam = awayteam;
    }

    public Match(Team hometeam, Team awayteam, String match_date, String match_time, int home_score, int away_score, int tour) {
        this.hometeam = hometeam;
        this.awayteam = awayteam;
        this.match_date = match_date;
        this.match_time = match_time;
        this.home_score = home_score;
        this.away_score = away_score;
        this.tour = tour;
    }

    public Match(Team hometeam, Team awayteam, String match_date, String match_time, int tour) {
        this.hometeam = hometeam;
        this.awayteam = awayteam;
        this.match_date = match_date;
        this.match_time = match_time;
        this.tour = tour;
    }
    
    
    
    public Match(Team hometeam, Team awayteam) {
        this.hometeam = hometeam;
        this.awayteam = awayteam;
    }

    public int getMatch_id() {
        return match_id;
    }

    public void setMatch_id(int match_id) {
        this.match_id = match_id;
    }

    public Team getHometeam() {
        return hometeam;
    }

    public void setHometeam(Team hometeam) {
        this.hometeam = hometeam;
    }

    public Team getAwayteam() {
        return awayteam;
    }

    public void setAwayteam(Team awayteam) {
        this.awayteam = awayteam;
    }

    public String getMatch_date() {
        return match_date;
    }

    public void setMatch_date(String match_date) {
        this.match_date = match_date;
    }

    public String getMatch_time() {
        return match_time;
    }

    public void setMatch_time(String match_time) {
        this.match_time = match_time;
    }

    public int getHome_score() {
        return home_score;
    }

    public void setHome_score(int home_score) {
        this.home_score = home_score;
    }

    public int getAway_score() {
        return away_score;
    }

    public void setAway_score(int away_score) {
        this.away_score = away_score;
    }

    public int getTour() {
        return tour;
    }

    public void setTour(int tour) {
        this.tour = tour;
    }

    

    
    
    
}
