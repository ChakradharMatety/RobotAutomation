*** Settings ***
Library     SeleniumLibrary

Resource    ../Resources/keywords.robot

*** Variables ***
${browser}  chrome
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing Radio Buttons nad Check Boxes
    LauchBrowserapp
    MaxBrowserwindow
    Waitsdynamic
    RadioButtonSelection
    checkboxSelection
    checkboxSelection
    clickwebObjectsss
#    ClosingBrowser