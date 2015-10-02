---
layout: page
title: The 2015 QEMU Change Log
permalink: /qemu/change-log/

date: 2015-09-04 17:02:00 +03:00

---

## 2015

### 2015-08-04

* SDL event loop added (to fix responsivness & Windows bug)
* stm32f411re added
* nucleo-f411re board added
* version 2.3.50-201508041609-dev released
  * Supported boards:
    * Mapple - LeafLab Arduino-style STM32 microcontroller board (r5)
    * NUCLEO-F103RB -  ST Nucleo Development Board for STM32 F1 series
    * NUCLEO-F411RE - ST Nucleo Development Board for STM32 F4 series
    * NetduinoGo  - Netduino GoBus Development Board with STM32F4
    * NetduinoPlus2 - Netduino Development Board with STM32F4
    * OLIMEXINO-STM32 - Olimex Mapple (Arduino-like) Development Board
    * STM32-E407 - Olimex Development Board for STM32F407ZGT6
    * STM32-H103 - Olimex Header Board for STM32F103RBT6
    * STM32-P103 - Olimex Prototype Board for STM32F103RBT6
    * STM32-P107 - Olimex Prototype Board for STM32F107VCT6
    * STM32F4-Discovery - ST Discovery kit for STM32F407/417 lines
    * STM32F429I-Discovery - ST Discovery kit for STM32F429/439 lines
    * generic  - Generic Cortex-M board; use -mcu to define the device
  * Supported MCUs:
    * STM32F103RB
    * STM32F107VC
    * STM32F405RG
    * STM32F407VG
    * STM32F407ZG
    * STM32F411RE
    * STM32F429ZI
    * STM32L152RE

### 2015-08-01

* version 2.3.50-201508012000-dev released
  * Supported boards:
    * Mapple - LeafLab Arduino-style STM32 microcontroller board (r5)
    * NUCLEO-F103RB -  ST Nucleo Development Board for STM32 F1 series
    * NetduinoGo  - Netduino GoBus Development Board with STM32F4
    * NetduinoPlus2 - Netduino Development Board with STM32F4
    * OLIMEXINO-STM32 - Olimex Mapple (Arduino-like) Development Board
    * STM32-E407 - Olimex Development Board for STM32F407ZGT6
    * STM32-H103 - Olimex Header Board for STM32F103RBT6
    * STM32-P103 - Olimex Prototype Board for STM32F103RBT6
    * STM32-P107 - Olimex Prototype Board for STM32F107VCT6
    * STM32F4-Discovery - ST Discovery kit for STM32F407/417 lines
    * STM32F429I-Discovery - ST Discovery kit for STM32F429/439 lines
    * generic  - Generic Cortex-M board; use -mcu to define the device
  * Supported MCUs:
    * STM32F103RB
    * STM32F107VC
    * STM32F405RG
    * STM32F407VG
    * STM32F407ZG
    * STM32F429ZI
    * STM32L152RE
* stm32-nucleo-boards.c: NUCLEO-F103RB image added
* image for NUCLEO-F411RE added; board not enabled

### 2015-07-31
* gpio-led.c: orange led colour; more verbosity

### 2015-07-29
* cortexm-helper.c: fix cm_board_get_name() warning

### 2015-07-26
* gpio-led: led colour properly displayed in console
* stm32-gpio.c: is_enabled() implemented

### 2015-07-24
* cortexm-helper: board & mcu help
* cortexm-helper: cm_object_new_mcu(machine, name)
* gpio-led: x,y points to led center, not corner
* vl.c: 'Board not supported' error message + exit
* stm32 boards: pictures & LEDs added
* stm32 boards: use cm_board_get_desc()

### 2015-07-23
* STM32F4-Discovery.jpg, much shorter
* build: nsis, add images folder
* cortexm-helper: IMG_Init, plus more errors
* vl.c, oslib-win32.c: path in windows format
* tm32f4-discovery: temporary with both png & jpg
* sdl-x11.patch with lower case X
* cortexm-board.c added
* null-machine.c disabled
* Makefile.obj: ifeq ($(CONFIG_GNU_ARM_ECLIPSE),n)
* cpu.c: filter out non cortex-m cpus
* boards.h: mcu_device field added to machine
* machine.c: cast to void* for image_filename
* qemu-options.hx: -board, -mcu added
* vl.c: -board & -mcu parsed
* dtc & pixman modules removed

