*** Settings ***
Library    SeleniumLibrary
Resource    ../../object_repository.robot
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***
Click Link And Verify Header
    Click Link    xpath=//a[contains(text(), 'Celá úřední deska')]
    Wait Until Element Is Visible    xpath=//h2[@class='cvi text-to-speech' and contains(text(), 'Úřední deska')]
    Input Text    id=ud_ke_dni    25.04.2024
    Select From List by Value    id=ud    1
    Click Button    css=p.inline-form-button.fbtn input[type='submit']
    Page Should Contain Element    xpath=//a[contains(text(), 'Řád veřejného pohřebiště městyse Černá Hora')]