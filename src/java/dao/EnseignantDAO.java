/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import config.ConnectionBD;
import model.Enseignant;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Mahamby
 */
public class EnseignantDAO {

    private static final String INSERT_ENS = "INSERT INTO enseignant(matricule_ens,nom_ens,prenom_ens,sexe_ens,cin_ens,statut_ens,fonction_ens,corps_fonctionnaire,grade_ens,diplome_ac_plus_elevee,diplome_ped_pro_plus_elevee,domaine_formation_ens,duree_formation_ens,organisme_formation_ens,specialite_ens,num_phone_ens,code_etab) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String UPDATE_ENS = "UPDATE enseignant SET matricule_ens=?, nom_ens  =?, prenom_ens=?, sexe_ens=?, cin_ens=?, statut_ens=?, fonction_ens=?, corps_fonctionnaire=?, grade_ens=?, diplome_ac_plus_elevee=?, diplome_ped_pro_plus_elevee=?, domaine_formation_ens=?, duree_formation_ens=?, organisme_formation_ens=?, specialite_ens=?, num_phone_ens=?, code_etab=? where cin_ens=?";
    private static final String DELETE_ENS = "DELETE FROM  enseignant WHERE cin_ens=?";
    private static final String SELECT_ENS = "SELECT * FROM infoEnseignant";
    private static final String GET_ID = "SELECT id from enseignant where cin_ens=?";

    public void insertEns(Enseignant ens) {
        try {
            Connection connection = ConnectionBD.getConnection();
            PreparedStatement ps = connection.prepareStatement(INSERT_ENS);
            ps.setString(1, ens.getMatricule_ens());
            ps.setString(2, ens.getNom_ens());
            ps.setString(3, ens.getPrenom_ens());
            ps.setString(4, ens.getSexe_ens());
            ps.setString(5, ens.getCin_ens());
            ps.setString(6, ens.getStatut_ens());
            ps.setString(7, ens.getFonction_ens());
            ps.setString(8, ens.getCorps_fonctionnaire());
            ps.setString(9, ens.getGrade_ens());
            ps.setString(10, ens.getDiplome_ac_plus_elevee());
            ps.setString(11, ens.getDiplome_ped_pro_plus_elevee());
            ps.setString(12, ens.getDomaine_formation_ens());
            ps.setString(13, ens.getDuree_formation_ens());
            ps.setString(14, ens.getOrganisme_formation_ens());
            ps.setString(15, ens.getSpecialite_ens());
            ps.setString(16, ens.getNum_phone_ens());
            ps.setString(17, ens.getCode_etab());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean updateEns(Enseignant ens) {
        boolean rowupdated = true;
        try {
            Connection connection = ConnectionBD.getConnection();
            PreparedStatement ps = connection.prepareStatement(UPDATE_ENS);
            ps.setString(1, ens.getMatricule_ens());
            ps.setString(2, ens.getNom_ens());
            ps.setString(3, ens.getPrenom_ens());
            ps.setString(4, ens.getSexe_ens());
            ps.setString(5, ens.getCin_ens());
            ps.setString(6, ens.getStatut_ens());
            ps.setString(7, ens.getFonction_ens());
            ps.setString(8, ens.getCorps_fonctionnaire());
            ps.setString(9, ens.getGrade_ens());
            ps.setString(10, ens.getDiplome_ac_plus_elevee());
            ps.setString(11, ens.getDiplome_ped_pro_plus_elevee());
            ps.setString(12, ens.getDomaine_formation_ens());
            ps.setString(13, ens.getDuree_formation_ens());
            ps.setString(14, ens.getOrganisme_formation_ens());
            ps.setString(15, ens.getSpecialite_ens());
            ps.setString(16, ens.getNum_phone_ens());
            ps.setString(17, ens.getCode_etab());
            ps.setString(18, ens.getCin_ens());
            rowupdated = ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rowupdated;
    }

    public void deleteEns(String cin) {
        try {
            Connection connection = ConnectionBD.getConnection();
            PreparedStatement ps = connection.prepareStatement(DELETE_ENS);
            ps.setString(1, cin);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getIntEns(String cinEns) throws Exception {
        Connection connection = ConnectionBD.getConnection();
        PreparedStatement statement = connection.prepareStatement(GET_ID);
        statement.setString(1, cinEns);
        ResultSet rs = statement.executeQuery();
        boolean next = rs.next();
        int idEns = rs.getInt("id");
        return idEns;
    }

    public static List<Enseignant> listEnseignant() throws Exception {
        List<Enseignant> les_enseignants = new ArrayList<>();
        Connection connection = ConnectionBD.getConnection();
        if (connection != null) {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_ENS);
            while (resultSet.next()) {
                les_enseignants.add(new Enseignant(
                        resultSet.getString("matricule_ens"),
                        resultSet.getString("nom_ens"),
                        resultSet.getString("prenom_ens"),
                        resultSet.getString("sexe_ens"),
                        resultSet.getString("cin_ens"),
                        resultSet.getString("statut_ens"),
                        resultSet.getString("fonction_ens"),
                        resultSet.getString("corps_fonctionnaire"),
                        resultSet.getString("grade_ens"),
                        resultSet.getString("diplome_ac_plus_elevee"),
                        resultSet.getString("diplome_ped_pro_plus_elevee"),
                        resultSet.getString("domaine_formation_ens"),
                        resultSet.getString("duree_formation_ens"),
                        resultSet.getString("organisme_formation_ens"),
                        resultSet.getString("specialite_ens"),
                        resultSet.getString("num_phone_ens"),
                        resultSet.getString("nom_Etab")));
            }
        }
        return les_enseignants;
    }
}
