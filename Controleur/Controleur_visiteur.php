<?php

use App\Vue\Vue_Structure_Entete;
use App\Vue\Vue_Connexion_Formulaire_client;

$Vue->setEntete(new Vue_Structure_Entete());

$Vue->addToCorps(new Vue_Connexion_Formulaire_client());