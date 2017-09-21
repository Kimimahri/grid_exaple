*** Settings ***
Library           Selenium2Library
Resource          variables.txt

*** Variables ***

*** Test Cases ***
LoginTest
    Open Browser to the Login Page
    Enter User Name
    Enter Password
    Click Login
    sleep    ${Delay}
#    Assert Dashboard Title
#    Click Write Message
#    sleep    ${Delay}
    [Teardown]    Close Browser

LoginAgain
    Open Browser to the Login Page
    Enter User Name
    Enter Password
    Click Login
    sleep    ${Delay}
#    Assert Dashboard Title
#    Click Write Message
#    sleep    ${Delay}
    [Teardown]    Close Browser

AndAgain
    Open Browser to the Login Page
    Enter User Name
    Enter Password
    Click Login
    sleep    ${Delay}
#    Assert Dashboard Title
#    Click Write Message
#    sleep    ${Delay}
    [Teardown]    Close Browser

AndAgainAgain
    Open Browser to the Login Page
    Enter User Name
    Enter Password
    Click Login
    sleep    ${Delay}
#    Assert Dashboard Title
#    Click Write Message
#    sleep    ${Delay}
    [Teardown]    Close Browser

*** Keywords ***
Open Browser to the Login Page
    open browser    ${SiteUrl}    ${Browser}    remote_url=${SELENIUM_HUB_URL}
    Maximize Browser Window

Enter User Name
    Input Text    ${UserNameTextBox}    ${Username}

Enter Password
    Input Text    ${PasswordTextBox}    ${Password}

Click Login
    click button    ${LoginButton}

Assert Dashboard Title
    Title Should be    ${DashboardTitle}

Click Write Message
    Click Element    ${WriteMessageButton}
