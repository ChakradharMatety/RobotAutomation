*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  headlessfirefox
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Click Element    //input[@id='alertbtn']
    Sleep    2
    Handle Alert    accept
    Alert Should Not Be Present     Hello , share this practice page and share your knowledge
    Click Element    //input[@id='alertbtn']
    Sleep    2
    Alert Should Be Present     Hello , share this practice page and share your knowledge
#    Handle alert    dismiss
    Handle alert    leave
#    Alert Should Be Present  Hello , share this practice page and share your knowledge
    Close Browser

