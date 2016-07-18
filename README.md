# Python in Astronomy Web Site

## Website for the Python in Astronomy Conference Series

This repository contains the source, and the live GitHub pages version of the
website for the Python in Astronomy conference series, the site can be viewed
at: http://openastronomy.org/pyastro


## Contributing to the Website

This site uses the [Nikola](http://getnikola.org) static site generator which is
easy to use and written in Python. The pages for the site can be written in ReST
or Markdown (or Jupyter Notebooks and other formats), to compile the site and
preview locally run the following commands:

    conda env create -f environment.yml
    source activate nikola
    nikola auto
    
This will run an automatically refreshing web server, where when you update a
file it will rebuild the site and refresh your browser.

This repo has Travis configured to rebuild and push to the `gh-pages` branch on
commit to master, so you do not need to worry about refreshing the site, just
send a Pull Request and wait for Travis to check it.
