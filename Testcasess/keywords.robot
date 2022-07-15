*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot


*** Variables ***
${browser}  headlessfirefox
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
launchapplication
       ${pageTitle}=     LaunchBrowser      ${url}     ${browser}
       Log To Console    ${pageTitle}


