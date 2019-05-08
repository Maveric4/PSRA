/*
 * Empty C++ Application
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "sleep.h"



int main()
{
    init_platform();
    // Inicjalizacja VTC
    Xil_Out32(XPAR_V_TC_0_BASEADDR,0xC);

    while(1) {
    	//print("Hello World\n\r");
    	// Pobranie rozdzielczosci
    	int hsize_input = Xil_In32(XPAR_V_TC_0_BASEADDR+0x0030);
    	int vsize_input = Xil_In32(XPAR_V_TC_0_BASEADDR+0x0034);
    	// Pobranie rozdzielczosci aktywnej
    	int active_input = Xil_In32(XPAR_V_TC_0_BASEADDR+0x0020);
    	int vsize_active_input = (active_input & 0xFFFF0000) >> 16;
    	int hsize_active_input = active_input & 0x0000FFFF;
    	// Wyswietlenie komunikatu
    	xil_printf("Input video stream:%d x %d \n\r",hsize_input,vsize_input);
    	xil_printf("Input active video stream: %d x %d \n\r", hsize_active_input,vsize_active_input);
    	sleep(1);

    	// Wyswietlenie bbox’a
    	int sw = Xil_In32(XPAR_PARAMETER_REGISTER_0_S00_AXI_BASEADDR + 12);

    	int x2 = sw*20;	//200;
    	int x1 = sw*10;	//100;
    	int y2 = sw*50;	//500;
    	int y1 = sw*5;	//50;


    	Xil_Out32(XPAR_PARAMETER_REGISTER_0_S00_AXI_BASEADDR + 0, (x2 << 16) +x1);
    	Xil_Out32(XPAR_PARAMETER_REGISTER_0_S00_AXI_BASEADDR + 4, (y2 << 16) +y1);

    	xil_printf("%d \n", sw);

    }
    cleanup_platform();
    return 0;
}
