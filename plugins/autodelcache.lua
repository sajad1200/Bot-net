local function run_bash(str)
    local cmd = io.popen(str)
    local result = cmd:read('*all')
    return result
end

function pre_process(msg)
if not redis:get('autodeltime') then
local delTime = 21600  -- Input Time if needed than be less or higher(seconds)
redis:setex('autodeltime', delTime, true)
     run_bash("rm -rf ~/.telegram-cli/data/sticker/*")
     run_bash("rm -rf ~/.telegram-cli/data/photo/*")
     run_bash("rm -rf ~/.telegram-cli/data/animation/*")
     run_bash("rm -rf ~/.telegram-cli/data/video/*")
     run_bash("rm -rf ~/.telegram-cli/data/audio/*")
     run_bash("rm -rf ~/.telegram-cli/data/voice/*")
     run_bash("rm -rf ~/.telegram-cli/data/temp/*")
     run_bash("rm -rf ~/.telegram-cli/data/thumb/*")
     run_bash("rm -rf ~/.telegram-cli/data/document/*")
     run_bash("rm -rf ~/.telegram-cli/data/profile_photo/*")
     run_bash("rm -rf ~/.telegram-cli/data/encrypted/*")
end
end
return { patterns = {}, pre_process = pre_process}

-- by @To0fan
-- Channel: @BeyondTeam