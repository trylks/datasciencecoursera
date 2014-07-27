What is this and how do I use it?
===================

This is a sort script for the 3rd assignment in the data science track on coursera, by Jeff Leek, Brian Caffo and Roger D. Peng,
from the Johns Hopkins Bloomberg School of Public Health. The third course is on Getting and Cleaning Data
(and that's what we do here).

Disclaimer: I'm writing this without an Internet connection, I may make some changes in the very last minute...

First download and unzip the file that we have to use in this assignment (in an URL I don't remember).
Get into the folder unzipped right away and run the script in it.

I'm guessing I can download files and unzip them directly from R, I'll try to do that...

The script will process some data about measurements collected from a set of (30) volunteers wearing a smartphone (Samsung Galaxy S II)
and performing six different activities:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The measurements are obtained from the sensors in the smartphone and are best described in their own README.md (in the root of the .zip file)


The processing that is done with the data consists on:
- Putting all the relevant (for us) data as "tidy-data" in one big table (with labels!)
- Removing measurements that are not about averages or standard deviations to get the first tidy dataset.
- Obtaining the averages after grouping by subject (the volunteer) and activity (this is the second tidy dataset).
- We keep both datasets as plain text files (assignment3-result1.txt and assignment3-result2.txt) in the folder where the script runs.

That's everything, by now...

