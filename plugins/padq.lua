
function run(msg, matches)
local text = matches[1]
file = assert(io.open("/home/azureuser/projects/quotes_papoi.txt", "a+"))
--file = assert(io.open("/home/azureuser/projects/a.txt", "a+"))
file:write(text,"\n")
file:close()
return 'Agregada frase mitica:  ' .. text

end

return {
    description = "echoes the msg",
    usage = "!addq [whatever]",
    patterns = {"^!addq (.*)$"},
    run = run
}

