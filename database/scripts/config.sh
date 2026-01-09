#!/bin/bash
# Configuration de la base de données métier
# Ce fichier centralise les paramètres spécifiques à la BDD applicative
# Il est utilisé par les scripts initBDD.sh, saveBDD.sh et reloadBDD.sh

# Identifiants administrateur (peuvent être surchargés par les variables d'env MYSQL_ADMIN_USER / MYSQL_ADMIN_PASSWORD)
MYSQL_ADMIN_USER_DEFAULT="admin"
MYSQL_ADMIN_PASSWORD_DEFAULT="admin_password"

# Nom de la base métier (peut être surchargé par la variable d'env DATABASE_NAME)
DB_NAME_DEFAULT="oceane_db"

# Utilisateur applicatif et son mot de passe (peuvent être surchargés par WEBAPP_USER / WEBAPP_PASSWORD)
WEBAPP_USER_DEFAULT="oceane-web"
WEBAPP_PASSWORD_DEFAULT="0c34n3W3bP4ssw0rd!"
