*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem 
Library    Screenshot

*** Variables ***
${Browser}                    Chrome
${MaafText}                   xpath=//*[contains(text(),'Maaf')]
${NowPlayingButton}           xpath=//a[@href='index.php?sid=']
${PlayingInButton}            xpath=//a[@href='gui.list_city.php?sid=']
${PlayingInYogyakartaText}    xpath=//a[contains(text(),'Playing in - YOGYAKARTA')]
${SiteUrl}                    https://m.21cineplex.com/
${YogyakartaOption}           xpath=//div[contains(text(),'YOGYAKARTA')]

*** Keywords *** 
Go to Cineplex website
    Open Browser    ${SiteUrl}      ${browser}
    Maximize Browser Window

Find Playing In Yogyakarta
    Wait Until Element Is Visible    ${PlayingInButton}
    Click Element  ${PlayingInButton}  
    Click Element  ${YogyakartaOption} 
    Click Element  ${NowPlayingButton} 
    
Assertion for Playing Theater in Yogyakarta
    ${error} =   Get Element Count   ${MaafText}
    Sleep    4s
    Run Keyword If   ${error}>0    Reload Page
    Wait Until Element Is Visible    ${PlayingInYogyakartaText} 
    Element Should Be Visible        ${PlayingInYogyakartaText}
    
[Teardown]    
Close Browser

*** Test Cases ***
#Focus in Test case 
2. User can see movie now playing theater in the other city example Yogyakarta.
    Go to Cineplex website   
    Find Playing In Yogyakarta
    Assertion for Playing Theater in Yogyakarta
