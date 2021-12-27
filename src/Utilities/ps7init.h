#pragma once
#include "xil_cache.h"

void init_arm_cortex_a9(){
	// ENABLE CACHE
	Xil_DCacheEnable();
	Xil_ICacheEnable();
}

void cleanup_arm_cortex_a9(){
	// DISABLE CACHE
	Xil_DCacheDisable();
	Xil_ICacheDisable();
}
