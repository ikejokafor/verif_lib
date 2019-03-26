`ifndef	__AGENT__
`define	__AGENT__


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
// Additional Comments:    This class receives test from the generator, passes the test to the scoreboard class
//                              and transforms them to hardware format and gives its to the driver class
//                              
//                          
//                          
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`include "verification_defs.svh"
`include "generator.sv"


virtual class agentParams_t;
    mailbox agent2driverMB;
    mailbox agent2scoreboardMB_arr[];
    mailbox agent2monitorMB_arr[];    
    int numTests;
    generator test_queue[$];
    mailbox DUT_rdy_arr[];
    int num_mon;
    bool runForever;
endclass: agentParams_t


virtual class agent;
    extern function new(agentParams_t agentParams = null);
    pure virtual task run();

    
    mailbox m_agent2driverMB;
    mailbox m_agent2scoreboardMB_arr[];
    mailbox m_agent2monitorMB_arr[];
    int m_numTests;
    generator m_test_queue[$];
    mailbox m_DUT_rdy_arr[];
    int m_num_mon;
    bool m_runForever;
endclass: agent


function agent::new(agentParams_t agentParams = null);
endfunction: new


`endif