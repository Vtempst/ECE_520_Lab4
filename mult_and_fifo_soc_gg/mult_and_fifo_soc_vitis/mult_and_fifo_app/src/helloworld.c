/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <stdint.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"

// Multiplier AXI IP
#define MULT_BASE_ADDR (0x43C00000)
#define A_REG_ADDR (MULT_BASE_ADDR + 0x00)
#define B_REG_ADDR (MULT_BASE_ADDR + 0x04)
#define P_REG_ADDR (MULT_BASE_ADDR + 0x08)

// FIFO AXI IP
#define FIFO_BASE_ADDR (0x43C10000)

#define FPGA_REV_REG_ADDR   (FIFO_BASE_ADDR + 0x00)
#define FIFO_RST_REG_ADDR   (FIFO_BASE_ADDR + 0x04)
#define WR_DATA_REG_ADDR    (FIFO_BASE_ADDR + 0x08)
#define RD_REQ_REG_ADDR     (FIFO_BASE_ADDR + 0x0C)
#define RD_DATA_REG_ADDR    (FIFO_BASE_ADDR + 0x10)
#define STATUS_REG_ADDR     (FIFO_BASE_ADDR + 0x14)
#define DATA_COUNT_REG_ADDR (FIFO_BASE_ADDR + 0x18)
#define CONFIG_REG_ADDR     (FIFO_BASE_ADDR + 0x1C)
#define THRESHOLD_REG_ADDR  (FIFO_BASE_ADDR + 0x20)

// FIFO Status Flags
#define STATUS_EMPTY        (1u << 0)
#define STATUS_FULL         (1u << 1)
#define STATUS_ALMOST_EMPTY (1u << 2)
#define STATUS_ALMOST_FULL  (1u << 3)
#define STATUS_RD_VALID     (1u << 4)

#define FIFO_DEPTH 32
#define NUM_WORDS 100
#define RD_TIMEOUT 1000

// Reset FIFO
void fifo_reset(void)
{
    Xil_Out32(FIFO_RST_REG_ADDR, 0x1);
}

// Push one value into FIFO
int fifo_push(uint32_t data)
{
    uint32_t status = Xil_In32(STATUS_REG_ADDR);

    if (status & STATUS_FULL)
    {
        return -1;
    }

    Xil_Out32(WR_DATA_REG_ADDR, data);
    return 0;
}

// Pop one value from FIFO
int fifo_pop(uint32_t *data)
{
	Xil_Out32(RD_REQ_REG_ADDR, 0x1);

	for (uint32_t t = 0; t < RD_TIMEOUT; t++)
	{
		if (Xil_In32(STATUS_REG_ADDR) & STATUS_RD_VALID)
		{
			*data = Xil_In32(RD_DATA_REG_ADDR);
			return 0;
		}
	}
	return -1;
}
uint32_t multiply(uint32_t a, uint32_t b)
{
    Xil_Out32(A_REG_ADDR, a);
    Xil_Out32(B_REG_ADDR, b);

    return Xil_In32(P_REG_ADDR);
}

// Display FIFO status flags
void fifo_status(void)
{
    uint32_t status = Xil_In32(STATUS_REG_ADDR);
    uint32_t count = Xil_In32(DATA_COUNT_REG_ADDR);

    xil_printf("Count: %d\n", (int)count);
    xil_printf("Empty: %d | Full: %d\n",(status & STATUS_EMPTY) != 0, (status & STATUS_FULL) != 0);
    xil_printf("Almost Empty: %d | Almost Full: %d\n",(status & STATUS_ALMOST_EMPTY) != 0,(status & STATUS_ALMOST_FULL) != 0);
}

int main(void)
{
    uint32_t a_val;
    uint32_t b_val;
    uint32_t p_val;
    uint32_t fifo_val;
    uint32_t expected;

    uint32_t rev_val = Xil_In32(FPGA_REV_REG_ADDR);
    uint32_t config_val = Xil_In32(CONFIG_REG_ADDR);
    uint32_t threshold_val = Xil_In32(THRESHOLD_REG_ADDR);

    int errors = 0;
    int write_index = 0;
    int read_index = 0;

    init_platform();

    xil_printf("ECE 520/L - Custom AXI IP Lab - Gil Gandionco \n");
    xil_printf("\nFPGA Revision: 0x%08x\n", rev_val);
    xil_printf("FIFO Parameters: WIDTH = %d, DEPTH = %d, READ_LATENCY = %d\n",
    			(config_val & 0xFF), ((config_val >> 8) & 0xFFFF), ((config_val >>24) & 0xF));
    xil_printf("FIFO Thresholds: ALMOST_EMPTY = %d, ALMOST_FULL = %d\n",
    			(threshold_val & 0xFFFF), ((threshold_val >> 16) & 0xFFFF));
    xil_printf("\nMultiplier + FIFO Test (1 to 100)\n");

    // TEST 1: Reset FIFO
    xil_printf("\nTest 1: FIFO Reset\n");

    fifo_reset();
    fifo_status();

    if (Xil_In32(DATA_COUNT_REG_ADDR) == 0 && (Xil_In32(STATUS_REG_ADDR) & STATUS_EMPTY))
    {
        xil_printf("FIFO Reset Passed\n");
    }
    else
    {
        xil_printf("FIFO Reset Failed\n");
        errors++;
    }

    // TEST 2: Multiply and store values in FIFO
    xil_printf("\nTest 2: Multiply and Store values in FIFO\r\n");

    while (read_index < NUM_WORDS)
    {
        // Write values until FIFO is full
    	xil_printf("\nWriting FIFO:\n");
        while (write_index < NUM_WORDS && !(Xil_In32(STATUS_REG_ADDR) & STATUS_FULL))
        {
        	a_val = write_index + 1;
        	b_val = write_index + 1;

            p_val = multiply(a_val, b_val);
            expected = a_val * b_val;

            // Verify multiplier
            if (p_val != expected)
            {
                xil_printf("Multiplier FAILED: %d x %d = %d, expected %d\n", (int)a_val, (int)b_val, (int)p_val, (int)expected);
                errors++;
            }

            // Store result into FIFO
            if (fifo_push(p_val) == 0)
            {
                xil_printf("Stored in [%d]: %d x %d = %d\n", write_index,(int)a_val, (int)b_val,(int)p_val);
                write_index++;
            }
        }

        xil_printf("\nFIFO after Writing:\n");
        fifo_status();

    	xil_printf("\nReading FIFO:\n");

        // Read values from FIFO
        while (read_index < write_index)
        {        	expected = (uint32_t)(read_index + 1) * (read_index + 1);

            if (fifo_pop(&fifo_val) == 0)
            {
                xil_printf("Read [%d]: %d | Expected: %d", read_index,(int)fifo_val,(int)expected);

                if (fifo_val == expected)
                {
                    xil_printf(" [Correct]\n");
                }
                else
                {
                    xil_printf(" [Wrong]\n");
                    errors++;
                }

                read_index++;
            }
            else
            {
                xil_printf("FAIL FIFO Read at index %d\n", read_index);
                errors++;
            }
        }

        xil_printf("\nFIFO After Reading:\n");
        fifo_status();
    }

    xil_printf("Total Values Written: %d\r\n", write_index);
    xil_printf("Total Values Read: %d\r\n", read_index);
    xil_printf("Total Errors: %d\r\n", errors);

    cleanup_platform();
    return 0;
}
