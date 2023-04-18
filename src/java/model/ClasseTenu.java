/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Mahamby
 */
public class ClasseTenu {
    private int id;
    private String matricule,nom,prenom,cin,fonction, niveau, matiere, heure;

    public ClasseTenu(String matricule, String nom, String prenom, String cin, String fonction, String niveau, String matiere, String heure) {
        this.matricule = matricule;
        this.nom = nom;
        this.prenom = prenom;
        this.cin = cin;
        this.fonction = fonction;
        this.niveau = niveau;
        this.matiere = matiere;
        this.heure = heure;
    }

    public ClasseTenu() {
    }

    public ClasseTenu(int id, String niveau, String matiere, String heure) {
        this.id = id;
        this.niveau = niveau;
        this.matiere = matiere;
        this.heure = heure;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNiveau() {
        return niveau;
    }

    public void setNiveau(String niveau) {
        this.niveau = niveau;
    }

    public String getMatiere() {
        return matiere;
    }

    public void setMatiere(String matiere) {
        this.matiere = matiere;
    }

    public String getHeure() {
        return heure;
    }

    public void setHeure(String heure) {
        this.heure = heure;
    }

    public String getMatricule() {
        return matricule;
    }

    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public String getFonction() {
        return fonction;
    }

    public void setFonction(String fonction) {
        this.fonction = fonction;
    }
    
}
