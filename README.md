# Markdown Makefile

A simple Makefile to build Markdown based books with pandoc. The Makefile figures out the order in which you want to concatenate all the markdown files by sorting them. It allows you to easily order and re-order your documents.  

It has the following features:

* able to build a large document from multiple markdown files
* integrates into any tool that supports build systems like Make (Sublime Text for example)
* sorts your files by filename.
* it knows about subversion and skips the .svn directories, this allows you to version your documents easily. 

The `header.tex` file that is included at the start introduces a number of figure related commands you can sprinkle throughout your markdown documents.

* \img{caption}{file}: Just render an image
* \refimg{caption}{file}{label}: Render an image and set a reference label to it so you can use \ref to reference its number.
* \refwideimg{caption}{file}{label}: Same as above, but makes it so that the image can fall 2 centimeters outside the column margins, ideal for horizontally endowed images

## Suggested directory structure

	/document-folder
		document.main.md (will be rendered first)
		01_first_chapter/
			01_section_one.md
			02_section_two.md
			03_section_three.md

		02_second_chapter/
			01_introduction.md
			02_problem_statement.md

		03_conclusion/
			01_in_closing.md
			02_references.md

## Requirements

Make sure you have the following apps installed on your Linux box:

* `make`
* `pandoc`
* `sed`

