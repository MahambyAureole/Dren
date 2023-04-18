/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import dao.ClasseTenuDAO;
import dao.EnseignantDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.ClasseTenu;

/**
 *
 * @author Mahamby
 */
public class ListClasseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<ClasseTenu> listClasse = ClasseTenuDAO.selectClasse();
            request.setAttribute("listClasse", listClasse);
            this.getServletContext().getRequestDispatcher("/listClasseTenue.jsp").forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static void deleteClasse(HttpServletRequest request, HttpServletResponse response) throws Exception {
        EnseignantDAO ensDao = new EnseignantDAO();
        ClasseTenuDAO ctDao = new ClasseTenuDAO();
        String niveau = request.getParameter("niveauClasseDelete");
        String cin = request.getParameter("cinClasseDelete");
        int id = ensDao.getIntEns(cin);
        ctDao.deleteClasse(id,niveau);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            deleteClasse(request, response);
            doGet(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
