/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import config.ConnectionBD;
import model.ClasseTenu;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mahamby
 */
public class ClasseTenuDAO {

    private static final String INSERT_CLASS = "insert into enseigner(niveau,id,matiere_tenu,heure_tenu_semaine) values(?, ?, ?, ?)";
    private static final String SELECT_CLASS = "select * from afficheclasse";
    private static final String DELETE_CLASS = "delete from enseigner where id = ? and niveau = ?";
    private static final String DELETE_CLASS_BYID = "delete from enseigner where id = ?";

    public void insertClasse(ClasseTenu ct) {
        try {
            Connection connection = ConnectionBD.getConnection();
            PreparedStatement ps = connection.prepareStatement(INSERT_CLASS);
            ps.setString(1, ct.getNiveau());
            ps.setInt(2, ct.getId());
            ps.setString(3, ct.getMatiere());
            ps.setString(4, ct.getHeure());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteClasse(int id, String niveau) {
        try {
            Connection connection = ConnectionBD.getConnection();
            PreparedStatement ps = connection.prepareStatement(DELETE_CLASS);
            ps.setInt(1, id);
            ps.setString(2, niveau);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void deleteClasseById(int id) {
        try {
            Connection connection = ConnectionBD.getConnection();
            PreparedStatement ps = connection.prepareStatement(DELETE_CLASS_BYID);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<ClasseTenu> selectClasse() throws Exception {
        List<ClasseTenu> classe = new ArrayList<>();
        Connection connection = ConnectionBD.getConnection();
        try {
            Statement statement = connection.createStatement();
            System.out.println(statement);
            ResultSet rs = statement.executeQuery(SELECT_CLASS);
            while (rs.next()) {
                String matriculeEns = rs.getString("matricule");
                String nomEns = rs.getString("nom");
                String prenomEns = rs.getString("prenom");
                String cinEns = rs.getString("cin");
                String fonctionEns = rs.getString("fonction");
                String niveau = rs.getString("niveau");
                String matiere = rs.getString("matiere");
                String heure = rs.getString("heure");
                classe.add(new ClasseTenu(matriculeEns,nomEns,prenomEns,cinEns,fonctionEns,niveau,matiere,heure));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return classe;
    }
}
