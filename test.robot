*** Settings ***
Library    SeleniumLibrary

***Variables ***
# ${Search box}  [@name="q"]
# ${searchButton}    div[@class="gNO89b"]/center/input[1]

*** Keywords ***
เข้าไปที่ google
    Open Browser  https://www.google.com/    chrome
ค้นหาคำว่าสวัสดี
    Input Text  q  สวัสดี
    Click Button    btnK 
รอจนกว่าจะเจอคำว่าสวัสดี
    Wait Until Page Contains     สวัสดี

***Test Cases ***
Search
    เข้าไปที่ google
    ค้นหาคำว่าสวัสดี
    รอจนกว่าจะเจอคำว่าสวัสดี
Test Teardown   Close Browser