
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name LED -dir "C:/Users/ChuzGallagher/Documents/VLSI/P1/LED/LED/planAhead_run_1" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/ChuzGallagher/Documents/VLSI/P1/LED/LED/CONT8B.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/ChuzGallagher/Documents/VLSI/P1/LED/LED} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "CONT8B.ucf" [current_fileset -constrset]
add_files [list {CONT8B.ucf}] -fileset [get_property constrset [current_run]]
link_design
