Getting and cleaning assignment
===============================

This assignment consisted in manipulating the data provided into a tidy dataset.

The original data consisted in a training and a testing set with the same 
structure. For each of these two datasets three of the provided files were
used:<br>

* x_( ).txt: which contained hundreds of measurements taken during a test run
disposed along rows (one test run per row)<br>
* y\_( ).txt: which contained the id. numbers of the subjects corrsponding to
the test runs, one per row, corresponding to the rows of the file x_( ).txt<br>
* subject_( ).txt: which contained the ad number of the activity perfomed in 
that test run, one per row, in the same fashion as y\_( ).txt above<br>
<br>
1. Test and train data were simply appended to each other resulting in a single
dataset.<br>
2. For all measurements in one row in x_( ).txt, the average and the standard
deviation were calculated, resulting in two columns in the requested tidy 
dataset.<br>
3. The contents of files y_( ).txt and subject_( ).txt were appended laterally
to the mean and sd columns (step 2 above), resulting in two more columns in the
requested tidy dataset: subject and activity.id.number.<br>
4. Finally, the activity.id.numbers in the 4th column were replaced by their
full descriptive names taken from file activity_labels.txt provided.<br>

Once the dataset above was ready, a second independent dataset was set up
as a cross-table giving the average measurement for each (subject, activity)
pair.