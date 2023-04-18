<%-- 
    Document   : ajoutEtab
    Created on : 11 mars 2023, 09:51:08
    Author     : Mahamby
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./bootstrap-4.6.2-dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./boxicons-2.1.4/css/boxicons.min.css"/>
        <link rel="stylesheet" href="./css/style.css"/>
        <title>ajouter des enseignants</title>
    </head>
    <body>
        <!--MENU D'ajout d'enseignant-->
        <header>
            <div class="logo"></div>
            <nav class="navbar navbar-expand">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="AccueilServlet" class="nav-link text-white">Acceuil</a>
                    </li>
                    <li class="nav-item">
                        <a href="EtablissementServlet" class="nav-link text-white">Etablissement</a>
                    </li>
                    <li class="nav-item">
                        <a href="EnseignantServlet" class="nav-link text-white">Enseignants</a>
                    </li>
                    <li class="nav-item">
                        <a href="ProviseurServlet" class="nav-link text-white">Listes des Proviseurs</a>
                    </li>
                    <li class="nav-item">
                        <a href="ListClasseServlet" class="nav-link text-white">Listes des Classes Tenues</a>
                    </li>
                </ul>
            </nav>
            <div></div>
        </header>
        <!--AJOUTER DES INFOS SUR LES ENSEIGNANTS-->
        <div class="container mt-3">
            <h3 class="text-center">INFOS SUR LES ENSEIGNANTS</h3>
            <div class="row mt-5">
                <div class="col-1"></div>
                <div class="col-10">
                    <form method="post" action="${pageContext.request.contextPath}/AjoutEnseignantServlet">
                        <div class="row">
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="">Nom d'Etablissement:</label>
                                    <select name="nomEtab" id="nomEtab" class="form-control">
                                        <c:forEach var="etablissement" items="${nomEtab}">
                                            <option value="${etablissement.code}">${etablissement.code}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Matricule:</label>
                                    <input type="text" name="matriculeEns" class="form-control" placeholder="Matricule de l'enseignant">
                                </div>
                                <div class="form-group">
                                    <label for="">Nom:</label>
                                    <input type="text" name="nomEns" class="form-control" placeholder="Nom de l'enseignant">
                                </div>
                                <div class="form-group">
                                    <label for="">Prénoms:</label>
                                    <input type="text" name="prenomEns" class="form-control" placeholder="Prenoms de l'enseignant">
                                </div>
                                <div class="form-group">
                                    <label for="">N° CIN:</label>
                                    <input type="text" name="cinEns" class="form-control" placeholder="N° CIN de l'enseignant">
                                </div>
                                <div class="form-group">
                                    <label for="">Organisme de Formation:</label>
                                    <input type="text" name="organismeEns" class="form-control" placeholder="Organisme de formation">
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="">Sexe:</label>
                                    <select name="sexeEns" class="form-control">
                                        <option value="MASCULIN">MASCULIN</option>
                                        <option value="FEMININ">FEMININ</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">N° Téléphone:</label>
                                    <input type="text" name="numPhoneEns" class="form-control" placeholder="Numéro téléphone">
                                </div>
                                <div class="form-group">
                                    <label for="">Spécialité:</label>
                                    <select name="specialiteEns" class="form-control">
                                        <option value=""></option>
                                        <option value="MATHEMATIQUE">MATHEMATIQUE</option>
                                        <option value="ANGLAIS">ANGLAIS</option>
                                        <option value="FRANCAIS">FRANCAIS</option>
                                        <option value="PHYSIQUE-CHIMIE">PHYSIQUE-CHIMIE</option>
                                        <option value="MALAGASY">MALAGASY</option>
                                        <option value="SVT">SVT</option>
                                        <option value="PHILOSOPHIE">PHILOSOPHIE</option>
                                        <option value="HISTO-GEO">HISTO-GEO</option>
                                        <option value="EPS">EPS</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Statut:</label>
                                    <select name="statutEns" class="form-control">
                                        <option value="FONCTIONNAIRE">FONCTIONNAIRE</option>
                                        <option value="CONTRACTUELLE">CONTRACTUELLE</option>
                                        <option value="FRAM NON SUBVENTIONNE">FRAM NON SUBVENTIONNE</option>
                                        <option value="FRAM SUBVENTIONNE">FRAM SUBVENTIONNE</option>
                                        <option value="RESPONSABLE PEDAGOGIQUE">RESPONSABLE PEDAGOGIQUE</option>
                                        <option value="AUTRES A PRECISER">AUTRES A PRECISER</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Fonction:</label>
                                    <select name="fonctionEns" class="form-control">
                                        <option value="PROVISEUR">PROVISEUR</option>
                                        <option value="ENSEIGNANT">ENSEIGNANT</option>
                                        <option value="SURVEILLANT">SURVEILLANT</option>
                                        <option value="COMPTABLE">COMPTABLE</option>
                                        <option value="SECRETAIRE">SECRETAIRE</option>
                                        <option value="PROVISEUR ADJOINT">PROVISEUR ADJOINT</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Durée de Formation:</label>
                                    <input type="text" name="dureeForm" class="form-control" placeholder="xx jours/mois/ans">
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="">Corps:</label>
                                    <input type="text" name="corpsForm" class="form-control" placeholder="corps des enseignants">
                                </div>
                                <div class="form-group">
                                    <label for="">Diplôme AC(plus elevée):</label>
                                    <select name="diplomeAc" class="form-control">
                                        <option value="CEPE">CEPE</option>
                                        <option value="BEPC">BEPC</option>
                                        <option value="BACC">BACC</option>
                                        <option value="LICENCE">LICENCE</option>
                                        <option value="MASTER 1">MASTER 1</option>
                                        <option value="MASTER 2">MASTER 2</option>
                                        <option value="DUESS 1">DUESS 1</option>
                                        <option value="DUESS 2">DUESS 2</option>
                                        <option value="DOCTORAT">DOCTORAT</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Diplôme PED/PRO(plus elevée):</label>
                                    <select name="diplomePed" class="form-control">
                                        <option value=""></option>
                                        <option value="CAE">CAE</option>
                                        <option value="CAP">CAP</option>
                                        <option value="CAP/EP">CAP/EP</option>
                                        <option value="CAP/CP">CAP/CP</option>
                                        <option value="CAPEN">CAPEN</option>
                                        <option value="LAPEN">LAPEN</option>
                                        <option value="MAPEN">MAPEN</option>
                                        <option value="CFFPEC">CFFPEC</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Domaine de Formation:</label>
                                    <input type="text" name="domaineForm" class="form-control" placeholder="Domaine de Formation">
                                </div>
                                <div class="form-group">
                                    <label for="">Grade:</label>
                                    <input type="text" name="gradeEns" class="form-control" placeholder="Grade de l'enseignant">
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3 pt-2 pb-3">
                            <div class="col-6">
                                <input type="reset" class="btn btn-danger" value="Annuler" style="width: 100%">
                            </div>
                            <div class="col-6">
                                <input type="submit" class="btn btn-info" value="Enregistrer" style="width: 100%">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-1"></div>
            </div>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/DataTables/datatables.min.js"></script>
    </body>
</html>
