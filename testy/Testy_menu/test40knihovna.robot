*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${EXPECTED_TEXT}  Informační centrum a knihovna

*** Test Cases ***
TEST prokliku knihovny
    Click Element    xpath=//a[@href='/knihovna-a-informacni-centrum/d-1344/p1=12746']
    Wait Until Page Contains Element    xpath://h2[@class='cvi text-to-speech']
    ${actual_text}    Get Text    xpath://h2[@class='cvi text-to-speech']
    Should Be Equal As Strings    ${actual_text}    ${EXPECTED_TEXT}