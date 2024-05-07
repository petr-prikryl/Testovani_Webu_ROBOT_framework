*** Settings ***
Library    SeleniumLibrary
Resource    ../../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Click Link And Verify Header
    Click Link    xpath=//a[contains(text(), 'Celá úřední deska')]
    Wait Until Element Is Visible    xpath=//h2[@class='cvi text-to-speech' and contains(text(), 'Úřední deska')]