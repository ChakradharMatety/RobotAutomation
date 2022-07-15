*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  headlesschrome
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Select Radio Button    group_name    value
    Select Radio Button    cars    bmw
    Select Checkbox    benz
    Select Checkbox    honda
    Close Browser
*** Keywords ***