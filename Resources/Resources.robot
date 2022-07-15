*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}=    chrome
${url}=     https://admin-demo.nopcommerce.com

*** Keywords ***
LaunchBrowser
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    ${title}=   Get Title
    [Return]    ${title}
    
InputValue
    [Arguments]     ${text}
    Input Text      //input[@id='Email']     ${text}

InputPwd
    [Arguments]     ${text}
    Input Text      //input[@id='Password']     ${text}
    
ClickObject
    [Arguments]
    Click Element    //button[contains(text(),'Log in')]

ClearTextBox
    Clear Element Text    //input[@id='Password']

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

OpenApp
    Open Browser    ${url}   ${browser}

Closeapp
    Close Browser
    
LoginApp
    Click Element  //button[contains(text(),'Log in')]
    
LogoutApp
    Click Element    //a[contains(text(),'Logout')]