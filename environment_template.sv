`ifndef	__ENVIRONMENT__
`define	__ENVIRONMENT__


`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:			
//				
// Engineer:		
//
// Create Date:		
// Design Name:		
// Module Name:		
// Project Name:	
// Target Devices:  
// Tool versions:
// Description:		
//
// Dependencies:
//	 
// 	 
//
// Revision:
//
//
//
//
// Additional Comments:     Template
//
//                              
//                          
//                          
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`include "_generator.sv"
`include "_agent.sv"
`include "_driver.sv"
`include "_scoreboard.sv"
`include "_monitor.sv"


class _environment;

    extern function new(envParams_t params);
    extern task run();
    
    
    _generator m_generator;
    _agent m_agent;
    _driver m_driver;
    _scoreboard m_scoreboard;
    _checker m_checker;
    _monitor m_monitor;

endclass: environment


function _environment::new(envParams_t params);
    mailbox agent2driverMB;
    mailbox agent2scoreboardMB;
    mailbox monitor2scoreboardMB  
    genParams_t genParams;
    agentParams_t agentParams;
    drvParams_t drvParams;
    scoreParams_t scoreParams;
    chkParams_t chkParams;
    monParams_t monParams;


    agent2driverMB = new();
    agent2scoreboardMB = new();
    monitor2scoreboardMB = new();
    
    
    agentParams.agent2driverMB = agent2driverMB;
    agentParams.agent2scoreboardMB = agent2scoreboardMB;
    drvParams.agent2driverMB = agent2driverMB;
    scoreParams.monitor2scoreboardMB = monitor2scoreboardMB;
    monParams.monitor2scoreboardMB = monitor2scoreboardMB;

 
    m_agent = new(agentParams);
    m_driver = new(drvParams);
    m_scoreboard = new(scoreParams);
    m_checker = new(chkParams);
    m_monitor = new(monParams);
    

endfunction: new


task _environment::run()
    fork
        m_agent.run();
        m_driver.run();
        m_scoreboard.run();
        m_monitor.run();
    join_none
endtask: run


`endif