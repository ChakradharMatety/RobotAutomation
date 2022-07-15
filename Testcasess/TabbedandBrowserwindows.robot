*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  headlesschrome
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Open Browser    https://courses.letskodeit.com/courses  ${browser}
    Maximize Browser Window

    Switch Browser    1
    ${title1}=   Get Title
    Log To Console    ${title1}
    
    Click Element    //a[@id='opentab']
    Switch Window       All Courses

    Switch Browser    2
    ${title2}=   Get Title
    Log To Console    ${title2}

    Click Element    //h4[contains(text(),'JavaScript for beginners')]

    Switch Browser    1
    Click Element    //h4[contains(text(),'Complete Test Automation Bundle')]
    Switch Window       Practice Page
    Click Element    //button[@id='openwindow']

    Switch Window       All Courses
    Click Element    //h4[contains(text(),'JavaScript for beginners')]
    Close Browser

    

    
    
