---
layout: page
permalink: /qemu/publish-procedure/
title: How to publish the QEMU binaries?
author: Liviu Ionescu

date: 2016-07-28 02:58:00 +0300

---

The QEMU binaries are published on GitHub  [Releases](https://github.com/gnuarmeclipse/qemu/releases)).

## Update the Change log

Scan the Git log and add new entries to the [Change log]({{ site.baseurl }}/qemu/change-log/) (`pages/qemu/change-log.md`), grouped by days.

Close issues on the way. Refer to them as:

- **[Issue:\[#22\]\(...\)]**.

## Update the CHANGES.txt file

Edit the `gnuarmeclipse/info/CHANGES.txt` file (copy the entries from the web change log).

## Commit to the project git

In the **gnuarmeclipse/qemu** project, commit all changes; use something like _prepare v2.7.0-20161128* release_ as message.

## Merge stable release

For stable releases, with SourceTree

- change to the **gnuarmeclipse** branch
- merge **gnuarmeclipse-dev**.

## Check/clone/pull build scripts

Be sure the scripts in the **build-scripts.git** are up to date.

```
$ git clone https://github.com/gnuarmeclipse/build-scripts.git \
  ~/Downloads/build-scripts.git
```

## Build

Important note: Before starting the build, double check if the repository is clean (all changes were commited), otherwise the build version will be stamped with `-dirty`).

```
$ caffeinate bash
$ bash ~/Downloads/build-scripts.git/scripts/build-qemu.sh cleanall
$ bash ~/Downloads/build-scripts.git/scripts/build-qemu.sh --all
```

## Prepare a new blog post to announce the release

- add a new file to `_posts/qemu/releases`
- name the file like `2016-07-28-qemu-v2-6-0-20160728-released.md`
- name the post like: **GNU ARM Eclipse QEMU v2.6.0-20160728\*-dev released**.

## Update the release post with the MD5 sums

Copy/paste the build report at the end of the post as

```
00fa757a9bd0f80ce897e6d546183b58  
gnuarmeclipse-qemu-debian32-2.4.50-201510290935-dev.tgz

69588b16c19006275cb79aba7ee2c3f8  
gnuarmeclipse-qemu-debian64-2.4.50-201510290935-dev.tgz

8709c93b74f4085f5a0eacaa075300a9
gnuarmeclipse-qemu-osx-2.4.50-201510290935-dev.pkg

39b0c7dd39ef499ab630bd74ca87b6c3  
gnuarmeclipse-qemu-win32-2.4.50-201510290935-dev-setup.exe

70881d71c1516aeb9c7efc514cd1f32c  
gnuarmeclipse-qemu-win64-2.4.50-201510290935-dev-setup.exe
```

## Update the web

- commit the **gnuarmeclipse.github.io-source.git** project; use a message like **QEMU v2.6.0-20160728* released**
- run `jekyll-build.command`
- commit the **gnuarmeclipse.github.io.git** project; use a message like **QEMU v2.6.0-20160728* released**
- push the **gnuarmeclipse.github.io.git** project

## Push the project git

With SourceTree, push to the GitHub remote, the **gnuarmeclipse** and the **gnuarmeclipse-dev** branches.

## Create the release

- for stable releases, be sure the **gnuarmeclipse** branch is up to date and set as default
- go to the [GitHub Releases](https://github.com/gnuarmeclipse/qemu/releases) page
- click **Draft a new release**
- name the tag like **gae-2.6.0-20160728**
- select the **gnuarmeclipse** branch
- name the release like **GNU ARM Eclipse QEMU v2.6.0-20160728** (development versions will be prefixed by **-dev**)
- as description, copy the first paragraph from the Web release page
- add a link to the Web page **\[Continue reading »\]\(\)**
- get URL from web and update the above link
- attach binaries and MD5 (drag and drop from the archives folder will do it)
- click the **Publish Release** button

Note: at this moment the system should send a notification to all clients watching this project.

## Copy binaries to the local archive folder

-   go to `.../GNU ARM Eclipse/archive`
-   move the latest binaries and MD5 to `releases/qemu`

## Share on Facebook

- go to the new post and follow the Share link.
- DO NOT select **On your own Timeline**, but **On a Page you manage**
- select GNU ARM Eclipse
- posting as GNU ARM Eclipse
- click **Post to Facebook**
- check the post in the [Facebook page](https://www.facebook.com/gnuarmeclipse)
