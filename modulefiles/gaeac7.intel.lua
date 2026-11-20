help([[
]])

prepend_path("MODULEPATH", "/ncrc/proj/epic/spack-stack/c7/spack-stack-2.1.1/envs/ue-oneapi-2025.3.1/modules/Core")

local stack_oneapi_ver=os.getenv("stack_oneapi_ver") or "2025.3.1"
local stack_cray_mpich_ver=os.getenv("stack_cray_mpich_ver") or "9.2.0"

load(pathJoin("stack-intel-oneapi-compilers", stack_oneapi_ver))
load(pathJoin("cray-mpich", stack_cray_mpich_ver))
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))

load("common")

whatis("Description: GSI Monitoring environment on GaeaC7 with Intel Compilers")
