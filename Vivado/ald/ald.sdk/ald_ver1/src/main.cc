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
    	//print("Hello World\n\r");
    	// Pobranie rozdzielczosci
    	int input = Xil_In32(XPAR_BRAM_0_BASEADDR);

    	xil_printf("%d \n", input);

    }
    cleanup_platform();
    return 0;
}
