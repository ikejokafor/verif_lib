vlib $env(SOC_IT_SIMULATION_PATH)/verif_lib
vmap verif_lib $env(SOC_IT_SIMULATION_PATH)/verif_lib
vlog -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./driver.sv
vlog -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./generator.sv
vlog -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./monitor.sv
vlog -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./scoreboard.sv
vlog -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./agent.sv
vlog -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./DUToutput.sv
vlog -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./assertion.sv
