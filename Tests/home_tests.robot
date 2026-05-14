*** Settings ***
Library     Browser
Resource    ../Keywords/login.resource

*** Test Cases ***

Vérification Titre Page Accueil Après Connexion
    [Documentation]    Vérifie que l’utilisateur standard accède correctement à la page Products après connexion.
    [Tags]    QATEAM-9
    Ouvrir La Page De Connexion
    Se Connecter    standard_user    secret_sauce
    Vérifier Connexion Réussie
    Close Browser

Vérification Page Accueil Utilisateur Performance
    [Documentation]    Vérifie que l’utilisateur performance_glitch_user accède correctement à la page Products après connexion.
    [Tags]    QATEAM-10
    Ouvrir La Page De Connexion
    Se Connecter    performance_glitch_user    secret_sauce
    Vérifier Connexion Réussie
    Close Browser

Vérification Page Accueil Titre Incorrect
    [Documentation]    Vérifie le comportement du système lorsque le titre attendu de la page d’accueil est incorrect.
    [Tags]    QATEAM-15
    Ouvrir La Page De Connexion
    Se Connecter    standard_user    secret_sauce
    Vérifier Mauvais Titre
    Close Browser
