<?php

/**
 * Fichier de configuration de la base de données
 */
$_ENV["username"] = "oceane-web"; // utilisateur de la base de données
$_ENV["password"] = "0c34n3W3bP4ssw0rd!"; // mot de passe de l'utilisateur de la base de données
$_ENV["dsn"] = "mysql:host=127.0.0.1;dbname=oceane;port=3306"; // data source name
$_ENV["options"] = array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''); // option pour le driver PDO : UTF8 pour gérer les accents
