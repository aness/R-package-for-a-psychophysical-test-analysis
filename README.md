# Psychophysical analysis R package
This package reads a specific CSV file containing psychophysical test data. The function Analyseptcsv helps to generate a confusion matrix and a user response time boxplot. These results are useful when creating a BCI to check if your experimental set-up is correctly configured.

Please find attached a psychophysical test result sample in the file : result.csv

# Installing the package

You can install the latest version from Github

install.packages("devtools")

library(devtools)

install_github("aness/visual-P300-based-BCI-psychophysical-analysis") 

You can also use the Binary distribution in the Binary folder.

#Using this package

library(P300PSYCHOPHYSICAL) 
Analyseptcsv("result.csv")

You can also export your psychophysical result in a CSV file and use Analyseptcsv(FILENAME) to get analyse your data.
