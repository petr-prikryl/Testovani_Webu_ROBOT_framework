*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${Expected Text}    Žádná stránka nenalezena.


*** Test Cases ***
Test Hledani
    Maximize Browser Window
    Click Element    xpath=//a[contains(@class, 'fullscreen-search-anchor')]
    Input Text    id=hl    ačokčovitý
    Click Button    css=.fullscreen-search-button
     Wait Until Page Contains Element    xpath=//p[@class='stav']
    ${element_text}    Get Text    xpath=//p[@class='stav']
    Should Be Equal As Strings    ${element_text}    ${Expected Text}