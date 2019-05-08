`ifndef	__GENERATOR__
`define	__GENERATOR__


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
// Additional Comments:     This class creates test for DUT
//                              pre_randomize() and post_randomize() are built in overridable functions             
//                          
//                          
//                          
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`include "verification_defs.svh"


virtual class genParams_t;
    int ti;
    string outputDir;
endclass: genParams_t


virtual class crtTestParams_t;
endclass: crtTestParams_t


virtual class generator;   
    extern function new(genParams_t params = null);
    pure virtual function void createTest(crtTestParams_t params);    
    pure virtual function void plain2bits();
    
    
    int m_ti;
    string m_outputDir;
endclass: generator


function generator::new(genParams_t params = null);
endfunction: new



`endif