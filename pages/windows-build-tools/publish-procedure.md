---
layout: page
title: How to publish the Windows Build Tools binaries?
permalink: /windows-build-tools/publish-procedure/

author: Liviu Ionescu

date: 2016-10-28 12:28:00 +0300

---

The Windows Build Tools binaries are published on GitHub  [Releases](https://github.com/gnuarmeclipse/windows-build-tools/releases)).

## Update the Change log

Scan the documentation Git log and add new entries to the [Change log]({{ site.baseurl }}/windows-build-tools/change-log/) (`pages/windows-build-tools/change-log.md`), grouped by days.

Close issues on the way. Refer to them as:

- **[Issue:\[#22\]\(...\)]**.

## Update the CHANGES.txt file

Edit the `gnuarmeclipse/info/CHANGES.txt` file (copy the entries from the web change log).

## Commit to the project git

In the **gnuarmeclipse/windows-build-tools** project, commit all changes.

## Check/clone/pull build scripts

Be sure the scripts in the **build-scripts.git** are up to date.

```
$ git clone https://github.com/gnuarmeclipse/build-scripts.git \
  ~/Downloads/build-scripts.git
```

## Build

```
$ bash ~/Downloads/build-scripts.git/scripts/build-windows-build-tools.sh cleanall
$ caffeinate bash ~/Downloads/build-scripts.git/scripts/build-windows-build-tools.sh --all
```

## Prepare a new blog post to announce the release

- add a new file to `_posts/windows-build-tools/releases`
- name the file like `2016-10-28-windows-build-tools-v2-7-20161028-released.md`
- name the post like: **GNU ARM Eclipse Windows Build Tools v2.7-20161028* released**.

## Update the release post with the MD5 sums

Copy/paste the build report at the end of the post as

```
c88f834f14f20b99bda1747ab6a8857b
gnuarmeclipse-build-tools-win32-2.7-201610281058-setup.exe

e7a34cb1e2ee68acbb41a4e441f75aa1
gnuarmeclipse-build-tools-win64-2.7-201610281058-setup.exe
```

## Update the web

- commit the **gnuarmeclipse.github.io-source.git** project; use a message like **Windows Build Tools v2.7-20161028* released**
- run `jekyll-build.command`
- commit the **gnuarmeclipse.github.io.git** project; use a message like **Windows Build Tools v2.7-20161028* released**
- push the **gnuarmeclipse.github.io.git** project

## Push the project git

With SourceTree, push to the GitHub remote, the **master** branche.

## Create the release

- for stable releases, be sure the **master** branch is up to date and set as default
- go to the [GitHub Releases](https://github.com/gnuarmeclipse/windows-build-tools/releases) page
- click **Draft a new release**
- name the tag like **v2.7**
- select the **master** branch
- name the release like **GNU ARM Eclipse Windows Build Tools v2.7-201610281058**
- as description, copy the first paragraph from the Web release page
- add a link to the Web page **\[Continue reading »\]\(\)**
- get URL from web and update the above link
- attach binaries and MD5 (drag and drop from the archives folder will do it)
- click the **Publish Release** button

Note: at this moment the system should send a notification to all clients watching this project.

## Copy binaries to the local archive folder

-   go to `.../GNU ARM Eclipse/archive`
-   move the latest binaries and MD5 to `releases/build-tools`

## Share on Facebook

- go to the new post and follow the Share link.
- DO NOT select **On your own Timeline**, but **On a Page you manage**
- select GNU ARM Eclipse
- posting as GNU ARM Eclipse
- click **Post to Facebook**
- check the post in the [Facebook page](https://www.facebook.com/gnuarmeclipse)
