os.pullEvent = os.pullEventRaw
term.clear()
term.setCursorPos(1, 1)
print("Starting MC-DOS 1.1")
sleep(1)
shell.run(".DOS/startup.lua")
