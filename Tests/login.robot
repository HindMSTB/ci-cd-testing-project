*** Settings ***
Library     Browser
Resource    ../Keywords/login.resource

*** Test Cases ***

Connexion réussie utilisateur standard
    [Tags]    QATEAM-2
    Open Login Page
    Login    standard_user    secret_sauce
    Verify Login Success
    Close Browser

Connexion réussie utilisateur performance
    [Tags]    QATEAM-5
    Open Login Page
    Login    performance_glitch_user    secret_sauce
    Verify Login Success
    Close Browser

Connexion réussie utilisateur problem
    [Tags]    QATEAM-6
    Open Login Page
    Login    problem_user    secret_sauce
    Verify Login Success
    Close Browser

Connexion réussie utilisateur error
    [Tags]    QATEAM-7
    Open Login Page
    Login    error_user    secret_sauce
    Verify Login Success
    Close Browser

Connexion réussie utilisateur visual
    [Tags]    QATEAM-8
    Open Login Page
    Login    visual_user    secret_sauce
    Verify Login Success
    Close Browser

Vérification message erreur utilisateur bloqué
    [Tags]    QATEAM-3
    Open Login Page
    Login    locked_out_user    secret_sauce
    Verify Login Error
    Close Browser

Vérification titre page produits après connexion
    [Tags]    QATEAM-9
    Open Login Page
    Login    standard_user    secret_sauce
    Verify Login Success
    Close Browser

Vérification accès tableau de bord standard
    [Tags]    QATEAM-10
    Open Login Page
    Login    standard_user    secret_sauce
    Verify Login Success
    Close Browser

Connexion avec mauvais mot de passe
    [Tags]    QATEAM-4
    Open Login Page
    Login    standard_user    wrong_password
    Verify Login Success
    Close Browser

Connexion avec nom utilisateur invalide
    [Tags]    QATEAM-11
    Open Login Page
    Login    utilisateur_inconnu    secret_sauce
    Verify Login Success
    Close Browser

Connexion avec champs vides
    [Tags]    QATEAM-12
    Open Login Page
    Login    ${EMPTY}    ${EMPTY}
    Verify Login Success
    Close Browser

Connexion utilisateur bloqué avec bon mot de passe
    [Tags]    QATEAM-13
    Open Login Page
    Login    locked_out_user    secret_sauce
    Verify Login Success
    Close Browser