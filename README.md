# BuecherBlog

This is a blog with book reviews. It is published with
[Jekyll](https://jekyllrb.com).

## Files and directories:

- assets       - images and other date files 
- _config.yml  - The configuration YAML file
- Gemfile      - Jekyll is a gem written in Ruby
- _includes    - html or markdown files to be included
- index.html   - The entry html file
- _layouts     - Files to structure the webpages
- _posts       - Each file there is a post or book review
- README.md
- _sass/       - css and sass files
- _site        - Jekyll will buold the whole website in this directory


## How to build the website:

After jekyll is installed you build the web site with

sh> jekyll build

or

sh> jekyll serve

The latter local webserver and you can view your website in your broweser
at http://127.0.0.1:4000
Whenever you change a source file, the website is automatically rebuilt.

## How to add a book review:

Write your post in a file in the _posts directory with a name like this:

yyyy-mm-dd-YourTitle.md

Where the first part is the day of the post (when you write it or when you want to publish it) and the latter part is any name of your choice. You can write the review in html or markdown, hence it can have extensions like .html, .md or .markdown.

Here are examples of file names of current reviews:

2020-05-15-Eurasia.markdown
2020-04-20-FluessigesLand.html

Thus, you write your revies in such a file, put the immages that you refer to in the _assets/images directory, and build the site with jekyll.

