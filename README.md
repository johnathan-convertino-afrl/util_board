# AFRL Util Helper Functions
### Various reusable funtions for verilog
---

   author: Jay Convertino   
   
   date: 2022.08.10  
   
   details: Various helper funtions.   
   
   license: MIT   
   
---

### IP USAGE
#### INSTRUCTIONS

##### Dependency include for fusesoc core file
``` 
  dep:
    depend:
      - AFRL:utility:helper:1.0.0
```
##### Verilog include the files needed in the module you are using the function in (see src below for list of files and funtions).
```
`include "util_helper_math.vh"
```

### COMPONENTS
#### SRC

* util_helper_math.vh ... functions written in C syntax for clarification.
  * int clogb2(value) ... will return the log base 2 of the argument (value), rounded up to the nearest integer.
  * int cmax(max1, max2) ... will return the number that is the max of the arguments max1, max2.
  * int abs(value) ... will return the absolute value of a number.
  
#### TB

* tb_helper.v
  
### fusesoc

* fusesoc_info.core created.
* Simulation uses icarus to run data through the core.

#### TARGETS

* RUN WITH: (fusesoc run --target=sim VENDER:CORE:NAME:VERSION)
  - default (for IP integration builds)
  - sim
