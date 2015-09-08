# The GNU ARM Eclipse Web Site source

## URL

This is the repository used as source for the GNU ARM Eclipse Web Site available from [http://gnuarmeclipse.github.io](http://gnuarmeclipse.github.io)


## Jekyll

The web site is generated off-line by Jekyll.

## Prerequisites

To be able to run the Jekyll build process, Ruby and the `gem` tool are required. In OS X 10.10.5, these tools are preinstalled, at least with the Developer Command Line tools.

	$ ruby --version
	ruby 2.0.0p481 (2014-05-08 revision 45883) [universal.x86_64-darwin14]
	$ gem --version
	2.0.14
	$ sudo gem install jekyll
	...
	$ jekyll --version
	jekyll 2.5.3
	

In addition, the `jekyll-sitemap` specific gem is required:

	$ sudo gem install jekyll-sitemap
	... jekyll-sitemap-0.8.1
 

## Clone Git

	git clone https://github.com/gnuarmeclipse/gnuarmeclipse.github.io-source.git gnuarmeclipse.github.io-source.git

## Development

The current development cycle is edit-save-build-view.

The build can be performed automatically by Jekyll when started in server mode.

	cd gnuarmeclipse.github.io-source.git
	jekyll server

To view the result, point the browser to `localhost:4000`.

## Publish

The build result is in the `_site` folder.

This folder is configured as a submodule, linked to the [gnuarmeclipse.github.io](https://github.com/gnuarmeclipse/gnuarmeclipse.github.io) project.

To publish, just commit this Git and the new site will be automatically updated.


