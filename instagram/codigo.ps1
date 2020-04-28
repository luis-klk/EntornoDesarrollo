
$MouseEventSig=@'
[DllImport("user32.dll",CharSet=CharSet.Auto, CallingConvention=CallingConvention.StdCall)]
public static extern void mouse_event(long dwFlags, long dx, long dy, long cButtons, long dwExtraInfo);
'@
$MouseEvent = Add-Type -memberDefinition $MouseEventSig -name "MouseEventWinApi" -passThru

$usuario="powershellprueba"
$contraseña="prueba1"
start-process -FilePath 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' -ArgumentList 'https://www.instagram.com/explore/'
$i = 3
while($i -ge 0){
    $i
Start-Sleep -Seconds 2
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(320,400)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)
Start-Sleep -Seconds 2

[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(520,400)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)
Start-Sleep -Seconds 2

[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(720,400)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)
Start-Sleep -Seconds 2

[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(920,400)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)
Start-Sleep -Seconds 2

[System.Windows.Forms.SendKeys]::SendWait("^({F5})")
Start-Sleep -Seconds 2
    $i--
}


start-process -FilePath 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' -ArgumentList ('https://www.instagram.com/'+$usuario+'/following/')
