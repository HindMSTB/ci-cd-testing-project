*** Settings ***
Library    Browser

*** Variables ***
${URL}        https://www.saucedemo.com/

*** Keywords ***
Open Login Page
    New Browser    chromium    headless=true
    New Page    ${URL}
    Wait For Elements State    id=user-name    visible    10s

Login
    [Arguments]    ${username}    ${password}
    Fill Text    id=user-name    ${username}
    Fill Text    id=password     ${password}
    Click    id=login-button

Verify Login Success
    Wait For Elements State    css=.title    visible    10s
    Get Text    css=.title    ==    Products

Verify Login Error
    Wait For Elements State    css=h3    visible    10s
    Get Text    css=h3    ==    Epic sadface: Sorry, this user has been locked out.