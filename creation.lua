local creation_t = {}
local vm_manager = require(script.Parent.manager)
local twait = task.wait

twait(3) -- Wait for sync functinos

if vm_manager.execute and vm_manager.executeasync then
  script:Destroy()
end

if not vm_manager.execute and vm_manager.executeasync then
  local execution = require(script.Parent.execution)
  vm_manager.execute = execution.execute
  vm_manager.executeasync = execution.executeasync
end
