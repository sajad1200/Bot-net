local function delmsg (i,naji)
    msgs = i.msgs 
    for k,v in pairs(naji.messages_) do
        msgs = msgs - 1
        tdcli.deleteMessages(v.chat_id_,{[0] = v.id_}, dl_cb, cmd)
        if msgs == 1 then
            tdcli.deleteMessages(naji.messages_[0].chat_id_,{[0] = naji.messages_[0].id_}, dl_cb, cmd)
            return false
        end
    end
    tdcli.getChatHistory(naji.messages_[0].chat_id_, naji.messages_[0].id_,0 , 100, delmsg, {msgs=msgs})
end
local function run(msg, matches)
    if matches[1] == 'del' or matches[1] == 'مسح' and is_owner(msg) then
        if tostring(msg.to.id):match("^-100") then 
            if tonumber(matches[2]) > 1000 or tonumber(matches[2]) < 1 then
                return  ' *1000*> _1 يمكنك حذف الرسائل مابين فقط* '
            else
				tdcli.getChatHistory(msg.to.id, msg.id,0 , 100, delmsg, {msgs=matches[2]})
				return "`"..matches[2].." `_العدد من الرسائل تم حذفه_ "
            end
        else
            return '_فقط في المجموعات الخارقة_ '
        end
    end
end
return {
    patterns = {
        '^[!#/]([Dd][Ee][Ll]) (%d*)$',
		'^[!#/](مسح) (%d*)$',
    },
    run = run
}

--Write By @Sajad_Aliraqi
--Channel @Al_Srai1
