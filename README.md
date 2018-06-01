


This repo hosts source code for the *ANU Computational Media Lab* website http://cm.cecs.anu.edu.au/. 

This site is created from the site example in the Hugo source code. 

### Building and updating the site

1. [Install Hugo (Currently Built with v0.41)](http://gohugo.io/overview/installing) in a way that best suits your environment and comfort level --- I recommend downloading the binary from [here](https://github.com/spf13/hugo/releases), unzip, and placing the executable (renamed to 'hugo') somewhere in your PATH.

2. Navigate to the website source section of the repository, i.e. './cmLab/'

3. *Local Preview* type "hugo server" .. make sure there's no complaints, and then view under (usually) http://localhost:1313 . Changes to the local site dir are usually "watched", i.e. automatically recompiled and browser content refreshed. 

Note: 

* Production: use the enclosed "update_site.sh" script to complete pulling changes from repo, compiling, and copying as an all-in-one package. 

* You can also use the '-d /some/destination/directory' option to hugo to send the generated html directly to another location (e.g., the public www directory, or ../rendered).


### To update the looks/templates of this site:

1. The homepage sits under ./layouts/index.html -- it contains a few hugo macros, otherwise is plain html. 

2. Each page, or post, are undert ./content/ and written as markdown files (with front matter metadata plus content). Look at the examples there to see how to add one. They will appear on the homepage in reverse chronological order. To add a new page, do "hugo new schedule.md" (it won't let you do this one since schedule.md already exist, use some other name); to add a new post, do "hugo new post/another_post.md".

3. Additional files (images, slides, etc) should be places in ./static and linked from the pages. They will be copied to the static html directory. 

4. The above should cover most of the routine editing task. The few bullets below covers editing of the site structure, as well as look-and-feel:
	* header/footer and includes are found in ./layouts/partials/
	* how each page appears in are governed by ./layouts/_default and ./layouts/post
	* stylesheets are in ./static/css




