*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  firefox
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    ${selSpeed}=    Get Selenium Speed
    Log To Console    ${selSpeed}
    Wait Until Page Contains    Practice Page
    Set Selenium Implicit Wait    10
    #Set Selenium Speed    1
    Wait Until Element Is Visible    carselect
    Select From List By Label    carselect      Benz
    Close Browser

    Select From List By Value    carselect      honda

    Select From List By Value    carselect      benz

    Select From List By Index    carselect      2

    Select From List By Value    multiple-select-example      apple

    Select From List By Value    multiple-select-example      peach

    Select From List By Value    multiple-select-example      orange

    Unselect From List By Value    multiple-select-example      orange

*** Keywords ***