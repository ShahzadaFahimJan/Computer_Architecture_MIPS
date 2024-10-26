quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "H:/faheeem jan/5TH SEMESTER/COA_LAB_FALL23/lab6/libero/adders"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap SmartFusion2 "H:/liberosoftware/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vlog -sv -work presynth "${PROJECT_DIR}/hdl/half_adder.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/full_adder.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/Ripple_Carry_Adder.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -sv -work presynth "${PROJECT_DIR}/stimulus/Ripple_Carry_Adder_testbench.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -sv -work presynth "${PROJECT_DIR}/stimulus/top_module.v"

vsim -L SmartFusion2 -L presynth  -t 1fs presynth.top
add wave /top/*
run 1000ns
