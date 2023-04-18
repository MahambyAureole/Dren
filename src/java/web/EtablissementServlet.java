/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import dao.EtablissementDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Etablissement;

/**
 *
 * @author Mahamby
 */
public class EtablissementServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Etablissement> listEtab = EtablissementDAO.selectEtab();
            request.setAttribute("listEtab", listEtab);
            this.getServletContext().getRequestDispatcher("/etablissement.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(EtablissementServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /*protected void test(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String action = request.getParameter("insertEtab");
        if (action.equals("Enregistrer")) {
            try {
                insertEtab(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(EtablissementServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }else{
           try {
                listEtab(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(EtablissementServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (Exception ex) {
                Logger.getLogger(EtablissementServlet.class.getName()).log(Level.SEVERE, null, ex);
            } 
        }
    }*/

    protected void insertEtab(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        EtablissementDAO etabDao = new EtablissementDAO();
        Etablissement etab = new Etablissement();
        String code = request.getParameter("codeEtab");
        String dren = request.getParameter("drenEtab");
        String cisco = request.getParameter("ciscoEtab");
        String commune = request.getParameter("communeEtab");
        String zap = request.getParameter("zapEtab");
        String fokontany = request.getParameter("fokontanyEtab");
        String nom = request.getParameter("nomEtab");

        etab.setCode(code);
        etab.setDren(dren);
        etab.setCisco(cisco);
        etab.setCommune(commune);
        etab.setFokontany(fokontany);
        etab.setZap(zap);
        etab.setNomEtab(nom);

        etabDao.insertEtab(etab);
    }
    
    protected void deleteEtab(HttpServletRequest request, HttpServletResponse response){
        EtablissementDAO etabDao = new EtablissementDAO();
        String code = request.getParameter("codeEtabDelete");
        etabDao.deleteEtab(code);
    }
    
    protected void updateEtab(HttpServletRequest request, HttpServletResponse response){
        EtablissementDAO etabDao = new EtablissementDAO();
        Etablissement etab = new Etablissement();
        String code = request.getParameter("codeEtabModif");
        String dren = request.getParameter("drenEtabModif");
        String cisco = request.getParameter("ciscoEtabModif");
        String commune = request.getParameter("communeEtabModif");
        String zap = request.getParameter("zapEtabModif");
        String fokontany = request.getParameter("fokontanyEtabModif");
        String nom = request.getParameter("nomEtabModif");
        
        etab.setCode(code);
        etab.setDren(dren);
        etab.setCisco(cisco);
        etab.setCommune(commune);
        etab.setFokontany(fokontany);
        etab.setZap(zap);
        etab.setNomEtab(nom);
        
        etabDao.updateEtab(etab);
    }

    private void listEtab(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, Exception {
        List<Etablissement> listEtab = EtablissementDAO.selectEtab();
        request.setAttribute("listEtab", listEtab);
        this.getServletContext().getRequestDispatcher("/etablissement.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if("insert".equalsIgnoreCase(action)){
            try {
                insertEtab(request, response);
                doGet(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(EtablissementServlet.class.getName()).log(Level.SEVERE, null, ex);
                ex.printStackTrace();
            }
        }else if("modify".equalsIgnoreCase(action)){
            try {
                updateEtab(request, response);
                doGet(request, response);
            } catch (Exception e) {
                Logger.getLogger(EtablissementServlet.class.getName()).log(Level.SEVERE, null, e);
                e.printStackTrace();
            }
        }else if("delete".equalsIgnoreCase(action)){
            try {
                deleteEtab(request, response);
                doGet(request, response);
            } catch (Exception e) {
                Logger.getLogger(EtablissementServlet.class.getName()).log(Level.SEVERE, null, e);
                e.printStackTrace();
            }
        }
    }

}
