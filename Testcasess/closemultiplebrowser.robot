*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  headlessfirefox
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window


    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Close All Browsers