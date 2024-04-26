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
    Click Element    xpath=//li[@class='sdilet-x']/a   
    Sleep    5s
    ${handles} =    Get Window Handles
    Switch Window    ${handles}[1]   # Vybere druhou záložku
    ${current_url} =    Get Location
    Should Contain    ${current_url}    twitter.com