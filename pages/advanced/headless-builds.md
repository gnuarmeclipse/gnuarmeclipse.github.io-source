---
layout: page
permalink: /advanced/headless-builds/
title: Scriptable builds from the command line
author: Liviu Ionescu

date: 2015-09-11 20:32:00 +0300

---

## Purpose

In modern development environments it is almost mandatory to be able to run the builds from automated servers, like the Hudson continuous integration framework.

## Headless build application

To support this, Eclipse CDT provides a headless build feature, implemented as an application to be executed from the command line:

	$ eclipse \
	--launcher.suppressErrors \
	-nosplash \
	-application org.eclipse.cdt.managedbuilder.core.headlessbuild \
	-data /path/to/workspace \
	-cleanBuild "project/configuration"


The result of the above command is a clean build of the given project configuration from the given workspace.

Warning: special care must be observed when entering the path to workspace, since Eclipse will not complain if the workspace does not exist, instead it will create a new one at the given location and then most probably complain that the project is missing:

	WARNING: No Project matched "t9cpp". Skipping...


## Options list

There are many options specific to the headless build application:

	* Import projects:                       -import     {[uri:/]/path/to/project}
	* Import all projects in the tree:       -importAll  {[uri:/]/path/to/projectTreeURI}
	* Build projects / the workspace:        -build      {project_name_reg_ex/config_name_reg_ex | all}
	* Clean build projects / the workspace:  -cleanBuild {project_name_reg_ex/config_name_reg_ex | all}
	* Add Include path to build:             -I          {include_path}
	* Add Include file to build:             -include    {include_file}
	* Add preprocessor define to build:      -D          {prepoc_define}
	* Replace environment variable in build: -E          {var=value}
	* Append environment variable to build:  -Ea         {var=value}
	* Prepend environment variable to build: -Ep         {var=value}
	* Remove environment variable in build:  -Er         {var}
	* Replace a tool option value:           -T          {toolid} {optionid=value}
	* Append to a tool option value:         -Ta         {toolid} {optionid=value}
	* Prepend to a tool option value:        -Tp         {toolid} {optionid=value}
	* Remove a tool option:                  -Tr         {toolid} {optionid=value}

## Toolchain path

To be relevant, continuous integration practices usually require clean builds in a fresh workspace, and storing the toolchain path in the workspace is no longer possible. This is no a real problem, since the toolchain path can be easily passed via the environment, as for any script.

## Build tools path

On Windows, in addition to the toolchain path, the environment shall also be used to define the path to the build tools (make/rm), otherwise the build will fail.

## Example

