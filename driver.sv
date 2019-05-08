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
    mailbox DUT_rdy;
    int num_mon;
    int numTests;
    bool runForever;
    bool model_delay;
    int test_bi;
    int test_ei;    
    string outputDir;
endclass: drvParams_t


virtual class driver;
    extern function new(drvParams_t params = null);
    pure virtual task run();


    mailbox m_agent2driverMB;
    mailbox m_DUT_rdy;
    int m_num_mon;
    int m_numTests;
    bool m_runForever;
    bool m_model_delay;
    int m_test_bi;
    int m_test_ei;       
    string m_outputDir;
endclass: driver


function driver::new(drvParams_t params = null);
endfunction: new


`endif