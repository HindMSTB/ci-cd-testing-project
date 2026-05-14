*** Settings ***
Library     Browser
Resource    ../Keywords/login.resource

*** Test Cases ***

Connexion Réussie Utilisateur Standard
    [Documentation]    Vérifie qu’un utilisateur standard peut se connecter avec des identifiants valides.
    [Tags]    QATEAM-2
    Ouvrir La Page De Connexion
    Se Connecter    standard_user    secret_sauce
    Vérifier Connexion Réussie
    Close Browser

Connexion Réussie Utilisateur Performance
    [Documentation]    Vérifie qu’un utilisateur performance_glitch_user peut se connecter avec succès.
    [Tags]    QATEAM-5
    Ouvrir La Page De Connexion
    Se Connecter    performance_glitch_user    secret_sauce
    Vérifier Connexion Réussie
    Close Browser

Connexion Réussie Utilisateur Problem
    [Documentation]    Vérifie qu’un utilisateur problem_user peut se connecter correctement.
    [Tags]    QATEAM-6
    Ouvrir La Page De Connexion
    Se Connecter    problem_user    secret_sauce
    Vérifier Connexion Réussie
    Close Browser

Connexion Réussie Utilisateur Visual
    [Documentation]    Vérifie qu’un utilisateur visual_user peut accéder à l’application après connexion.
    [Tags]    QATEAM-8
    Ouvrir La Page De Connexion
    Se Connecter    visual_user    secret_sauce
    Vérifier Connexion Réussie
    Close Browser

Vérification Message Erreur Utilisateur Bloqué
    [Documentation]    Vérifie qu’un utilisateur bloqué reçoit le message d’erreur approprié lors de la tentative de connexion.
    [Tags]    QATEAM-3
    Ouvrir La Page De Connexion
    Se Connecter    locked_out_user    secret_sauce
    Vérifier Message Erreur Connexion
    Close Browser

Connexion Avec Mauvais Mot De Passe
    [Documentation]    Vérifie qu’une connexion avec un mot de passe incorrect est refusée par l’application.
    [Tags]    QATEAM-4
    Ouvrir La Page De Connexion
    Se Connecter    standard_user    wrong_password
    Vérifier Connexion Réussie
    Close Browser

Connexion Utilisateur Bloqué Attendu Réussi
    [Documentation]    Vérifie le comportement du système lorsqu’un utilisateur bloqué tente d’accéder à l’application avec des identifiants valides.
    [Tags]    QATEAM-11
    Ouvrir La Page De Connexion
    Se Connecter    locked_out_user    secret_sauce
    Vérifier Connexion Réussie
    Close Browser

Connexion Champs Vides Attendu Réussi
    [Documentation]    Vérifie le comportement du système lorsqu’une tentative de connexion est effectuée avec des champs vides.
    [Tags]    QATEAM-12
    Ouvrir La Page De Connexion
    Se Connecter    ${EMPTY}    ${EMPTY}
    Vérifier Connexion Réussie
    Close Browser

Connexion Utilisateur Inconnu Attendu Réussi
    [Documentation]    Vérifie le comportement du système lorsqu’un utilisateur inexistant tente de se connecter.
    [Tags]    QATEAM-13
    Ouvrir La Page De Connexion
    Se Connecter    utilisateur_inconnu    secret_sauce
    Vérifier Connexion Réussie
    Close Browser
