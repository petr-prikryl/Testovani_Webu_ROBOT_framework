*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Test Menu Navigation
    Maximize Browser Window
    Wait Until Page Contains Element    //a[contains(text(),'Potřebuji si vyřídit')]
    Click Element    //a[contains(text(),'Potřebuji si vyřídit')]
    Wait Until Page Contains Element    xpath=//h2[contains(@class,'cvi') and contains(@class,'text-to-speech')]    timeout=10s
    ${element_text}=    Get Text    xpath=//h2[contains(@class,'cvi') and contains(@class,'text-to-speech')]
    Should Be Equal As Strings    ${element_text}    Co lze vyřídit na radnici

