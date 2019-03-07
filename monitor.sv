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
    mailbox DUT_rdy;
endclass: monParams_t


virtual class monitor;
    extern function new(monParams_t monParams = null);
    pure virtual task run();

    
    mailbox m_monitor2scoreboardMB;
    int m_numTests;
    mailbox m_DUT_rdy;
    mailbox m_agent2monitorMB;
endclass: monitor


function monitor::new(monParams_t monParams = null);
endfunction: new


`endif