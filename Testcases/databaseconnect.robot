*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql     ${dbHostName}   ${dbPort}   ${dbName}   ${dbUser}   ${dbPwd}
Suite Teardown  Disconnect From Database

*** Variables ***
${dbHostName}       127.0.0.1
${dbPort}           3306
${dbName}           mydatabase
${dbUser}           root
${dbPwd}            root

*** Test Cases ***
Verify table exists in database
        Table Must Exist    mydatabase.empDetails

Fetch the data from database table
#       storing data in list variable
        @{results}=   Query    select *from mydatabase.empDetails;
        Log To Console    many      @{results}

Verify table record is present in the database
        Check If Exists In Database    select name,place from mydatabase.tablename where empid="123456";

Verfiy User is not present in the database
        Check If Not Exists In Database     select user from mydatabase.tablename where  empid="999999";

Update database table with some record
        ${result}     Execute Sql String    update mydatabase.tablename  set name="Chakradhar where id="123456";
        Log To Console    ${result}

Delete database table
        Execute Sql String    Delete from mydatabse.empDetails;





