`ifndef	__DRIVER__
`define	__DRIVER__


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
// Additional Comments:     This class is responsible for receiving test data from agent and passing the test to the DUT
//                              by driving the DUT's appropiate signals
//                              
//                          
//                          
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`include "verification_defs.svh"


virtual class drvParams_t;
    mailbox agent2driverMB;
    mailbox mon_rdy_arr[];
    int num_mon;
    int numTests;
endclass: drvParams_t


virtual class driver;
    extern function new(drvParams_t params = null);
    pure virtual task run();


    mailbox m_agent2driverMB;
    mailbox m_mon_rdy_arr[];
    int m_num_mon;
    int m_numTests;
endclass: driver


function driver::new(drvParams_t params = null);
endfunction: new


`endif