<%-- 
    Document   : listClasseTenue
    Created on : 14 mars 2023, 22:25:01
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
        <title>Listes des classes tenues</title>
    </head>
    <body>
        <!--MENU-->
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
        <!--MOdal Delete-->
        <div class="modal fade" id="myModalDelete">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <!-- En tête du modal supprimer -->
                    <div class="modal-header" style="display: flex; justify-content: center">
                        <h4 class="modal-title ">SUPRIMER CETTE CLASSE TENUE!</h4>
                        <button type="button" class="close" data-dismiss="modal" id="deleteClass">x</button>
                    </div>
                    <!-- contenu du modal -->
                    <div class="modal-body">
                        <form action="ListClasseServlet" method="post">
                            <div class="col-6 mb-3">
                                <label for="">Êtes-Vous sûr??</label>
                            </div>
                            <div class="col-6 mb-2">
                                <input type="text" class="form-control invisible" name="niveauClasseDelete" id="niveauClasseDelete" readonly>
                                <input type="text" class="form-control invisible" name="cinClasseDelete" id="cinClasseDelete" readonly>
                            </div>
                            <!-- modal footer -->
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-primary" value="Ok">
                                <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Annuler">
                                <input type="text" class="invisible" name="action" value="deleteClasse">
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div><!--Fin modal suppression-->
        <!--liste des etablissements-->
        <form method="post" action="${pageContext.request.contextPath}/ListClasseServlet">
            <div class="container mt-4">
                <div class="row mt-5 pb-3">
                    <div class="col-10">
                        <h4>LISTES DES CLASSES TENUES</h4>
                    </div>
                </div>
                <table class="table table-bordered table-responsive table-hover" id="listClasse">
                    <thead>
                        <tr>
                            <th>MATRICULE</th>
                            <th>NOM DE L'ENSEIGNANT</th>
                            <th>PRENOM DE L'ENSEIGNANT</th>
                            <th>N° CIN</th>
                            <th>FONCTION</th>
                            <th>NIVEAU</th>
                            <th>MATIERE</th>
                            <th>HEURE/SEMAINE</th>
                            <th>ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="classeTenu" items="${listClasse }">
                            <tr>
                                <td><c:out value="${classeTenu.matricule}" /></td>
                                <td><c:out value="${classeTenu.nom}" /></td>
                                <td><c:out value="${classeTenu.prenom}" /></td>
                                <td><c:out value="${classeTenu.cin}" /></td>
                                <td><c:out value="${classeTenu.fonction}" /></td>
                                <td><c:out value="${classeTenu.niveau}" /></td>
                                <td><c:out value="${classeTenu.matiere}" /></td>
                                <td><c:out value="${classeTenu.heure}" /></td>
                                <td>
                                    <a href="" id="supprimer" class="btn btn-link" data-toggle="modal" data-target="#myModalDelete">
                                        <span class ="bx bx-trash"></span>
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
        <script>
            $(document)
                    .ready(
                            function () {
                                $("#listClasse")
                                        .DataTable(
                                                {
                                                    language: {
                                                        url: "//cdn.datatables.net/plug-ins/1.13.1/i18n/fr-FR.json"
                                                    },
                                                    "pagingType": "simple_numbers",
                                                    "lengthMenu": [2, 4, 6, 8, 10],
                                                    "pageLength": 4
                                                })
                            });
        </script>
        <script>
            $(document).on("mouseover", "#supprimer", action);
            function action() {
                var table = document.getElementById("listClasse");
                for (var i = 0; i < table.rows.length; i++) {
                    table.rows[i].onclick = function () {
                        $("#cinClasseDelete").val(this.cells[3].innerHTML);
                        $("#niveauClasseDelete").val(this.cells[5].innerHTML);
                        console.log(this.cells[3].innerHTML);
                        console.log(this.cells[5].innerHTML);
                        
                    }
                }
            }
        </script>
    </body>
</html>
