function urlencode_google(str)
   if (str) then
      str = string.gsub (str, "\n", "\r\n")
      str = string.gsub (str, "([^%w ])",
         function (c) return string.format ("%%%02X", string.byte(c)) end)
      str = string.gsub (str, " ", "+")
   end
   return str
end   


 
function getGoogleImage(text)
  text = URL.escape(text)
  text = urlencode_google(text)
  for i = 1, 5, 1 do -- Try 5 times
    local api = "https://ajax.googleapis.com/ajax/services/search/images?v=1.0&rsz=8&hl=es&q="
    b = http.request(api..text)
    local google = json:decode(b)

    if (google.responseStatus == 200) then -- OK
      math.randomseed(os.time())
      i = math.random(7) --Solo los 10 primeros-- Random image from results
     if i  == nil then
        i=0
     end
 
      return google.responseData.results[i].url
    end
  end
end

function run(msg, matches)
  local receiver = get_receiver(msg)
  local text = msg.text:sub(6,-1)
  local url = getGoogleImage(text)
  local file_path = download_to_file(url)
  print(file_path)
  send_photo(receiver, file_path, ok_cb, false)
  return nil
end

return {
    description = "search image with Google API and sends it", 
    usage = "!img [topic]",
    patterns = {"^!img (.*)$"}, 
    run = run 
}

