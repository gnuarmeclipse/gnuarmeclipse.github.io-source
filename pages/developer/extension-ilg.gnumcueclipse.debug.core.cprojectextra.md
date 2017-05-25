---
layout: page
permalink: /developer/extension/ilg.gnumcueclipse.debug.core.cprojectextra/
title: The ilg.gnumcueclipse.debug.core.cprojectExtra extension point
author: Liviu Ionescu

redirect_from:
  - /developer/extension/ilg.gnuarmeclipse.debug.core.cprojectextra/

date: 2015-09-10 20:57:00 +0300

---

## Purpose

This extension point provides decoupled access to the C project extra data from the debug plug-ins.

It must be implemented by distributions that have their own method of storing extra definitions associated with project configurations (like vendor id and device name).

## Definition

The Eclipse definition of this extension point is in [ilg.gnumcueclipse.debug.core/schema/cproject_extra_data.exsd](https://github.com/gnuarmeclipse/plug-ins/blob/develop/ilg.gnumcueclipse.debug.core/schema/cproject_extra_data.exsd).

## API

The extension point refers to a factory that creates a class that must implement [ICProjectExtraDataManager](https://github.com/gnuarmeclipse/plug-ins/blob/develop/ilg.gnumcueclipse.debug.core/src/ilg/gnuarmeclipse/debug/core/data/ICProjectExtraDataManager.java).

The only function required is:

```java
public Map<String, String> getExtraProperties(IConfiguration config);
```

## Where is this extension point used?

The [ilg.gnumcueclipse.debug.gdbjtag.data/CProjectExtraDataManagerProxy.java](https://github.com/gnuarmeclipse/plug-ins/blob/develop/ilg.gnumcueclipse.debug.gdbjtag/src/ilg/gnuarmeclipse/debug/gdbjtag/data/CProjectExtraDataManagerProxy.java) class enumerates all **cprojectExtra** extension points and returns the first one that can provide data for the requested configuration.

This `CProjectExtraDataManagerProxy.getExtraProperties(config)` is called from `PeripheralsService.etPeripherals(IContainerDMContext containerDMContext, DataRequestMonitor<IPeripheralDMContext[]> drm)`:

```java
String vendorId = null;
String deviceName = null;

CProjectExtraDataManagerProxy dataManager = CProjectExtraDataManagerProxy
        .getInstance();
Map<String, String> propertiesMap = dataManager.getExtraProperties(config);
if (propertiesMap != null) {
    vendorId = propertiesMap.get(CProjectPacksStorage.DEVICE_VENDOR_ID);
    deviceName = propertiesMap.get(CProjectPacksStorage.DEVICE_NAME);
}

if (vendorId != null && deviceName != null) {

    Leaf tree = SvdUtils.getTree(vendorId, deviceName);
    List<Leaf> list = SvdUtils.getPeripherals(tree);

    fPeripheralsDMContexts = createPeripheralsContexts(containerDMContext, list);

    drm.setData(fPeripheralsDMContexts);
    drm.done();
    return;

} else {

    drm.setStatus(new Status(
        Status.ERROR,
        Activator.PLUGIN_ID,
        "There are no peripheral descriptions available, assign a device to the project."));
    drm.done();
    return;
}
```

As seen above, this extension point is used to get the **cmsis.device.vendor.id** and **cmsis.device.name** associated with a project, and from it get the SVD to populate the Peripherals view.

## Where is this extension point implemented?

This extension point is implemented one in **ilg.gnumcueclipse.managedbuild.cross**:

```xml
<extension
        point="ilg.gnumcueclipse.debug.core.cprojectExtra">
    <factory
        class="ilg.gnumcueclipse.managedbuild.cross.xpi.CProjectExtraDataManagerFactory">
    </factory>
</extension>
```

The data manager created by this factory is [ilg.gnumcueclipse.managedbuild.cross.xpi/CProjectExtraDataManager.java](https://github.com/gnuarmeclipse/plug-ins/blob/develop/ilg.gnumcueclipse.managedbuild.cross/src/ilg/gnuarmeclipse/managedbuild/cross/xpi/CProjectExtraDataManager.java) which returns the entire map of extra properties associated with GNU ARM Eclipse projects, stored in .cproject:

```xml
<storageModule moduleId="ilg.gnumcueclipse.managedbuild.packs">
    <option id="cmsis.device.name" value="STM32F407VG"/>
    <option id="cmsis.subfamily.name" value="STM32F407"/>
    <option id="cmsis.family.name" value="STM32F4 Series"/>
    <option id="cmsis.device.vendor.name" value="STMicroelectronics"/>
    <option id="cmsis.device.vendor.id" value="13"/>
    <option id="cmsis.device.pack.vendor" value="Keil"/>
    <option id="cmsis.device.pack.name" value="STM32F4xx_DFP"/>
    <option id="cmsis.device.pack.version" value="2.3.0"/>
    <option id="cmsis.board.name" value="STM32F4-Discovery"/>
    <option id="cmsis.board.revision" value="Rev.C.1"/>
    <option id="cmsis.board.vendor.name" value="STMicroelectronics"/>
    <option id="cmsis.board.clock" value="8000000"/>
    <option id="cmsis.board.pack.vendor" value="Keil"/>
    <option id="cmsis.board.pack.name" value="STM32F4xx_DFP"/>
    <option id="cmsis.board.pack.version" value="2.3.0"/>
    <option id="cmsis.core.name" value="Cortex-M4"/>
    <option id="cmsis.compiler.define" value="STM32F407xx"/>
    <memory section="IRAM1" size="0x20000" start="0x20000000" startup="0"/>
    <memory section="IRAM2" size="0x10000" start="0x10000000" startup="0"/>
    <memory section="IROM1" size="0x100000" start="0x08000000" startup="1"/>
</storageModule>
```
