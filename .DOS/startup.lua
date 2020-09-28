--Change the username and password (Scroll down to see comments)
os.pullEvent = os.pullEventRaw
SHA = require("SHA")
term.clear()
term.setCursorPos(1, 1)
print("MC-DOS Login")
write("Username: ")
local user = read()
term.clear()
term.setCursorPos(1, 1)
print("MC-DOS Login")
print("Username:", user)
write("Password: ")
local pa = read("*")
local pas = SHA.digest(pa)
ps = fs.open(".DOS/Temp.login", "w")
ps.write(pas)
ps.close()
pss = fs.open(".DOS/Temp.login", "r")
local pass = pss.readAll()
pss.close()
usern = fs.open(".DOS/Username.login", "r")
local username = usern.readAll()
usern.close()
passw = fs.open(".DOS/Password.login", "r")
local password = passw.readAll()
passw.close()

if user == username then 
    if pass == password then 
       term.clear()
       term.setCursorPos(1, 1)
       print("Logged in as", username)
       shell.run(".DOS/autorun.lua")
    else
        print("Wrong Username/Password")
        sleep(1)
        os.shutdown()
    end
else
    print("Wrong Username/Password")
    sleep(1)
    os.shutdown()
end

