
--Start
local function getChatId(chat_id)
  local chat = {}
  local chat_id = tostring(chat_id)
  if chat_id:match('^-100') then
    local channel_id = chat_id:gsub('-100', '')
    chat = {ID = channel_id, type = 'channel'}
  else
    local group_id = chat_id:gsub('-', '')
    chat = {ID = group_id, type = 'group'}
  end
  return chat
end

local function run(msg, matches) 
if matches[1] == 'cm' or matches[1] == "اطرد كل الاعضاء" and is_sudo(msg) then 
  function m(arg, data) 
    for k, v in pairs(data.members_) do 
      kick_user(v.user_id_, msg.to.id) 
 end 
    tdcli.sendMessage(msg.to.id, msg.id, 1, '_All Members was cleared._', 1, 'md') 
  end 
  tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.to.id).ID,offset_ = 0,limit_ = 1000}, m, nil)
  end 
end 

return {  
patterns ={  
'^[!/#](cm)$' 
'^[!/#](اطرد كل الاعضاء)$' 
 }, 
  run = run 
}
--@Tele_Sudo @Sajad_Alirqi
--channel @Al_srai1
--Please dont clean this text tnx
