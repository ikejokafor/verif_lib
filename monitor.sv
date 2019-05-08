`ifndef	__MONITOR__
`define	__MONITOR__


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
// Additional Comments:    This class drives the appropiate signals to recieve outputs from the DUT, transforms them into
//                              a more readable format, and passes it to the checker
//                              
//                          
//                          
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`include "verification_defs.svh"


virtual class monParams_t;
    mailbox monitor2scoreboardMB;
    mailbox agent2monitorMB;
    int numTests;
    mailbox mon_rdy;
    int tid;
    bool runForever;
    bool model_delay;
    int test_bi;
    int test_ei;    
    string outputDir;   
endclass: monParams_t


virtual class monitor;
    extern function new(monParams_t monParams = null);
    pure virtual task run();

    
    mailbox m_monitor2scoreboardMB;
    mailbox m_agent2monitorMB;    
    int m_numTests;
    mailbox m_DUT_rdy;
    mailbox m_mon_rdy;
    int m_tid;
    bool m_runForever;
    bool m_model_delay;
    int m_test_bi;
    int m_test_ei;        
    string m_outputDir;   
endclass: monitor


function monitor::new(monParams_t monParams = null);
endfunction: new


`endif