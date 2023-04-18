<%-- 
    Document   : accueil
    Created on : 10 mars 2023, 17:28:32
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
        <title>Accueil</title>
    </head>
    <body>
        <!-- MENU D'ACCUEIL -->
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
        <!-- LOGO -->
        <div class="contenu_logo mt-2">
            <div class="row" id="myimage" style="width: 100%;">
                <div class="col-md-1"><img src="./image/uf.jpg" alt="" style="height: 100px;"></div>
                <div class="col-md-1"><img src="./image/emit.jpg" alt="" style="height: 100px;"></div>
                <div class="col-md-1 offset-9"><img src="./image/men.jpg" alt="" style="height: 100px;"></div>
            </div>
        </div>
        <!----CONTENU----->
        <div class="container mt-3">
            <h2 class="text-center">MINISTERE DE L'EDUCATION NATIONALE</h2>
            <h2 class="text-center pt-1">DIRECTION REGIONALE DE L'EDUCATION NATIONALE HAUTE MATSIATRA</h2>
            <h4 class="text-center pt-3">APPLICATION WEB POUR GERES LES ENSEIGNANTS DU LYCEE</h4>

        </div>

        <div class="container-fluid">
            <div class="row mt-5">
                <div class="col-4"></div>
                <div class="col-4">
                    <img src="image/dren_hm.jpg" alt="">
                </div>
                <div class="col-4"></div>
            </div>
        </div>

        <script src="./js/jquery.min.js"></script>
        <script src="./bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js"></script>
        <script src="./js/DataTables/datatables.min.js"></script>
    </body>
</html>
