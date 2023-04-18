/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Mahamby
 */
public class Etablissement {

    private String code, dren, cisco, zap, commune, fokontany, nomEtab;

    public Etablissement() {
    }

    public Etablissement(String code, String dren, String cisco, String zap, String commune, String fokontany, String nomEtab) {
        this.code = code;
        this.dren = dren;
        this.cisco = cisco;
        this.zap = zap;
        this.commune = commune;
        this.fokontany = fokontany;
        this.nomEtab = nomEtab;
    }

    public Etablissement(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDren() {
        return dren;
    }

    public void setDren(String dren) {
        this.dren = dren;
    }

    public String getCisco() {
        return cisco;
    }

    public void setCisco(String cisco) {
        this.cisco = cisco;
    }

    public String getZap() {
        return zap;
    }

    public void setZap(String zap) {
        this.zap = zap;
    }

    public String getCommune() {
        return commune;
    }

    public void setCommune(String commune) {
        this.commune = commune;
    }

    public String getFokontany() {
        return fokontany;
    }

    public void setFokontany(String fokontany) {
        this.fokontany = fokontany;
    }

    public String getNomEtab() {
        return nomEtab;
    }

    public void setNomEtab(String nomEtab) {
        this.nomEtab = nomEtab;
    }

}
