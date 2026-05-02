*** Settings ***
Library    Browser

*** Variables ***
${URL}        https://www.saucedemo.com/

*** Keywords ***
Open Login Page
    New Browser    chromium
    New Page    ${URL}

Login
    [Arguments]    ${username}    ${password}
    Fill Text    id=user-name    ${username}
    Fill Text    id=password     ${password}
    Click    id=login-button

Verify Login Success
    Get Text    css=.title    ==    Products

Verify Login Error
    Get Text    css=h3    ==    Epic sadface: Sorry, this user has been locked out.