*** Settings ***
Resource    ../Keywords/login.resource

*** Test Cases ***

Login Success Case
    Open Login Page
    Login    standard_user    secret_sauce
    Verify Login Success
    Close Browser

Login Failure Case
    Open Login Page
    Login    locked_out_user    secret_sauce
    Verify Login Error
    Close Browser