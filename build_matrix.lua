local t = ...

-- Set defaults for Hilscher productiontests.
t:use('hilscher_productiontest')

t:createArtifacts{
  '1234.567R8'
}

-- Build for Raspberry Muhkuchen.
t:addBuildToAllArtifacts({
  platform_distribution_id = 'ubuntu',
  platform_distribution_version = '22.04',
  platform_cpu_architecture = 'arm64'
}, true)

-- Build for VisionFive2 Muhkuchen.
-- NOTE: This does not work yet as lua-periphery is still untested on this platform.
--[[
t:addBuildToAllArtifacts({
  platform_distribution_id = 'ubuntu',
  platform_distribution_version = '22.04',
  platform_cpu_architecture = 'riscv64'
}, true)
--]]

-- Add the possibility to build for X86_64 PCs, but deactivate it by default.
t:addBuildToAllArtifacts({
  platform_distribution_id = 'ubuntu',
  platform_distribution_version = '22.04',
  platform_cpu_architecture = 'x86_64'
}, true)

t:build()

return true
