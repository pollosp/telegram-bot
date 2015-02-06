function urlencode(str)
   if (str) then
      str = string.gsub (str, "\n", "\r\n")
      str = string.gsub (str, "([^%w ])",
         function (c) return string.format ("%%%02X", string.byte(c)) end)
      str = string.gsub (str, " ", "+")
   end
   return str
end


function getMemeGen(text)
  if string.find(text, '-') then
    i=0
    parameter= {}
    for token in string.gmatch(text, "[^-]+") do
     parameter[i] = token
     i=i+1
    end


    if string.find(parameter[0], 'troll') then
           generatorID="2"
           imageID="166088"
    elseif string.find(parameter[0], 'shf') then
             generatorID="74"
             imageID="2485"

    elseif string.find(parameter[0], 'rly') then
             generatorID="920"
             imageID="117049"
    
    elseif string.find(parameter[0], 'succ') then
             generatorID="121"
             imageID="1031"
    
    elseif string.find(parameter[0], 'all') then
             generatorID="6013"
             imageID="1121885"
    
    elseif string.find(parameter[0], 'dam') then
             generatorID="998"
             imageID="203665"

    elseif string.find(parameter[0], 'god') then
             generatorID="1591"
             imageID="112464"
------------------
---Extra
 elseif string.find(parameter[0], 'nsi') then
             generatorID="305"
             imageID="84688"
 elseif string.find(parameter[0], 'daw') then
             generatorID="79"
             imageID="108785"
 elseif string.find(parameter[0], 'fck') then
             generatorID="1189472"
             imageID="5044147"
 elseif string.find(parameter[0], 'piss') then
             generatorID="92"
             imageID="89714"
---------------
    else
           generatorID="45"
           imageID="20"
    end

    text1= parameter[1]
--    text2= parameter[2]
if parameter[2] == nil then
   text2=" "
else
	text2=parameter[2]
end
---
print (text2)
text2=urlencode(text2)
    api = "http://version1.api.memegenerator.net/Instance_Create?username=pollosp&password=kk12kk13&languageCode=es&generatorID=" .. urlencode(generatorID) .."&imageID=" .. urlencode(imageID) .. "&text0=" .. urlencode(text1) .. "&text1=" .. text2
  print(api)
    b = http.request(api)
    local gifres = json:decode(b)

    if (gifres.success == true) then -- OK
      print(gifres.result.instanceImageUrl)
      return gifres.result.instanceImageUrl
    else
      return nil
    end
----- Default meme --
  else
    local api = "http://version1.api.memegenerator.net/Instance_Create?username=pollosp&password=kk12kk13&languageCode=en&generatorID=45&imageID=20&text0="
    print(api..urlencode(text))
    b = http.request(api..urlencode(text))
    local gifres = json:decode(b)

    if (gifres.success == true) then -- OK
      print(gifres.result.instanceImageUrl)
      return gifres.result.instanceImageUrl
    else
      return nil
    end
  end 

end

function run(msg, matches)
  local receiver = get_receiver(msg)
  local text = msg.text:sub(6,-1)
  local url = getMemeGen(text)
  local file_path = download_to_file(url)
  print(file_path)
  send_photo(receiver, file_path, ok_cb, false)
  return nil
end

return {
    description = "Create meme from meme generator API and sends it",
    usage = "!meme [topic]",
    patterns = {"^!meme (.*)$"},
    run = run
}
