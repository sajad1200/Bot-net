local datebase = {
   "Bot Online\n\nبوت نيت يعمل"
  }
local function run(msg, matches) 
return datebase[math.random(#datebase)]
end
return {
  patterns = {
    "^([Pp][Ii][Nn][Gg])",
	"^[!/#]([Pp][Ii][Nn][Gg])",
	"^(بوت)"
  },
  run = run
}
