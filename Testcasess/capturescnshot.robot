*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  headlessfirefox
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Capture Element Screenshot      //a[@id='opentab']      C:/Users/dell/PycharmProjects/Automation/elemlogo.png
    Capture Element Screenshot      //a[@id='opentab']      logo.png
    Capture Page Screenshot         page.png
    Close Browser
