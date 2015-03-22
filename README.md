# visual-P300-based-BCI-psychophysical-analysis
This package reads a specific CSV file containing psychophysical test data. The following provides functions to generate a confusion matrix and a user response time plot. Using these results you can tell if your BCI experimental envirement and stimulis are well set or not. If not you may have to redo the experimental setting again. Results are useful when working with non classical stimuli.

library(P300PSYCHOPHYSICAL)           loading the package in RStudio
Analyseptcsv("result.csv")            Using the package to analyse data

Please refer to the R instruction : ?Analyseptcsv for more informations
 
