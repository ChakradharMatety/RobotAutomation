*** Settings ***
Library  RequestsLibrary

*** Variables ***
${baseurl}  https://reqres.in
${endpoint}  /api/users/2
${Input_Json}  C:/Users/dell/PycharmProjects/Automation/RobotTestcases/testdata.json

*** Test Cases ***
PUT_HTTP
    Create Session    putsession   ${baseurl}
    ${response_json}=  PUT On Session   putsession  ${endpoint}  ${Input_Json}

    Log To Console    ${response_json.status_code}
    Log To Console    ${response_json.content}
    Log To Console    ${response_json.json()}
    Should Be Equal As Strings    ${response_json.status_code}    200