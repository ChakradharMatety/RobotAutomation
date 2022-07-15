*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  headlesschrome
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Execute Javascript  window.scrollTo(0,750)
    Scroll Element Into View    //a[contains(text(),'Home')]
    Execute Javascript   window.scrollTo(0,document.body.scrollHeight)
    Sleep    1
    Execute Javascript   window.scrollTo(0,-document.body.scrollHeight)
    Close Browser
