*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  firefox
${url}  https://courses.letskodeit.com/practice

*** Test Cases ***
WebTable
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    ${rows}     Get Element Count    //table[@id='product']/tbody/tr
    ${coluns}   Get Element Count    //table[@id='product']/tbody/tr[1]/th

    Table Row Should Contain    //table[@id='product']     3    Python Programming Language
    Table Column Should Contain    //table[@id='product']     3    25
    Table Cell Should Contain    //table[@id='product']     2    2    Selenium WebDriver With Java
    Table Header Should Contain    //table[@id='product']     Price
    Element Should Contain    //table[@id='product']/tbody/tr[2]/td[2]    Selenium WebDriver With Java