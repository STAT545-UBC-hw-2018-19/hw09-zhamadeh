Homework Assignment #9 : make-activity
=============

For this assignment, we will work with make files and their ability to create pipelines that interconnect multiple R scripts. This repository was seeded with the following base [pipeline](https://github.com/STAT545-UBC/make-activity) and I made the following additions:

* Created a new R script
	* Takes in [words text file](http://svnweb.freebsd.org/base/head/share/dict/web2?view=co) file
	* Creating [table](https://github.com/STAT545-UBC-students/hw09-zhamadeh/blob/master/letter_count.tsv) of letter frequency for every word in file
	* Exporting this data as `letter_count.tsv` 
		
* Updated the Makefile
	* Use the new .tsv file to create a [bar plot](https://github.com/STAT545-UBC-students/hw09-zhamadeh/blob/master/letter_count.png) of each letter frequency
	
* Created [new](https://github.com/STAT545-UBC-students/hw09-zhamadeh/blob/master/new_report.Rmd) report file 
	* Available as [html](https://github.com/STAT545-UBC-students/hw09-zhamadeh/blob/master/new_report.html)
	* Available as [md](https://github.com/STAT545-UBC-students/hw09-zhamadeh/blob/master/new_report.md) 

Previous pipeline components

* Histogram of word lengths
	* [R script](https://github.com/STAT545-UBC-students/hw09-zhamadeh/blob/master/histogram.r)
	* [Plot](https://github.com/STAT545-UBC-students/hw09-zhamadeh/blob/master/histogram.png)

* Report
	* As an [html](https://github.com/STAT545-UBC-students/hw09-zhamadeh/blob/master/report.html)
	* As an [md](https://github.com/STAT545-UBC-students/hw09-zhamadeh/blob/master/report.md)
	* As an [Rmd](https://github.com/STAT545-UBC-students/hw09-zhamadeh/blob/master/report.rmd)
