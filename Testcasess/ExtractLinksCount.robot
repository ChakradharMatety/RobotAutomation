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

    @{LinkItems}        Create List
    FOR   ${i}  IN RANGE   1  ${countrylist}+1
        ${linkText}=   Get Text    //div[@class='dragableBoxRight'][${i}]
        Log To Console   ${linkText}
    END

    ${Text}=        Get Text    //div[@id='box3']
    Log To Console    ${Text}
    Close Browser