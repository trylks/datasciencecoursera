What is this and how do I use it?
===================

This is a sort script for the 3rd assignment in the data science track on coursera, by Jeff Leek, Brian Caffo and Roger D. Peng,
from the Johns Hopkins Bloomberg School of Public Health. The third course is on Getting and Cleaning Data
(and that's what we do here).

To run the script, simply run it, it will donwload the dataset from its [url](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip),
unzip it and then start all the analysis inside the newly created folder (from unzipping the file).
Please note that this commit was done after the deadline, you may prefer to evaluate the previous version (previous commit) that did't donwload the file for you
(everything else remains the same, you can check the diff).
This script will take longer (depending on network speed) but it will do more work for you, so it's really up to you.

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

