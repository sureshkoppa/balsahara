/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cdac.dpo.DTO;

/**
 *
 * @author Ramu Parupalli
 */
public class ChildFamilyDetailsDTO {
    
    private String relation;
    private String name;
    private int age;
    private String health;
    private String occupation;
    private String disability;
    private String habits;
    private String wages;

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

   
    public String getDisability() {
        return disability;
    }

    public void setDisability(String disability) {
        this.disability = disability;
    }

    public String getHabits() {
        return habits;
    }

    public void setHabits(String habits) {
        this.habits = habits;
    }

    public String getHealth() {
        return health;
    }

    public void setHealth(String health) {
        this.health = health;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    public String getWages() {
        return wages;
    }

    public void setWages(String wages) {
        this.wages = wages;
    }
            
    
    
    
}
