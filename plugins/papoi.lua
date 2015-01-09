function run(msg, matches)
   t = {"Papoi perro lastimero", 
"Mira los aliens tuvieron la culpa", 
"En cuarto milenio dicen que ...",
"Pues vamonos de vacaciones a Iran es un pais normal",
"Ereala Aurrera",
"El pais mas seguro es Iran",
"Acaba de pasar Ben Johnson por delante del Etxebe", 
"Acaba de pasar Tristan Ulloa por delante del Etxebe", 
"Acaba de pasar El Duo Sacapuntas por delante del Etxebe", 
"Acaba de pasar el Crasty por delante del Etxebe", 
"Acaba de pasar Carmen Martez Bordiu por delante del Etxebe", 
"Acaba de pasar mi padre por delante del Etxebe", 
"Acaba de pasar un tipo con boina por delante del Etxebe", 
"Acaba de pasar Antonio Resines por delante del Etxebe", 
"Acaba de pasar Juanma Iturriaga por delante del Etxebe", 
"Acaba de pasar Fernando Romay por delante del Etxebe", 
"Acaba de pasar el primo del Gran Wyoming por delante del Etxebe", 
"Acaba de pasar Nikki Lauda por delante del Etxebe", 
"Soy como el hermano feo de los Calatrava",
"A mi no se me cae el pelo. Ni se me caer",
"En la calle Penyagolosa me invitaron a un chino",
"Me ha dicho un cliente que Torrente 6 se rodar en Navarra",
"Cualquier cosa vasca, mola. Hasta el culo de un camello vasco",
"Acaban de venir dos putas lituanas del piso de enfrente a pedirme cambio de 50"
}
   return (t[math.random(23)])
end

return {
    description = "Papoi quotes",
    usage = "!papoi",
    patterns = {"^!papoi$"},
    run = run
}

