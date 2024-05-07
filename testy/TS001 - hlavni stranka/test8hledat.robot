*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${Expected Link Text}    Vánoční fotografování dětí
*** Test Cases ***
Test Hledani
    Maximize Browser Window
    Click Element    xpath=//a[contains(@class, 'fullscreen-search-anchor')]
    Input Text    id=hl    vánoce
    Click Button    css=.fullscreen-search-button
    ${link_visible}    Page Should Contain Element    xpath=//a[contains(text(),'${Expected Link Text}')]