---
layout: page
permalink: /templates/
title: Templates
author: Liviu Ionescu

date: 2015-09-11 22:35:00 +0300

---

## Quicklinks

If you know what this is all about and you just need to go to specific templates:

* [Cortex-M template][1]
* [STM32Fxx templates][2]
* [Kinetis KLxx templates][3]

## Overview

In addition to cross build and debugging support, GNU ARM Eclipse plug-ins also provide several C/C++ project templates, that generate ready to run projects.

These projects obviously are not full fledged applications, but provide a good starting point for writing such applications.

One of the main requirements is to build correctly, even if functionality is only sketchy.

## Install

The template plug-ins are installed using the same procedure as the other plug-ins:

* in the _Eclipse_ menu, go to **Help** → **Install New Software**
* select *Work with:* **GNU ARM Eclipse Plug-ins**
* extend the **GNU ARM C/C++ Cross Development Tools**
* be sure the desired **... Project Template** are selected

![Install the template plug-ins]({{ site.baseurl }}/assets/images/2014/02/InstallTemplatePlugins.png)

## C vs C++

Most of the GNU ARM Eclipse templates are available for both C and C++ projects. The first difference between the two is the extension of the main source file: it is **main.c** for C projects and **main.cpp** for C++ projects. The content is usually the same, but more elaborate versions are planned to better exemplify the use of C++.

**CMSIS**

After defining a minimum common hardware implementation in the Cortex-M core, to be implemented by all vendors, ARM also defined CMSIS (pronounced sim-sys) as a common software interface, to be used with all Cortex-M implementations. CMSIS stands for [Cortex Microcontroller Software Interface Standard](http://www.arm.com/products/processors/cortex-m/cortex-microcontroller-software-interface-standard.php) and consists of several components (CORE, DSP, RTOS, SVD).

The GNU ARM Eclipse plug-in uses the CMSIS-CORE code in all templates, as jointly provided by ARM and each vendor.

## Blinky vs Empty

Based on a long tradition among the embedded application developers, the first challenge when encountering a new board is to make it blink a LED. It doesn't seem much, but in fact there are many details that must fit together for this to work:

* the startup code must be functional
* the manufacturer CMSIS initialisations must set the desired clock
* the GPIO definitions/drivers must be available
* the memory map and the linker scripts must match the actual hardware
* eventualy the newlib printf() must be directed to an available device for viewing the trace messages

The **Blinky** templates do exactly this, take care of all these details. The observed functionality is relatively simple, the board blinks a LED with 1Hz. To exercise the interrupts, the time base is obtained with the SysTick configured at 1000Hz, with the delay() function counting ticks.

Once all details are understood, a real life application does not really need the code to blink the LED, but rather start with an empty slate. This is the purpose of the **Empty** templates, that provide the entire environment of the **Blinky** templates, but without any code in main().

## Project structure

Most generated projects share a common folders structure, similar to the following:

![Project structure]({{ site.baseurl }}/assets/images/2014/02/F4Project.png)


### Application code

The application code is located in the top level **src** and **include** folders. Add more files as required by your application.

### Linker scripts

The linker scripts are grouped in a **ldscripts** folder. For convenience, the definitions were split in separate files to define the memory map and the content of the sections, but any other structure is acceptable, just update the link configuration.

### Local libraries

Various libraries are grouped in the **system** folder. According to ARM specifications, the Cortex Microcontroller Software Interface Standard (CMSIS) is used, and all related definitions are grouped in the CMSIS folder.

## Available templates

### Generic templates

* [Cortex-M template][1]

### ST Micro templates

* STM32F0xx template
* STM32F1xx template
* STM32F2xx template
* STM32F3xx template
* [STM32F4xx template][2]

### Freescale templates

* [Kinetis KLxx templates][3]
* Processor Expert template

Adding new templates

Considering the large number of existing Cortex-M implementations, it is not realistic to expect templates for all of them.

If you use a processor that has no template yet, and want to contribute to this project, the first step is to create a project that mimics the Blinky variant of an existing template. This means you need to have the CMSIS specific files publicly available (yes, this seems strange, but some manufacturers do not provide these files) and eventually the standard peripheral library.

If you have such a project, you can register a new feature request and attach your project to the request, for us to review and eventually use as a base for a new template.

 [1]: {{ site.baseurl }}/templates/cortexm/ "Generic Cortex-M template"
 [2]: {{ site.baseurl }}/templates/stm32f/ "STM32Fxx templates"
 [3]: {{ site.baseurl }}/templates/klxx/ "KLxx template"