### 2015-07-20
* qemu.nsi: add share folder, for the images
* configure: revert to no x11 if not needed
* .mak: remove most unused devices
* cortexm-helper.c: error processing in sdl init

### 2015-07-18
* build: sdl patches added

### 2015-07-17
* images: STM32F4-Discovery.png added
* cortexm-helper: use IMG_Load for SDL_LoadBMP
* configure: sdl="yes"
* vl.c: default display type is NONE
* po: regenerated, only creation date updated
* cortexm-helper: reference to SDL_image.h
* cortexm-nvic: remove external system_clock_scale
* configure: add -lSDL_image to sdl_libs

### 2015-07-16
* vl.c: find_file QEMU_FILE_TYPE_IMAGES added
* gpio-led: add graphical blink support
* cortexm-helper: add board_image_init
* stm32-boards: F4-Discovery with graphical leds
* all other stm32 boards with null graphical

### 2015-07-08
* stm32f429xx added
* STM32F429I-Discovery board added

### 2015-07-07
* cortexm-helper: cortexm_bitband_init() prototype
* gpio-led: GPIOLEDInfo added
* STM32F4-Discovery with array of LEDInfo
* stm32 periph-bitband added
* stm32-pwr added
* cortexm-mcu: public cortexm_bitband_init()
* peripheral: verbose check address duplicate
* stm32-flash: f4 implemented
* stm32-rcc: f4 implemented
* cortexm-nvic: exit when attempting to enable FP
* gpio-led: active-low copied from Info
* make: configs moved to gnuarmeclipse
* stm32-pwr: implemented for F1 too
* stm32-rcc: conditional hserdy follows hsion
* cortex-mcu: Flash/RAM kB spelling
* stm32-mcus: stm32f405xx added
* stm32: all F10[37]/F40[57] boards defined
* doc: suported boards documented

### 2015-07-05
* stm32-gpio: f4 implemented, not yet tested.
* bitfield: register_bitfield_new_with_info()
* register: Info structure cleaned
* peripheral: peripheral_new_with_info() added
* stm32-gpio: use peripheral_new_with_info()
* stm32-rcc: use peripheral_new_with_info()
* register: move actions from info to setters
* stm32-gpio, stm32-rcc: use pre/post setters
* cortexm-helper: cm_object_property_add() added
* peripheral, register: create_auto_bits delayed
* bitfield: remove auto-bit
* stm32-gpio, -flash, -rcc: auto-bits as props
* stm32-gpio, -flash, -rcc: *_create_objects()

### 2015-07-04
* peripheral: pre/post actions moved to register
* stm32-gpio: use prev_value for odr
* cortexm-helper.h: peripheral_register_t added
* peripheral-register: no more custom types
* peripheral_register_new_with_info()
* peripheral: reset_mask added
* stm32-rcc: explicit &handler
* stm32-gpio: F1 callbacks renamed to stm32f1_*

### 2015-07-03
* peripheral-register: derived class functional
* stm32-flash: use derived acr type
* peripheral, register: pre-read, post-write added
* register: remove name from type_info
* register: copy writable bits to object
* stm32-rcc: use new objects; F1 & F1CL ok
* bitfield: width_bits replaces last_bit
* peripheral: is_enabled callback added
* register: raw_get/set/or/and
* stm32-gpio: reworked with objects
* cortexm-helper: + cm_object_get_child_by_name()
* bitfield: fix register_bitfield_read_value()
* stm32-rcc: stm32_rcc_update_clocks() use fields
* stm32-gpio: reference to rcc without u.

### 2015-07-02
* register & bitfield: crosslinks removed

### 2015-07-01
* peripheral-register: endianness implemented
* bitfield: cleared-by, set-by
* register: parent_read, parent_write added

### 2015-06-30
* peripheral, peripheral-register, register-bitfield
* peripheral-register: add size-bits
* stm32: add prefix, peripheral suffix
* cortexm & stm32: use "cortexm:" "stm32:" prefix
* cortexm-helper.c: cm_object_get_parent() added
* peripheral: register_size_bits added
* register & bitfield: inits, defaults fixed
* stm32-flash: use rw-mode
* cortexm-helper.h: _is_instance_of_typename added
* peripheral,register, bitfield: partly functional
* stm32-flash: functional with new infrastructure

### 2015-06-29
* cortexm-helper: prop-str() with null fixed
* bitfield: added
* register: updated from register32
* peripheral32: updated to create register objects
* stm32-flash: updated to use BitfieldInfo
* cortexm-helper: property-add added
* bitfield: renamed register-bitfield
* register: renamed peripheral-register
* peripheral32: renamed peripheral
* stm32-flash: use new peripheral & co
* stm32-xxx template: updated to use registers

