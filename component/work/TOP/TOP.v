//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Apr 21 19:45:49 2019
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// TOP
module TOP(
    // Inputs
    MSS_RESET_N,
    SW,
    SW0,
    SW1,
    UART_0_RXD,
    dbsw,
    echo,
    // Outputs
    LED,
    UART_0_TXD,
    trigger,
    // Inouts
    I2C_1_SCL,
    I2C_1_SDA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  MSS_RESET_N;
input  SW;
input  SW0;
input  SW1;
input  UART_0_RXD;
input  dbsw;
input  echo;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output LED;
output UART_0_TXD;
output trigger;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  I2C_1_SCL;
inout  I2C_1_SDA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA;
wire          CoreAPB3_0_APBmslave0_PREADY;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave2_PRDATA;
wire          CoreAPB3_0_APBmslave2_PREADY;
wire          CoreAPB3_0_APBmslave2_PSELx;
wire          CoreAPB3_0_APBmslave2_PSLVERR;
wire          dbsw;
wire          echo;
wire          I2C_1_SCL;
wire          I2C_1_SDA;
wire          LED_net_0;
wire          MSS01_0_FAB_CLK;
wire          MSS01_0_M2F_RESET_N;
wire          MSS01_0_MSS_MASTER_APB_PENABLE;
wire   [31:0] MSS01_0_MSS_MASTER_APB_PRDATA;
wire          MSS01_0_MSS_MASTER_APB_PREADY;
wire          MSS01_0_MSS_MASTER_APB_PSELx;
wire          MSS01_0_MSS_MASTER_APB_PSLVERR;
wire   [31:0] MSS01_0_MSS_MASTER_APB_PWDATA;
wire          MSS01_0_MSS_MASTER_APB_PWRITE;
wire          MSS_RESET_N;
wire          SW;
wire          SW0;
wire          SW1;
wire          Switch_0_0_INT0;
wire          Switch_0_0_INT1;
wire          trigger_net_0;
wire          UART_0_RXD;
wire          UART_0_TXD_net_0;
wire          LED_net_1;
wire          trigger_net_1;
wire          UART_0_TXD_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] PRDATAS3_const_net_0;
wire   [31:0] PRDATAS4_const_net_0;
wire   [31:0] PRDATAS5_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:20]MSS01_0_MSS_MASTER_APB_PADDR_0_31to20;
wire   [19:0] MSS01_0_MSS_MASTER_APB_PADDR_0_19to0;
wire   [31:0] MSS01_0_MSS_MASTER_APB_PADDR_0;
wire   [19:0] MSS01_0_MSS_MASTER_APB_PADDR;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign IADDR_const_net_0     = 32'h00000000;
assign PRDATAS3_const_net_0  = 32'h00000000;
assign PRDATAS4_const_net_0  = 32'h00000000;
assign PRDATAS5_const_net_0  = 32'h00000000;
assign PRDATAS6_const_net_0  = 32'h00000000;
assign PRDATAS7_const_net_0  = 32'h00000000;
assign PRDATAS8_const_net_0  = 32'h00000000;
assign PRDATAS9_const_net_0  = 32'h00000000;
assign PRDATAS10_const_net_0 = 32'h00000000;
assign PRDATAS11_const_net_0 = 32'h00000000;
assign PRDATAS12_const_net_0 = 32'h00000000;
assign PRDATAS13_const_net_0 = 32'h00000000;
assign PRDATAS14_const_net_0 = 32'h00000000;
assign PRDATAS15_const_net_0 = 32'h00000000;
assign PRDATAS16_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign LED_net_1        = LED_net_0;
assign LED              = LED_net_1;
assign trigger_net_1    = trigger_net_0;
assign trigger          = trigger_net_1;
assign UART_0_TXD_net_1 = UART_0_TXD_net_0;
assign UART_0_TXD       = UART_0_TXD_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign MSS01_0_MSS_MASTER_APB_PADDR_0_31to20 = 12'h0;
assign MSS01_0_MSS_MASTER_APB_PADDR_0_19to0 = MSS01_0_MSS_MASTER_APB_PADDR[19:0];
assign MSS01_0_MSS_MASTER_APB_PADDR_0 = { MSS01_0_MSS_MASTER_APB_PADDR_0_31to20, MSS01_0_MSS_MASTER_APB_PADDR_0_19to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 0 ),
        .APBSLOT4ENABLE  ( 0 ),
        .APBSLOT5ENABLE  ( 0 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 18 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 12 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 2 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( MSS01_0_MSS_MASTER_APB_PWRITE ),
        .PENABLE    ( MSS01_0_MSS_MASTER_APB_PENABLE ),
        .PSEL       ( MSS01_0_MSS_MASTER_APB_PSELx ),
        .PREADYS0   ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERRS0  ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .PREADYS1   ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .PREADYS2   ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS5  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( MSS01_0_MSS_MASTER_APB_PADDR_0 ),
        .PWDATA     ( MSS01_0_MSS_MASTER_APB_PWDATA ),
        .PRDATAS0   ( CoreAPB3_0_APBmslave0_PRDATA ),
        .PRDATAS1   ( CoreAPB3_0_APBmslave1_PRDATA ),
        .PRDATAS2   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .PRDATAS3   ( PRDATAS3_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS4   ( PRDATAS4_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS5   ( PRDATAS5_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( MSS01_0_MSS_MASTER_APB_PREADY ),
        .PSLVERR    ( MSS01_0_MSS_MASTER_APB_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PSELS0     ( CoreAPB3_0_APBmslave0_PSELx ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3     (  ),
        .PSELS4     (  ),
        .PSELS5     (  ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( MSS01_0_MSS_MASTER_APB_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ) 
        );

//--------DistanceSensor
DistanceSensor DistanceSensor_0(
        // Inputs
        .PCLK    ( MSS01_0_FAB_CLK ),
        .PRESERN ( MSS01_0_M2F_RESET_N ),
        .PSEL    ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .echo    ( echo ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .trigger ( trigger_net_0 ),
        .PRDATA  ( CoreAPB3_0_APBmslave1_PRDATA ) 
        );

//--------LED_VERILOG
LED_VERILOG LED_VERILOG_0(
        // Inputs
        .PCLK    ( MSS01_0_FAB_CLK ),
        .PRESERN ( MSS01_0_M2F_RESET_N ),
        .PSEL    ( CoreAPB3_0_APBmslave0_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .LED     ( LED_net_0 ),
        .PRDATA  ( CoreAPB3_0_APBmslave0_PRDATA ) 
        );

//--------MSS01
MSS01 MSS01_0(
        // Inputs
        .MSS_RESET_N ( MSS_RESET_N ),
        .MSSPREADY   ( MSS01_0_MSS_MASTER_APB_PREADY ),
        .MSSPSLVERR  ( MSS01_0_MSS_MASTER_APB_PSLVERR ),
        .UART_0_RXD  ( UART_0_RXD ),
        .F2M_GPI_1   ( Switch_0_0_INT1 ),
        .F2M_GPI_0   ( Switch_0_0_INT0 ),
        .MSSPRDATA   ( MSS01_0_MSS_MASTER_APB_PRDATA ),
        // Outputs
        .FAB_CLK     ( MSS01_0_FAB_CLK ),
        .MSSPSEL     ( MSS01_0_MSS_MASTER_APB_PSELx ),
        .MSSPENABLE  ( MSS01_0_MSS_MASTER_APB_PENABLE ),
        .MSSPWRITE   ( MSS01_0_MSS_MASTER_APB_PWRITE ),
        .M2F_RESET_N ( MSS01_0_M2F_RESET_N ),
        .UART_0_TXD  ( UART_0_TXD_net_0 ),
        .MSSPADDR    ( MSS01_0_MSS_MASTER_APB_PADDR ),
        .MSSPWDATA   ( MSS01_0_MSS_MASTER_APB_PWDATA ),
        // Inouts
        .I2C_1_SCL   ( I2C_1_SCL ),
        .I2C_1_SDA   ( I2C_1_SDA ) 
        );

//--------Switch_0
Switch_0 Switch_0_0(
        // Inputs
        .PCLK    ( MSS01_0_FAB_CLK ),
        .PRESERN ( MSS01_0_M2F_RESET_N ),
        .PSEL    ( CoreAPB3_0_APBmslave2_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        .SW0     ( SW0 ),
        .SW1     ( SW1 ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .INT0    ( Switch_0_0_INT0 ),
        .INT1    ( Switch_0_0_INT1 ),
        .PRDATA  ( CoreAPB3_0_APBmslave2_PRDATA ) 
        );


endmodule
