`timescale 1ns / 1ps

module MiniCoreX_design 
#( 
    parameter data_size = 8, 
              addr_size = 8,
              alu_sel = 5,
              barrel_sel = 3,
              usr_sel = 2,
              op_sel = 2,
              shift_val = 3 
)
(
    input CLK,
    input RESET,
    input INPUT_SEL,
    input [data_size-1:0] INPUT_1,
    input [data_size-1:0] INPUT_2,
    input [alu_sel-1:0] ALU_SEL,
    input [barrel_sel-1:0] SHIFT_SEL,
    input [usr_sel-1:0] USR_SEL,
    input [op_sel-1:0] OP_SEL,
    input [addr_size-1:0] ADDR,
    input LOAD,
    input [shift_val-1:0] SHIFT_AMT,
    input MEM_SEL,
    output reg [(2*data_size)-1:0] OUTPUT
);

// parameters for ALU operations
localparam ADDITION             = 5'b00000,
           SUBTRACTION          = 5'b00001,
           MULTIPLICATION       = 5'b00010,
           DIVISION             = 5'b00011,
           MODULUS              = 5'b00100,
           AND                  = 5'b00101,
           NAND                 = 5'b00110,
           OR                   = 5'b00111,
           NOR                  = 5'b01000,
           EX_OR                = 5'b01001,
           EX_NOR               = 5'b01010,
           NEGATION_INPUT_1     = 5'b01011,
           NEGATION_INPUT_2     = 5'b01100,
           LOGICAL_EQUALITY     = 5'b01101,
           CASE_EQUALITY        = 5'b01110,
           CONCATENATION_1_2    = 5'b01111,
           CONCATENATION_2_1    = 5'b10000,
           LOGICAL_AND          = 5'b10001,
           LOGICAL_NAND         = 5'b10010,
           LOGICAL_OR           = 5'b10011,
           LOGICAL_NOR          = 5'b10100,
           LOGICAL_NOT_INPUT_1  = 5'b10101,
           LOGICAL_NOT_INPUT_2  = 5'b10110;
   
// parameters for barrel shifting operations        
localparam LOGICAL_SHIFT_LEFT_0     = 3'b000,
           LOGICAL_SHIFT_RIGHT_0     = 3'b001,
           LOGICAL_SHIFT_LEFT_1    = 3'b010,
           LOGICAL_SHIFT_RIGHT_1    = 3'b011,
           ROTATE_LEFT              = 3'b100,
           ROTATE_RIGHT             = 3'b101,
           ARITHMETIC_SHIFT_LEFT    = 3'b110,
           ARITHMETIC_SHIFT_RIGHT   = 3'b111;
           
// parameters for universal shifting operations           
localparam SERIAL_IN_SERIAL_OUT     = 2'b00,
           SERIAL_IN_PARALLEL_OUT   = 2'b01,
           PARALLEL_IN_PARALLEL_OUT = 2'b10,
           PARALLEL_IN_SERIAL_OUT   = 2'b11;
           
// parameters to select different operation types
localparam alu_op       = 2'b00,
           shifting_op  = 2'b01,
           usr_op       = 2'b10,
           mem_op       = 2'b11;
    
// temporary register    
reg [(2*data_size)-1:0]alu_temp;
reg [data_size-1:0]barrel_temp,usr_temp;   

// integer for for loop
integer i;

// memory
reg [(2*data_size)-1:0] mem [0:(1<<addr_size)-1];

// task to perform logical shift left 0
task LOGICAL_SHIFT_LEFT_0_task(input [data_size-1:0]data, input [shift_val-1:0]shift_amt, output [data_size-1:0]out);
begin
    out = data << shift_amt;
end
endtask

// task to perform logical shift right 0
task LOGICAL_SHIFT_RIGHT_0_task(input [data_size-1:0]data, input [shift_val-1:0]shift_amt, output [data_size-1:0]out);
begin
    out = data >> shift_amt;
end
endtask

// task to perform logical shift left 1
task LOGICAL_SHIFT_LEFT_1_task(input [data_size-1:0]data, input [shift_val-1:0]shift_amt, output [data_size-1:0]out);
reg [data_size-1:0]int_temp;
begin
    int_temp = data << shift_amt;
    out = (int_temp | ({data_size{1'b1}} >> (data_size - shift_amt)));
end
endtask

// task to perform logical shift right 1
task LOGICAL_SHIFT_RIGHT_1_task(input [data_size-1:0]data, input [shift_val-1:0]shift_amt, output [data_size-1:0]out);
reg [data_size-1:0]int_temp;
begin
    int_temp = data >> shift_amt;
    out = (int_temp | ({data_size{1'b1}} << (data_size - shift_amt)));
end
endtask

// task to perform rotate left
task ROTATE_LEFT_task(input [data_size-1:0]data, input [shift_val-1:0]shift_amt, output [data_size-1:0]out);
reg [data_size-1:0]int_temp;
begin
    int_temp = data;
    out = (int_temp << shift_amt) | (int_temp >> (data_size - shift_amt));
end
endtask

// task to perform rotate right
task ROTATE_RIGHT_task(input [data_size-1:0]data, input [shift_val-1:0]shift_amt, output [data_size-1:0]out);
reg [data_size-1:0]int_temp;
begin
    int_temp = data;
    out = (int_temp >> shift_amt) | (int_temp << (data_size - shift_amt));
end
endtask

// task to perform arithmetic shift left
task ARITHMETIC_SHIFT_LEFT_task(input [data_size-1:0]data, input [shift_val-1:0]shift_amt, output [data_size-1:0]out);
reg [data_size-1:0]int_temp;
begin
     if (data[0]==1'b0)
        begin
        int_temp = data; 
        out = int_temp << shift_amt;
        end
     else if (data[0]==1'b1) 
        begin 
        int_temp = data << shift_amt;
        out = (int_temp | ({data_size{1'b1}} >> (data_size - shift_amt)));
        end 
     else if (data[0]==1'bx)
        begin
	int_temp = data << shift_amt;
	out = (int_temp | ({data_size{1'bx}} >> (data_size - shift_amt)));
	end
     else
	begin
	int_temp = data << shift_amt;
	out = (int_temp | ({data_size{1'bz}} >> (data_size - shift_amt)));
	end
end
endtask

// task to perform arithmetic shift right
task ARITHMETIC_SHIFT_RIGHT_task(input [data_size-1:0]data, input [shift_val-1:0]shift_amt, output [data_size-1:0]out);
reg [data_size-1:0]int_temp;
begin
     if (data[data_size-1]==1'b0)
        begin
        int_temp = data; 
        out = int_temp >> shift_amt;
        end
     else if (data[data_size-1]==1'b1) 
        begin 
        int_temp = data >> shift_amt;
        out = (int_temp | ({data_size{1'b1}} << (data_size - shift_amt)));
        end
     else if (data[data_size-1]==1'bx)
        begin
	int_temp = data >> shift_amt;
	out = (int_temp | ({data_size{1'bx}} << (data_size - shift_amt)));
	end
     else
	begin
	int_temp = data >> shift_amt;
	out = (int_temp | ({data_size{1'bz}} << (data_size - shift_amt)));
	end
end
endtask

// operation code
always@(posedge CLK or posedge RESET)
begin

if(RESET)
    begin
    OUTPUT = {(2*data_size){1'b0}};
    alu_temp = {(2*data_size){1'b0}};
    barrel_temp = {data_size{1'b0}};
    usr_temp = {data_size{1'b0}};
    for (i=0;i<(1<<addr_size);i=i+1)
        mem[i] = {data_size{1'b0}};
    end
else 
    begin
    case (OP_SEL)
        
        alu_op : begin
                 case (ALU_SEL) 
                    
                    ADDITION : alu_temp = INPUT_1 + INPUT_2;
                    
                    SUBTRACTION : alu_temp = INPUT_1 - INPUT_2;
                    
                    MULTIPLICATION : alu_temp = INPUT_1 * INPUT_2;
                    
                    DIVISION : if (INPUT_2 != 0)
			           alu_temp = INPUT_1 / INPUT_2;
			       else
				   alu_temp = {(2*data_size){1'bx}};

                    MODULUS : if (INPUT_2 != 0) 
				   alu_temp = INPUT_1 % INPUT_2;
                    	      else
				   alu_temp = {(2*data_size){1'bx}};

                    AND : alu_temp = INPUT_1 & INPUT_2;
                    
                    NAND : alu_temp = {8'h00,~(INPUT_1 & INPUT_2)};
                           
                    OR : alu_temp = INPUT_1 | INPUT_2;
                    
                    NOR : alu_temp = {8'h00,~(INPUT_1 | INPUT_2)};
                    
                    EX_OR : alu_temp = INPUT_1 ^ INPUT_2;
                    
                    EX_NOR : alu_temp = {8'h00,~(INPUT_1 ^ INPUT_2)};
                    
                    NEGATION_INPUT_1 : alu_temp = ~INPUT_1;
                    
                    NEGATION_INPUT_2 : alu_temp = ~INPUT_2;
                    
                    LOGICAL_EQUALITY : alu_temp = (INPUT_1 == INPUT_2);
                    
                    CASE_EQUALITY : alu_temp = (INPUT_1 === INPUT_2);
                    
                    CONCATENATION_1_2 : alu_temp = {INPUT_1,INPUT_2};
                    
                    CONCATENATION_2_1 : alu_temp = {INPUT_2,INPUT_1};
                    
                    LOGICAL_AND : alu_temp = INPUT_1 && INPUT_2;
                    
                    LOGICAL_NAND : alu_temp = {8'h00,!(INPUT_1 && INPUT_2)};    
                               
                    LOGICAL_OR : alu_temp = INPUT_1 || INPUT_2;
                    
                    LOGICAL_NOR : alu_temp = {8'h00,!(INPUT_1 || INPUT_2)};
                                  
                    LOGICAL_NOT_INPUT_1 : alu_temp = !INPUT_1;
                    
                    LOGICAL_NOT_INPUT_2 : alu_temp = !INPUT_2;
                    
                    default : alu_temp = {(2*data_size){1'bx}};

                 endcase
		 if (MEM_SEL)
		     mem[ADDR] = alu_temp;
		 else if (!MEM_SEL)
   		     OUTPUT = alu_temp;
 		 end

        shifting_op : begin
                      case (SHIFT_SEL)
                      
                            LOGICAL_SHIFT_LEFT_0 : begin
                                                   if (!INPUT_SEL) 
                                                        LOGICAL_SHIFT_LEFT_0_task(INPUT_1,SHIFT_AMT,barrel_temp);
                                                   else if (INPUT_SEL)
                                                        LOGICAL_SHIFT_LEFT_0_task(INPUT_2,SHIFT_AMT,barrel_temp);
                                                   else
                                                        barrel_temp = {data_size{1'bx}};
                                                   end 
                            
                            LOGICAL_SHIFT_RIGHT_0 : begin
                                                    if (!INPUT_SEL) 
                                                        LOGICAL_SHIFT_RIGHT_0_task(INPUT_1,SHIFT_AMT,barrel_temp);
                                                    else if (INPUT_SEL)
                                                        LOGICAL_SHIFT_RIGHT_0_task(INPUT_2,SHIFT_AMT,barrel_temp);
                                                    else
                                                        barrel_temp = {data_size{1'bx}};
                                                    end 
                                                    
                            LOGICAL_SHIFT_LEFT_1 : begin
                                                   if (!INPUT_SEL) 
                                                        LOGICAL_SHIFT_LEFT_1_task(INPUT_1,SHIFT_AMT,barrel_temp);
                                                   else if (INPUT_SEL)
                                                        LOGICAL_SHIFT_LEFT_1_task(INPUT_2,SHIFT_AMT,barrel_temp);
                                                   else
                                                        barrel_temp = {data_size{1'bx}};
                                                   end
                                                       
                            LOGICAL_SHIFT_RIGHT_1 : begin
                                                    if (!INPUT_SEL) 
                                                        LOGICAL_SHIFT_RIGHT_1_task(INPUT_1,SHIFT_AMT,barrel_temp);
                                                    else if (INPUT_SEL)
                                                        LOGICAL_SHIFT_RIGHT_1_task(INPUT_2,SHIFT_AMT,barrel_temp);
                                                    else
                                                        barrel_temp = {data_size{1'bx}};
                                                    end
                                                           
                             ROTATE_LEFT : begin
                                           if (!INPUT_SEL) 
                                                ROTATE_LEFT_task(INPUT_1,SHIFT_AMT,barrel_temp);
                                           else if (INPUT_SEL)
                                                ROTATE_LEFT_task(INPUT_2,SHIFT_AMT,barrel_temp);
                                           else
                                                barrel_temp = {data_size{1'bx}};
                                           end
                                           
                             ROTATE_RIGHT :  begin
                                             if (!INPUT_SEL) 
                                                ROTATE_RIGHT_task(INPUT_1,SHIFT_AMT,barrel_temp);
                                             else if (INPUT_SEL)
                                                ROTATE_RIGHT_task(INPUT_2,SHIFT_AMT,barrel_temp);
                                             else
                                                barrel_temp = {data_size{1'bx}};
                                             end
                                            
                             ARITHMETIC_SHIFT_LEFT : begin
                                                     if (!INPUT_SEL) 
                                                        ARITHMETIC_SHIFT_LEFT_task(INPUT_1,SHIFT_AMT,barrel_temp);
                                                     else if (INPUT_SEL)
                                                        ARITHMETIC_SHIFT_LEFT_task(INPUT_2,SHIFT_AMT,barrel_temp);
                                                     else
                                                        barrel_temp = {data_size{1'bx}};
                                                     end
                               
                             ARITHMETIC_SHIFT_RIGHT : begin
                                                      if (!INPUT_SEL) 
                                                        ARITHMETIC_SHIFT_RIGHT_task(INPUT_1,SHIFT_AMT,barrel_temp);
                                                      else if (INPUT_SEL)
                                                        ARITHMETIC_SHIFT_RIGHT_task(INPUT_2,SHIFT_AMT,barrel_temp);
                                                      else
                                                        barrel_temp = {data_size{1'bx}};
                                                      end
                            
                      endcase
		      if (MEM_SEL)
		          mem[ADDR] = barrel_temp;
  		      else if (!MEM_SEL)
			  OUTPUT = barrel_temp;
		      end

        usr_op : begin
                 case(USR_SEL)
                 
                    SERIAL_IN_SERIAL_OUT :  begin
                                            if (!INPUT_SEL)
                                               begin
                                               usr_temp = {usr_temp[data_size-2:0],INPUT_1[0]};
                                               OUTPUT[0] = usr_temp[data_size-1];
                                               end
                                            else if (INPUT_SEL) 
                                                begin
                                                usr_temp = {usr_temp[data_size-2:0],INPUT_2[0]};
                                                OUTPUT[0] = usr_temp[data_size-1];
                                                end
                                            else
                                               OUTPUT[0] = 1'bx;
                                            end
                   
                    SERIAL_IN_PARALLEL_OUT : begin
                                             if (!INPUT_SEL)
                                                begin
                                                usr_temp = {usr_temp[data_size-2:0],INPUT_1[0]};
                                                OUTPUT = usr_temp;
                                                end
                                             else if (INPUT_SEL) 
                                                begin
                                                usr_temp = {usr_temp[data_size-2:0],INPUT_2[0]};
                                                OUTPUT = usr_temp;
                                                end
                                             else
                                                OUTPUT = {(2*data_size){1'bx}};
                                             end
                            
                    PARALLEL_IN_PARALLEL_OUT : begin
                                               if (!INPUT_SEL)
						   begin
					           OUTPUT = INPUT_1;
						   end
					       else if (INPUT_SEL)
						   begin
					           OUTPUT = INPUT_2;
						   end
					       else
						   OUTPUT = {(2*data_size){1'bx}};
                                               end   
                                               
                    PARALLEL_IN_SERIAL_OUT : begin
                                             if (!INPUT_SEL)
                                                begin
                                                if (LOAD)
                                                    usr_temp = INPUT_1;
                                                else if (!LOAD)
                                                    begin
                                                    OUTPUT[0] = usr_temp[data_size-1];
						    usr_temp = usr_temp << 1;
                                                    end
                                                end
                                             else if (INPUT_SEL) 
                                                begin
                                                if (LOAD)
                                                    usr_temp = INPUT_2;
                                                else if (!LOAD)
                                                    begin
                                                    OUTPUT[0] = usr_temp[data_size-1];
                                                    usr_temp = usr_temp << 1;
                                                    end
						end
                                             else
                                                OUTPUT = {(2*data_size){1'bx}};
                                             end 
                               
                 endcase
                 end
                 
         mem_op : begin
		  if (MEM_SEL)
		      begin
		      if (!INPUT_SEL)
                          mem[ADDR] = INPUT_1;
                      else if (INPUT_SEL)
                          mem[ADDR] = INPUT_2;
		      end
                  else if (!MEM_SEL)
                      OUTPUT = mem[ADDR];
                  end
      
        endcase
        end
        
end
endmodule

