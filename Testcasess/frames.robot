*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  headlesschrome
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame

    Select Frame      packageFrame
    Click Link    OutputType
    Unselect Frame

    Select Frame   classFrame
    Click Link    TakesScreenshot
    Unselect Frame
    Close Browser

