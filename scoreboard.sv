`ifndef	__SCOREBOARD__
`define	__SCOREBOARD__


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
// Additional Comments:    This class receives test from agent, creates the solution, and then passes it to the checker
//
//                              
//                          
//                          
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`include "verification_defs.svh"
`include "generator.sv"
`include "DUTOutput.sv"


virtual class scoreParams_t;
    mailbox agent2scoreboardMB;
    mailbox monitor2scoreboardMB;
    mailbox scbd_done;
    int numTests;
endclass: scoreParams_t


virtual class scoreboard;
    extern function new(scoreParams_t scoreParams = null);
    pure virtual task run();
    pure virtual function void createSolution(generator test, DUToutput sol);
    pure virtual function int checkSolution(DUToutput query, DUToutput sol);
    

    mailbox m_agent2scoreboardMB;
    mailbox m_monitor2scoreboardMB;
    mailbox m_scbd_done;
    int m_numTests;
endclass: scoreboard


function scoreboard::new(scoreParams_t scoreParams = null);
endfunction: new


`endif