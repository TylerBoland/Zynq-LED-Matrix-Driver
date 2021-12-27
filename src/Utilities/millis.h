#pragma once

#include "xtime_l.h"
#include "xil_exception.h"
#include "xparameters.h"

// BASIC TIME KEEPING FUNCTIONS

#define COUNTS_PER_USECOND (XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ / (2U*1000000U))
#define COUNTS_PER_MILLISECOND (XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ / (2U*(1000000U*1000U)))

// RETURNS MILLISECONDS
u64 millis(){
	XTime _time;
	XTime_GetTime(&_time);
	return ((u64)(_time / (COUNTS_PER_SECOND  / 1000)));

}

// RETURNS MICROSECONDS
u64 micros(){
	XTime _time;
	XTime_GetTime(&_time);
	return ((u64)(_time / (COUNTS_PER_SECOND / 1000000)));
}
