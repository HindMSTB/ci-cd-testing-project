*** Settings ***
Library     Browser
Resource    ../Keywords/login.resource

*** Test Cases ***

Vérification titre page accueil après connexion
    [Documentation]    Vérifie que l’utilisateur standard accède correctement à la page Products après connexion.
    [Tags]    QATEAM-9
    Open Login Page
    Login    standard_user    secret_sauce
    Verify Login Success
    Close Browser

Vérification page accueil utilisateur performance
    [Documentation]    Vérifie que l’utilisateur performance_glitch_user accède correctement à la page Products après connexion.
    [Tags]    QATEAM-10
    Open Login Page
    Login    performance_glitch_user    secret_sauce
    Verify Login Success
    Close Browser

Vérification page accueil titre incorrect
    [Documentation]    Vérifie le comportement du système lorsque le titre attendu de la page d’accueil est incorrect.
    [Tags]    QATEAM-15
    Open Login Page
    Login    standard_user    secret_sauce
    Verify Wrong Title
    Close Browser
