---
layout: page
title: How to publish the OpenOCD binaries?
permalink: /openocd/publish-procedure/

author: Liviu Ionescu

date: 2016-10-28 18:09:00 +0300

---

The OpenOCD binaries are published on GitHub  [Releases](https://github.com/gnuarmeclipse/openocd/releases)).

## Update the Change log

Scan the Git log and add new entries to the [Change log]({{ site.baseurl }}/openocd/change-log/) (`pages/openocd/change-log.md`), grouped by days.

Close issues on the way. Refer to them as:

- **[Issue:\[#22\]\(...\)]**.

## Update the CHANGES.txt file

Edit the `gnuarmeclipse/info/CHANGES.txt` file (copy the entries from the web change log).

## Commit to the project git

In the **gnuarmeclipse/openocd** project, commit all changes.

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
$ bash ~/Downloads/build-scripts.git/scripts/build-openocd.sh cleanall
$ caffeinate bash ~/Downloads/build-scripts.git/scripts/build-openocd.sh --all
```

## Prepare a new blog post to announce the release

- add a new file to `_posts/openocd/releases`
- name the file like `2016-01-11-openocd-v0-10-0-20160110-dev-released.md`
- name the post like: **GNU ARM Eclipse OpenOCD v0.10.0-20160110*-dev released**.

## Update the release post with the MD5 sums

Copy/paste the build report at the end of the post as

```
4ca0dd6d9c9ad24af2aa4eddec7717e1  
gnuarmeclipse-openocd-debian32-0.10.0-201601101000-dev.tgz

3ac38e2ac8b71a8ede734a271f0765de  
gnuarmeclipse-openocd-debian64-0.10.0-201601101000-dev.tgz

8275148ae11b954668d77739715bb1f1
gnuarmeclipse-openocd-osx-0.10.0-201601101000-dev.pkg

05a793b6d5297fbc9b9ed46f283b5152  
gnuarmeclipse-openocd-win32-0.10.0-201601101000-dev-setup.exe

49eae144aa3a43aa991d2a9444549ab6  
gnuarmeclipse-openocd-win64-0.10.0-201601101000-dev-setup.exe
```

## Update the web

- commit the **gnuarmeclipse.github.io-source.git** project; use a message like **OpenOCD v0.10.0-20160110*-dev released**
- run `jekyll-build.command`
- commit the **gnuarmeclipse.github.io.git** project; use a message like **OpenOCD v0.10.0-20160110*-dev released**
- push the **gnuarmeclipse.github.io.git** project

## Push the project git

With SourceTree, push to the GitHub remote, the **gnuarmeclipse** and the **gnuarmeclipse-dev** branches.

## Create the release

- for stable releases, be sure the **gnuarmeclipse** branch is up to date and set as default
- go to the [GitHub Releases](https://github.com/gnuarmeclipse/openocd/releases) page
- click **Draft a new release**
- name the tag like **gae-0.10.0-20160110**
- select the **master** branch
- name the release like **GNU ARM Eclipse OpenOCD v0.10.0-201601101000-dev**
- as description, copy the first paragraph from the Web release page
- add a link to the Web page **\[Continue reading »\]\(\)**
- get URL from web and update the above link
- attach binaries and MD5 (drag and drop from the archives folder will do it)
- click the **Publish Release** button

Note: at this moment the system should send a notification to all clients watching this project.

## Copy binaries to the local archive folder

-   go to `.../GNU ARM Eclipse/archive`
-   move the latest binaries and MD5 to `releases/openocd`

## Share on Facebook

- go to the new post and follow the Share link.
- DO NOT select **On your own Timeline**, but **On a Page you manage**
- select GNU ARM Eclipse
- posting as GNU ARM Eclipse
- click **Post to Facebook**
- check the post in the [Facebook page](https://www.facebook.com/gnuarmeclipse)
