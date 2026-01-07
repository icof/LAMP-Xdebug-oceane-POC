-- script d'initialisation de la base de données oceane pour l'application web avec les droits de l'utilisateur oceane-web
DROP DATABASE IF EXISTS `oceane`;
CREATE DATABASE IF NOT EXISTS `oceane`
CHARACTER SET utf8 COLLATE utf8_general_ci;



USE `oceane`;
-- Script d'initialisation générique de la base de données
-- Le nom de la base est défini via la variable d'environnement DATABASE_NAME dans devcontainer.json
-- Ce script sera traité par les scripts bash qui remplaceront le placeholder

-- Création de la base de données
DROP DATABASE IF EXISTS `__DATABASE_NAME__`;
CREATE DATABASE IF NOT EXISTS `__DATABASE_NAME__`
CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Sélection de la base de données
USE `__DATABASE_NAME__`;

-- Exemple d'utilisateur applicatif (à adapter selon vos besoins)
DROP USER IF EXISTS 'oceane-web'@'%';
CREATE USER 'oceane-web'@'%' IDENTIFIED BY '0c34n3W3bP4ssw0rd!';

GRANT SELECT, INSERT, UPDATE, DELETE ON __DATABASE_NAME__.* TO 'oceane-web'@'%';
GRANT CREATE, DROP, ALTER ON __DATABASE_NAME__.* TO 'oceane-web'@'%';

-- Flush des privilèges
FLUSH PRIVILEGES;