*** Settings ***
Library  RequestsLibrary
Library    Dialogs

*** Variables ***
${baseurl}  https://reqres.in


*** Test Cases ***
Get_Http
    Create Session    mysession    ${baseurl}
    ${response}=      GET On Session    mysession    /api/users/2
    ${json_response}=  Set Variable  ${response.json()}
    ${first_name}=  Set Variable  ${json_response['data']['first_name']}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}
    Log To Console    ${response.json()}
    Log To Console    ${first_name}


    Should Be Equal As Strings    ${response.status_code}    200
    Should Be Equal As Strings    ${json_response['data']["first_name"]}    Janet

   




