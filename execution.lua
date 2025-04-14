local twait = task.wait
local vm_manager = require(script.Parent.manager)
local execution = {}

function execution.execute(Code: string)
  loadsring(Code)
end

function execution.executeasync(Code: string)
  twait(1)
  loadstring(Code)
end

vm_manager.execute = execute
vm_manager.executeasync = executeasync

return execution
