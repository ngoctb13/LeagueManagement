/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author HP
 */
public class Sponsor {
    int sponsor_id;
    int tour_id;
    String image;
    String link;

    public Sponsor() {
    }

    public Sponsor(int sponsor_id, int tour_id, String image, String link) {
        this.sponsor_id = sponsor_id;
        this.tour_id = tour_id;
        this.image = image;
        this.link = link;
    }
    public Sponsor( int tour_id, String image, String link) {
        this.tour_id = tour_id;
        this.image = image;
        this.link = link;
    }

    public int getSponsor_id() {
        return sponsor_id;
    }

    public void setSponsor_id(int sponsor_id) {
        this.sponsor_id = sponsor_id;
    }

    public int getTour_id() {
        return tour_id;
    }

    public void setTour_id(int tour_id) {
        this.tour_id = tour_id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    

   
    
}
