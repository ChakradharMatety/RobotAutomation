*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot

Suite Setup     OpenApp
Suite Teardown   Close Browser

Test Setup  LoginApp
Test Teardown   LogoutApp



*** Test Cases ***
Testcase1
    Log To Console    This is TC1
    Sleep    3

Testcase2
    Log To Console    This is TC2