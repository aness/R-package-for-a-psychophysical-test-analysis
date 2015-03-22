# Psychophysical analysis R package
This package reads a specific CSV file containing psychophysical test data. The function Analyseptcsv helps to generate a confusion matrix and a user response time boxplot. These results are useful when creating a BCI to check if your experimental set-up is correctly configured.

Please find attached a psychophysical test result sample in the file : result.csv

# Installation

In R Studio you can install the latest version from Github

```s
install.packages("devtools")
library(devtools)
install_github("aness/visual-P300-based-BCI-psychophysical-analysis") 
```
You can also use the Binary distribution in the Binary folder.

#Using this package

```s
library(P300PSYCHOPHYSICAL) 
Analyseptcsv("result.csv")
```
You can also export your psychophysical result in a CSV file and use the Analyseptcsv function  to get analyse your data.
```s
Analyseptcsv("filename.csv")
```

## License

This package is free and open source software, licensed under GPL (>= 2).
