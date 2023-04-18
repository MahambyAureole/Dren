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
        <title>Etablissement</title>
    </head>
    <body>
        <!--MENU D'ETABLISSEMENT-->
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
        <!-- MODAL AJOUT ETABLISSEMENT-->
        <div class="modal fade" id="myModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <!-- en tête du modal-->
                    <div class="modal-header" style="display: flex; justify-content: center">
                        <h4 class="modal-title">AJOUTER UNE NOUVELLE ETABLISSEMENT</h4>
                        <button type="button" class="close" data-dismiss="modal" id="newEtab">x</button>
                    </div>
                    <!-- contenu du modal-->
                    <div class="modal-body">
                        <form action="EtablissementServlet" method="post">
                            <div class="row">
                                <div class="col-6 mb-3">
                                    <label for="">CODE:</label>
                                    <input type="text" class="form-control" placeholder="code de l'etablissement" name="codeEtab">
                                </div>
                                <div class="col-6">
                                    <label for="">DREN:</label>
                                    <input type="text" class="form-control" name="drenEtab" value="HAUTE MATSIATRA" readonly>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-6">
                                    <label for="">CISCO:</label>
                                    <select name="ciscoEtab" class="form-control">
                                        <option value="AMBALAVAO">AMBALAVAO</option>
                                        <option value="AMBOHIMAHASOA">AMBOHIMAHASOA</option>
                                        <option value="FIANARANTSOA">FIANARANTSOA</option>
                                        <option value="IKALAMAVONY">IKALAMAVONY</option>
                                        <option value="ISANDRA">ISANDRA</option>
                                        <option value="LALANGINA">LALANGINA</option>
                                        <option value="VOHIBATO">VOHIBATO</option>
                                    </select>
                                </div>
                                <div class="col-6">
                                    <label for="">COMMUNE:</label>
                                    <input type="text" class="form-control" placeholder="commune de l'etablissement" name="communeEtab">
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-6">
                                    <label for="">ZAP:</label>
                                    <input type="text" class="form-control" placeholder="zap de l'etablissement" name="zapEtab">
                                </div>
                                <div class="col-6">
                                    <label for="">FOKONTANY:</label>
                                    <input type="text" class="form-control" placeholder="fokontany de l'etablissement" name="fokontanyEtab">
                                </div>
                                <div class="col-6">
                                    <label for="">ETABLISSEMENT:</label>
                                    <input type="text" class="form-control" placeholder="nom de l'etablissement" name="nomEtab">
                                    <input type="text" class="invisible" name="action" id="action" value="insert">
                                </div>
                            </div>
                            <!-- modal footer -->
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-primary" value="Enregistrer">
                                <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Annuler">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!--Modal d'ajout terminé-->
        <!--MOdal Delete-->
        <div class="modal fade" id="myModalDelete">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <!-- En tête du modal supprimer -->
                    <div class="modal-header" style="display: flex; justify-content: center">
                        <h4 class="modal-title ">SUPRIMER UN ETABLISSEMENT!</h4>
                        <button type="button" class="close" data-dismiss="modal" id="deleteEtab">x</button>
                    </div>
                    <!-- contenu du modal -->
                    <div class="modal-body">
                        <form action="EtablissementServlet" method="post">
                            <div class="col-6 mb-3">
                                <label for="">Êtes-Vous sûr?</label>
                                <input type="text" class="form-control invisible" name="codeEtabDelete" id="codeEtabDelete" readonly>
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

        <!-- MODAL DE MODIFICATION -->
        <div class="modal fade" id="myModalModif">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <!-- en tête du modal-->
                    <div class="modal-header" style="display: flex; justify-content: center">
                        <h4 class="modal-title">MODIFIER L'ETABLISSEMENT</h4>
                        <button type="button" class="close" data-dismiss="modal" id="newEtab">x</button>
                    </div>
                    <!-- contenu du modal-->
                    <div class="modal-body">
                        <form action="EtablissementServlet" method="post">
                            <div class="row">
                                <div class="col-6 mb-3">
                                    <label for="">CODE:</label>
                                    <input type="text" class="form-control" name="codeEtabModif" id="codeEtabModif">
                                </div>
                                <div class="col-6">
                                    <label for="">DREN:</label>
                                    <input type="text" class="form-control" name="drenEtabModif" id="drenEtabModif" readonly>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-6">
                                    <label for="">CISCO:</label>
                                    <select name="ciscoEtabModif" id="ciscoEtabModif" class="form-control">
                                        <option value="AMBALAVAO">AMBALAVAO</option>
                                        <option value="AMBOHIMAHASOA">AMBOHIMAHASOA</option>
                                        <option value="FIANARANTSOA">FIANARANTSOA</option>
                                        <option value="IKALAMAVONY">IKALAMAVONY</option>
                                        <option value="ISANDRA">ISANDRA</option>
                                        <option value="LALANGINA">LALANGINA</option>
                                        <option value="VOHIBATO">VOHIBATO</option>
                                    </select>
                                </div>
                                <div class="col-6">
                                    <label for="">COMMUNE:</label>
                                    <input type="text" class="form-control" name="communeEtabModif" id="communeEtabModif">
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-6">
                                    <label for="">ZAP:</label>
                                    <input type="text" class="form-control" name="zapEtabModif" id="zapEtabModif">
                                </div>
                                <div class="col-6">
                                    <label for="">FOKONTANY:</label>
                                    <input type="text" class="form-control" name="fokontanyEtabModif" id="fokontanyEtabModif">
                                </div>
                                <div class="col-6">
                                    <label for="">ETABLISSEMENT:</label>
                                    <input type="text" class="form-control" name="nomEtabModif" id="nomEtabModif">
                                    <input type="text" class="invisible" name="action" value="modify">
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
        <!--liste des etablissements-->
        <form method="POST" action="${pageContext.request.contextPath}/EtablissementServlet">
            <div class="container mt-4">
                <div class="row mt-5 pb-3">
                    <div class="col-10">
                        <h4>LISTES DES ETABLISSEMENTS</h4>
                    </div>
                    <div class="col-2">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">
                            <span class="bx bx-plus" id="idbtnE">
                        </button>
                    </div>
                </div>
                <table class="table table-striped" id="listEtab">
                    <thead>
                        <tr>
                            <th>CODE</th>
                            <th>DREN</th>
                            <th>CISCO</th>
                            <th>COMMUNE</th>
                            <th>ZAP</th>
                            <th>FOKONTANY</th>
                            <th>NOM DE L'ETABLISSEMENT</th>
                            <th>ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="etablissement" items="${listEtab }">
                            <tr>
                                <td><c:out value="${etablissement.code}" /></td>
                                <td><c:out value="${etablissement.dren}" /></td>
                                <td><c:out value="${etablissement.cisco}" /></td>
                                <td><c:out value="${etablissement.zap}" /></td>
                                <td><c:out value="${etablissement.commune}" /></td>
                                <td><c:out value="${etablissement.fokontany}" /></td>
                                <td><c:out value="${etablissement.nomEtab}" /></td>
                                <td>
                                    <a href="" id="modifier" class="btn btn-light" data-toggle="modal" data-target="#myModalModif">
                                        <span class ="bx bx-edit"></span>
                                    </a>
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
                                $("#listEtab")
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
            $(document).on("mouseover","#modifier",action);
                            function action(){
                                var table = document.getElementById("listEtab");
                                for(var i = 0; i < table.rows.length; i++){
                                    table.rows[i].onclick = function(){
                                        $("#codeEtabModif").val(this.cells[0].innerHTML);
                                        $("#drenEtabModif").val(this.cells[1].innerHTML);
                                        $("#ciscoEtabModif").val(this.cells[2].innerHTML);
                                        $("#communeEtabModif").val(this.cells[3].innerHTML);
                                        $("#zapEtabModif").val(this.cells[4].innerHTML);
                                        $("#fokontanyEtabModif").val(this.cells[5].innerHTML);
                                        $("#nomEtabModif").val(this.cells[6].innerHTML);
                                    }
                                }
                            }
        </script>
        <script>
            $(document).on("mouseover","#supprimer",action);
            function action(){
                var table = document.getElementById("listEtab");
                for(var i = 0; i < table.rows.length; i++){
                    table.rows[i].onclick = function(){
                        $("#codeEtabDelete").val(this.cells[0].innerHTML);
                    }
                }
            }
        </script>
    </body>
</html>
