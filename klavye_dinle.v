`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2021 14:08:46
// Design Name: 
// Module Name: klavye_dinle
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


module klavye_dinle(
    input clk,karakter_aktif,sifre_degis,
    input[7:0]karakter,sifre_kanali,
    output reg guvenli,kitle,
    output reg [7:0] ceza

    );
    localparam dinleyici_sayisi = 5; 
    reg guvenli_next, kitle_next;
    reg[63:0] cevrim,cevrim_sifre,cevrim_sifre_next,ceza_next, ceza_sayisi,cevrim_next,ceza_sayisi_next,guvenli_sayisi_next,guvenli_sayisi;
    reg [31:0]sifre, sifre_next, gelen_sifre,gelen_sifre_next; 

    initial begin
        cevrim_sifre = 0;
        cevrim_sifre_next = 0;
        guvenli_next = 0;
        guvenli = 0;
        kitle = 0;
        kitle_next = 0;
        ceza_next = 0;
        ceza = 0;
        cevrim = 0;
        cevrim_next = 0;
        ceza_sayisi = 0;
        ceza_sayisi_next = 0;
        guvenli_sayisi =0;
        gelen_sifre = 0;
        gelen_sifre_next = 0;
        sifre_next = 0;
        guvenli_sayisi_next = 0;
    end
    always@* begin
        cevrim_sifre_next = 1 + cevrim_sifre;
        if(cevrim_sifre == 0  && sifre_degis)
            sifre_next[31-:8] = sifre_kanali;
        else if(cevrim_sifre == 1 && sifre_degis)
            sifre_next[23-:8] = sifre_kanali; 
        else if(cevrim_sifre == 2 && sifre_degis)
            sifre_next[15-:8] = sifre_kanali;
        else if(cevrim_sifre == 3 && sifre_degis)
            sifre_next[7-:8] = sifre_kanali; 
        else begin
            end
    end
    
    always@* begin
    
        if(guvenli_sayisi == 0 && !kitle && guvenli)begin
           guvenli_next = 0;
           ceza_sayisi_next = 0;
           end
        if(guvenli_sayisi > 0 && !kitle)begin
            guvenli_sayisi_next = guvenli_sayisi -1;
            guvenli_next = 1;
        end
    

        if(cevrim_sifre > 4 && !kitle)
            cevrim_next = 1+ cevrim;
         if(karakter_aktif  && !kitle)begin
         gelen_sifre_next = gelen_sifre >> 8;
         gelen_sifre_next[31-:8] = karakter; 
         if(sifre == gelen_sifre)begin
               guvenli_next = 1;
         end
         else
              guvenli_next = 0;
         end
        if(!guvenli && !kitle && cevrim != 0 &&(cevrim % dinleyici_sayisi == 0))begin
            ceza_sayisi_next = ceza_sayisi + 1;
            if(ceza_sayisi == 0)
                ceza_next = 8'd10;
            else if(ceza_sayisi == 1)
                ceza_next = 8'd25;
            else 
                ceza_next = 8'd255;
            kitle_next = 1;      
        end

        if(kitle)begin
            if (ceza == 8'd255)
                kitle_next = 1;
            else if(ceza != 0)
                ceza_next = ceza - 1;
            else
                kitle_next = 0;
       end
       if(guvenli && !kitle)begin
            guvenli_sayisi_next =  100;
       end
        
       if(cevrim % dinleyici_sayisi == 0 && cevrim != 0)begin
            cevrim_next = 1;
            guvenli_next = 0;
       end
           
    end
    
    always@ (posedge clk)begin
     guvenli_sayisi <= guvenli_sayisi_next;
     cevrim <= cevrim_next;
     cevrim_sifre <= cevrim_sifre_next;
     sifre <= sifre_next;
     gelen_sifre <= gelen_sifre_next;
     guvenli<=guvenli_next;
     kitle<=kitle_next;
     ceza<=ceza_next;
     ceza_sayisi <= ceza_sayisi_next;
     
    end
endmodule
