/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import config.ConnectionBD;
import java.util.*;
import java.sql.*;
import model.Proviseur;

/**
 *
 * @author Mahamby
 */
public class ProviseurDAO {
    private static final String SELECT_PROV = "select * from infoprov";
    
    public static List<Proviseur> selectProv() throws Exception {
        List<Proviseur> prov = new ArrayList<>();
        Connection connection = ConnectionBD.getConnection();
        try{
            Statement statement = connection.createStatement();
            System.out.println(statement);
            ResultSet rs = statement.executeQuery(SELECT_PROV);
            while (rs.next()) {
                String dren = rs.getString("dren");
                String nom_etab = rs.getString("nom_etab");
                String matricule_ens = rs.getString("matricule_ens");
                String nom_ens = rs.getString("nom_ens");
                String prenom_ens = rs.getString("prenom_ens");
                String cin_ens = rs.getString("cin_ens");
                String num_phone_ens = rs.getString("num_phone_ens");
                prov.add(new Proviseur(dren, nom_etab, matricule_ens, nom_ens, prenom_ens, cin_ens, num_phone_ens));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return prov;
    }
}
