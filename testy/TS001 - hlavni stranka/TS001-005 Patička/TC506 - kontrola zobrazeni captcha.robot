*** Settings ***
Library    SeleniumLibrary
Resource    ../../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
testcaptchi
    Click Button    css:button.btn[name="submit"]
    Wait Until Element Is Visible    xpath=//*[@id="volrecaptcha0"]