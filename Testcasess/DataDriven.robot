*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot
Suite Setup     LaunchBrowser
Suite Teardown  Close Browser
Test Template   Invalid Login

*** Variables ***
${browser}=    headlessfirefox
${url}=     https://admin-demo.nopcommerce.com

*** Test Cases ***      username    password
Right User Empty pwd    chakradhar  ${EMPTY}
Right User Empty pwd    Lavamgam  ${EMPTY}
Right User Empty pwd    Ganga  ${EMPTY}
Right User Empty pwd    Rangoli  ${EMPTY}


*** Keywords ***
Invalid Login
    [Arguments]    ${username}     ${password}
    InputValue     ${username}
    ClearTextBox
    InputValue     ${password}
    ClickObject
    Close Browser