### 2015-06-28
* build: fix compile errors on win
* stm32-rcc: remove conditional registration
* cortexm many: copyright cosmetics (dot)
* cortexm-nvic: register_types() name (plural)
* qom-qopbjects.c: log_mask for setter
* stm32-gpio/rcc; itm: node name 'mmio'
* register32: readable-bits, writable-bits rename
* cortexm-helper.c: support for parenting
* cortexm-mcu/stm32-mcu: restructure hierarchy
* template: register_types() name (plural)
* template: node name 'mmio'

### 2015-06-27
* cortexm: migrate qdev -> qom
* peripheral32 & register32 added
* template stm32-xxx: properties added
* monitor.c: verbosity moved up
* cortexm: more qom migration
* cortexm-mcu: always register reset callback
* cortexm-helper: add property setters
* stm32-olimex-boards use new helpers that exit

### 2015-06-25
* cortexm-helper: cm_board_greeting() moved here
* cortexm-helper: cm_prop_set_bool() added
* gpio-led: use set_string() to init led messages
* stm32-olimex-boards: all implemented
* memory.c: read trace added again
* stm32-rcc: f1cl functional
* cortex-mcu: *_do_unassigned_access_callback
* cortexm-mcu: mem sizes as uint32_t
* stm32f407 capabilities added
* stm32f407xx added

### 2015-06-24
* Merge branch 'target-arm.next' into gnuarmeclipse-dev
* template: remove constructor

### 2015-06-22
* cortexm-helper.h added
* cortexm-nvic added
* cortexm-mcu: use new NVIC
* stm32-mcu(s) use realize() & reset() helpers
* qdev_class_realize() added to cortexm-helper
* cortexm-nvic: use parent_reset
* stm32-mcus: use qdev_class_realize()
* stm32-mcu: group parent definitions in header
* stm32-gpio-led removed
* cortexm-helper.h: add DEFINE_PROP_CONST_STRING
* cortexm-mcu, stm32-mcu & stm32-mcus: constructor
* armv7m-itm renamed cortexm-itm
* cortexm-itm: updated to new structure
* cortexm-helper: more defs from cortexm-mcu
* gpio-led: move PROP_* defs to cortexm-helper.h
* stm32_sys_bus_device/stm32-gpio/stm32-rcc/stm32-flash: updated to new structure
* qom & qdev: log property settings

### 2015-06-21
* arm-semi.c: validate cmdline
* add --image
* cortexm-mcu: inits starting from cpu_model
* cortexm-mcu: comment out old bootinfo patch
* stm32-h103 board no longer experimental

### 2015-06-20
* Merge branch 'target-arm.next' into gnuarmeclipse-dev

### 2015-06-19
* rom_reset & cpu_reset: qemu_log_functio_name()
* stm32-capabilities: gpiog, to be used by L1
* cortexm-mcu.c: comments added

### 2015-06-17
* /cortexm container added; nvic & itm inside
* /stm32 container; rcc, flash, gpio[%c] in
* generic-gpio-led non-abstract
* gpio-led files renamed without generic
* gpio-led: references to gpio-led.h updated
* qdev-properties: qdev_prop_set_bool() added
* stm32-mcu: create_gpio static
* stm32-gpio-led.o removed from build
* gpio-led: use properties to configure
* stm32-olimex-boards: h103 uses new gpio-led
* gpio-led.h: remove Info structure
* cortexm capabilities further split
* stm32: add F2, F3, L1 families
* fix qemu formatting

### 2015-06-16
* generic-gpio-led: logic moved out of realize()
* stm32-gpio-led: more comments added

### 2015-06-15
* stm32-mcu: alias rcc hse/lse properties
* stm32-mcus: use capabilities table
* stm32-common.h renamed stm32-capabilities.h
* stm32-capabilities guard macros updated
* stm32-mcu restructure

### 2015-06-14
* capabilities: remove .device_name
* stm32 capabilities separate from cm capabilities
* parent_realize: with object_class_by_name

### 2015-06-13
* cortexm-mcu: marked as abstract
* generic & stm32-gpio-led: added
* stm32-olimex-boards: h103 use stm32-gpio-led
* stm32.h renamed stm32-mcus.h
* cortexm & stm: define construct() virtual
* stm32 & generic-led use constructors

