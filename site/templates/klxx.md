---
layout: page
permalink: /templates/klxx/
title: KLxx template
author: Liviu Ionescu

date: 2015-09-11 21:29:00
last_modified_at: 2015-09-11 23:59:00

---

## Overview

The KLxx template is currently able to generate projects for the Kinetis KL25 and KL46 processor families.

Functionality is similar across all families, so we'll describe in details only the KL25 family.

## Project creation

To create a new, go to *Eclipse* menu, **File** → **New** (or the button in the upper left corner), and select **C Project** or **C++ Project**:

![Create a new KL25 C++ project.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/KL25NewProject.png)

Select the target processor and related settings:

![Select the target details.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/KL25TargetSelection.png)

Eventually configure the folders where you want the projects to be stored:

![Configure the project folders.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/KL25Folders.png)

As for all C/C++ projects configure (usually just accept the suggested) build configurations:

![Accept the build configurations.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/KL25Configs.png)

Finally select the toolchain and eventually configure the toolchain path:

![Select the toolchain.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/KL25Toolchain.png)

Click the **Finish** button and the project is created.

The KL25 project structure is:

![Common project structure.](http://gnuarmeclipse.livius.net/blog/wp-content/uploads/2014/02/TemplateProjectStructure.png)



