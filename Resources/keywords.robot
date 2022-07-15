*** Settings ***
Library     SeleniumLibrary
#Variables   ../Locators/locarors.py
Resource   ../Locators/webOjectsloc.robot

*** Variables ***
${browser}  headlesschrome
${url}  https://courses.letskodeit.com/practice

*** Keywords ***
LauchBrowserapp
    Open Browser    ${url}  ${browser}

MaxBrowserwindow
    Maximize Browser Window

Waitsdynamic
    Set Selenium Implicit Wait    10

RadioButtonSelection
    Select Radio Button    ${radio_btn}    bmw

checkboxSelection
    Select Checkbox    ${check_Box}

clickwebObjectsss
   Click Element    ${peach_box}

ClosingBrowser
    Close Browser