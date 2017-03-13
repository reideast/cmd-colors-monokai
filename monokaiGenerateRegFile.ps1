$outFile = "monokai.reg"

#monokai colors: from http://www.monokai.nl/blog/2006/07/15/textmate-color-theme/
#272822 darker gray
#49483E dark gray - UNUSED
#75715E gray
#66D9EF cyan
#A6E22E green
#AE81FF purple
#E6DB74 yellow
#F92672 magenta
#FD971F orange
#F8F8F0 white

#added colors
#118FA7 dark cyan
#85BB1A dark green
#CB064D dark megenta

$rgbArray = @()
             #HEX     # NR  cmd.exe      PowerShell   Sublime Name Solar Name
             #------- # --  -------      -----------  ------------ --------- 
$rgbArray += "272822" # 00  Black        Black        BG           base03    
$rgbArray += "F8F8F0" # 01  Blue         DarkBlue     FG           base0     
$rgbArray += "85BB1A" # 02  Green        DarkGreen    Comment      base01    
$rgbArray += "E6DB74" # 03  Aqua         DarkCyan     FG           base1     
$rgbArray += "FD971F" # 04  Red          DarkRed      Operator     orange    
$rgbArray += "AE81FF" # 05  Purple       DarkMagenta  Field        violet    
$rgbArray += "A5A290" # 06  Yellow       DarkYellow   Line Num     base00    
$rgbArray += "F8F8F2" # 07  White        Gray         FG           base2     
$rgbArray += "A5A290" # 08  Gray         DarkGray     Select BG    base02    
$rgbArray += "66D9EF" # 09  LightBlue    Blue         Method       blue      
$rgbArray += "A6E22E" # 10  LightGreen   Green        String       green     
$rgbArray += "66D9EF" # 11  LightAqua    Cyan         String       cyan      
$rgbArray += "CB064D" # 12  LightRed     Red          Bracket      red       
$rgbArray += "F92672" # 13  LightPurple  Magenta      TaskTag      magenta   
$rgbArray += "FD971F" # 14  LightYellow  Yellow       Operator     yellow    
$rgbArray += "F8F8F0" # 15  BrightWhite  White        FG           base3     
$screenColor = "000001"
$popupColor = "0000f6"

$bgrArray = @()
foreach ($rgb in $rgbArray) {
  $bgrArray += $rgb.Substring(4, 2) + $rgb.Substring(2, 2) + $rgb.Substring(0, 2)
}


#Out-File -filePath $outFile -inputobject "hello, world!" -append
"Windows Registry Editor Version 5.00" > $outFile #single ">" to specify non-append write mode
"" >> $outFile
"; Modified by Andrew Reid East (andrew@andreweast.net)" >> $outFile
"; Registry file that maps the Monokai palette to the 16 avaliable colors" >> $outFile
"; in a Windows command prompt. Note, hex values in the table are RGB but byte" >> $outFile
"; ordering of a DWORD is BGR, e.g. ""ColorTable<##>""=dword:00<B><G><R>" >> $outFile
";" >> $outFile
"; Monokai color table from http://eclipsecolorthemes.org/?view=theme&id=6093" >> $outFile
";" >> $outFile
"; NR  cmd.exe      PowerShell   Sublime Name Solar Name HEX      DWORD" >> $outFile
"; --  -------      -----------  ------------ ---------  -------  --------" >> $outFile

$count = 0
"; 00  Black        Black        BG           base03     #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 01  Blue         DarkBlue     FG           base0      #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 02  Green        DarkGreen    Comment      base01     #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 03  Aqua         DarkCyan     FG           base1      #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 04  Red          DarkRed      Operator     orange     #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 05  Purple       DarkMagenta  Field        violet     #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 06  Yellow       DarkYellow   Line Num     base00     #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 07  White        Gray         FG           base2      #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 08  Gray         DarkGray     Select BG    base02     #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 09  LightBlue    Blue         Method       blue       #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 10  LightGreen   Green        String       green      #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 11  LightAqua    Cyan         String       cyan       #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 12  LightRed     Red          Bracket      red        #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 13  LightPurple  Magenta      TaskTag      magenta    #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 14  LightYellow  Yellow       Operator     yellow     #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
"; 15  BrightWhite  White        FG           base3      #" + $rgbArray[$count] + "  00" + $bgrArray[$count++] >> $outFile
";" >> $outFile
"" >> $outFile
"[HKEY_CURRENT_USER\Console]" >> $outFile

$count = 0
foreach ($bgr in $bgrArray) {
  if ($count -lt 10) {
    $num = "0" + $count
  } else {
    $num = $count
  }
  """ColorTable" + $num + """=dword:00" + $bgr >> $outFile
  $count++
}

"""ScreenColors""=dword:00" + $screenColor >> $outFile
"""PopupColors""=dword:00" + $popupColor >> $outFile
