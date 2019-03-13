`ifndef __ASSERTION__
`define __ASSERTION__


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
// Additional Comments:    This class checks assertions of the DUT
//
//                              
//                          
//                          
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`include "verification_defs.svh"


virtual class asrtParams_t;
endclass: asrtParams_t


virtual class assertion;
    extern function new(asrtParams_t asrtParams = null);
    pure virtual task run();
    
    
endclass: assertion


function assertion::new(asrtParams_t asrtParams = null);
endfunction: new


`endif