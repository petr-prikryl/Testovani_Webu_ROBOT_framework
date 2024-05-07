*** Settings ***
Library    SeleniumLibrary
Resource    ../../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Verify Calendar Navigation
    Page Should Contain Element    xpath=//a[text()='Květen 2024']
    Click Element    xpath=//a[@class='sipka p']
    Page Should Contain Element    xpath=//a[text()='Červen 2024']
    Wait Until Element Is Visible    xpath=//td[@class='wkday']/a[text()='15']
    Click Element    xpath=//td[@class='wkday']/a[text()='15']
    Page Should Contain Element    xpath=//a[@href='/detsky%2Dden/a-1920']
