*** Settings ***
Library     Browser
Resource    ../Keywords/login.resource

*** Test Cases ***

Connexion réussie utilisateur standard
    [Documentation]    Vérifie qu’un utilisateur standard peut se connecter avec des identifiants valides.
    [Tags]    QATEAM-2
    Open Login Page
    Login    standard_user    secret_sauce
    Verify Login Success
    Close Browser

Connexion réussie utilisateur performance
    [Documentation]    Vérifie qu’un utilisateur performance_glitch_user peut se connecter avec succès.
    [Tags]    QATEAM-5
    Open Login Page
    Login    performance_glitch_user    secret_sauce
    Verify Login Success
    Close Browser

Connexion réussie utilisateur problem
    [Documentation]    Vérifie qu’un utilisateur problem_user peut se connecter correctement.
    [Tags]    QATEAM-6
    Open Login Page
    Login    problem_user    secret_sauce
    Verify Login Success
    Close Browser

Connexion réussie utilisateur visual
    [Documentation]    Vérifie qu’un utilisateur visual_user peut accéder à l’application après connexion.
    [Tags]    QATEAM-8
    Open Login Page
    Login    visual_user    secret_sauce
    Verify Login Success
    Close Browser

Vérification message erreur utilisateur bloqué
    [Documentation]    Vérifie qu’un utilisateur bloqué reçoit le message d’erreur approprié lors de la tentative de connexion.
    [Tags]    QATEAM-3
    Open Login Page
    Login    locked_out_user    secret_sauce
    Verify Login Error
    Close Browser

Connexion avec mauvais mot de passe
    [Documentation]    Vérifie qu’une connexion avec un mot de passe incorrect est refusée par l’application.
    [Tags]    QATEAM-4
    Open Login Page
    Login    standard_user    wrong_password
    Verify Login Success
    Close Browser

Connexion utilisateur bloqué attendu réussi
    [Documentation]    Vérifie le comportement du système lorsqu’un utilisateur bloqué tente d’accéder à l’application avec des identifiants valides.
    [Tags]    QATEAM-11
    Open Login Page
    Login    locked_out_user    secret_sauce
    Verify Login Success
    Close Browser

Connexion champs vides attendu réussi
    [Documentation]    Vérifie le comportement du système lorsqu’une tentative de connexion est effectuée avec des champs vides.
    [Tags]    QATEAM-12
    Open Login Page
    Login    ${EMPTY}    ${EMPTY}
    Verify Login Success
    Close Browser

Connexion utilisateur inconnu attendu réussi
    [Documentation]    Vérifie le comportement du système lorsqu’un utilisateur inexistant tente de se connecter.
    [Tags]    QATEAM-13
    Open Login Page
    Login    utilisateur_inconnu    secret_sauce
    Verify Login Success
    Close Browser
