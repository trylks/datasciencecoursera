Codebook for this assignment
===================

The script, what it does and how it does everything is described in the README.md file.
For more details, the best thing to do is to read the comments inside the script, it's less than 50 lines.
This document describes the generated data, i.e. the files assignment3-result1.txt and assignment3-result2.txt, mentioned in README.md.

assignment3-result1.txt
-----------------------

This file contains the basic data from the original dataset (not including the Inertial folder).

The data is put together in a big table. The column names for the table are:

- subject: the volunteer
- activity_name: the name of the activity performed by the volunteer
- A set of measurements that are obtained from features.txt and then filtered (we keep those about averages and standard deviations).


assignment3-result2.txt
-----------------------

The rows in the previous dataset are grouped according to subject and activity_name and we calculate the average for these groups.
Therefore, the dataset has the same number of columns (except for activity_code) and many less rows.
All the column names (except subject and activity_name) are prepended with "average_of_" so that it is clear that the values displayed there are aggregations.
