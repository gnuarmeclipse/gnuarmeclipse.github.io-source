---
layout: page
permalink: /developer/j-link-stm32-boards/
title: Using J-Link with the STM32 boards
author: Liviu Ionescu

date: 2015-09-10 18:31:00 +0300

---

This page explains how to build a cable to connect the J-Link to STM32 DISCOVERY and NUCLEO boards.

## Overview

As most vendors do, ST also designed the cheap STM32 DISCOVERY and NUCLEO boards to include an on-board programmer. The protocol used by this programmer is ST-LINK/V2, an ST protocol. Unfortunately ST does not provide a portable GDB server to support the ST-LINK/V2 protocol, and using these STM32 boards out of the box on GNU/Linux or macOS is not possible.

For a few limited tests, the OpenOCD plug-in can be used, but the reliability of OpenOCD is not appropriate for professional use.

Preferably the J-Link debug plug-in would be used, but, for costs reasons, ST did not provide the standard JTAG connector, so it is currently not possible to connect to these boards with an external J-Link probe.

## Convert the ST-LINK on-board into a J-Link

In a very inspired move to address this issue, SEGGER provided an upgrade path, and most of the ST bemo boards can now be converted to J-Link; please follow the SEGGER [Converting ST-LINK on-board into a J-Link](https://www.segger.com/jlink-st-link.html) page.

After the firmware upgrade, you'll be able to connect the J-Link GDB server via the existing board USB port. However, please note that not all J-Link features are available via this solution, which is somehow a J-Link Lite version.

For a fully featured J-Link solution, a little harware is required.

## The custom J-Link to ST cable

For those equipped with a soldering iron, it is relatively easy to adapt the existing 6-pin connector to J-Link.

The solution is a custom ribbon cable, to connect the 6-pin to the 20-pin J-Link, and a short strap to bring Vcc to pin 1 of the 6-pin connector, so that J-Link can detect the board is up and running.

The bill of materials includes:

-   a 6 wire ribbon cable, about 15 cm (6") long
-   a 6-pin 2.54mm (0.1") female, single raw, in-line connector, to match the STM board header
-   a 20-pin 2.54mm (0.1") female, dual raw (2x10), in-line connector, to match the J-Link male connector

Solder the ribbon cable to the 6-pin connector, and be sure you mark the first pin with a different colour, to later help you plug the connector in the proper position.

## The ST 6-pin SWD connector

The signals on this 6-pin are:

-   1 - Vcc → 1 (brown)
-   2 - JTCK/SWCLK → 9 (red)
-   3 - GND → any of 4,**6**,8,10,12,14,16,18,20 (orange)
-   4 - JTMS/SWDIO → 7 (yellow)
-   5 - NRST → 15 (green)
-   6 - SWO → 13 (blue)

## The J-Link 20-pin JTAG/SWD connector

The signals on the 20-pin are split into two groups, the even number pins are on one raw, and, except pin 2, all are connected to GND, and the odd number pins are:

-   1 - Viref → 1 (brown)
-   3 - nRST
-   5 - TDI
-   7 - TMS/SWDIO → 4 (yellow)
-   9 - TCK/SWCLK → 2 (red)
-   11 - RTCK
-   13 - TDO/SWO → 6 (blue)
-   15 - RESET → 5 (green)
-   17 - DBGQ
-   19 - 5V out
-   2 - NC
-   4 - GND
-   6 - GND → 3 (orange)
-   8,10,12,12,16,18,20 - GND

The correspondence between the two connectors is represented on each connector by the second number.

## The target detect strap

After building the ribbon cable, the ST board needs a strap to connect the pin 1 of the 6-pin connector to Vcc, to signal J-Link that the target board is present and powered.

## Jumpers

The ST boards have a pair of jumpers, that need to be installed, for the programming signals to be connected from the 6-pin connector to the target processor.

## Conclusion

The recommended solution is to upgrade the flash, and you'll be able to connect the J-Link GDB server via the existing board USB port. 

For those who need a full J-Link connection, with this cable it is possible to connect to the ST board with an external J-Link probe, to program the flash and run debugging sessions.
