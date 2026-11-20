help([[
]])

prepend_path("MODULEPATH", "/ncrc/proj/epic/spack-stack/c7/spack-stack-2.1.1/envs/ue-oneapi-2025.3.1/modules/Core")

local stack_oneapi_ver=os.getenv("stack_oneapi_ver") or "2025.3.1"
local stack_cray_mpich_ver=os.getenv("stack_cray_mpich_ver") or "9.2.0"
local Core_ver=os.getenv("Core_ver") or "26.06"
local grads_ver=os.getenv("grads_ver") or "2.2.3"

load(pathJoin("stack-intel-oneapi-compilers", stack_oneapi_ver))
load(pathJoin("cray-mpich", stack_cray_mpich_ver))
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))
-- The Core module add modules that were populated following a system upgrade in November 2024 (including GrADS)
load(pathJoin("Core", Core_ver))
load(pathJoin("grads", grads_ver))

load("common-run")
unload("cray-libsci")

whatis("Description: GSI Monitoring run-time environment on GaeaC7.intel")
