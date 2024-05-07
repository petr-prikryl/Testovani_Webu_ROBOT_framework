*** Settings ***
Library    SeleniumLibrary
Resource    ../../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Test Menu Navigation
    Maximize Browser Window
    Wait Until Page Contains Element    //a[contains(text(),'Městys')]
    Click Element    //a[contains(text(),'Městys')]
    Wait Until Page Contains Element    xpath=//h2[contains(@class,'cvi') and contains(@class,'text-to-speech')]    timeout=10s
    ${element_text}=    Get Text    xpath=//h2[contains(@class,'cvi') and contains(@class,'text-to-speech')]
    Should Be Equal As Strings    ${element_text}    O městysu
