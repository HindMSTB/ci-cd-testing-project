*** Settings ***
Library    Browser

*** Variables ***
${URL}        https://www.saucedemo.com/

*** Keywords ***

Ouvrir La Page De Connexion
    [Documentation]    Ouvre le navigateur et accède à la page de connexion SauceDemo.
    New Browser    chromium    headless=true
    New Page    ${URL}
    Wait For Elements State    id=user-name    visible    10s

Se Connecter
    [Documentation]    Remplit les champs de connexion avec le nom d’utilisateur et le mot de passe puis soumet le formulaire.
    [Arguments]    ${nom_utilisateur}    ${mot_de_passe}
    Fill Text    id=user-name    ${nom_utilisateur}
    Fill Text    id=password     ${mot_de_passe}
    Click    id=login-button

Vérifier Connexion Réussie
    [Documentation]    Vérifie que la connexion est réussie en contrôlant la présence du titre Products.
    Wait For Elements State    css=.title    visible    10s
    Get Text    css=.title    ==    Products

Vérifier Message Erreur Connexion
    [Documentation]    Vérifie que le message d’erreur affiché correspond à un utilisateur bloqué.
    Wait For Elements State    css=h3    visible    10s
    Get Text    css=h3    ==    Epic sadface: Sorry, this user has been locked out.

Vérifier Mauvais Titre
    [Documentation]    Vérifie qu’un titre incorrect provoque un échec de validation.
    Wait For Elements State    css=.title    visible    10s
    Get Text    css=.title    ==    TITRE_QUI_NEXISTE_PAS
