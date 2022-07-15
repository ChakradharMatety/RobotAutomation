*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}     headlessfirefox
${url}  http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

*** Test Cases ***
GetAllLinkTexts
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    ${countrylist}=     Get Element Count    //div[@class='dragableBoxRight']
    Log To Console    ${countrylist}

    FOR   ${i}  IN RANGE   1  ${countrylist}+1
        ${linkText}=   Get Text    //div[@class='dragableBoxRight'][${i}]
        Log To Console   ${linkText}
    END