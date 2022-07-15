*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://courses.letskodeit.com/practice

*** Test Cases ***
Handling Alerts
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Set Selenium Implicit Wait    10
        Click Element    //input[@id='alertbtn']
        Sleep   2
        Handle Alert    accept
        Alert Should Not Be Present     Hello , share this practice page and share your knowledge
        Close Browser
