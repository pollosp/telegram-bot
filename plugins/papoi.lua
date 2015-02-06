function run(msg, matches)
i=0
quotes= {}
file = assert(io.open("/home/azureuser/projects/quotes_papoi.txt", "r"))
for line in file:lines() do 
 quotes[i] = line
 i=i+1
end
file:close()
   return (quotes[math.random(#quotes)])
end

return {
    description = "Papoi quotes",
    usage = "!papoi",
    patterns = {"^!papoi$"},
    run = run
}

