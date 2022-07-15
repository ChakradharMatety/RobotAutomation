*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql     ${hostname}     ${dbname}      ${port}    ${user}    ${pwd}
Suite Teardown  Disconnect From Database

*** Variables ***
${hostname}     127.0.0.1
${dbname}       mydatabase
${port}         3306
${user}         root
${pwd}          root

*** Test Cases ***
verfiy table exisit
      Table Must Exist    mydatabase.tablename
      @{results}=   Query   select * from tablename
      Log To Console    many    @{results}
      Execute Sql String    update tablenme set name="999" where id=''5666'
      Execute Sql String    Delete from tablename




