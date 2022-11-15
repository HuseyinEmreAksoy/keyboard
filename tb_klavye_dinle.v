`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2021 15:54:48
// Design Name: 
// Module Name: tb_klavye_dinle
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


module tb_klavye_dinle(

    );
    reg clk = 0,karakter_aktif,sifre_degis;
    reg [7:0]karakter,sifre_kanali;
    wire guvenli,kitle;
    wire [7:0] ceza;
    klavye_dinle uut(clk,karakter_aktif,sifre_degis,karakter,sifre_kanali,guvenli,kitle,ceza);
    always begin
        clk = ~clk;
        #5;
    end
    initial begin

    karakter_aktif= 1'b0;
    sifre_degis= 1'b1;
    karakter= 8'h1C;
    sifre_kanali= 8'h61;
    #10;
    karakter_aktif= 1'b0;
    sifre_degis= 1'b1;
    karakter= 8'h1C;
    sifre_kanali= 8'h62;
    #10;
    $display("cevrim sifre: %d",uut.cevrim_sifre);
    karakter_aktif= 1'b0;
    sifre_degis= 1'b1;
    karakter= 8'h1C;
    sifre_kanali= 8'h63;
    #10;
    karakter_aktif= 1'b0;
    sifre_degis= 1'b1;
    karakter= 8'h1C;
    sifre_kanali= 8'h64;
    #10;
    karakter_aktif= 1'b0;
    sifre_degis= 1'b1;
    karakter= 8'h1C;
    sifre_kanali= 8'h65;
    #10;
 
    $display("sifre: %h",uut.sifre);
    
    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h64;
    sifre_kanali= 8'h61;
    #10;
        $display("sifre1: %h",uut.gelen_sifre);
        $display("sifre1: %h",uut.gelen_sifre_next);
        $display("sifre1: %h",uut.karakter);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h63;
    sifre_kanali= 8'h62;
    #10;
        $display("sifre2: %h",uut.gelen_sifre);
        $display("sifre2: %h",uut.gelen_sifre_next);

    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h62;
    sifre_kanali= 8'h63;
    #10;
        $display("sifre3: %h",uut.gelen_sifre);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h61;
    sifre_kanali= 8'h64;
    #10;
        $display("sifre4: %h",uut.gelen_sifre);
        
        
        
        
        
        
        
        
        
        
        karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h46;
    sifre_kanali= 8'h61;
    #10;
        $display("sifre1: %h",uut.gelen_sifre);
        $display("sifre1: %h",uut.gelen_sifre_next);
        $display("sifre1: %h",uut.karakter);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h63;
    sifre_kanali= 8'h62;
    #10;
        $display("sifre2: %h",uut.gelen_sifre);
        $display("sifre2: %h",uut.gelen_sifre_next);

    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h62;
    sifre_kanali= 8'h63;
    #10;
        $display("sifre3: %h",uut.gelen_sifre);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h61;
    sifre_kanali= 8'h64;
    #10;
        karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h64;
    sifre_kanali= 8'h61;
    #10;
     karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h64;
    sifre_kanali= 8'h61;
    #10;
        $display("sifre1: %h",uut.gelen_sifre);
        $display("sifre1: %h",uut.gelen_sifre_next);
        $display("sifre1: %h",uut.karakter);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h63;
    sifre_kanali= 8'h62;
    #10;
        $display("sifre2: %h",uut.gelen_sifre);
        $display("sifre2: %h",uut.gelen_sifre_next);

    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h62;
    sifre_kanali= 8'h63;
    #10;
        $display("sifre3: %h",uut.gelen_sifre);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h61;
    sifre_kanali= 8'h64;
    #10;
        $display("sifre1: %h",uut.gelen_sifre);
        $display("sifre1: %h",uut.gelen_sifre_next);
        $display("sifre1: %h",uut.karakter);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h63;
    sifre_kanali= 8'h62;
    #10;
        $display("sifre2: %h",uut.gelen_sifre);
        $display("sifre2: %h",uut.gelen_sifre_next);

    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h62;
    sifre_kanali= 8'h63;
    #10;
        $display("sifre3: %h",uut.gelen_sifre);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h61;
    sifre_kanali= 8'h64;
    #10;
    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h64;
    sifre_kanali= 8'h61;
    #10;
        $display("sifre1: %h",uut.gelen_sifre);
        $display("sifre1: %h",uut.gelen_sifre_next);
        $display("sifre1: %h",uut.karakter);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h63;
    sifre_kanali= 8'h62;
    #10;
        $display("sifre2: %h",uut.gelen_sifre);
        $display("sifre2: %h",uut.gelen_sifre_next);

    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h62;
    sifre_kanali= 8'h63;
    #10;
        $display("sifre3: %h",uut.gelen_sifre);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h61;
    sifre_kanali= 8'h64;
    #10;
    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h64;
    sifre_kanali= 8'h61;
    #10;
        $display("sifre1: %h",uut.gelen_sifre);
        $display("sifre1: %h",uut.gelen_sifre_next);
        $display("sifre1: %h",uut.karakter);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h63;
    sifre_kanali= 8'h62;
    #10;
        $display("sifre2: %h",uut.gelen_sifre);
        $display("sifre2: %h",uut.gelen_sifre_next);

    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h62;
    sifre_kanali= 8'h63;
    #10;
        $display("sifre3: %h",uut.gelen_sifre);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h61;
    sifre_kanali= 8'h64;
    #10;
    
    
    
    
    
    
    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h61;
    sifre_kanali= 8'h61;
    #10;
        $display("sifre1: %h",uut.gelen_sifre);
        $display("sifre1: %h",uut.gelen_sifre_next);
        $display("sifre1: %h",uut.karakter);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h63;
    sifre_kanali= 8'h62;
    #10;
        $display("sifre2: %h",uut.gelen_sifre);
        $display("sifre2: %h",uut.gelen_sifre_next);

    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h78;
    sifre_kanali= 8'h63;
    #10;
        $display("sifre3: %h",uut.gelen_sifre);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h61;
    sifre_kanali= 8'h97;
    #10;
    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h64;
    sifre_kanali= 8'h61;
    #10;
        $display("sifre1: %h",uut.gelen_sifre);
        $display("sifre1: %h",uut.gelen_sifre_next);
        $display("sifre1: %h",uut.karakter);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h76;
    sifre_kanali= 8'h62;
    #10;
        $display("sifre2: %h",uut.gelen_sifre);
        $display("sifre2: %h",uut.gelen_sifre_next);

    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h62;
    sifre_kanali= 8'h63;
    #10;
        $display("sifre3: %h",uut.gelen_sifre);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h61;
    sifre_kanali= 8'h64;
    #10;
    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h54;
    sifre_kanali= 8'h61;
    #10;
        $display("sifre1: %h",uut.gelen_sifre);
        $display("sifre1: %h",uut.gelen_sifre_next);
        $display("sifre1: %h",uut.karakter);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h86;
    sifre_kanali= 8'h62;
    #10;
        $display("sifre2: %h",uut.gelen_sifre);
        $display("sifre2: %h",uut.gelen_sifre_next);

    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h62;
    sifre_kanali= 8'h63;
    #10;
        $display("sifre3: %h",uut.gelen_sifre);


    karakter_aktif= 1'b1;
    sifre_degis= 1'b0;
    karakter= 8'h76;
    sifre_kanali= 8'h64;
    #10;

    
    
   
    
    
    end
    
    
endmodule
