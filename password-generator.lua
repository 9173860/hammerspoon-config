local pasteboard = require("hs.pasteboard")
local length = 20

function randPW ()
  local index, pw, rnd = 0, ""
  local chars = {
      "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
      "abcdefghijklmnopqrstuvwxyz",
      "0123456789"
  }
  repeat
      index = index + 1
      rnd = math.random(chars[index]:len())
      if math.random(2) == 1 then
          pw = pw .. chars[index]:sub(rnd, rnd)
      else
          pw = chars[index]:sub(rnd, rnd) .. pw
      end
      index = index % #chars
  until pw:len() >= length
  print("Password Generated")
  pasteboard.setContents(pw)
end
