*** Settings ***
Library    SeleniumLibrary

Suite Setup     OpenApp
Suite Teardown   Close Browser

Test Setup  LoginApp
Test Teardown   LogoutApp

Resource    ../Resources/Resources.robot

*** Test Cases ***
Testcase1
    Log To Console    This is TC1
    Sleep    3

Testcase2
    Log To Console    This is TC2