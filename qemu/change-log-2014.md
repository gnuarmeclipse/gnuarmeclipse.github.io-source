---
layout: page
title: The 2014 QEMU Change Log
permalink: /qemu/change-log/2014/
---

## 2014 

### 2014-12-31 
* Merge branch 'master' into gnuarmeclipse-cortexm

### 2014-12-11 
* Pass semihosting exit code back to system (master)
* Add the "-semihosting-config" option (master)

### 2014-12-03 
* separate nsi file added for gnuarmeclipse
* mingw windows path updated to GNU ARM Eclipse/QEMU

### 2014-11-30 
* cortexm: qemu-gnuarmeclipse.nsi

### 2014-11-27 
* Merge branch 'master' into gnuarmeclipse
* registry keys changed to be automatically detected by plug-in

### 2014-11-25 
* cortexm: sam & xmc added

### 2014-11-24 
* cortexm: set default system_clock_scale = 80

### 2014-11-23 
* cortexm: tiva board added
* cortexm: olimex stm32-e407 instead of p407

### 2014-11-22 
* cortex-m: initial implementation
* cortexm: most STM32 boards defined
* cortexm: \*\_\[core\|mcu\|board\]\_init renames
* cortexm: Kinetis & LPC boards added

### 2014-11-20 
* -semihosting-config target=...,cmdline=...

### 2014-11-11 
* gnuarmeclipse-softmmu target added
* CONFIG_VERBOSE/SEMIHOSTING/BRANDING added 

### 2014-11-08 
* verbosity for monitor commands
* on mingw default to ipv4
* use inet_ntop() to get peer address
* do not use inet_ntop() on MinGW

### 2014-11-07 
* verbosity: >1 for Write, command line
* use BRANDING definition
* add mingw patches

### 2014-11-05 
* '-verbose' defined and checked

### 2014-11-03 
* branch created
* semihosting debug on stderr even in debug