*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}     Chrome
${URL}    http://infodekoor-uat.gammatest.net/


*** Test Cases ***
Test Case 003
  open browser    ${URL}  ${Browser}
  maximize browser window
  click link    xpath://*[@id="hp"]/div[2]/div[1]/div[1]/ul/li[3]/a
  click link    xpath://*[@id="content"]/table/tbody/tr[4]/td[1]/a
  click button    xpath://*[@id="content"]/div[5]/div/div[1]/div/input
  click link    xpath://*[@id="header"]/div[4]/a[3]
   select radio button    next    vaucher
   input text    xpath://*[@id="voucher"]/form/input[1]    123
   click button    xpath://*[@id="voucher"]/form/input[3]
     should contain    xpath://*[@id="voucher"]/form/input[3]
     close browser
