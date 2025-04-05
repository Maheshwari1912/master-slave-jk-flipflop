# master-slave-jk-flipflop

**Master-Slave JK Flip-Flop: Introduction**

A Master-Slave JK Flip-Flop is a type of sequential circuit built using two JK flip-flops connected in series—one acting as the Master and the other as the Slave. It eliminates the timing issues of a simple JK flip-flop by using two clock-triggered stages. This ensures that the output changes only on the falling edge of the clock, preventing race conditions.

**Working Principle**

The Master flip-flop is triggered on the rising edge (positive edge) of the clock.

The Slave flip-flop is triggered on the falling edge (negative edge) of the clock.

When the clock is high, the master captures the input (J and K), while the slave remains unchanged.

When the clock goes low, the slave takes the master's stored value and updates the final output.

This mechanism ensures that changes in output occur only at the clock's falling edge, preventing unwanted glitches.

**Truth Table of JK Flip-Flop**

J	   K	  Output (Q) (Next State)

0	   0   	No Change

0	   1	  Reset (Q = 0)

1	   0  	Set (Q = 1)

1	   1  	Toggle (Q = Q')

In the master-slave configuration, these changes appear only on the falling edge of the clock.

**Advantages**

✅ Solves race-around condition of basic JK Flip-Flop

✅ Reliable operation by ensuring output updates only on the falling edge

✅ Used in counters, shift registers, and control circuits

**simulation results:**

![image](https://github.com/user-attachments/assets/468097be-634d-4dd5-887e-920d38cc36bc)

**schematic:**
![image](https://github.com/user-attachments/assets/ced8e2e8-e176-4713-ba69-131ac483cb55)

