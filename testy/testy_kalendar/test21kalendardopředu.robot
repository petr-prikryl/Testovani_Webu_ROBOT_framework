*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Verify Calendar Navigation
    Click Element    xpath=//a[@class='sipka p']
    Page Should Contain Element    xpath=//a[text()='Květen 2024']
    Wait Until Element Is Visible    xpath=//td[@class='wkday']/a[text()='7']
    Click Element    xpath=//td[@class='wkday']/a[text()='7']
    Page Should Contain Element    xpath=//a[@href='/svoz%2Dbioodpadu/a-1896']