Below are selections from an actual example of a headless build:

	ilg-mbp:GNU ARM Eclipse ilg$ Eclipses/eclipse-4.4-cdt-test/eclipse --launcher.suppressErrors -nosplash -data "/Users/ilg/My Files/MacBookPro Projects/GNU ARM Eclipse/Eclipse Workspaces/runtime-EclipseGNUARMPlug-in-44" -application org.eclipse.cdt.managedbuilder.core.headlessbuild -cleanBuild "t8cpp"
	11:54:40 **** Clean-only build of configuration Debug for project t8cpp ****
	make clean
	rm -rf  t8cpp.siz  ./system/src/stm32f4-hal/stm32f4xx_hal.o ./system/src/stm32f4-hal/stm32f4xx_hal_cortex.o ./system/src/stm32f4-hal/stm32f4xx_hal_flash.o ./system/src/stm32f4-hal/stm32f4xx_hal_flash_ex.o ./system/src/stm32f4-hal/stm32f4xx_hal_gpio.o ./system/src/stm32f4-hal/stm32f4xx_hal_iwdg.o ./system/src/stm32f4-hal/stm32f4xx_hal_pwr.o ./system/src/stm32f4-hal/stm32f4xx_hal_pwr_ex.o ./system/src/stm32f4-hal/stm32f4xx_hal_rcc.o ./system/src/stm32f4-hal/stm32f4xx_hal_rcc_ex.o  ./system/src/newlib/_cxx.o ./system/src/newlib/_exit.o ./system/src/newlib/_sbrk.o ./system/src/newlib/_startup.o ./system/src/newlib/_syscalls.o ./system/src/newlib/_write.o ./system/src/newlib/assert.o  ./system/src/diag/Trace.o ./system/src/diag/trace_impl.o  ./system/src/cortexm/_initialize_hardware.o ./system/src/cortexm/_reset_hardware.o ./system/src/cortexm/exception_handlers.o  ./system/src/cmsis/system_stm32f4xx.o ./system/src/cmsis/vectors_stm32f4xx.o  ./src/BlinkLed.o ./src/Timer.o ./src/_initialize_hardware.o ./src/main.o  ./system/src/stm32f4-hal/stm32f4xx_hal.d ./system/src/stm32f4-hal/stm32f4xx_hal_cortex.d ./system/src/stm32f4-hal/stm32f4xx_hal_flash.d ./system/src/stm32f4-hal/stm32f4xx_hal_flash_ex.d ./system/src/stm32f4-hal/stm32f4xx_hal_gpio.d ./system/src/stm32f4-hal/stm32f4xx_hal_iwdg.d ./system/src/stm32f4-hal/stm32f4xx_hal_pwr.d ./system/src/stm32f4-hal/stm32f4xx_hal_pwr_ex.d ./system/src/stm32f4-hal/stm32f4xx_hal_rcc.d ./system/src/stm32f4-hal/stm32f4xx_hal_rcc_ex.d  ./system/src/newlib/_exit.d ./system/src/newlib/_sbrk.d ./system/src/newlib/_startup.d ./system/src/newlib/_syscalls.d ./system/src/newlib/_write.d ./system/src/newlib/assert.d  ./system/src/diag/Trace.d ./system/src/diag/trace_impl.d  ./system/src/cortexm/_initialize_hardware.d ./system/src/cortexm/_reset_hardware.d ./system/src/cortexm/exception_handlers.d  ./system/src/cmsis/system_stm32f4xx.d ./system/src/cmsis/vectors_stm32f4xx.d  ./src/_initialize_hardware.d  t8cpp.hex  ./system/src/newlib/_cxx.d  ./src/BlinkLed.d ./src/Timer.d ./src/main.d  t8cpp.elf
	11:54:40 Build Finished (took 72ms)
	11:54:41 **** Clean-only build of configuration Release for project t8cpp ****
	make clean
	rm -rf  t8cpp.siz  ./system/src/stm32f4-hal/stm32f4xx_hal.o ./system/src/stm32f4-hal/stm32f4xx_hal_cortex.o ./system/src/stm32f4-hal/stm32f4xx_hal_flash.o ./system/src/stm32f4-hal/stm32f4xx_hal_flash_ex.o ./system/src/stm32f4-hal/stm32f4xx_hal_gpio.o ./system/src/stm32f4-hal/stm32f4xx_hal_iwdg.o ./system/src/stm32f4-hal/stm32f4xx_hal_pwr.o ./system/src/stm32f4-hal/stm32f4xx_hal_pwr_ex.o ./system/src/stm32f4-hal/stm32f4xx_hal_rcc.o ./system/src/stm32f4-hal/stm32f4xx_hal_rcc_ex.o  ./system/src/newlib/_cxx.o ./system/src/newlib/_exit.o ./system/src/newlib/_sbrk.o ./system/src/newlib/_startup.o ./system/src/newlib/_syscalls.o ./system/src/newlib/_write.o ./system/src/newlib/assert.o  ./system/src/diag/Trace.o ./system/src/diag/trace_impl.o  ./system/src/cortexm/_initialize_hardware.o ./system/src/cortexm/_reset_hardware.o ./system/src/cortexm/exception_handlers.o  ./system/src/cmsis/system_stm32f4xx.o ./system/src/cmsis/vectors_stm32f4xx.o  ./src/BlinkLed.o ./src/Timer.o ./src/_initialize_hardware.o ./src/main.o  ./system/src/stm32f4-hal/stm32f4xx_hal.d ./system/src/stm32f4-hal/stm32f4xx_hal_cortex.d ./system/src/stm32f4-hal/stm32f4xx_hal_flash.d ./system/src/stm32f4-hal/stm32f4xx_hal_flash_ex.d ./system/src/stm32f4-hal/stm32f4xx_hal_gpio.d ./system/src/stm32f4-hal/stm32f4xx_hal_iwdg.d ./system/src/stm32f4-hal/stm32f4xx_hal_pwr.d ./system/src/stm32f4-hal/stm32f4xx_hal_pwr_ex.d ./system/src/stm32f4-hal/stm32f4xx_hal_rcc.d ./system/src/stm32f4-hal/stm32f4xx_hal_rcc_ex.d  ./system/src/newlib/_exit.d ./system/src/newlib/_sbrk.d ./system/src/newlib/_startup.d ./system/src/newlib/_syscalls.d ./system/src/newlib/_write.d ./system/src/newlib/assert.d  ./system/src/diag/Trace.d ./system/src/diag/trace_impl.d  ./system/src/cortexm/_initialize_hardware.d ./system/src/cortexm/_reset_hardware.d ./system/src/cortexm/exception_handlers.d  ./system/src/cmsis/system_stm32f4xx.d ./system/src/cmsis/vectors_stm32f4xx.d  ./src/_initialize_hardware.d  t8cpp.hex  ./system/src/newlib/_cxx.d  ./src/BlinkLed.d ./src/Timer.d ./src/main.d  t8cpp.elf

	11:54:41 Build Finished (took 55ms)

	11:54:42 **** Build of configuration Release for project t8cpp ****
	make all
	Building file: ../system/src/stm32f4-hal/stm32f4xx_hal.c
	Invoking: Cross ARM C Compiler
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wpadded -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DSTM32F407xx -DUSE_HAL_DRIVER -DHSE_VALUE=8000000 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/stm32f4-hal" -std=gnu11 -Wmissing-prototypes -Wstrict-prototypes -Wbad-function-cast -MMD -MP -MF"system/src/stm32f4-hal/stm32f4xx_hal.d" -MT"system/src/stm32f4-hal/stm32f4xx_hal.o" -c -o "system/src/stm32f4-hal/stm32f4xx_hal.o" "../system/src/stm32f4-hal/stm32f4xx_hal.c"
	Finished building: ../system/src/stm32f4-hal/stm32f4xx_hal.c

	... many more ...
	Building file: ../src/main.cpp
	Invoking: Cross ARM C++ Compiler
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wpadded -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DSTM32F407xx -DUSE_HAL_DRIVER -DHSE_VALUE=8000000 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/stm32f4-hal" -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -Wabi -Wctor-dtor-privacy -Wnoexcept -Wnon-virtual-dtor -Wstrict-null-sentinel -Wsign-promo -MMD -MP -MF"src/main.d" -MT"src/main.o" -c -o "src/main.o" "../src/main.cpp"
	Finished building: ../src/main.cpp

	Building target: t8cpp.elf
	Invoking: Cross ARM C++ Linker
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wpadded -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -T mem.ld -T libs.ld -T sections.ld -nostartfiles -Xlinker --gc-sections -L"../ldscripts" -Wl,-Map,"t8cpp.map" --specs=nano.specs -o "t8cpp.elf"  ./system/src/stm32f4-hal/stm32f4xx_hal.o ./system/src/stm32f4-hal/stm32f4xx_hal_cortex.o ./system/src/stm32f4-hal/stm32f4xx_hal_flash.o ./system/src/stm32f4-hal/stm32f4xx_hal_flash_ex.o ./system/src/stm32f4-hal/stm32f4xx_hal_gpio.o ./system/src/stm32f4-hal/stm32f4xx_hal_iwdg.o ./system/src/stm32f4-hal/stm32f4xx_hal_pwr.o ./system/src/stm32f4-hal/stm32f4xx_hal_pwr_ex.o ./system/src/stm32f4-hal/stm32f4xx_hal_rcc.o ./system/src/stm32f4-hal/stm32f4xx_hal_rcc_ex.o  ./system/src/newlib/_cxx.o ./system/src/newlib/_exit.o ./system/src/newlib/_sbrk.o ./system/src/newlib/_startup.o ./system/src/newlib/_syscalls.o ./system/src/newlib/_write.o ./system/src/newlib/assert.o  ./system/src/diag/Trace.o ./system/src/diag/trace_impl.o  ./system/src/cortexm/_initialize_hardware.o ./system/src/cortexm/_reset_hardware.o ./system/src/cortexm/exception_handlers.o  ./system/src/cmsis/system_stm32f4xx.o ./system/src/cmsis/vectors_stm32f4xx.o  ./src/BlinkLed.o ./src/Timer.o ./src/_initialize_hardware.o ./src/main.o   
	Finished building target: t8cpp.elf

	Invoking: Cross ARM GNU Create Flash Image
	arm-none-eabi-objcopy -O ihex "t8cpp.elf"  "t8cpp.hex"
	Finished building: t8cpp.hex

	Invoking: Cross ARM GNU Print Size
	arm-none-eabi-size --format=berkeley "t8cpp.elf"
	   text	   data	    bss	    dec	    hex	filename
	   5928	    112	    284	   6324	   18b4	t8cpp.elf
	Finished building: t8cpp.siz


	11:54:44 Build Finished (took 2s.732ms)

	11:54:44 **** Clean-only build of configuration Debug for project t8cpp ****
	make clean
	rm -rf  t8cpp.siz  ./system/src/stm32f4-hal/stm32f4xx_hal.o ./system/src/stm32f4-hal/stm32f4xx_hal_cortex.o ./system/src/stm32f4-hal/stm32f4xx_hal_flash.o ./system/src/stm32f4-hal/stm32f4xx_hal_flash_ex.o ./system/src/stm32f4-hal/stm32f4xx_hal_gpio.o ./system/src/stm32f4-hal/stm32f4xx_hal_iwdg.o ./system/src/stm32f4-hal/stm32f4xx_hal_pwr.o ./system/src/stm32f4-hal/stm32f4xx_hal_pwr_ex.o ./system/src/stm32f4-hal/stm32f4xx_hal_rcc.o ./system/src/stm32f4-hal/stm32f4xx_hal_rcc_ex.o  ./system/src/newlib/_cxx.o ./system/src/newlib/_exit.o ./system/src/newlib/_sbrk.o ./system/src/newlib/_startup.o ./system/src/newlib/_syscalls.o ./system/src/newlib/_write.o ./system/src/newlib/assert.o  ./system/src/diag/Trace.o ./system/src/diag/trace_impl.o  ./system/src/cortexm/_initialize_hardware.o ./system/src/cortexm/_reset_hardware.o ./system/src/cortexm/exception_handlers.o  ./system/src/cmsis/system_stm32f4xx.o ./system/src/cmsis/vectors_stm32f4xx.o  ./src/BlinkLed.o ./src/Timer.o ./src/_initialize_hardware.o ./src/main.o  ./system/src/stm32f4-hal/stm32f4xx_hal.d ./system/src/stm32f4-hal/stm32f4xx_hal_cortex.d ./system/src/stm32f4-hal/stm32f4xx_hal_flash.d ./system/src/stm32f4-hal/stm32f4xx_hal_flash_ex.d ./system/src/stm32f4-hal/stm32f4xx_hal_gpio.d ./system/src/stm32f4-hal/stm32f4xx_hal_iwdg.d ./system/src/stm32f4-hal/stm32f4xx_hal_pwr.d ./system/src/stm32f4-hal/stm32f4xx_hal_pwr_ex.d ./system/src/stm32f4-hal/stm32f4xx_hal_rcc.d ./system/src/stm32f4-hal/stm32f4xx_hal_rcc_ex.d  ./system/src/newlib/_exit.d ./system/src/newlib/_sbrk.d ./system/src/newlib/_startup.d ./system/src/newlib/_syscalls.d ./system/src/newlib/_write.d ./system/src/newlib/assert.d  ./system/src/diag/Trace.d ./system/src/diag/trace_impl.d  ./system/src/cortexm/_initialize_hardware.d ./system/src/cortexm/_reset_hardware.d ./system/src/cortexm/exception_handlers.d  ./system/src/cmsis/system_stm32f4xx.d ./system/src/cmsis/vectors_stm32f4xx.d  ./src/_initialize_hardware.d  t8cpp.hex  ./system/src/newlib/_cxx.d  ./src/BlinkLed.d ./src/Timer.d ./src/main.d  t8cpp.elf


	11:54:44 Build Finished (took 56ms)

	11:54:45 **** Build of configuration Debug for project t8cpp ****
	make all
	Building file: ../system/src/stm32f4-hal/stm32f4xx_hal.c
	Invoking: Cross ARM C Compiler
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wpadded -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g3 -DDEBUG -DUSE_FULL_ASSERT -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DSTM32F407xx -DUSE_HAL_DRIVER -DHSE_VALUE=8000000 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/stm32f4-hal" -std=gnu11 -Wmissing-prototypes -Wstrict-prototypes -Wbad-function-cast -MMD -MP -MF"system/src/stm32f4-hal/stm32f4xx_hal.d" -MT"system/src/stm32f4-hal/stm32f4xx_hal.o" -c -o "system/src/stm32f4-hal/stm32f4xx_hal.o" "../system/src/stm32f4-hal/stm32f4xx_hal.c"
	Finished building: ../system/src/stm32f4-hal/stm32f4xx_hal.c

	... many more ...
	Building file: ../src/main.cpp
	Invoking: Cross ARM C++ Compiler
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wpadded -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g3 -DDEBUG -DUSE_FULL_ASSERT -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DSTM32F407xx -DUSE_HAL_DRIVER -DHSE_VALUE=8000000 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/stm32f4-hal" -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -Wabi -Wctor-dtor-privacy -Wnoexcept -Wnon-virtual-dtor -Wstrict-null-sentinel -Wsign-promo -MMD -MP -MF"src/main.d" -MT"src/main.o" -c -o "src/main.o" "../src/main.cpp"
	Finished building: ../src/main.cpp

	Building target: t8cpp.elf
	Invoking: Cross ARM C++ Linker
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wpadded -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g3 -T mem.ld -T libs.ld -T sections.ld -nostartfiles -Xlinker --gc-sections -L"../ldscripts" -Wl,-Map,"t8cpp.map" --specs=nano.specs -o "t8cpp.elf"  ./system/src/stm32f4-hal/stm32f4xx_hal.o ./system/src/stm32f4-hal/stm32f4xx_hal_cortex.o ./system/src/stm32f4-hal/stm32f4xx_hal_flash.o ./system/src/stm32f4-hal/stm32f4xx_hal_flash_ex.o ./system/src/stm32f4-hal/stm32f4xx_hal_gpio.o ./system/src/stm32f4-hal/stm32f4xx_hal_iwdg.o ./system/src/stm32f4-hal/stm32f4xx_hal_pwr.o ./system/src/stm32f4-hal/stm32f4xx_hal_pwr_ex.o ./system/src/stm32f4-hal/stm32f4xx_hal_rcc.o ./system/src/stm32f4-hal/stm32f4xx_hal_rcc_ex.o  ./system/src/newlib/_cxx.o ./system/src/newlib/_exit.o ./system/src/newlib/_sbrk.o ./system/src/newlib/_startup.o ./system/src/newlib/_syscalls.o ./system/src/newlib/_write.o ./system/src/newlib/assert.o  ./system/src/diag/Trace.o ./system/src/diag/trace_impl.o  ./system/src/cortexm/_initialize_hardware.o ./system/src/cortexm/_reset_hardware.o ./system/src/cortexm/exception_handlers.o  ./system/src/cmsis/system_stm32f4xx.o ./system/src/cmsis/vectors_stm32f4xx.o  ./src/BlinkLed.o ./src/Timer.o ./src/_initialize_hardware.o ./src/main.o   
	Finished building target: t8cpp.elf

	Invoking: Cross ARM GNU Create Flash Image
	arm-none-eabi-objcopy -O ihex "t8cpp.elf"  "t8cpp.hex"
	Finished building: t8cpp.hex

	Invoking: Cross ARM GNU Print Size
	arm-none-eabi-size --format=berkeley "t8cpp.elf"
	   text	   data	    bss	    dec	    hex	filename
	   9607	    120	    420	  10147	   27a3	t8cpp.elf
	Finished building: t8cpp.siz


	11:54:49 Build Finished (took 4s.561ms)

	ilg-mbp:GNU ARM Eclipse ilg$

Note: the order of the builds and the rule dictating when to clean and when to build is not exactly obvious, and sometimes you may get different builds than you expect, but generally you can manage to build what you need.
