`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2021 15:01:16
// Design Name: 
// Module Name: klavye_kontrolcu
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


module klavye_kontrolcu(
    input clk,buton_aktif,kontrol_aktif,
    input [7:0]buton_giris,kontrol_giris,
    output reg caps_lock = 0,num_lock=0,cikis_aktif=0,
    output reg [7:0] cikis = 0
    );
    reg [7:0]onceki = 0,cikis_next = 0;
    reg caps_acik_mi = 0, shift = 0,buyuk_mu = 0,num_acik_mi = 0,onemli_mi = 0,cikis_aktif_next = 0,onceki_kontrol = 0;
    
    always@* begin    
    if(buton_giris == 0)
        cikis_next = 8'h00;
   
    if(!kontrol_aktif && !buton_aktif)begin
        cikis_next = 8'h00;
        cikis_aktif_next = 0;
    end
    else if((buton_giris == onceki && onceki != 0) || (onceki_kontrol == kontrol_giris && onceki_kontrol != 0))begin//if anyone press same button it will same
                                                                                                //I think this part is not so clear in this homework some conflicts are existing like
                                                                                           // if button same but kontrol diffrent or opposite of these condision are not clear in the hw pdf
        cikis_next = 8'h00;
        cikis_aktif_next = 1'b0;
        end
       
    else begin
        if(kontrol_aktif)begin
        if(kontrol_giris == 8'h58)begin
            cikis_next = 8'd143;

                if(caps_lock)
                    caps_acik_mi = 0;
                else
                    caps_acik_mi = 1;
         end
        else if(kontrol_giris == 8'h12 || kontrol_giris == 8'h59)begin
                    shift =1;
                     cikis_next = 8'd142;
        end
        else if(kontrol_giris == 8'h77)begin
               cikis_next = 8'd144;
                if(num_lock)
                    num_acik_mi = 0; 
                else
                    num_acik_mi = 1;
       end         
        else if(kontrol_giris == 8'h29)
                cikis_next = 8'h20;
                
        else if(kontrol_giris == 8'h76)
                cikis_next = 8'd27;
        else if(kontrol_giris == 8'h05)
                cikis_next = 8'd128;
        else if(kontrol_giris == 8'h06)
                cikis_next = 8'd129;
        else if(kontrol_giris == 8'h04)
                cikis_next = 8'd130;
        else if(kontrol_giris == 8'h0C)
                cikis_next = 8'd131;
        else if(kontrol_giris == 8'h03)
                cikis_next = 8'd132;
        else if(kontrol_giris == 8'h0B)
                cikis_next = 8'd133;
        else if(kontrol_giris == 8'h83)
                cikis_next = 8'd134;
        else if(kontrol_giris == 8'h0A)
                cikis_next = 8'd135;
        else if(kontrol_giris == 8'h01)
                cikis_next = 8'd136;
        else if(kontrol_giris == 8'h09)
                cikis_next = 8'd137;
        else if(kontrol_giris == 8'h78)
                cikis_next = 8'd138;
        else if(kontrol_giris == 8'h07)
                cikis_next = 8'd139;               
        else if(kontrol_giris == 8'h0D)
                cikis_next = 8'd9;
        else if(kontrol_giris == 8'h14)
                cikis_next = 8'd140;
        else if(kontrol_giris == 8'h11)
                cikis_next = 8'd141;
        else if(kontrol_giris == 8'h66)
                cikis_next = 8'd8;
        else if(kontrol_giris == 8'h5A)
                cikis_next = 8'd145;

     end 
       onceki_kontrol = kontrol_giris;
       cikis_aktif_next = 1'b1;
       onceki = buton_giris;

        if(caps_acik_mi && shift)
            buyuk_mu = 0;
        else if(shift)
            buyuk_mu = 1;
        else if(caps_acik_mi)
            buyuk_mu = 1;
        else
            buyuk_mu = 0;
       
        if(buton_aktif && !buyuk_mu)begin//küçük
                          
            if(buton_giris == 8'h15)
                cikis_next = 8'h71;
            else if(buton_giris == 8'h1D)
                cikis_next = 8'h77;
            else if(buton_giris == 8'h24)
                cikis_next = 8'h65;
            else if(buton_giris == 8'h2D)
                cikis_next = 8'h72;
            else if(buton_giris == 8'h2C)
                cikis_next = 8'h74;
            else if(buton_giris == 8'h35)
                cikis_next = 8'h79;
            else if(buton_giris == 8'h3C)
                cikis_next = 8'h75;
            else if(buton_giris == 8'h43)
                cikis_next = 8'h69;
            else if(buton_giris == 8'H44)
                cikis_next = 8'h6F;
            else if(buton_giris == 8'h4D)
                cikis_next = 8'h70;                       
            else if(buton_giris == 8'h1C)
                cikis_next = 8'h61;
            else if(buton_giris == 8'h1B)
                cikis_next = 8'h73;
            else if(buton_giris == 8'h23)
                cikis_next = 8'h64;
            else if(buton_giris == 8'h2B)
                cikis_next = 8'h66;
            else if(buton_giris == 8'h34)
                cikis_next = 8'h67;
            else if(buton_giris == 8'h33)
                cikis_next = 8'h68;
            else if(buton_giris == 8'h3B)
                cikis_next = 8'h6A;
            else if(buton_giris == 8'h42)
                cikis_next = 8'h6B;
            else if(buton_giris == 8'h4B)
                cikis_next = 8'h6C;   
            else if(buton_giris == 8'h1A)
                cikis_next = 8'h7A;
            else if(buton_giris == 8'h22)
                cikis_next = 8'h78;
            else if(buton_giris == 8'h21)
                cikis_next = 8'h63;
            else if(buton_giris == 8'h2A)
                cikis_next = 8'h76;
            else if(buton_giris == 8'h32)
                cikis_next = 8'h62;
            else if(buton_giris == 8'h31)
                cikis_next = 8'h6E;
            else if(buton_giris == 8'h3A)
                cikis_next = 8'h6D;
                
            end
        else if(buton_aktif && buyuk_mu)begin // büyük
                                  
            if(buton_giris == 8'h15)
                cikis_next = 8'h51;
            else if(buton_giris == 8'h1D)
                cikis_next = 8'h57;
            else if(buton_giris == 8'h24)
                cikis_next = 8'h45;
            else if(buton_giris == 8'h2D)
                cikis_next = 8'h52;
            else if(buton_giris == 8'h2C)
                cikis_next = 8'h54;
            else if(buton_giris == 8'h35)
                cikis_next = 8'h59;
            else if(buton_giris == 8'h3C)
                cikis_next = 8'h55;
            else if(buton_giris == 8'h43)
                cikis_next = 8'h49;
            else if(buton_giris == 8'H44)
                cikis_next = 8'h4F;
            else if(buton_giris == 8'h4D)
                cikis_next = 8'h50;                
            else if(buton_giris == 8'h1C)
                cikis_next = 8'h41;
            else if(buton_giris == 8'h1B)
                cikis_next = 8'h53;
            else if(buton_giris == 8'h23)
                cikis_next = 8'h44;
            else if(buton_giris == 8'h2B)
                cikis_next = 8'h46;
            else if(buton_giris == 8'h34)
                cikis_next = 8'h47;
            else if(buton_giris == 8'h33)
                cikis_next = 8'h48;
            else if(buton_giris == 8'h3B)
                cikis_next = 8'h4A;
            else if(buton_giris == 8'h42)
                cikis_next = 8'h4B;
            else if(buton_giris == 8'h4B)
                cikis_next = 8'h4C;
            else if(buton_giris == 8'h1A)
                cikis_next = 8'h5A;
            else if(buton_giris == 8'h22)
                cikis_next = 8'h58;
            else if(buton_giris == 8'h21)
                cikis_next = 8'h43;
            else if(buton_giris == 8'h2A)
                cikis_next = 8'h56;
            else if(buton_giris == 8'h32)
                cikis_next = 8'h42;
            else if(buton_giris == 8'h31)
                cikis_next = 8'h4E;
            else if(buton_giris == 8'h3A)
                cikis_next = 8'h4D;
            end
            
        if(shift)begin
            if(buton_giris == 8'h0E)
                cikis_next = 8'h60;
            else if(buton_giris == 8'h16)
                cikis_next = 8'h21;
            else if(buton_giris == 8'h1E)
                cikis_next = 8'h40;
            else if(buton_giris == 8'h26)
                cikis_next = 8'h23;
            else if(buton_giris == 8'h25)
                cikis_next = 8'h24;
            else if(buton_giris == 8'h2E)
                cikis_next = 8'h25;
            else if(buton_giris == 8'h36)
                cikis_next = 8'h5E;
            else if(buton_giris == 8'h3D)
                cikis_next = 8'h26;
            else if(buton_giris == 8'h3E)
                cikis_next = 8'h2A;
            else if(buton_giris == 8'h46)
                cikis_next = 8'h28;
            else if(buton_giris == 8'h45)
                cikis_next = 8'h29;
            else if(buton_giris == 8'h4E)
                cikis_next = 8'h2D;
            else if(buton_giris == 8'h55)
                cikis_next = 8'h3D;
            else if(buton_giris == 8'h5D)
                cikis_next = 8'h5C;   
            else if(buton_giris == 8'h54)
                cikis_next = 8'h7B;
            else if(buton_giris == 8'h5B)
                cikis_next = 8'h5D;
            else if(buton_giris == 8'h4C)
                cikis_next = 8'h3B;
            else if(buton_giris == 8'h52)
                   cikis_next = 8'h27;
            else if(buton_giris == 8'H41)
                cikis_next = 8'h2C;
            else if(buton_giris == 8'H49)
                cikis_next = 8'h2E;
            else if(buton_giris == 8'H4A)
                cikis_next = 8'h2F;
        end
        else begin
            if(buton_giris == 8'h0E)
                cikis_next = 8'h7E;
            else if(buton_giris == 8'h16)
                cikis_next = 8'h31;
            else if(buton_giris == 8'h1E)
                cikis_next = 8'h32;
            else if(buton_giris == 8'h26)
                cikis_next = 8'h33;
            else if(buton_giris == 8'h25)
                cikis_next = 8'h34;
            else if(buton_giris == 8'h2E)
                cikis_next = 8'h35;
            else if(buton_giris == 8'h36)
                cikis_next = 8'h36;
            else if(buton_giris == 8'h3D)
                cikis_next = 8'h37;
            else if(buton_giris == 8'h3E)
                cikis_next = 8'h38;
            else if(buton_giris == 8'h46)
                cikis_next = 8'h39;
            else if(buton_giris == 8'h45)
                cikis_next = 8'h30;
            else if(buton_giris == 8'h4E)
                cikis_next = 8'h5F;
            else if(buton_giris == 8'h55)
                cikis_next = 8'h2B;
            else if(buton_giris == 8'h5D)
                cikis_next = 8'h7C;
            else if(buton_giris == 8'h54)
                cikis_next = 8'h5B;
            else if(buton_giris == 8'h5B)
                cikis_next = 8'h7D;    
            else if(buton_giris == 8'h4C)
                cikis_next = 8'h3A;
            else if(buton_giris == 8'h52)
                cikis_next = 8'h22;
            else if(buton_giris == 8'H41)
                cikis_next = 8'h3C;
            else if(buton_giris == 8'H49)
                cikis_next = 8'h3E;
            else if(buton_giris == 8'H4A)
                cikis_next = 8'h3F;
        end
        if(num_lock)begin
            if(buton_giris == 8'h7C)
                cikis_next = 8'h2A;
            else if(buton_giris == 8'h7B)
                cikis_next = 8'h2D;
            else if(buton_giris == 8'h6C)
                cikis_next = 8'h37;
            else if(buton_giris == 8'h75)
                cikis_next = 8'h38;
            else if(buton_giris == 8'h7D)
                cikis_next = 8'h39;
            else if(buton_giris == 8'h6B)
                cikis_next = 8'h34;
            else if(buton_giris == 8'h73)
                cikis_next = 8'h35;
            else if(buton_giris == 8'h74)
                cikis_next = 8'h36;
            else if(buton_giris == 8'h79)
                cikis_next = 8'h2B;
                
            else if(buton_giris == 8'h69)
                cikis_next = 8'h31;
            else if(buton_giris == 8'h72)
                cikis_next = 8'h32;
            else if(buton_giris == 8'h7A)
                cikis_next = 8'h33;
            else if(buton_giris == 8'h70)
                cikis_next = 8'h30;
            else if(buton_giris == 8'h71)
                cikis_next = 8'h2E;
        end
        buyuk_mu = 0;
        shift = 0;
    end
        
    end   
    always@(posedge clk)begin
        
        cikis <= cikis_next;
        caps_lock <= caps_acik_mi;
        num_lock <= num_acik_mi;
        cikis_aktif <= cikis_aktif_next;
        
    end
endmodule
