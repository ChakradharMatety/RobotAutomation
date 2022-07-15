*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing switch windows
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Click Element    //button[@id='openwindow']
    Sleep    2
    Switch Window     All Courses
    Sleep     2
    Click Element    //h4[contains(text(),'JavaScript for beginners')]
    Sleep   2
    Switch Window     Practice Page
    Sleep    2
    Click Element    //a[@id='opentab']
    Sleep    2
#
#    Close All Browsers