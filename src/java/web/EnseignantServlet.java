/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import dao.ClasseTenuDAO;
import dao.EnseignantDAO;
import dao.EtablissementDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ClasseTenu;
import model.Enseignant;
import model.Etablissement;

/**
 *
 * @author Mahamby
 */
public class EnseignantServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            List<Etablissement> nomEtab = EtablissementDAO.getNomEtab();
            request.setAttribute("nomEtabModif", nomEtab);
            List<Enseignant> listEns = EnseignantDAO.listEnseignant();
            request.setAttribute("listEns", listEns);
            this.getServletContext().getRequestDispatcher("/enseignant.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(EnseignantServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    protected void updateEns(HttpServletRequest request, HttpServletResponse response) throws Exception{
        EnseignantDAO enseignantDao = new EnseignantDAO();
        EtablissementDAO etabDao = new EtablissementDAO();
        Enseignant enseignant = new Enseignant();
        
        String matricule = request.getParameter("matriculeEnsModif");
        String nomEns = request.getParameter("nomEnsModif");
        String prenomEns = request.getParameter("prenomEnsModif");
        String cinEns = request.getParameter("cinEnsModif");
        String organismeEns = request.getParameter("organismeEnsModif");
        String sexeEns = request.getParameter("sexeEnsModif");
        String numPhoneEns = request.getParameter("numPhoneEnsModif");
        String specialiteEns = request.getParameter("specialiteEnsModif");
        String statutEns = request.getParameter("statutEnsModif");
        String fonctionEns = request.getParameter("fonctionEnsModif");
        String dureeForm = request.getParameter("dureeFormModif");
        String diplomeAc = request.getParameter("diplomeAcModif");
        String diplomePed = request.getParameter("diplomePedModif");
        String domaineForm = request.getParameter("domaineFormModif");
        String corpsForm = request.getParameter("corpsFormModif");
        String gradeEns = request.getParameter("gradeEnsModif");
        String nomEtab = request.getParameter("nomEtabModif");
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
        
        enseignantDao.updateEns(enseignant);
    }
    private void deleteClasse(HttpServletRequest request, HttpServletResponse response) throws Exception{
        EnseignantDAO ensDao = new EnseignantDAO();
        ClasseTenuDAO ctDao = new ClasseTenuDAO();
        String cin = request.getParameter("cinEnsDelete");
        int id = ensDao.getIntEns(cin);
        ctDao.deleteClasseById(id);
    }
    
    private void deleteEns(HttpServletRequest request, HttpServletResponse response) throws Exception{
        EnseignantDAO ensDao = new EnseignantDAO();
        String cin = request.getParameter("cinEnsDelete");
        ensDao.deleteEns(cin);
    }
    
    private void insertClasse(HttpServletRequest request, HttpServletResponse response) throws Exception{
        EnseignantDAO ensDao = new EnseignantDAO();
        ClasseTenuDAO ctDao = new ClasseTenuDAO();
        ClasseTenu ct = new ClasseTenu();
        String cinEns = request.getParameter("cinEnsClasse");
        String niveau = request.getParameter("niveauClasse");
        String matiere = request.getParameter("matiereClasse");
        String heure = request.getParameter("heureClasse");
        int id = ensDao.getIntEns(cinEns);
        
        ct.setNiveau(niveau);
        ct.setId(id);
        ct.setMatiere(matiere);
        ct.setHeure(heure);
        
        ctDao.insertClasse(ct);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Ajout Réussi!');");
        out.println("</script>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if("modify".equalsIgnoreCase(action)){
            try {
                updateEns(request, response);
                doGet(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else if("delete".equalsIgnoreCase(action)){
            try {
                deleteClasse(request, response);
                deleteEns(request, response);
                doGet(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else if("ajoutClasse".equalsIgnoreCase(action)){
            try {
                insertClasse(request, response);
                doGet(request, response);
                response.sendRedirect("/ListClasseServlet");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

}
