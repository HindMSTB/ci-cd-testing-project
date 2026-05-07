*** Settings ***
Library     Browser
Resource    ../Keywords/login.resource

*** Test Cases ***

Login Success Case
    [Tags]    QATEAM-2
    Open Login Page
    Login    standard_user    secret_sauce
    Verify Login Success
    Close Browser

Login Failure Case
    [Tags]    QATEAM-3
    Open Login Page
    Login    locked_out_user    secret_sauce
    Verify Login Error
    Close Browser

Login Wrong Password Case
    [Tags]    QATEAM-4
    Open Login Page
    Login    standard_user    wrong_password
    Verify Login Success
    Close Browser