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
//    Xil_Out32(XPAR_V_TC_0_BASEADDR,0xC);

    while(1) {

    	for(unsigned addr = XPAR_BRAM_0_BASEADDR; addr <= XPAR_BRAM_0_HIGHADDR; addr = addr + 4)
    	{
    		int input = Xil_In32(addr);
    		xil_printf("%d \n", input);
    	}
    	xil_printf("Koniec___ \n");
    	sleep(5);
    }
    cleanup_platform();
    return 0;
}
