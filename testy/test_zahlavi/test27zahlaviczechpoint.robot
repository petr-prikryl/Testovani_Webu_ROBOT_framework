*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Open Links and Verify URLs
   Click Element    xpath=//img[@alt='logo czech point']
   Switch Window    NEW
    Wait Until Page Contains    Czech POINT
    Location Should Be    https://www.czechpoint.cz/public/
    Close Window