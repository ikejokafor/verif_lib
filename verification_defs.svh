`ifndef	__VERIFICATION_DEFS__
`define	__VERIFICATION_DEFS__


typedef enum bit {TRUE = 1, FALSE = 0} bool;
typedef bit [127:0] mem_queue_64_t[$];


function int max(int a, int b);
    if(a >= b) begin
        return a;
    end else begin
        return b;
    end    
endfunction


function int min(int a, int b);
    if(a <= b) begin
        return a;
    end else begin
        return b;
    end    
endfunction


function shortreal maxf(shortreal a, shortreal b);
    if(a >= b) begin
        return a;
    end else begin
        return b;
    end    
endfunction


function shortreal minf(shortreal a, shortreal b);
    if(a <= b) begin
        return a;
    end else begin
        return b;
    end    
endfunction


`endif