### 2015-06-12
* stm32: add reference to RCC in GPIO
* stm32-olimex-boards: led message with parenthesis

### 2015-06-11
* cortexm helper, with cpu_ and qdev_ functions
* cortexm & stm32: inits moved away from realize()
* cortexm.h renamed cortexm-mcu.h
* stm32-mcu: use qdev-create()
* stm32-mcu: add stm32_mcu_get_gpio_dev()
* stm32-olimex-boards.c: add h103 green led

### 2015-06-10
* qdev: qdev_realize() added
* stm32-mcu: get_rcc_dev() added as inline
* stm32: vl capabilities; hsi & lsi freq
* stm32-mcu: add hsi-freq-hz & lsi-freq-hz props
* stm32-mcus: stm32f103 define hsi & lsi
* h103: set hse & lse props
* stm32-rcc: update clock functional
* cortexm-mcu: properties *-size-kb renamed
* gnuameclipse/docs: folder added
* cortexm & stm32: callbacks suffixed
* armv7m-itm.* renamed with dash
* stm32 gpio with irqs

### 2015-06-09
* cpu.c: log MSP & PC
* stm32-xxx template renamed
* memory: log skip ITM
* sysbus: log sysbus_mmio_map_common() calls
* stm32-rcc & flash: increase size to 0x400
* armv7m-itm: cosmetics in size & addr
* stm32-gpio: added
* stm32-mcu: include children gpio objects
* stm32-xxx template inspired from gpio

### 2015-06-08
* log: "trace_mr" added
* loader.c: add verbosity from loaded segments
* cortexm-mcu: split  regions_create and reset
* stm32-mcu: override regions_create
* memory.c: add verbosity to memory regions
* monitor: limit verbosity to gdb instance
* monitor: readline_update emptied
* stm32-mcu extracted; dash names
* rename stm32 peripheral .c files
* stm32-mcu.h split from stm32.h
* loader: make rom_reset public
* cortexm: do a rom_reset() before cpu_reset()

### 2015-06-06
* armv7m_itm.[ch] - object renamed armv7m-itm
* stm32 rcc & flash devices added to stm32 mcu

### 2015-06-04
* licenses updated to GPL
* cortexm boards: cortexm_board_greeting() simplified
* cortexm: cortexm_mcu_init()
* cortexm: reformat with spaces instead of tabs
* cortexm: display_model added to state
* Beckus original code added from 8d3b35e

### 2015-06-03
* armv7m_itm added
* cortexm: use 'realize'; construct ITM object
* stm32: add stm32-mcu object
* armv7m_nvic: add log trace

### 2015-06-02
* LOG_TRACE added to log
* verbosity_level: check condition >=

### 2015-06-01
* sysemu.h: verbosity_t enum added
* cortexm.c: configurable bitband_init()
* verbosity.h as separate header
* stm32_mcus & stm32_boards updated for new framework

### 2015-05-31
* cortexm: new cortexm-mcu type added

### 2015-05-29
* cortexm: restructure core_init()

### 2015-05-12
* check EACCES to avoid exiting with wrong config path

### 2015-05-12
* strrchr & QEMU_WORDSIZE

### 2015-04-27
* Merge branch 'master' into gnuarmeclipse-dev

### 2015-04-14
* semihosting-cmdline must be the last one

### 2015-04-13
* arm semi: stderr goes to stderr.

### 2015-04-09
* updated for Docker; win64 still not functional

### 2015-04-05
* build: remove reference to bootstrap

### 2015-04-03
* release 2.2.92-20150404*-dev
* build: update Debian prerequisites

### 2015-04-03
* -semihosting-cmdline added
* big cleanup

### 2015-04-02
* configure defaults without bz2 and usb
* build-qemu.sh functional on all platforms

### 2015-04-01
* win32/64 builds mostly static
* linux build ok; pixman library added; all static

### 2015-03-31
* win32/64 build pass & shows version

### 2015-03-28
* win32/64: zlib & iconv added to build

### 2015-03-26
* osx build ok
* kinetis header redundancy fixed
* debian 64/32-bit build ok
* add CONFIG_GNU_ARM_ECLIPSE

### 2015-01-25
* build script for Ubuntu

### 2015-01-20
* darwin pkgbuild added
* add install-pdf to make install
* add os x build script
* os x build script, add dtc submodule
* debian build: preliminary files (from os x files)
* kinetis header duplicate definition removed
* debian build script functional

## [2014]({{ site.baseurl }}/qemu/change-log/2014)
