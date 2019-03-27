*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am in Test Suite Setup
Suite Teardown    Log    I am in Test Suite Teardown     
Test Setup    Log    I am in Test Setup
Test Teardown    Log    I am in Test Teardown

Force Tags    sanity  
         
*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...
    
MySecondTest
    [Tags]    example
    Log            I am in 2nd Test
    Set Tags       regression1
    Remove Tags    regression1
    
MyThirdTest
    Log    I am in 3rd Test
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Automation Step by Step
    # Press Keys    name=q    ENTER
    # #Click Button    name=btnK    
    # Sleep    2
    # Close Browser
    # Log    Test Completed
    
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser       ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element     id=welcome    
    # Click Element     link=Logout    
    # Close Browser
    # Log               Test Compeleted    
    # Log               This test case was executed by %{username} on %{os}
    
*** Variables ***
${URL}     https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123


*** Keywords ***
LoginKW
    Input Text        id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]
    Click Button      id=btnLogin