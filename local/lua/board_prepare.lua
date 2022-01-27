-- Read the interaction code.
tResult = tester:setInteractionGetJson('jsx/board_prepare.jsx')
if tResult==nil then
  error('Failed to read interaction.')
end
local tJson = tResult
tester:clearInteraction()
if tJson.button=='cancel' then
  error('The user pressed the "cancel" button.')
end

return true
