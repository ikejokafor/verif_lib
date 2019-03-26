vlib $env(SOC_IT_SIMULATION_PATH)/verif_lib
vmap verif_lib $env(SOC_IT_SIMULATION_PATH)/verif_lib
vlog -O5 -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./driver.sv
vlog -O5 -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./generator.sv
vlog -O5 -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./monitor.sv
vlog -O5 -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./scoreboard.sv
vlog -O5 -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./agent.sv
vlog -O5 -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./DUTOutput.sv
vlog -O5 -lint -sv -work verif_lib +incdir+C:/IkennaWorkSpace/verif_lib/ ./assertion.sv
