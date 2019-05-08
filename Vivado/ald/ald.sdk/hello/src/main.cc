/*
 * Empty C++ Application
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"


int main()
{
    init_platform();

    while(1) {
    	print("Hello\n\r");
    }
    cleanup_platform();
    return 0;
}
