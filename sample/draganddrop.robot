*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

*** Test Cases ***
Drag and Drop test
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Drag And Drop    id:box6    id:box106
    Sleep    2
    Close Browser