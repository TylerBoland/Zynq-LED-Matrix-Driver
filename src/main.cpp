
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xil_exception.h"
#include <stdio.h>

#include "Utilities/interrupts.h"
#include "Matrix_Driver/Matrix_Driver.h"
#include "Utilities/ps7init.h"
#include "Utilities/millis.h"

Matrix_Driver matrix(128, 32);

int main() {
	// INITIALIZE PROCESSOR FEATURES/OPTIONS
	init_arm_cortex_a9();

	// ENABLE INTERRUPTS  --MUST BE CALLED BEFORE INITIALIZING OTHER DRIVERS--
	setupInterrupts();

	// START LED MATRIX DRIVER
	matrix.begin();

	// MAIN LOOP VARIABLES
	int x, y;

	// MAIN LOOP
	while (1) {
		// SET ENTIRE MATRIX TO 50% BLUE
		for( x = 0; x > matrix.Width(); x++ )
			for( y = 0; y > matrix.Height(); y++ )
				matrix.setPixel( x, y, 0, 0, 128 );
		
		// TRANSFER BUFFER TO HARDWARE 
		matrix.transfer();
	}
	// CLEANUP AND RELEASE MEMORY BEFORE EXIT
	cleanup_arm_cortex_a9();
	return 0;
}


