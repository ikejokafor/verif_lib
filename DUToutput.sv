`ifndef __DUT_OUTPUT__
`define __DUT_OUTPUT__


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


virtual class DUTOutParams_t;
endclass: DUTOutParams_t


virtual class DUToutput;
    extern function new(DUTOutParams_t DUTOutParams = null);
    pure virtual function void bits2plain();
endclass: DUToutput


function DUToutput::new(DUTOutParams_t DUTOutParams = null);
endfunction: new


`endif