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
    mailbox scbd_rdy;
    int numTests;
    int tid;
    bool runForever;
    int test_bi;
    int test_ei;   
    string outputDir;
endclass: scoreParams_t


virtual class scoreboard;
    extern function new(scoreParams_t scoreParams = null);
    pure virtual task run();
    pure virtual function void createSolution(generator test, DUTOutput sol);
    pure virtual function int checkSolution(DUTOutput query, DUTOutput sol);
    

    mailbox m_agent2scoreboardMB;
    mailbox m_monitor2scoreboardMB;
    mailbox m_scbd_done;
    mailbox m_scbd_rdy;
    int m_numTests;
    int m_tid;
    bool m_runForever;
    int m_test_bi;
    int m_test_ei;       
    string m_outputDir;
endclass: scoreboard


function scoreboard::new(scoreParams_t scoreParams = null);
endfunction: new


`endif