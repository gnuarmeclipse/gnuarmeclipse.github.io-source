---
layout: post

title: The GNU ARM Eclipse project has a new home and a new look

author: Liviu Ionescu

date: 2015-09-14 13:41:00
last_modified_at: 2015-09-15 22:43:00

categories:
  - news
  - web

---

## Migration to GitHub

The GNU ARM Eclipse project was migrated from [SourceForge](https://sourceforge.net/projects/gnuarmeclipse/) to [GitHub](https://github.com/gnuarmeclipse). There are many reasons behind this decision (GitHub looks definitely cool!), but the main one is probably to reduce dependencies on custom DNS domains, like `livius.net`, which might not be available on long term.

![GNU ARM Eclipse GitHub Home]({{ site.baseurl }}/images/2015/github-gae-header.png)

### Repositories

Migrating the repositories was the easiest part, each project was pushed into its own repository.

The current project repositories are:

* [plug-ins](https://github.com/gnuarmeclipse/plug-ins)
* [windows-build-tools](https://github.com/gnuarmeclipse/windows-build-tools)
* [openocd](https://github.com/gnuarmeclipse/openocd)
* [qemu](https://github.com/gnuarmeclipse/qemu)
* [build-scripts](https://github.com/gnuarmeclipse/build-scripts)

![GNU ARM Eclipse GitHub Projects]({{ site.baseurl }}/images/2015/github-gae-projects.png)

### Binary files as Releases

Migration of binary files was a bit more complicated, and, due to GitHub current limitations, is not complete. The main problem was raised by the Eclipse update sites, which require a certain folder structure, and since GitHub does not support adding folders to releases, the Eclipse update sites will remain hosted on SourceForge.

Note: We reported this problem to GitHub support, and in a future version they might allow to add folders to releases, but details are not available.

Apart from the Eclipse update sites, all other binary files will be published as GitHub Releases, attached to the respective project repositories.

The archive of past releases was also migrated from SourceForge to GitHub.

![GNU ARM Eclipse GitHub Releases]({{ site.baseurl }}/images/2015/github-gae-releases.png)

### Issues trackers

The SourceForge trackers were replaced by the GitHub Issues trackers.

The content of the old trackers was not moved to GitHub, since this is much too time consuming, but it is planned to still keep the old trackers themselves available, even if they are locked and new tickets cannot be created there. It is still possible to comment on existing tickets.

### Notifications

In the past, release notifications were handled by a WordPress plug-in, by subscribing to the project blog.

Currently the only GitHub equivalent is to Watch projects, which will enable a notification for each project release.

For those interested in receiving notifications, the recommendation is to subscribe to GitHub, by clicking the **Watch** button and selecting **Watching**).

![GNU ARM Eclipse GitHub Releases]({{ site.baseurl }}/images/2015/github-gae-releases.png)

Be sure you subscribe to **Watch** the **gnuarmeclipse/gnuarmeclipse.github.io** project to receive notifications for Web posts.

## The Web has a new look

Finally, the most delicate issue, was to migrate the old documentation sites from the livius.net domain to a public domain.

Since GitHub solution for providing documentation sites is [GitHub Pages](https://pages.github.com), and this service makes the sites available in the `github.io` domain, it was considered acceptable to migrate the WordPress and MediaWiki sites to GitHub Pages.

![GNU ARM Eclipse Home Page]({{ site.baseurl }}/images/2015/github-io-gae-home.png)

GitHub Pages uses [Jekyll](http://jekyllrb.com) to generate static web sites, and the most convenient input format for Jekyll is [markdown](http://daringfireball.net/projects/markdown/syntax), so the migration involved conversion from WordPress internal representation, to markdown. Given the differences, this conversion was not easy, and was done partly with scripts, partly manually. Similarly for MediaWiki, although the conversion from the MediaWiki format to mardown was easier.

Given the complexity of this migration, we are aware that it is very likely that lots of mistakes are still present in the pages; we would appreciate any help in fixing them (use the [Web Issues](https://github.com/gnuarmeclipse/gnuarmeclipse.github.io/issues/1) tracker for this).

The web site has two dedicated projects:

* [gnuarmeclipse.github.io](https://github.com/gnuarmeclipse/gnuarmeclipse.github.io)
* [gnuarmeclipse.github.io-source](https://github.com/gnuarmeclipse/gnuarmeclipse.github.io-source)

The first one stores the actual static pages of the Web site and the second stores the Jekyll source files for generating the Web site.

## HTTP Redirects

We are aware that a lot of links to the previous sites are in use. To avoid breaking them, many redirects were installed from the `gnuarmeclipse.livius.net/*` to `gnuarmeclipse.github.io`. All other pages not matching the rules in these redirects will be served by the new `gnuarmeclipse.livius.net/redirected/` page, so both blog and wiki references should not be broken, but land in the new site.

## Old sites

For a while, the previous WordPress and MediaWiki sites will be preserved, but at a slightly modified URL:

* [`http://gnuarmeclipse-old.livius.net/blog`](http://gnuarmeclipse-old.livius.net/blog)
* [`http://gnuarmeclipse-old.livius.net/wiki`](http://gnuarmeclipse-old.livius.net/wiki)
