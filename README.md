# Psychophysical analysis R package
This package reads a specific CSV file containing psychophysical test data. The following provides functions to generate a confusion matrix and a user response time plot. Using these results you can tell if your BCI experimental envirement and stimulis are well set or not. If not you may have to redo the experimental setting again. Results are useful when working with non classical stimuli.

Please find attached a psychophysical test result sample in the file : result.csv

# Installation

You can install the latest version from Github

# install.packages("devtools")
library(devtools)
install_github("aness/visual-P300-based-BCI-psychophysical-analysis") 

#Using this package

library(P300PSYCHOPHYSICAL) 
Analyseptcsv("result.csv")

You can also export your psychophysical result in a CSV file and use Analyseptcsv(FILENAME) to get analyse your data.
