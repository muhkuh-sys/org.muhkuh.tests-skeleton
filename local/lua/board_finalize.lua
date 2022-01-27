-- Were all tests successful?
local strInteractionCode
if _G.__MUHKUH_WEBUI_TESTRESULT==true then
  strInteractionCode = 'jsx/board_finalize.jsx'
else
  strInteractionCode = 'jsx/board_trash.jsx'
end

-- Read the interaction code.
tResult = tester:setInteractionGetJson(strInteractionCode)
if tResult==nil then
  error('Failed to read interaction.')
end
tester:clearInteraction()

return true
