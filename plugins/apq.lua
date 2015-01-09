function run(msg, matches)

local receiver = get_receiver(msg)
local text = msg.text:sub(6,-1)
file = assert(io.open("/home/azureuser/projects/a.txt", "a+"))
file:write(text,"\n")
file:close()
return 'Añadida quote'
end

return {
    description = "Version",
    usage = "!apq",
    patterns = {"^!apq$"},
    run = run
}
