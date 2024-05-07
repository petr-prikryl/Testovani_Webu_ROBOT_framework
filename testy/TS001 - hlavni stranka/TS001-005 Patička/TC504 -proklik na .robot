*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
TestProklikuOwebu
    Click Element    xpath=//a[@href="/vismo/o-webu.asp#cookies"]
    Page Should Contain Element    xpath=//h3[contains(@id, 'cookies')]