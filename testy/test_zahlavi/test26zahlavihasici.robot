*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Open Links and Verify URLs
   Click Element    xpath=//img[@alt='Vodárenská a.s.']
   Switch Window    NEW
    Wait Until Page Contains    vodarenska.cz
    Location Should Be    https://vodarenska.cz/divize-boskovice/
    Close Window