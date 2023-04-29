*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Library    Screenshot

*** Variables ***
${Browser}                    Chrome
${MovieGrid}                  xpath=//div[@class='grid_movie']
${SiteUrl}                    https://m.21cineplex.com/
${TrailerButton}              xpath=//*[contains(text(),'TRAILER')]
${TrailerMedia}               xpath=//video[@name='media']


*** Keywords *** 
Go to Cineplex website
    Open Browser    ${SiteUrl}      ${browser}
    Maximize Browser Window

Choose Random Movie
    ${MovieCount} =   Get Element Count   ${MovieGrid}
    ${RandomNumbers} =     Evaluate    random.sample(range(1, ${MovieCount}), 1)    random
    Click Element   xpath=/html/body/section/div[3]/div[2]/div${RandomNumbers}
    Wait Until Element Is Visible    ${TrailerButton}   
    Click Element  ${TrailerButton}   

Assertion for the Trailer exist
    Wait Until Element Is Visible    ${TrailerMedia}
    Element Should Be Visible  ${TrailerMedia}

[Teardown]    
Close Browser     

*** Test Cases ***
#Focus in Test case 
1. User can play trailer random movie
    Go to Cineplex website
    Choose Random Movie
    Assertion for the Trailer exist
