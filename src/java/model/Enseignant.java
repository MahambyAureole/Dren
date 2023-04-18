/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Mahamby
 */
public class Enseignant {

    private int id;
    private String matricule_ens, nom_ens, prenom_ens, sexe_ens, cin_ens, statut_ens, fonction_ens, corps_fonctionnaire, grade_ens,
        diplome_ac_plus_elevee, diplome_ped_pro_plus_elevee, domaine_formation_ens, duree_formation_ens, organisme_formation_ens, specialite_ens,
        num_phone_ens, code_etab;

    public Enseignant() {
    }

    public Enseignant(String matricule_ens, String nom_ens, String prenom_ens, String sexe_ens, String cin_ens, String statut_ens, String fonction_ens, String corps_fonctionnaire, String grade_ens, String diplome_ac_plus_elevee, String diplome_ped_pro_plus_elevee, String domaine_formation_ens, String duree_formation_ens, String organisme_formation_ens, String specialite_ens, String num_phone_ens, String code_etab) {
        this.matricule_ens = matricule_ens;
        this.nom_ens = nom_ens;
        this.prenom_ens = prenom_ens;
        this.sexe_ens = sexe_ens;
        this.cin_ens = cin_ens;
        this.statut_ens = statut_ens;
        this.fonction_ens = fonction_ens;
        this.corps_fonctionnaire = corps_fonctionnaire;
        this.grade_ens = grade_ens;
        this.diplome_ac_plus_elevee = diplome_ac_plus_elevee;
        this.diplome_ped_pro_plus_elevee = diplome_ped_pro_plus_elevee;
        this.domaine_formation_ens = domaine_formation_ens;
        this.duree_formation_ens = duree_formation_ens;
        this.organisme_formation_ens = organisme_formation_ens;
        this.specialite_ens = specialite_ens;
        this.num_phone_ens = num_phone_ens;
        this.code_etab = code_etab;
    }
    
    

    public Enseignant(int id, String matricule_ens, String nom_ens, String prenom_ens, String sexe_ens, String cin_ens, String statut_ens, String fonction_ens, String corps_fonctionnaire, String grade_ens, String diplome_ac_plus_elevee, String diplome_ped_pro_plus_elevee, String domaine_formation_ens, String duree_formation_ens, String organisme_formation_ens, String specialite_ens, String num_phone_ens, String code_etab) {
        this.id = id;
        this.matricule_ens = matricule_ens;
        this.nom_ens = nom_ens;
        this.prenom_ens = prenom_ens;
        this.sexe_ens = sexe_ens;
        this.cin_ens = cin_ens;
        this.statut_ens = statut_ens;
        this.fonction_ens = fonction_ens;
        this.corps_fonctionnaire = corps_fonctionnaire;
        this.grade_ens = grade_ens;
        this.diplome_ac_plus_elevee = diplome_ac_plus_elevee;
        this.diplome_ped_pro_plus_elevee = diplome_ped_pro_plus_elevee;
        this.domaine_formation_ens = domaine_formation_ens;
        this.duree_formation_ens = duree_formation_ens;
        this.organisme_formation_ens = organisme_formation_ens;
        this.specialite_ens = specialite_ens;
        this.num_phone_ens = num_phone_ens;
        this.code_etab = code_etab;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMatricule_ens() {
        return matricule_ens;
    }

    public void setMatricule_ens(String matricule_ens) {
        this.matricule_ens = matricule_ens;
    }

    public String getNom_ens() {
        return nom_ens;
    }

    public void setNom_ens(String nom_ens) {
        this.nom_ens = nom_ens;
    }

    public String getPrenom_ens() {
        return prenom_ens;
    }

    public void setPrenom_ens(String prenom_ens) {
        this.prenom_ens = prenom_ens;
    }

    public String getSexe_ens() {
        return sexe_ens;
    }

    public void setSexe_ens(String sexe_ens) {
        this.sexe_ens = sexe_ens;
    }

    public String getCin_ens() {
        return cin_ens;
    }

    public void setCin_ens(String cin_ens) {
        this.cin_ens = cin_ens;
    }

    public String getStatut_ens() {
        return statut_ens;
    }

    public void setStatut_ens(String statut_ens) {
        this.statut_ens = statut_ens;
    }

    public String getFonction_ens() {
        return fonction_ens;
    }

    public void setFonction_ens(String fonction_ens) {
        this.fonction_ens = fonction_ens;
    }

    public String getCorps_fonctionnaire() {
        return corps_fonctionnaire;
    }

    public void setCorps_fonctionnaire(String corps_fonctionnaire) {
        this.corps_fonctionnaire = corps_fonctionnaire;
    }

    public String getGrade_ens() {
        return grade_ens;
    }

    public void setGrade_ens(String grade_ens) {
        this.grade_ens = grade_ens;
    }

    public String getDiplome_ac_plus_elevee() {
        return diplome_ac_plus_elevee;
    }

    public void setDiplome_ac_plus_elevee(String diplome_ac_plus_elevee) {
        this.diplome_ac_plus_elevee = diplome_ac_plus_elevee;
    }

    public String getDiplome_ped_pro_plus_elevee() {
        return diplome_ped_pro_plus_elevee;
    }

    public void setDiplome_ped_pro_plus_elevee(String diplome_ped_pro_plus_elevee) {
        this.diplome_ped_pro_plus_elevee = diplome_ped_pro_plus_elevee;
    }

    public String getDomaine_formation_ens() {
        return domaine_formation_ens;
    }

    public void setDomaine_formation_ens(String domaine_formation_ens) {
        this.domaine_formation_ens = domaine_formation_ens;
    }

    public String getDuree_formation_ens() {
        return duree_formation_ens;
    }

    public void setDuree_formation_ens(String duree_formation_ens) {
        this.duree_formation_ens = duree_formation_ens;
    }

    public String getOrganisme_formation_ens() {
        return organisme_formation_ens;
    }

    public void setOrganisme_formation_ens(String organisme_formation_ens) {
        this.organisme_formation_ens = organisme_formation_ens;
    }

    public String getSpecialite_ens() {
        return specialite_ens;
    }

    public void setSpecialite_ens(String specialite_ens) {
        this.specialite_ens = specialite_ens;
    }

    public String getNum_phone_ens() {
        return num_phone_ens;
    }

    public void setNum_phone_ens(String num_phone_ens) {
        this.num_phone_ens = num_phone_ens;
    }

    public String getCode_etab() {
        return code_etab;
    }

    public void setCode_etab(String code_etab) {
        this.code_etab = code_etab;
    }
    
    
}
