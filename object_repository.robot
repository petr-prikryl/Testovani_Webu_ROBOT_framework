*** Variables ***
${MENU_BUTTON}    id=hlava__menu-button
${MAIN_MENU}    css=.menu1
${MAIN_MENU_ITEMS}    css=.menu li div a
${CONTENT}    id=hlobsah
${URL}    https://www.cernahora.eu/index.asp
${BROWSER}    Chrome
${DISKUZE}  //a[@href="/diskuze/" and contains(@title, "Diskuzní fórum")]
${Login Link XPath}    //ul[@class="inline"]/li/a[contains(@href, "AA/index.asp")]

${Username}    petr@prikryl.cc
${Password}    ZDrpvf916vP
${2ndUsername}    jozo@pepa.cz
${2ndPassword}    ahojbrouku
${Login Button XPath}    //input[@type="submit" and @value="Přihlásit"]
${Expected Username}   Petr petr@prikryl.cc (petr@prikryl.cc)
${Popup}  Přístup nepovolen, zadejte prosím platné jméno a heslo.
${LINK_TEXT22}      Zobrazit na mapě
${EXPECTED_TEXT22}  Stránka nebyla nalezena (kód 404)