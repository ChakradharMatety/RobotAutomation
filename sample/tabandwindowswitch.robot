*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://courses.letskodeit.com/practice
${url2}     https://courses.letskodeit.com/courses

*** Test Cases ***
tab and switch window
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Open Browser    ${url2}     ${browser}
    Maximize Browser Window
    Switch Browser    1
    ${title}=  Get Title
    Log To Console    ${title}
    Click Element    //a[@id='opentab']
    Switch Browser    2
    ${title}=  Get Title
    Log To Console    ${title}
    Click Element    //h4[contains(text(),'JavaScript for beginners')]
