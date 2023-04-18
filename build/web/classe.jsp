<%-- 
    Document   : classe
    Created on : 11 mars 2023, 12:23:14
    Author     : Mahamby
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./bootstrap-4.6.2-dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./boxicons-2.1.4/css/boxicons.min.css"/>
        <link rel="stylesheet" href="./css/style.css"/>
        <title>Classe Tenues</title>
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
        <!-- MODAL AJOUT CLASSE-->
        <div class="modal fade" id="myModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <!-- en tête du modal-->
                    <div class="modal-header" style="display: flex; justify-content: center">
                        <h4 class="modal-title">AJOUTER DES CLASSES TENUES</h4>
                        <button type="button" class="close" data-dismiss="modal" id="newEtab">x</button>
                    </div>
                    <!-- contenu du modal-->
                    <div class="modal-body">
                        <form action="action" method="post">
                            <div class="row">
                                <div class="col-6">
                                    <label for="">MATRICULE:</label>
                                    <input type="text" class="form-control" placeholder="matricule d'enseignant" name="matriculeEns">
                                </div>
                                <div class="col-6">
                                    <label for="">MATIERE</label>
                                    <input type="text" class="form-control" placeholder="Matière" name="matiereClasse">
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-6">
                                    <label for="">NIVEAU</label>
                                    <select name="niveauClasse" class="form-control">
                                        <option value="2nde">2nde</option>
                                        <option value="1er S">1er S</option>
                                        <option value="1er L">1er L</option>
                                        <option value="Tle L">Tle L</option>
                                        <option value="Tle S">Tle S</option>
                                    </select>
                                </div>
                                <div class="col-6">
                                    <label for="">HEURE/SEMAINE</label>
                                    <input type="text" class="form-control" placeholder="entrer l'heure par semaine" name="heureSemaine">
                                </div>
                            </div>
                            <!-- modal footer -->
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-info" data-dismiss="modal" value="Enregistrer" name="insertClasse">
                                <input type="submit" class="btn btn-danger" data-dismiss="modal" value="Annuler">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!--Modal d'ajout terminé-->
        <!--liste des classes tenues-->
        <form method="post" action="action">
            <div class="container mt-4">
                <div class="row mt-5 pb-3">
                    <div class="col-10">
                        <h4>LISTES DES CLASSES TENUES</h4>
                    </div>
                    <div class="col-2">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">
                            <span class="bx bx-plus" id="idbtnE">
                        </button>
                    </div>
                </div>
                <table class="table table-striped" id="listClasse">
                    <thead>
                        <tr>
                            <th>MATRICULE</th>
                            <th>NOM</th>
                            <th>PRENOM</th>
                            <th>FONCTION</th>
                            <th>NIVEAU</th>
                            <th>MATIERE</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>cell</td>
                            <td>cell</td>
                            <td>cell</td>
                            <td>cell</td>
                            <td>cell</td>
                            <td>cell</td>
                        </tr>
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
    </body>
</html>
