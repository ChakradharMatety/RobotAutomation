*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
Testing DropDown
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    Select From List By Index    carselect      1
    Sleep    1
    ${count} =  Get Element Count    //select[@id='carselect']/option
    Log To Console    ${count}
    FOR    ${i}    IN RANGE    1    ${count}+1
        ${ddvalues} =    Get Text    //select[@id='carselect']/option[${i}]
        Log To Console    ${ddvalues}
    END
    Select From List By Value    carselect      honda
    Sleep    1
    
    Select From List By Label    carselect      Benz
    Sleep    1
    
    Select From List By Value    multiple-select-example    apple
    Sleep    1
    Select From List By Label    multiple-select-example    Orange
    Sleep    1
    Unselect From List By Label    multiple-select-example      Apple
    Sleep    1


    Close All Browsers