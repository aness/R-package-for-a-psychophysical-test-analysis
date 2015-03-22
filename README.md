# visual-P300-based-BCI-psychophysical-analysis
This package reads a specific CSV file containing psychophysical test data. The following provides functions to generate a confusion matrix and a user response time plot. Using these results you can tell if your BCI experimental envirement and stimulis are well set or not. If not you may have to redo the experimental setting again. Results are useful when working with non classical stimuli.

Please find attached a psychophysical test result sample in the file : result.csv

You will need to load this package in RStudio. you can rebuild the source code or download the binary file.
After installing the package in RStudion please use the command library(P300PSYCHOPHYSICAL) to load it in your R enviroment.
To process the data please use the command Analyseptcsv("result.csv"). 

You can also export your psychophysical result in a CSV file and use Analyseptcsv(FILENAME) to get the confusion matrix and the user response time plot.
