/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Mahamby
 */
public class Proviseur {

    private String dren, nomEtab, matricule, nomEns, prenomEns, cinEns, contactEns;

    public Proviseur() {
    }

    public Proviseur(String dren, String nomEtab, String matricule, String nomEns, String prenomEns, String cinEns, String contactEns) {
        this.dren = dren;
        this.nomEtab = nomEtab;
        this.matricule = matricule;
        this.nomEns = nomEns;
        this.prenomEns = prenomEns;
        this.cinEns = cinEns;
        this.contactEns = contactEns;
    }

    public String getDren() {
        return dren;
    }

    public void setDren(String dren) {
        this.dren = dren;
    }

    public String getNomEtab() {
        return nomEtab;
    }

    public void setNomEtab(String nomEtab) {
        this.nomEtab = nomEtab;
    }

    public String getMatricule() {
        return matricule;
    }

    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    public String getNomEns() {
        return nomEns;
    }

    public void setNomEns(String nomEns) {
        this.nomEns = nomEns;
    }

    public String getPrenomEns() {
        return prenomEns;
    }

    public void setPrenomEns(String prenomEns) {
        this.prenomEns = prenomEns;
    }

    public String getCinEns() {
        return cinEns;
    }

    public void setCinEns(String cinEns) {
        this.cinEns = cinEns;
    }

    public String getContactEns() {
        return contactEns;
    }

    public void setContactEns(String contactEns) {
        this.contactEns = contactEns;
    }

}
