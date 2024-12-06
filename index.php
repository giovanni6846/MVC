<?php
//error_log("page debut");
session_start();
include_once "vendor/autoload.php";

use App\Utilitaire\Vue;

$Vue = new Vue();

if (isset($_SESSION["typeConnexionBack"])) {
    $typeConnexion = $_SESSION["typeConnexionBack"];
} else {
    $typeConnexion = "visiteur";
}

switch ($typeConnexion) {
    case "visiteur" :
        include "Controleur/Controleur_visiteur.php";
        break;
}

$Vue->afficher();

