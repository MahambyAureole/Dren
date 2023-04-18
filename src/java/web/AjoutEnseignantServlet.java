/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import dao.EnseignantDAO;
import dao.EtablissementDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Enseignant;
import model.Etablissement;

/**
 *
 * @author Mahamby
 */
public class AjoutEnseignantServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Etablissement> nomEtab = EtablissementDAO.getNomEtab();
            request.setAttribute("nomEtab", nomEtab);
            this.getServletContext().getRequestDispatcher("/ajoutEnseignant.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(AjoutEnseignantServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    protected void insertEns(HttpServletRequest request, HttpServletResponse response) throws Exception{
        EnseignantDAO enseignantDao = new EnseignantDAO();
        EtablissementDAO etabDao = new EtablissementDAO();
        Enseignant enseignant = new Enseignant();
        
        String matricule = request.getParameter("matriculeEns");
        String nomEns = request.getParameter("nomEns");
        String prenomEns = request.getParameter("prenomEns");
        String cinEns = request.getParameter("cinEns");
        String organismeEns = request.getParameter("organismeEns");
        String sexeEns = request.getParameter("sexeEns");
        String numPhoneEns = request.getParameter("numPhoneEns");
        String specialiteEns = request.getParameter("specialiteEns");
        String statutEns = request.getParameter("statutEns");
        String fonctionEns = request.getParameter("fonctionEns");
        String dureeForm = request.getParameter("dureeForm");
        String diplomeAc = request.getParameter("diplomeAc");
        String diplomePed = request.getParameter("diplomePed");
        String domaineForm = request.getParameter("domaineForm");
        String corpsForm = request.getParameter("corpsForm");
        String gradeEns = request.getParameter("gradeEns");
        String nomEtab = request.getParameter("nomEtab");
        String code = etabDao.getCodeEtab(nomEtab);
        
        enseignant.setMatricule_ens(matricule);
        enseignant.setNom_ens(nomEns);
        enseignant.setPrenom_ens(prenomEns);
        enseignant.setSexe_ens(sexeEns);
        enseignant.setCin_ens(cinEns);
        enseignant.setStatut_ens(statutEns);
        enseignant.setFonction_ens(fonctionEns);
        enseignant.setCorps_fonctionnaire(corpsForm);
        enseignant.setGrade_ens(gradeEns);
        enseignant.setDiplome_ac_plus_elevee(diplomeAc);
        enseignant.setDiplome_ped_pro_plus_elevee(diplomePed);
        enseignant.setDomaine_formation_ens(domaineForm);
        enseignant.setDuree_formation_ens(dureeForm);
        enseignant.setOrganisme_formation_ens(organismeEns);
        enseignant.setSpecialite_ens(specialiteEns);
        enseignant.setNum_phone_ens(numPhoneEns);
        enseignant.setCode_etab(code);
        
        enseignantDao.insertEns(enseignant);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            insertEns(request, response);
            doGet(request, response);
        } catch (Exception ex) {
            Logger.getLogger(AjoutEnseignantServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
