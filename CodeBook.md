### Code Book for the Dataset in File assignmen_item5.txt

This dataset is the output of script run_analysis.R with the input of the 
"Human Activity Activity Recognition Using Smartphones Dataset" downloaded
from 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The dataset is space-delimited format, with a header on the first row. Each 
column corresponds to a single variable described below:

**Column 1**<br>
Variable name: activity<br>
Type: factor with any of the following values<br>
* WALKING_DOWNSTAIRS<br>
* WALKING<br>
* SITTING<br>
* WALKING_UPSTAIRS<br>
* STANDING<br>
Description: the activity being performed by subjects while dynamometer
and gyroscope measurements were being taken<br><br>

_Column 2_<br>
Variable name: subject<br>
Type: character factor with any of the numerals from 1 to 30<br>
Description: subjects were identified by a number from 1 to 30<br><br>

_Column 3_<br>
Variable name: mean<br>
Type: real number<br>
Description: mean value of the measurements obtained for that particular<br>
subject performing that particular activity<br>

