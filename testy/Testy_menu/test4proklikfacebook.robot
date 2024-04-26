*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER} 
Suite Teardown    Close Browser


*** Test Cases ***
Click Facebook Link and Verify
    Maximize Browser Window
    Click Element    xpath=//a[@href='https://www.facebook.com/mestyscernahora']
    ${current_url}    Get Location
    Should Contain    ${current_url}    facebook.com