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
        <title>Proviseur</title>
    </head>
    <body>
        <!--MENU De la lise de proviseur-->
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

        <!--liste des etablissements-->
        <form method="post" action="${pageContext.request.contextPath}/ProviseurServlet">
            <div class="container mt-4">
                <div class="row mt-5 pb-3">
                    <div class="cols-6" style="margin-left: 85%">
                        <button onclick="imprimer()" class="btn btn-success" >EXPORT EN PDF</button>
                    </div>
                    <div class="col-10">
                        <h4>LISTES DES PROVISEURS</h4>
                    </div>
                </div>
                <table class="table table-bordered table-responsive" id="listProv">
                    <thead>
                        <tr>
                            <th>DREN</th>
                            <th>NOM DE L'ETABLISSEMENT</th>
                            <th>MATRICULE</th>
                            <th>NOM DU PROVISEUR</th>
                            <th>PRENOMS</th>
                            <th>N°CIN</th>
                            <th>CONTACT</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="proviseur" items="${listProv }" >
                            <tr>
                                <td><c:out value="${proviseur.dren}"/></td>
                                <td><c:out value="${proviseur.nomEtab}"/></td>
                                <td><c:out value="${proviseur.matricule}"/></td>
                                <td><c:out value="${proviseur.nomEns}"/></td>
                                <td><c:out value="${proviseur.prenomEns}"/></td>
                                <td><c:out value="${proviseur.cinEns}"/></td>
                                <td><c:out value="${proviseur.contactEns}"/></td>
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
        <script src="js/jspdf.min.js"></script>
        <script src="js/jspdf.plugin.autotable.js"></script>
        <script>
                        function imprimer() {
                            const tableData = [];
                            $('#listProv tr').each(function (row, tr) {
                                tableData[row] = [];
                                $(tr).find('td').each(function (col, td) {
                                    tableData[row][col] = $(td).text();
                                });
                            });

                            const doc = new jsPDF();
                            doc.autoTable({
                                head: [['DREN', 'NOMETAB', 'MATRICULE', 'NOM', 'PRENOMS', 'N° CIN', 'CONTACT']],
                                body: tableData
                            });

                            doc.save('liste des proviseurs.pdf');
                        }
        </script>
    </body>
</html>
