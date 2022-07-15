*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browse}   headlessfirefox

*** Test Cases ***
LoginTest
    Open Browser    ${url}   ${browse}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Loginapplication
    Close Browser

*** Keywords ***
Loginapplication
    Click Link    Log in
    ${element_email}    Set Variable    id:Email
    Element Should Be Visible    ${element_email}
    Element Should Be Enabled    ${element_email}
    Input Text    ${element_email}    pavanoltraining@gmail.com
    #Input Text    id:Email    pavanoltraining@gmail.com
    Input Password    id:Password    Test@123
    #Clear Element Text    //input[@id='Email']

    #Clear Element Text    //input[@id='Password']
    Click Element    //button[contains(text(),'Log in')]

LogOutApplication
        Click Link    Log out

OpeninigBrowser
    Open Browser    ${url}   ${browse}

ClosingBrowser
    Close Browser


