<%-- 
    Document   : etablissement
    Created on : 10 mars 2023, 19:12:09
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
        <title>Enseignant</title>
    </head>
    <body>
        <!--MENU D'ENSEIGNANT-->
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
        <!--MOdal Ajout Classe-->
        <div class="modal fade" id="myModalAjoutClasse">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <!-- En tête du modal supprimer -->
                    <div class="modal-header" style="display: flex; justify-content: center">
                        <h5 class="modal-title ">AJOUTER DU CLASSE TENUES PAR CET ENSEIGNANT!</h5>
                        <button type="button" class="close" data-dismiss="modal" id="ajoutClasse">x</button>
                    </div>
                    <!-- contenu du modal -->
                    <div class="modal-body">
                        <form action="EnseignantServlet" method="post">
                            <div class="row">
                                <div class="col-6 mb-3">
                                    <label for="">Nom de l'enseignant:</label>
                                    <input type="text" class="form-control" name="nomEnsClasse" id="nomEnsClasse" readonly>
                                </div>
                                <div class="col-6 mb-3">
                                    <label for="">Prenom de l'enseignant:</label>
                                    <input type="text" class="form-control" name="prenomEnsClasse" id="prenomEnsClasse" readonly>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6 mb-3">
                                    <label for="">Matière:</label>
                                    <input type="text" class="form-control" name="matiereClasse" id="matiereClasse" placeholder="matière à tenir">
                                </div>
                                <div class="col-6 mb-3">
                                    <label for="">Niveau:</label>
                                    <select name="niveauClasse" id="niveauClasse" class="form-control">
                                        <option value="Tle A">Tle A</option>
                                        <option value="Tle C">Tle C</option>
                                        <option value="Tle D">Tle D</option>
                                        <option value="Tle S">Tle S</option>
                                        <option value="2nde">2nde</option>
                                        <option value="1ère A ou L">1ère A ou L</option>
                                        <option value="1ère C">1ère C</option>
                                        <option value="1ère D">1ère D</option>
                                        <option value="1ère S">1ère S</option>
                                    </select>
                                </div>
                                <div class="col-6 mb-3">
                                    <label for="">Heure/Semaine:</label>
                                    <input type="text" class="form-control" name="heureClasse" id="heureClasse" placeholder="Heure par semaine">
                                </div>
                                <div class="col-6 mb-3">
                                    <input type="text" class="form-control invisible" name="cinEnsClasse" id="cinEnsClasse" readonly>
                                </div>
                            </div>

                            <!-- modal footer -->
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-primary" value="Ajouter">
                                <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Annuler">
                                <input type="text" class="invisible" name="action" value="ajoutClasse">
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div><!--Fin modal Ajout classe-->
        <!-- MODAL DE MODIFICATION -->
        <div class="modal fade" id="myModalModif">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <!-- en tête du modal-->
                    <div class="modal-header" style="display: flex; justify-content: center">
                        <h4 class="modal-title">MODIFIER CET ENSEIGNANT</h4>
                        <button type="button" class="close" data-dismiss="modal" id="newEtab">x</button>
                    </div>
                    <!-- contenu du modal-->
                    <div class="modal-body">
                        <form action="EnseignantServlet" method="post">
                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="">Nom d'Etablissement:</label>
                                        <select name="nomEtabModif" id="nomEtabModif" class="form-control">
                                            <c:forEach var="etablissement" items="${nomEtabModif}">
                                                <option value="${etablissement.code}">${etablissement.code}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Matricule:</label>
                                        <input type="text" name="matriculeEnsModif" id="matriculeEnsModif" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="">Nom:</label>
                                        <input type="text" name="nomEnsModif" id="nomEnsModif" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="">Prénoms:</label>
                                        <input type="text" name="prenomEnsModif" id="prenomEnsModif" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="">N° CIN:</label>
                                        <input type="text" name="cinEnsModif" id="cinEnsModif" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="">Organisme de Formation:</label>
                                        <input type="text" name="organismeEnsModif" id="organismeEnsModif" class="form-control">
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="">Sexe:</label>
                                        <select name="sexeEnsModif" id="sexeEnsModif" class="form-control">
                                            <option value="MASCULIN">MASCULIN</option>
                                            <option value="FEMININ">FEMININ</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="">N° Téléphone:</label>
                                        <input type="text" name="numPhoneEnsModif" class="form-control" id="numPhoneEnsModif">
                                    </div>
                                    <div class="form-group">
                                        <label for="">Spécialité:</label>
                                        <select name="specialiteEnsModif" id="specialiteEnsModif" class="form-control">
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
                                        <select name="statutEnsModif" id="statutEnsModif" class="form-control">
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
                                        <select name="fonctionEnsModif" id="fonctionEnsModif" class="form-control">
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
                                        <input type="text" name="dureeFormModif" id="dureeFormModif" class="form-control">
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="">Corps:</label>
                                        <input type="text" name="corpsFormModif" id="corpsFormModif" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="">Diplôme AC(plus elevée):</label>
                                        <select name="diplomeAcModif" id="diplomeAcModif" class="form-control">
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
                                        <select name="diplomePedModif" id="diplomePedModif" class="form-control">
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
                                        <input type="text" name="domaineFormModif" id="domaineFormModif" class="form-control" >
                                    </div>
                                    <div class="form-group">
                                        <label for="">Grade:</label>
                                        <input type="text" name="gradeEnsModif" id="gradeEnsModif" class="form-control" >
                                        <input type="text" class="invisible" name="action" value="modify">
                                    </div>
                                </div>
                            </div>
                            <!-- modal footer -->
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-primary" value="Modifier">
                                <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Annuler">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!--Modal de modification terminé-->
        <!--MOdal Delete-->
        <div class="modal fade" id="myModalDelete">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <!-- En tête du modal supprimer -->
                    <div class="modal-header" style="display: flex; justify-content: center">
                        <h4 class="modal-title ">SUPRIMER CET ENSEIGNANT!</h4>
                        <button type="button" class="close" data-dismiss="modal" id="deleteEns">x</button>
                    </div>
                    <!-- contenu du modal -->
                    <div class="modal-body">
                        <form action="EnseignantServlet" method="post">
                            <div class="col-6 mb-3">
                                <label for="">Êtes-Vous sûr??</label>
                                <input type="text" class="form-control invisible" name="cinEnsDelete" id="cinEnsDelete" readonly>
                            </div>
                            <!-- modal footer -->
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-primary" value="Ok">
                                <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Annuler">
                                <input type="text" class="invisible" name="action" value="delete">
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div><!--Fin modal suppression-->
        <!--liste des enseignants-->
        <form method="post" action="${pageContext.request.contextPath}/EnseignantServlet">
            <div class="container mt-4" id="listProv" >
                <div class="row mt-5 pb-3">
                    <div class="col-10">
                        <h4>LISTES DES ENSEIGNANTS</h4>
                    </div>
                    <div class="col-2">
                        <a href="AjoutEnseignantServlet">
                            <button type="button" class="btn btn-success">
                                <span class="bx bx-plus" id="idbtnE">
                            </button>
                        </a>

                    </div>
                </div>
                <table class="table table-striped table-responsive" id="listEns">
                    <thead>
                        <tr>
                            <th>MATRICULE</th>
                            <th>NOM</th>
                            <th>PRENOMS</th>
                            <th>SEXE</th>
                            <th>N° CIN</th>
                            <th>STATUT</th>
                            <th>FONCTION</th>
                            <th>CORPS</th>
                            <th>GRADE</th>
                            <th>DIPLOME AC (Plus élevée)</th>
                            <th>DIPLOME PED/PRO (Plus élevée)</th>
                            <th>DOMAINE DE FORMATION</th>
                            <th>DUREE DE FORMATION</th>
                            <th>ORGANISME DE FORMATION</th>
                            <th>SPECIALITE</th>
                            <th>N° TELEPHONE</th>
                            <th>NOM DE L'ETABLISSEMENT</th>
                            <th>ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var = "enseignant" items="${listEns }">
                            <tr>
                                <td><c:out value="${enseignant.matricule_ens}"/></td>
                                <td><c:out value="${enseignant.nom_ens}"/></td>
                                <td><c:out value="${enseignant.prenom_ens}"/></td>
                                <td><c:out value="${enseignant.sexe_ens}"/></td>
                                <td><c:out value="${enseignant.cin_ens}"/></td>
                                <td><c:out value="${enseignant.statut_ens}"/></td>
                                <td><c:out value="${enseignant.fonction_ens}"/></td>
                                <td><c:out value="${enseignant.corps_fonctionnaire}"/></td>
                                <td><c:out value="${enseignant.grade_ens}"/></td>
                                <td><c:out value="${enseignant.diplome_ac_plus_elevee}"/></td>
                                <td><c:out value="${enseignant.diplome_ped_pro_plus_elevee}"/></td>
                                <td><c:out value="${enseignant.domaine_formation_ens}"/></td>
                                <td><c:out value="${enseignant.duree_formation_ens}"/></td>
                                <td><c:out value="${enseignant.organisme_formation_ens}"/></td>
                                <td><c:out value="${enseignant.specialite_ens}"/></td>
                                <td><c:out value="${enseignant.num_phone_ens}"/></td>
                                <td><c:out value="${enseignant.code_etab}"/></td>
                                <td>
                                    <a href="" id="modifier" class="btn btn-light" data-toggle="modal" data-target="#myModalModif">
                                        <span class ="bx bx-edit"></span>
                                    </a>
                                    <a href="" id="supprimer" class="btn btn-link" data-toggle="modal" data-target="#myModalDelete">
                                        <span class ="bx bx-trash"></span>
                                    </a>
                                    <a href="" id="ajoutClasse" class="btn btn-link" data-toggle="modal" data-target="#myModalAjoutClasse">
                                        <span class ="bx bx-list-plus"></span>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </form>
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/DataTables/datatables.min.js"></script>
        <script src="js/sweetalert2.min.js"></script>
        <script>
            $(document)
                    .ready(
                            function () {
                                $("#listEns")
                                        .DataTable(
                                                {
                                                    language: {
                                                        url: "//cdn.datatables.net/plug-ins/1.13.1/i18n/fr-FR.json"
                                                    },
                                                    "pagingType": "simple_numbers",
                                                    "lengthMenu": [2, 4, 6, 8, 10],
                                                    "pageLength": 4
                                                });
                            });
        </script>
        <script>
            $(document).on("mouseover", "#modifier", action);
            function action() {
                var table = document.getElementById("listEns");
                for (var i = 0; i < table.rows.length; i++) {
                    table.rows[i].onclick = function () {
                        $("#matriculeEnsModif").val(this.cells[0].innerHTML);
                        $("#nomEnsModif").val(this.cells[1].innerHTML);
                        $("#prenomEnsModif").val(this.cells[2].innerHTML);
                        $("#sexeEnsModif").val(this.cells[3].innerHTML);
                        $("#cinEnsModif").val(this.cells[4].innerHTML);
                        $("#statutEnsModif").val(this.cells[5].innerHTML);
                        $("#fonctionEnsModif").val(this.cells[6].innerHTML);
                        $("#corpsFormModif").val(this.cells[7].innerHTML);
                        $("#gradeEnsModif").val(this.cells[8].innerHTML);
                        $("#diplomeAcModif").val(this.cells[9].innerHTML);
                        $("#diplomePedModif").val(this.cells[10].innerHTML);
                        $("#domaineFormModif").val(this.cells[11].innerHTML);
                        $("#dureeFormModif").val(this.cells[12].innerHTML);
                        $("#organismeEnsModif").val(this.cells[13].innerHTML);
                        $("#specialiteEnsModif").val(this.cells[14].innerHTML);
                        $("#numPhoneEnsModif").val(this.cells[15].innerHTML);
                        $("#nomEtabModif").val(this.cells[16].innerHTML);
                    }
                }
            }
        </script>
        <script>
            $(document).on("mouseover", "#supprimer", action);
            function action() {
                var table = document.getElementById("listEns");
                for (var i = 0; i < table.rows.length; i++) {
                    table.rows[i].onclick = function () {
                        $("#cinEnsDelete").val(this.cells[4].innerHTML);
                    }
                }
            }
        </script>
        <script>
            $(document).on("mouseover", "#ajoutClasse", action);
            function action() {
                var table = document.getElementById("listEns");
                for (var i = 0; i < table.rows.length; i++) {
                    table.rows[i].onclick = function () {
                        $("#nomEnsClasse").val(this.cells[1].innerHTML);
                        $("#prenomEnsClasse").val(this.cells[2].innerHTML);
                        $("#cinEnsClasse").val(this.cells[4].innerHTML);
                    };
                }
            }
        </script>
    </body>
</html>
