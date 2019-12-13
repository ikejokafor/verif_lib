`ifndef	__CHECKER__
`define	__CHECKER__


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


virtual class checkerParams_t;
    mailbox agent2checkerMB;
    mailbox monitor2checkerMB;
    mailbox checker2scoreboardMB;
    int numTests;
    int tid;
    bool runForever;
    int test_bi;
    int test_ei;   
    string outputDir;
endclass: checkerParams_t


virtual class checker;
    extern function new(checkerParams_t checkerParams = null);
    pure virtual task run();
    pure virtual function void createSolution(generator test, DUTOutput sol);
    pure virtual function int checkSolution(DUTOutput query, DUTOutput sol);
    

    mailbox m_agent2checkerMB;
    mailbox m_monitor2checkerMB;
    mailbox m_scbd_done;
    int m_numTests;
    int m_tid;
    bool m_runForever;
    int m_test_bi;
    int m_test_ei;       
    string m_outputDir;
endclass: checker


function checker::new(checkerParams_t checkerParams = null);
endfunction: new


`endif