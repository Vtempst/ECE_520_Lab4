# ECE_520_Lab4

## Overview

The lab introduced designing and implementing a custom AXI-4Lite peripheral into the Zynq System-on-Chip (SOC) using Vivado and Vitis. The lab involved creating a 16-bit multiplier and integrating a single-clock FIFO into separate AXI4-Lite IP cores. The peripherals were connected to the Zynq Processing System (PS) and the PS was able to communicate with the programmable logic (PL) through memory-mapped registers.

## Design Summary

The design consisted of two custom AXI4-Lite peripherals: a 16-bit mulitplier and a single-clock FIFO. The multiplier accepts two 16-bit unsigned numbers and produces a 32-bit product. The parameters of the FIFO are: 16 bits width, 32 words depth, 1 threshold for almost empty, 31 threshold for almost full, and 1 for read latency. The FIFO consisted of control registers for resetting, writing, and reading data. The FIFO also contains status registers that showcased when the FIFO is empty, full, almost empty, or almost full. There are also additional status registers such as valid and data count. The FIFO used the Block Memory Generator IP for storage.

The 16-bit multiplier was verified through behavorial simulation. Similarly, FIFO was previously verified through behavior simulation in previous lab as well. Vivado generated an IP template which is used to create a custom AXI-4 Lite peripheral. The registers were defined and managed before the multiplier and FIFO were packaged. After packaging the multiplier and FIFO, they were added to the Vivado Block Design and connected to the Zynq PS using an AXI interconnect. An HDL wrapper was created that translated the block diagram into synthesizable code which Vivado used to generate a bitstream. The hardware files were exported as an XSA file so the design can be imported into Vitis. Lastly, a C program was written that read the custom IP's registers.

## Verification

The C program generated 100 multiplication results by squaring the integers from 1 through 100 and storing the result into the FIFO. The FIFO was tested using its reset, write, and read operations as well as displaying the status flags.

The initial test verified that the FIFO reset was correct. The FIFO data count was zero, the empty and almost empty flags were asserted while the full and almost-full flags were cleared.

During write operations, batches of 32 numbers were written into the FIFO and once reached its maximum capacity, it correctly asserted the full and almost-full flags.

After each batch was read, the FIFO data count was zero and the empty and almost-empty flags were asserted again. The values retrieved were compared to the expected multiplication results and showed whether the read operation was success.

The results was that 100 values were written, 100 values read, and zero errors which demonstrated a successful communication between the multiplier, FIFO, and Zynq PS through AXI4-lite. The results also verified that the FIFO maintained the correct oder of data during write and read operations.

Reset:<br>
<img src="images/ResetFIFO.png" width="200">

Write 1-32:<br>
<img src="images/Write1.png" width="200">

Read 1-32:<br>
<img src="images/Read1.png" width="200">

Write 33-64:<br>
<img src="images/Write2.png" width="200">

Read 33-64:<br>
<img src="images/Read2.png" width="200">

Write 65-96:<br>
<img src="images/Write3.png" width="200">

Read 65-96:<br>
<img src="images/Read3.png" width="200">

Final Write/Read 97-100 and Results:<br>
<img src="images/FinalWriteReadandResults.png" width="200">

## Known Issues or Limitations

No known issues or limitations

## References

None