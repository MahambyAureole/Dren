/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import config.ConnectionBD;
import static config.ConnectionBD.getConnection;
import model.Etablissement;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Mahamby
 */
public class EtablissementDAO {

    private static final String SELECT_ETAB_BYCODE = "SELECT * FROM etablissement where code_etab =?";
    private static final String UPDATE_ETAB = "UPDATE etablissement SET code_etab =?,cisco =?,commune =?,zap =?,fokontany =?,nom_etab =? WHERE code_etab= ?;";
    private static final String DELETE_ETAB = "DELETE FROM etablissement WHERE code_etab =?";
    private static final String GET_CODE_ETAB = "SELECT code_etab FROM etablissement WHERE nom_etab=?";
    private static final String GET_NOM_ETAB = "SELECT nom_etab FROM etablissement";

    public void insertEtab(Etablissement etab) {
        try {
            Connection connection = ConnectionBD.getConnection();
            PreparedStatement ps = connection.prepareStatement("insert into etablissement(code_etab,dren,cisco,commune,zap,fokontany,nom_etab) values (?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, etab.getCode());
            ps.setString(2, etab.getDren());
            ps.setString(3, etab.getCisco());
            ps.setString(4, etab.getCommune());
            ps.setString(5, etab.getZap());
            ps.setString(6, etab.getFokontany());
            ps.setString(7, etab.getNomEtab());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void deleteEtab(String code){
        try {
            Connection connection = ConnectionBD.getConnection();
            PreparedStatement ps = connection.prepareStatement(DELETE_ETAB);
            ps.setString(1, code);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean updateEtab(Etablissement etab) {
        boolean rowupdated = true;
        try {
            Connection connection = getConnection();
            PreparedStatement ps = connection.prepareStatement(UPDATE_ETAB);
            ps.setString(1, etab.getCode());
            ps.setString(2, etab.getCisco());
            ps.setString(3, etab.getCommune());
            ps.setString(4, etab.getZap());
            ps.setString(5, etab.getFokontany());
            ps.setString(6, etab.getNomEtab());
            ps.setString(7, etab.getCode());
            rowupdated = ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rowupdated;
    }

    public Etablissement selectEtabByCode(String code) {
        Etablissement etab = null;
        try {
            Connection connection = getConnection();
            PreparedStatement ps = connection.prepareStatement(SELECT_ETAB_BYCODE);
            ps.setString(1, code);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String code_etab = rs.getString("code_etab");
                String dren = rs.getString("dren");
                String cisco = rs.getString("cisco");
                String commune = rs.getString("commune");
                String zap = rs.getString("zap");
                String fokontany = rs.getString("fokontany");
                String nom_etab = rs.getString("nom_etab");
                etab = new Etablissement(code_etab, dren, cisco, commune, zap, fokontany, nom_etab);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return etab;
    }
    
    public String getCodeEtab(String nomEtab) throws Exception{
            Connection connection = ConnectionBD.getConnection();
            PreparedStatement statement = connection.prepareStatement(GET_CODE_ETAB);
            statement.setString(1, nomEtab);
            ResultSet rs = statement.executeQuery();
            boolean next = rs.next();
            String code_etab = rs.getString("code_etab");
            return code_etab;
    }
    public static List<Etablissement> getNomEtab() throws Exception{
        List<Etablissement> etabs = new ArrayList<>();
        Connection connection = ConnectionBD.getConnection();
        try {
            Statement statement = connection.createStatement();
            System.out.println(statement);
            ResultSet rs = statement.executeQuery(GET_NOM_ETAB);
            while(rs.next()){
                String nom_etab = rs.getString("nom_etab");
                etabs.add(new Etablissement(nom_etab));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return etabs;
    }

    public static List<Etablissement> selectEtab() throws Exception {
        List<Etablissement> etabs = new ArrayList<>();
        Connection connection = ConnectionBD.getConnection();
        try{
            Statement statement = connection.createStatement();
            System.out.println(statement);
            ResultSet rs = statement.executeQuery("select * from etablissement");
            while (rs.next()) {
                String code_etab = rs.getString("code_etab");
                String dren = rs.getString("dren");
                String cisco = rs.getString("cisco");
                String commune = rs.getString("commune");
                String zap = rs.getString("zap");
                String fokontany = rs.getString("fokontany");
                String nom_etab = rs.getString("nom_etab");
                etabs.add(new Etablissement(code_etab, dren, cisco, commune, zap, fokontany, nom_etab));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return etabs;
    }
}
