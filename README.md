


This site is created from the site example that came with Hugo repo. 

Here are a few dot points for building and updating the site. 

1. [Install Hugo](http://gohugo.io/overview/installing) in a way that best suits your environment and comfort level --- I recommend downloading the binary from [here](https://github.com/spf13/hugo/releases), unzip, and placing the executable (renamed to 'hugo') somewhere in your PATH.

2. Navigate to the website source section of the repository, i.e. './cmLab/'

3. Type 'hugo -b https://artofcomputing.cecs.anu.edu.au' to compile the site. A set of static htmls will appear in './public', or './cmLab/public/'.

4. 'cp -R ./public/* /var/www/artofcomputing/' to update the web with the new version. 

Note: 

* **[TO BE UPDATED]** You can use the enclosed "update_site.sh" script to complete pulling changes from repo, compiling, and copying as an all-in-one package  -- as an alternative to steps 3 and 4 above. 

* You can also use the '-d /some/destination/directory' option to hugo to send the generated html directly to another location (e.g., the public www directory, or ../rendered).


To update the looks/templates of this site:

1. The homepage sits under ./layouts/index.html -- it contains a few hugo macros, and otherwise are plain html. 

2. Each page, or post, are undert ./content/ and written as markdown files (with front matter metadata plus content). Look at the examples there to see how to add one. They will appear on the homepage in reverse chronological order. To add a new page, do "hugo new schedule.md" (it won't let you do this one since schedule.md already exist, use some other name); to add a new post, do "hugo new post/another_post.md".

3. Additional files (images, slides, etc) should be places in ./static and linked from the pages. They will be copied to the static html directory. 

4. The above should cover most of the routine editing task. The few bullets below covers editing of the site structure, as well as look-and-feel:
	* header/footer and includes are found in ./layouts/partials/
	* how each page appears in are governed by ./layouts/_default and ./layouts/post
	* stylesheets are in ./static/css





Hugo Example Blog
=================

This repository provides a fully-working example of a [Hugo](https://github.com/spf13/hugo)-powered blog. Many
Hugo-specific features are used as a way to see them in action, and hopefully ease the learning curve for creating your
very own site with Hugo.

Features
--------

- Recent Posts at main index
- Indexes for `tags` and `categories`
- Post information block, with links for all `tags` and `categories` post belongs to
- [Bootstrap 3](http://getbootstrap.com/) ready
  - Currently using the [Yeti](http://bootswatch.com/yeti/) theme from http://bootswatch.com/

Common things that should be added in the near future *(pull requests are welcome!)*:

- Disqus integration
- More content types to demonstrate different layout methods
  - About Me
  - Contact

Getting Started
---------------

To get started, you should simply fork or clone this repository! That's definitely an important first step.

[Install Hugo](http://gohugo.io/overview/installing) in a way that best suits your environment and comfort level.

Edit `config.toml` and change the default properties to suit your own information. This is not required to run the
example, but this is the global configuration file and you're going to need to use it eventually. Start here!

In a command prompt or terminal, navigate to the path that contains your `config.toml` file and run `hugo`. That's it!
You should now have a `public` directory with a complete blog! Open `public/index.html` in your browser and bask.

If that wasn't amazing enough, from the same terminal, run `hugo server`. This will watch your directories for changes
and rebuild the site immediately, *and* it will make these changes available at http://localhost:1313/ so you can view
your finished site in your browser. Go on, try it. This is one of the best ways to preview your site while working on it.

To further learn Hugo and learn more, read through the Hugo [documentation](http://gohugo.io/overview/introduction)
or browse around the files in this repository. Have fun!
