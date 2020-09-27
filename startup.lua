os.pullEvent = os.pullEventRaw
term.clear()
term.setCursorPos(1, 1)
print("MC-DOS 1.0")
sleep(1)
shell.run(".DOS/startup.lua")
