*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
capture Screenshot
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Capture Element Screenshot    //a[@id='opentab']    home.png
    Capture Page Screenshot       logo.png