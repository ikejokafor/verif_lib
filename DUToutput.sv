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
// Additional Comments:    This class is a container for the DUT output we are checking
//
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