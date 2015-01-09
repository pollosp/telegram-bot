
function run(msg, matches)
   t = {"Papoi perro lastimero", "Mira los aliens tuvieron la culpa", "En cuarto milenio dicen que ...","Pues vamonos de vacaciones a Iran es un pais normal", "Ereala Aurrera"}
   return (t[math.random(5)])
end

return {
    description = "Papoi quotes", 
    usage = "!papoi",
    patterns = {"^!papoi$"}, 
    run = run 
}

