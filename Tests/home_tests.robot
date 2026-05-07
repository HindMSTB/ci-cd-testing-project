*** Settings ***
Library     Browser
Resource    ../Keywords/login.resource

*** Keywords ***
Verify Wrong Title
    Wait For Elements State    css=.title    visible    10s
    Get Text    css=.title    ==    TITRE_QUI_NEXISTE_PAS

*** Test Cases ***

Vérification titre page accueil après connexion
    [Tags]    QATEAM-9
    Open Login Page
    Login    standard_user    secret_sauce
    Verify Login Success
    Close Browser

Vérification page accueil utilisateur performance
    [Tags]    QATEAM-10
    Open Login Page
    Login    performance_glitch_user    secret_sauce
    Verify Login Success
    Close Browser

Vérification page accueil titre incorrect
    [Tags]    QATEAM-15
    Open Login Page
    Login    standard_user    secret_sauce
    Verify Wrong Title
    Close Browser