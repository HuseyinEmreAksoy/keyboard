`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2021 17:41:48
// Design Name: 
// Module Name: tb_klavye_kontrolcu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_klavye_kontrolcu(

    );
    reg clk = 0,buton_aktif,kontrol_aktif;
    reg [7:0]buton_giris,kontrol_giris;
    wire caps_lock,num_lock,cikis_aktif;
    wire [7:0] cikis;
    klavye_kontrolcu uut(clk,buton_aktif,kontrol_aktif,buton_giris,kontrol_giris,caps_lock,num_lock,cikis_aktif,cikis);
    
    always begin
        clk = ~clk;
        #5;
    end
    initial begin

  
    buton_aktif= 1'b1;
    kontrol_aktif= 1'b0;
    buton_giris= 8'h2C;
    kontrol_giris= 8'h00;
    #10;
    buton_aktif= 1'b0;
    kontrol_aktif= 1'b0;
    buton_giris= 8'h00;
    kontrol_giris= 8'h00;
    #10;
     buton_aktif= 1'b1;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h44;
    kontrol_giris= 8'h12;
    #10;
     buton_aktif= 1'b0;
    kontrol_aktif= 1'b0;
    buton_giris= 8'h00;
    kontrol_giris= 8'h00; 
    #10;
    
    buton_aktif= 1'b1;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h32;
    kontrol_giris= 8'h58;
    #10;
     buton_aktif= 1'b1;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h32;
    kontrol_giris= 8'h58;
    #10; 
    buton_aktif= 1'b1;
    kontrol_aktif= 1'b0;
    buton_giris= 8'h32;
    kontrol_giris= 8'h00;
    #10; 
    buton_aktif= 1'b0;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h00;
    kontrol_giris= 8'h29;
    
    
    #10; 
    buton_aktif= 1'b1;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h32;
    kontrol_giris= 8'h29;
    #10;
    buton_aktif= 1'b0;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h00;
    kontrol_giris= 8'h29;
    #10;
    buton_aktif= 1'b1;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h6C;
    kontrol_giris= 8'h0D;
    #10;
    buton_aktif= 1'b1;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h6C;
    kontrol_giris= 8'h77;
    #10;
    
    buton_aktif= 1'b0;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h00;
    kontrol_giris= 8'h29;
    #10;
    buton_aktif= 1'b1;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h4C;
    kontrol_giris= 8'h12;
    #10;
    buton_aktif= 1'b1;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h45;
    kontrol_giris= 8'h12;
    #10;
    buton_aktif= 1'b0;
    kontrol_aktif= 1'b1;
    buton_giris= 8'h00;
    kontrol_giris= 8'h12;
    #10;

    end
    
endmodule
