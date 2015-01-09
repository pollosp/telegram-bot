function run(msg, matches)
local text = matches[1]
--PRO-- file = assert(io.open("/home/azureuser/projects/quotes_papoi.txt", "a+"))
file = assert(io.open("/home/azureuser/projects/a.txt", "a+"))
file:write(text,"\n")
file:close()
return 'Agregada papoiada:  ' .. text

end

return {
    description = "echoes the msg",
    usage = "!addq [whatever]",
    patterns = {"^!addq (.*)$"},
    run = run
}

